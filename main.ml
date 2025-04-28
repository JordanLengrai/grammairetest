(* main.ml : Point d'entrée du programme SimpleText vers HTML *)
let () =
  let fichier = if Array.length Sys.argv > 1 then Sys.argv.(1) else failwith "Veuillez fournir un fichier SimpleText en argument." in
  let ic = open_in fichier in
  let lexbuf = Lexing.from_channel ic in
  try
    let doc = Parser.document Lexer.lire lexbuf in
    close_in ic;
    let html = Interpreteur.html_of_document doc in
    print_endline html;
    (* Génération du fichier HTML de sortie *)
    let out_file =
      let base =
        try Filename.chop_extension fichier with _ -> fichier
      in
      base ^ ".html"
    in
    let oc = open_out out_file in
    Printf.fprintf oc "<!DOCTYPE html>\n<html lang=\"fr\">\n<head>\n  <meta charset=\"utf-8\">\n  <title>Document SimpleText</title>\n</head>\n<body>\n%s\n</body></html>\n" html;
    close_out oc;
    Printf.printf "\nFichier HTML généré : %s\n" out_file;
  with
  | Parser.Error ->
    let pos = lexbuf.Lexing.lex_curr_p in
    let lexeme = Lexing.lexeme lexbuf in
    Printf.eprintf "Erreur de syntaxe à la ligne %d, colonne %d (autour de \"%s\")\n"
      pos.Lexing.pos_lnum (pos.Lexing.pos_cnum - pos.Lexing.pos_bol + 1) lexeme;
    close_in ic
  | e ->
      close_in ic;
      raise e
