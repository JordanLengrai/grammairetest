(* macro_preprocess.ml : gestion des macros SimpleText sans regexp *)

(* Extraction des macros de l'en-tête *)
let extract_macros lines =
  let tbl = Hashtbl.create 16 in
  let prefix = "\\define{" in
  let plen = String.length prefix in
  List.iter (fun line ->
    let s = String.trim line in
    if String.length s >= plen && String.sub s 0 plen = prefix then
      (* Cherche la fin de l'identifiant *)
      try
        let close1 = String.index_from s plen '}' in
        let ident = String.sub s plen (close1 - plen) in
        if String.length ident = 0 || not (ident.[0] = '\\') then failwith ("Identifiant de macro invalide : " ^ ident);
        let rest = String.trim (String.sub s (close1+1) (String.length s - close1 - 1)) in
        if String.length rest = 0 || rest.[0] <> '{' then failwith ("Syntaxe de macro invalide : " ^ s);
        let close2 = String.rindex rest '}' in
        let value = String.sub rest 1 (close2 - 1) in
        let name = String.sub ident 1 (String.length ident - 1) in
        if Hashtbl.mem tbl name then failwith ("Macro déjà définie : " ^ name)
        else Hashtbl.add tbl name value
      with _ -> failwith ("Erreur de syntaxe dans la définition de macro : " ^ s)
  ) lines;
  tbl

(* Découpe le fichier en en-tête et corps *)
let split_sections lines =
  let rec before acc = function
    | [] -> List.rev acc, []
    | l::r when String.trim l = "\\begindocument" -> List.rev acc, r
    | l::r -> before (l::acc) r
  in
  let rec after acc = function
    | [] -> List.rev acc
    | l::_ when String.trim l = "\\enddocument" -> List.rev acc
    | l::r -> after (l::acc) r
  in
  let hdr, rest = before [] lines in
  let body = after [] rest in
  hdr, body

(* Substitution des macros dans le corps *)
let substitute_macros tbl body =
  let reserved = ["item"; "color"; "begindocument"; "enddocument"] in
  let is_letter c = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') in
  let is_reserved id = List.mem id reserved in
  let rec replace_macros acc s =
    try
      let idx = String.index s '\\' in
      let prefix = String.sub s 0 idx in
      let rest = String.sub s (idx+1) (String.length s - idx - 1) in
      let ident =
        let rec loop i =
          if i < String.length rest && is_letter rest.[i] then loop (i+1)
          else i
        in
        loop 0
      in
      if ident = 0 then replace_macros (acc ^ "\\") (String.sub rest 0 (String.length rest))
      else
        let name = String.sub rest 0 ident in
        let after = String.sub rest ident (String.length rest - ident) in
        let value =
          if is_reserved name then
            "\\" ^ name
          else
            try Hashtbl.find tbl name
            with Not_found -> failwith ("Macro non définie : " ^ name)
        in
        replace_macros (acc ^ prefix ^ value) after
    with Not_found -> acc ^ s
  in
  List.map (fun line -> replace_macros "" line) body

let preprocess filename =
  let lines =
    let ic = open_in filename in
    let rec loop acc =
      try let l = input_line ic in loop (l::acc)
      with End_of_file -> close_in ic; List.rev acc
    in loop []
  in
  let hdr, body = split_sections lines in
  let tbl        = extract_macros hdr in
  let sub        = substitute_macros tbl body in
  (* supprimer lignes vides en tête *)
  let rec drop = function
    | "" :: t -> drop t
    | l        -> l
  in
  String.concat "\n" (drop sub) ^ "\n"
