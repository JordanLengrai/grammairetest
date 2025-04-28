
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | STARX2
    | STARX1
    | PAREN_OUV
    | PAREN_FERM
    | PARAGRAPHE
    | MOT of (
# 8 "parser.mly"
       (string)
# 20 "parser.ml"
  )
    | ITEM
    | HASHZ2
    | HASHY1
    | EOF
    | CROCHET_OUV
    | CROCHET_FERM
    | COLOR
    | CODECOULEUR of (
# 11 "parser.mly"
       (string)
# 32 "parser.ml"
  )
    | ACCOLADES_OUV
    | ACCOLADES_FERM
  
end

include MenhirBasics

# 1 "parser.mly"
  


open Ast

# 47 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_document) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: document. *)

  | MenhirState01 : (('s, _menhir_box_document) _menhir_cell1_STARX2, _menhir_box_document) _menhir_state
    (** State 01.
        Stack shape : STARX2.
        Start symbol: document. *)

  | MenhirState02 : (('s, _menhir_box_document) _menhir_cell1_STARX1, _menhir_box_document) _menhir_state
    (** State 02.
        Stack shape : STARX1.
        Start symbol: document. *)

  | MenhirState03 : (('s, _menhir_box_document) _menhir_cell1_STARX2, _menhir_box_document) _menhir_state
    (** State 03.
        Stack shape : STARX2.
        Start symbol: document. *)

  | MenhirState05 : (('s, _menhir_box_document) _menhir_cell1_CROCHET_OUV, _menhir_box_document) _menhir_state
    (** State 05.
        Stack shape : CROCHET_OUV.
        Start symbol: document. *)

  | MenhirState06 : (('s, _menhir_box_document) _menhir_cell1_STARX1, _menhir_box_document) _menhir_state
    (** State 06.
        Stack shape : STARX1.
        Start symbol: document. *)

  | MenhirState08 : (('s, _menhir_box_document) _menhir_cell1_CROCHET_OUV, _menhir_box_document) _menhir_state
    (** State 08.
        Stack shape : CROCHET_OUV.
        Start symbol: document. *)

  | MenhirState10 : (('s, _menhir_box_document) _menhir_cell1_CROCHET_OUV, _menhir_box_document) _menhir_state
    (** State 10.
        Stack shape : CROCHET_OUV.
        Start symbol: document. *)

  | MenhirState15 : (('s, _menhir_box_document) _menhir_cell1_COLOR _menhir_cell0_CODECOULEUR, _menhir_box_document) _menhir_state
    (** State 15.
        Stack shape : COLOR CODECOULEUR.
        Start symbol: document. *)

  | MenhirState18 : (('s, _menhir_box_document) _menhir_cell1_element_de_texte, _menhir_box_document) _menhir_state
    (** State 18.
        Stack shape : element_de_texte.
        Start symbol: document. *)

  | MenhirState32 : (('s, _menhir_box_document) _menhir_cell1_element_de_texte_italique, _menhir_box_document) _menhir_state
    (** State 32.
        Stack shape : element_de_texte_italique.
        Start symbol: document. *)

  | MenhirState41 : (('s, _menhir_box_document) _menhir_cell1_element_de_texte_gras, _menhir_box_document) _menhir_state
    (** State 41.
        Stack shape : element_de_texte_gras.
        Start symbol: document. *)

  | MenhirState47 : (('s, _menhir_box_document) _menhir_cell1_ITEM, _menhir_box_document) _menhir_state
    (** State 47.
        Stack shape : ITEM.
        Start symbol: document. *)

  | MenhirState48 : ((('s, _menhir_box_document) _menhir_cell1_ITEM, _menhir_box_document) _menhir_cell1_ACCOLADES_OUV, _menhir_box_document) _menhir_state
    (** State 48.
        Stack shape : ITEM ACCOLADES_OUV.
        Start symbol: document. *)

  | MenhirState49 : (('s, _menhir_box_document) _menhir_cell1_HASHZ2, _menhir_box_document) _menhir_state
    (** State 49.
        Stack shape : HASHZ2.
        Start symbol: document. *)

  | MenhirState51 : ((('s, _menhir_box_document) _menhir_cell1_HASHZ2, _menhir_box_document) _menhir_cell1_texte, _menhir_box_document) _menhir_state
    (** State 51.
        Stack shape : HASHZ2 texte.
        Start symbol: document. *)

  | MenhirState52 : (('s, _menhir_box_document) _menhir_cell1_HASHY1, _menhir_box_document) _menhir_state
    (** State 52.
        Stack shape : HASHY1.
        Start symbol: document. *)

  | MenhirState54 : ((('s, _menhir_box_document) _menhir_cell1_HASHY1, _menhir_box_document) _menhir_cell1_texte, _menhir_box_document) _menhir_state
    (** State 54.
        Stack shape : HASHY1 texte.
        Start symbol: document. *)

  | MenhirState55 : (('s, _menhir_box_document) _menhir_cell1_texte, _menhir_box_document) _menhir_state
    (** State 55.
        Stack shape : texte.
        Start symbol: document. *)

  | MenhirState56 : ((('s, _menhir_box_document) _menhir_cell1_texte, _menhir_box_document) _menhir_cell1_PARAGRAPHE, _menhir_box_document) _menhir_state
    (** State 56.
        Stack shape : texte PARAGRAPHE.
        Start symbol: document. *)

  | MenhirState58 : (('s, _menhir_box_document) _menhir_cell1_suite_items, _menhir_box_document) _menhir_state
    (** State 58.
        Stack shape : suite_items.
        Start symbol: document. *)

  | MenhirState62 : ((('s, _menhir_box_document) _menhir_cell1_texte, _menhir_box_document) _menhir_cell1_suite_items, _menhir_box_document) _menhir_state
    (** State 62.
        Stack shape : texte suite_items.
        Start symbol: document. *)

  | MenhirState69 : ((('s, _menhir_box_document) _menhir_cell1_ITEM, _menhir_box_document) _menhir_cell1_item_contenu, _menhir_box_document) _menhir_state
    (** State 69.
        Stack shape : ITEM item_contenu.
        Start symbol: document. *)


and ('s, 'r) _menhir_cell1_element_de_texte = 
  | MenhirCell1_element_de_texte of 's * ('s, 'r) _menhir_state * (Ast.texte)

and ('s, 'r) _menhir_cell1_element_de_texte_gras = 
  | MenhirCell1_element_de_texte_gras of 's * ('s, 'r) _menhir_state * (Ast.texte)

and ('s, 'r) _menhir_cell1_element_de_texte_italique = 
  | MenhirCell1_element_de_texte_italique of 's * ('s, 'r) _menhir_state * (Ast.texte)

and ('s, 'r) _menhir_cell1_item_contenu = 
  | MenhirCell1_item_contenu of 's * ('s, 'r) _menhir_state * (Ast.document)

and ('s, 'r) _menhir_cell1_suite_items = 
  | MenhirCell1_suite_items of 's * ('s, 'r) _menhir_state * (Ast.item list)

and ('s, 'r) _menhir_cell1_texte = 
  | MenhirCell1_texte of 's * ('s, 'r) _menhir_state * (Ast.texte list)

and ('s, 'r) _menhir_cell1_ACCOLADES_OUV = 
  | MenhirCell1_ACCOLADES_OUV of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_CODECOULEUR = 
  | MenhirCell0_CODECOULEUR of 's * (
# 11 "parser.mly"
       (string)
# 191 "parser.ml"
)

and ('s, 'r) _menhir_cell1_COLOR = 
  | MenhirCell1_COLOR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_CROCHET_OUV = 
  | MenhirCell1_CROCHET_OUV of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_HASHY1 = 
  | MenhirCell1_HASHY1 of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_HASHZ2 = 
  | MenhirCell1_HASHZ2 of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ITEM = 
  | MenhirCell1_ITEM of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PARAGRAPHE = 
  | MenhirCell1_PARAGRAPHE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_STARX1 = 
  | MenhirCell1_STARX1 of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_STARX2 = 
  | MenhirCell1_STARX2 of 's * ('s, 'r) _menhir_state

and _menhir_box_document = 
  | MenhirBox_document of (Ast.document) [@@unboxed]

let _menhir_action_01 =
  fun _1 ->
    (
# 21 "parser.mly"
               ( _1 )
# 226 "parser.ml"
     : (Ast.document))

let _menhir_action_02 =
  fun _1 ->
    (
# 17 "parser.mly"
            ( _1 )
# 234 "parser.ml"
     : (Ast.document))

let _menhir_action_03 =
  fun _1 ->
    (
# 64 "parser.mly"
      ( Mot(_1) )
# 242 "parser.ml"
     : (Ast.texte))

let _menhir_action_04 =
  fun _2 ->
    (
# 65 "parser.mly"
                               ( Italique(_2) )
# 250 "parser.ml"
     : (Ast.texte))

let _menhir_action_05 =
  fun _2 ->
    (
# 66 "parser.mly"
                           ( Gras(_2) )
# 258 "parser.ml"
     : (Ast.texte))

let _menhir_action_06 =
  fun _2 _5 ->
    (
# 67 "parser.mly"
                                                          ( Lien(_2, _5) )
# 266 "parser.ml"
     : (Ast.texte))

let _menhir_action_07 =
  fun _3 _6 ->
    (
# 68 "parser.mly"
                                                                                    ( Couleur(_3, _6) )
# 274 "parser.ml"
     : (Ast.texte))

let _menhir_action_08 =
  fun _1 ->
    (
# 88 "parser.mly"
      ( Mot(_1) )
# 282 "parser.ml"
     : (Ast.texte))

let _menhir_action_09 =
  fun _2 ->
    (
# 89 "parser.mly"
                               ( Italique(_2) )
# 290 "parser.ml"
     : (Ast.texte))

let _menhir_action_10 =
  fun _2 _5 ->
    (
# 90 "parser.mly"
                                                          ( Lien(_2, _5) )
# 298 "parser.ml"
     : (Ast.texte))

let _menhir_action_11 =
  fun _1 ->
    (
# 77 "parser.mly"
      ( Mot(_1) )
# 306 "parser.ml"
     : (Ast.texte))

let _menhir_action_12 =
  fun _2 ->
    (
# 78 "parser.mly"
                           ( Gras(_2) )
# 314 "parser.ml"
     : (Ast.texte))

let _menhir_action_13 =
  fun _2 _5 ->
    (
# 79 "parser.mly"
                                                          ( Lien(_2, _5) )
# 322 "parser.ml"
     : (Ast.texte))

let _menhir_action_14 =
  fun _2 _4 ->
    (
# 25 "parser.mly"
                                       ( Titre(_2) :: _4 )
# 330 "parser.ml"
     : (Ast.document))

let _menhir_action_15 =
  fun _2 ->
    (
# 26 "parser.mly"
               ( [Titre(_2)] )
# 338 "parser.ml"
     : (Ast.document))

let _menhir_action_16 =
  fun _2 _4 ->
    (
# 27 "parser.mly"
                                       ( SousTitre(_2) :: _4 )
# 346 "parser.ml"
     : (Ast.document))

let _menhir_action_17 =
  fun _2 ->
    (
# 28 "parser.mly"
               ( [SousTitre(_2)] )
# 354 "parser.ml"
     : (Ast.document))

let _menhir_action_18 =
  fun _1 _2 _4 ->
    (
# 29 "parser.mly"
                                            ( Paragraphe(_1) :: Liste(_2) :: _4 )
# 362 "parser.ml"
     : (Ast.document))

let _menhir_action_19 =
  fun _1 _2 ->
    (
# 30 "parser.mly"
                    ( [Paragraphe(_1); Liste(_2)] )
# 370 "parser.ml"
     : (Ast.document))

let _menhir_action_20 =
  fun _1 _3 ->
    (
# 31 "parser.mly"
                                ( Paragraphe(_1) :: _3 )
# 378 "parser.ml"
     : (Ast.document))

let _menhir_action_21 =
  fun _1 ->
    (
# 32 "parser.mly"
        ( [Paragraphe(_1)] )
# 386 "parser.ml"
     : (Ast.document))

let _menhir_action_22 =
  fun _1 _3 ->
    (
# 33 "parser.mly"
                                      ( Liste(_1) :: _3 )
# 394 "parser.ml"
     : (Ast.document))

let _menhir_action_23 =
  fun _1 ->
    (
# 34 "parser.mly"
              ( [Liste(_1)] )
# 402 "parser.ml"
     : (Ast.document))

let _menhir_action_24 =
  fun _2 ->
    (
# 50 "parser.mly"
                                            ( _2 )
# 410 "parser.ml"
     : (Ast.document))

let _menhir_action_25 =
  fun _1 ->
    (
# 51 "parser.mly"
        ( [Paragraphe(_1)] )
# 418 "parser.ml"
     : (Ast.document))

let _menhir_action_26 =
  fun _2 _3 ->
    (
# 45 "parser.mly"
                                ( Item(_2) :: _3 )
# 426 "parser.ml"
     : (Ast.item list))

let _menhir_action_27 =
  fun () ->
    (
# 46 "parser.mly"
             ( [] )
# 434 "parser.ml"
     : (Ast.item list))

let _menhir_action_28 =
  fun _1 _2 ->
    (
# 59 "parser.mly"
                         ( _1 :: _2 )
# 442 "parser.ml"
     : (Ast.texte list))

let _menhir_action_29 =
  fun () ->
    (
# 60 "parser.mly"
             ( [] )
# 450 "parser.ml"
     : (Ast.texte list))

let _menhir_action_30 =
  fun _1 _2 ->
    (
# 83 "parser.mly"
                                   ( _1 :: _2 )
# 458 "parser.ml"
     : (Ast.texte list))

let _menhir_action_31 =
  fun () ->
    (
# 84 "parser.mly"
             ( [] )
# 466 "parser.ml"
     : (Ast.texte list))

let _menhir_action_32 =
  fun _1 _2 ->
    (
# 72 "parser.mly"
                                           ( _1 :: _2 )
# 474 "parser.ml"
     : (Ast.texte list))

let _menhir_action_33 =
  fun () ->
    (
# 73 "parser.mly"
             ( [] )
# 482 "parser.ml"
     : (Ast.texte list))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | ACCOLADES_FERM ->
        "ACCOLADES_FERM"
    | ACCOLADES_OUV ->
        "ACCOLADES_OUV"
    | CODECOULEUR _ ->
        "CODECOULEUR"
    | COLOR ->
        "COLOR"
    | CROCHET_FERM ->
        "CROCHET_FERM"
    | CROCHET_OUV ->
        "CROCHET_OUV"
    | EOF ->
        "EOF"
    | HASHY1 ->
        "HASHY1"
    | HASHZ2 ->
        "HASHZ2"
    | ITEM ->
        "ITEM"
    | MOT _ ->
        "MOT"
    | PARAGRAPHE ->
        "PARAGRAPHE"
    | PAREN_FERM ->
        "PAREN_FERM"
    | PAREN_OUV ->
        "PAREN_OUV"
    | STARX1 ->
        "STARX1"
    | STARX2 ->
        "STARX2"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_run_71 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _v _tok ->
      let _1 = _v in
      let _v = _menhir_action_01 _1 in
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let _1 = _v in
          let _v = _menhir_action_02 _1 in
          MenhirBox_document _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_01 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_STARX2 (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STARX1 ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState01
      | MOT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState01
      | CROCHET_OUV ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState01
      | STARX2 ->
          let _v = _menhir_action_31 () in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_02 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_STARX1 (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STARX2 ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState02
      | MOT _v ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState02
      | CROCHET_OUV ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState02
      | STARX1 ->
          let _v = _menhir_action_33 () in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_03 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_STARX2 (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STARX1 ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState03
      | MOT _v ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState03
      | CROCHET_OUV ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState03
      | STARX2 ->
          let _v = _menhir_action_31 () in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_04 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_08 _1 in
      _menhir_goto_element_de_texte_gras _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_element_de_texte_gras : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_element_de_texte_gras (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STARX1 ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState41
      | MOT _v_0 ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState41
      | CROCHET_OUV ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState41
      | STARX2 ->
          let _v_1 = _menhir_action_31 () in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_05 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CROCHET_OUV (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STARX2 ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState05
      | STARX1 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState05
      | MOT _v ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState05
      | CROCHET_OUV ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState05
      | COLOR ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState05
      | CROCHET_FERM ->
          let _v = _menhir_action_29 () in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_06 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_STARX1 (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STARX2 ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState06
      | MOT _v ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState06
      | CROCHET_OUV ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState06
      | STARX1 ->
          let _v = _menhir_action_33 () in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_07 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_11 _1 in
      _menhir_goto_element_de_texte_italique _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_element_de_texte_italique : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_element_de_texte_italique (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STARX2 ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | MOT _v_0 ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState32
      | CROCHET_OUV ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | STARX1 ->
          let _v_1 = _menhir_action_33 () in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_08 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CROCHET_OUV (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STARX2 ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
      | STARX1 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
      | MOT _v ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState08
      | CROCHET_OUV ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
      | COLOR ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState08
      | CROCHET_FERM ->
          let _v = _menhir_action_29 () in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_09 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_03 _1 in
      _menhir_goto_element_de_texte _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_element_de_texte : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_element_de_texte (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STARX2 ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | STARX1 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | MOT _v_0 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState18
      | CROCHET_OUV ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | COLOR ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | ACCOLADES_FERM | CROCHET_FERM | EOF | ITEM | PARAGRAPHE ->
          let _v_1 = _menhir_action_29 () in
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_10 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CROCHET_OUV (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STARX2 ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState10
      | STARX1 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState10
      | MOT _v ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState10
      | CROCHET_OUV ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState10
      | COLOR ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState10
      | CROCHET_FERM ->
          let _v = _menhir_action_29 () in
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_11 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_COLOR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | ACCOLADES_OUV ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | CODECOULEUR _v ->
              let _menhir_stack = MenhirCell0_CODECOULEUR (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | ACCOLADES_FERM ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | ACCOLADES_OUV ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | STARX2 ->
                          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
                      | STARX1 ->
                          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
                      | MOT _v_0 ->
                          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState15
                      | CROCHET_OUV ->
                          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
                      | COLOR ->
                          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
                      | ACCOLADES_FERM ->
                          let _v_1 = _menhir_action_29 () in
                          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_16 : type  ttv_stack. (ttv_stack, _menhir_box_document) _menhir_cell1_COLOR _menhir_cell0_CODECOULEUR -> _ -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | ACCOLADES_FERM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_CODECOULEUR (_menhir_stack, _3) = _menhir_stack in
          let MenhirCell1_COLOR (_menhir_stack, _menhir_s) = _menhir_stack in
          let _6 = _v in
          let _v = _menhir_action_07 _3 _6 in
          _menhir_goto_element_de_texte _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_20 : type  ttv_stack. (ttv_stack, _menhir_box_document) _menhir_cell1_CROCHET_OUV -> _ -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | CROCHET_FERM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | PAREN_OUV ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | MOT _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | PAREN_FERM ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let MenhirCell1_CROCHET_OUV (_menhir_stack, _menhir_s) = _menhir_stack in
                      let (_2, _5) = (_v, _v_0) in
                      let _v = _menhir_action_06 _2 _5 in
                      _menhir_goto_element_de_texte _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_19 : type  ttv_stack. (ttv_stack, _menhir_box_document) _menhir_cell1_element_de_texte -> _ -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_element_de_texte (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_28 _1 _2 in
      _menhir_goto_texte _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_texte : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState47 ->
          _menhir_run_68 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState00 ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState48 ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState51 ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState62 ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState58 ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState56 ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState54 ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState52 ->
          _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState49 ->
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState05 ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState08 ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState10 ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState18 ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState15 ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_68 : type  ttv_stack. ((ttv_stack, _menhir_box_document) _menhir_cell1_ITEM as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_document) _menhir_state -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _1 = _v in
      let _v = _menhir_action_25 _1 in
      _menhir_goto_item_contenu _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_item_contenu : type  ttv_stack. ((ttv_stack, _menhir_box_document) _menhir_cell1_ITEM as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_document) _menhir_state -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_item_contenu (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ITEM ->
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | ACCOLADES_FERM | EOF | PARAGRAPHE ->
          let _v_0 = _menhir_action_27 () in
          _menhir_run_70 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_47 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ITEM (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STARX2 ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | STARX1 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | MOT _v ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState47
      | CROCHET_OUV ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | COLOR ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState47
      | ACCOLADES_OUV ->
          let _menhir_stack = MenhirCell1_ACCOLADES_OUV (_menhir_stack, MenhirState47) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STARX2 ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
          | STARX1 ->
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
          | MOT _v ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState48
          | ITEM ->
              _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
          | HASHZ2 ->
              _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
          | HASHY1 ->
              _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
          | CROCHET_OUV ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
          | COLOR ->
              _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
          | ACCOLADES_FERM | PARAGRAPHE ->
              let _v = _menhir_action_27 () in
              _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState48 _tok
          | _ ->
              _eRR ())
      | ACCOLADES_FERM | EOF | ITEM | PARAGRAPHE ->
          let _v = _menhir_action_29 () in
          _menhir_run_68 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState47 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_49 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_HASHZ2 (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STARX2 ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | STARX1 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | MOT _v ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState49
      | CROCHET_OUV ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | COLOR ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState49
      | ACCOLADES_FERM | EOF | PARAGRAPHE ->
          let _v = _menhir_action_29 () in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState49 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_50 : type  ttv_stack. ((ttv_stack, _menhir_box_document) _menhir_cell1_HASHZ2 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_document) _menhir_state -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PARAGRAPHE ->
          let _menhir_stack = MenhirCell1_texte (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STARX2 ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
          | STARX1 ->
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
          | MOT _v_0 ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState51
          | ITEM ->
              _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
          | HASHZ2 ->
              _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
          | HASHY1 ->
              _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
          | CROCHET_OUV ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
          | COLOR ->
              _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
          | ACCOLADES_FERM | EOF | PARAGRAPHE ->
              let _v_1 = _menhir_action_27 () in
              _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState51 _tok
          | _ ->
              _eRR ())
      | ACCOLADES_FERM | EOF ->
          let MenhirCell1_HASHZ2 (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_17 _2 in
          _menhir_goto_element_plus _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_52 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_HASHY1 (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STARX2 ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | STARX1 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | MOT _v ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState52
      | CROCHET_OUV ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | COLOR ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | ACCOLADES_FERM | EOF | PARAGRAPHE ->
          let _v = _menhir_action_29 () in
          _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState52 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_53 : type  ttv_stack. ((ttv_stack, _menhir_box_document) _menhir_cell1_HASHY1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_document) _menhir_state -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PARAGRAPHE ->
          let _menhir_stack = MenhirCell1_texte (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STARX2 ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | STARX1 ->
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | MOT _v_0 ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState54
          | ITEM ->
              _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | HASHZ2 ->
              _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | HASHY1 ->
              _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | CROCHET_OUV ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | COLOR ->
              _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | ACCOLADES_FERM | EOF | PARAGRAPHE ->
              let _v_1 = _menhir_action_27 () in
              _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState54 _tok
          | _ ->
              _eRR ())
      | ACCOLADES_FERM | EOF ->
          let MenhirCell1_HASHY1 (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_15 _2 in
          _menhir_goto_element_plus _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_57 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PARAGRAPHE ->
          let _menhir_stack = MenhirCell1_suite_items (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STARX2 ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
          | STARX1 ->
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
          | MOT _v_0 ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState58
          | ITEM ->
              _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
          | HASHZ2 ->
              _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
          | HASHY1 ->
              _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
          | CROCHET_OUV ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
          | COLOR ->
              _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState58
          | ACCOLADES_FERM | EOF | PARAGRAPHE ->
              let _v_1 = _menhir_action_27 () in
              _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState58 _tok
          | _ ->
              _eRR ())
      | ACCOLADES_FERM | EOF ->
          let _1 = _v in
          let _v = _menhir_action_23 _1 in
          _menhir_goto_element_plus _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_goto_element_plus : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState00 ->
          _menhir_run_71 _menhir_stack _v _tok
      | MenhirState48 ->
          _menhir_run_66 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState51 ->
          _menhir_run_65 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState54 ->
          _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState62 ->
          _menhir_run_63 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState56 ->
          _menhir_run_60 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState58 ->
          _menhir_run_59 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_66 : type  ttv_stack. ((ttv_stack, _menhir_box_document) _menhir_cell1_ITEM, _menhir_box_document) _menhir_cell1_ACCOLADES_OUV -> _ -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | ACCOLADES_FERM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ACCOLADES_OUV (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_24 _2 in
          _menhir_goto_item_contenu _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_65 : type  ttv_stack. ((ttv_stack, _menhir_box_document) _menhir_cell1_HASHZ2, _menhir_box_document) _menhir_cell1_texte -> _ -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_texte (_menhir_stack, _, _2) = _menhir_stack in
      let MenhirCell1_HASHZ2 (_menhir_stack, _menhir_s) = _menhir_stack in
      let _4 = _v in
      let _v = _menhir_action_16 _2 _4 in
      _menhir_goto_element_plus _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_64 : type  ttv_stack. ((ttv_stack, _menhir_box_document) _menhir_cell1_HASHY1, _menhir_box_document) _menhir_cell1_texte -> _ -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_texte (_menhir_stack, _, _2) = _menhir_stack in
      let MenhirCell1_HASHY1 (_menhir_stack, _menhir_s) = _menhir_stack in
      let _4 = _v in
      let _v = _menhir_action_14 _2 _4 in
      _menhir_goto_element_plus _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_63 : type  ttv_stack. ((ttv_stack, _menhir_box_document) _menhir_cell1_texte, _menhir_box_document) _menhir_cell1_suite_items -> _ -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_suite_items (_menhir_stack, _, _2) = _menhir_stack in
      let MenhirCell1_texte (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _4 = _v in
      let _v = _menhir_action_18 _1 _2 _4 in
      _menhir_goto_element_plus _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_60 : type  ttv_stack. ((ttv_stack, _menhir_box_document) _menhir_cell1_texte, _menhir_box_document) _menhir_cell1_PARAGRAPHE -> _ -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_PARAGRAPHE (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_texte (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_20 _1 _3 in
      _menhir_goto_element_plus _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_59 : type  ttv_stack. (ttv_stack, _menhir_box_document) _menhir_cell1_suite_items -> _ -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_suite_items (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_22 _1 _3 in
      _menhir_goto_element_plus _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_70 : type  ttv_stack. ((ttv_stack, _menhir_box_document) _menhir_cell1_ITEM, _menhir_box_document) _menhir_cell1_item_contenu -> _ -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_item_contenu (_menhir_stack, _, _2) = _menhir_stack in
      let MenhirCell1_ITEM (_menhir_stack, _menhir_s) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_26 _2 _3 in
      _menhir_goto_suite_items _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_suite_items : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState69 ->
          _menhir_run_70 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState55 ->
          _menhir_run_61 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState00 ->
          _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState48 ->
          _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState51 ->
          _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState54 ->
          _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState62 ->
          _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState58 ->
          _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState56 ->
          _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_61 : type  ttv_stack. ((ttv_stack, _menhir_box_document) _menhir_cell1_texte as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_document) _menhir_state -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PARAGRAPHE ->
          let _menhir_stack = MenhirCell1_suite_items (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STARX2 ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
          | STARX1 ->
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
          | MOT _v_0 ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState62
          | ITEM ->
              _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
          | HASHZ2 ->
              _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
          | HASHY1 ->
              _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
          | CROCHET_OUV ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
          | COLOR ->
              _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState62
          | ACCOLADES_FERM | EOF | PARAGRAPHE ->
              let _v_1 = _menhir_action_27 () in
              _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState62 _tok
          | _ ->
              _eRR ())
      | ACCOLADES_FERM | EOF ->
          let MenhirCell1_texte (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_19 _1 _2 in
          _menhir_goto_element_plus _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_55 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PARAGRAPHE ->
          let _menhir_stack = MenhirCell1_texte (_menhir_stack, _menhir_s, _v) in
          let _menhir_stack = MenhirCell1_PARAGRAPHE (_menhir_stack, MenhirState55) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STARX2 ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
          | STARX1 ->
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
          | MOT _v_0 ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState56
          | ITEM ->
              _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
          | HASHZ2 ->
              _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
          | HASHY1 ->
              _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
          | CROCHET_OUV ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
          | COLOR ->
              _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
          | ACCOLADES_FERM | EOF | PARAGRAPHE ->
              let _v_1 = _menhir_action_27 () in
              _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState56 _tok
          | _ ->
              _eRR ())
      | ITEM ->
          let _menhir_stack = MenhirCell1_texte (_menhir_stack, _menhir_s, _v) in
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | ACCOLADES_FERM | EOF ->
          let _1 = _v in
          let _v = _menhir_action_21 _1 in
          _menhir_goto_element_plus _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_34 : type  ttv_stack. (ttv_stack, _menhir_box_document) _menhir_cell1_CROCHET_OUV -> _ -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | CROCHET_FERM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | PAREN_OUV ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | MOT _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | PAREN_FERM ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let MenhirCell1_CROCHET_OUV (_menhir_stack, _menhir_s) = _menhir_stack in
                      let (_2, _5) = (_v, _v_0) in
                      let _v = _menhir_action_10 _2 _5 in
                      _menhir_goto_element_de_texte_gras _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_25 : type  ttv_stack. (ttv_stack, _menhir_box_document) _menhir_cell1_CROCHET_OUV -> _ -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | CROCHET_FERM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | PAREN_OUV ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | MOT _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | PAREN_FERM ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let MenhirCell1_CROCHET_OUV (_menhir_stack, _menhir_s) = _menhir_stack in
                      let (_2, _5) = (_v, _v_0) in
                      let _v = _menhir_action_13 _2 _5 in
                      _menhir_goto_element_de_texte_italique _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_33 : type  ttv_stack. (ttv_stack, _menhir_box_document) _menhir_cell1_element_de_texte_italique -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_element_de_texte_italique (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_32 _1 _2 in
      _menhir_goto_texte_italique _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_texte_italique : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState02 ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState32 ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState06 ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_43 : type  ttv_stack. (ttv_stack, _menhir_box_document) _menhir_cell1_STARX1 -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_STARX1 (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_09 _2 in
      _menhir_goto_element_de_texte_gras _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_30 : type  ttv_stack. (ttv_stack, _menhir_box_document) _menhir_cell1_STARX1 -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_STARX1 (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_04 _2 in
      _menhir_goto_element_de_texte _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_42 : type  ttv_stack. (ttv_stack, _menhir_box_document) _menhir_cell1_element_de_texte_gras -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_element_de_texte_gras (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_30 _1 _2 in
      _menhir_goto_texte_gras _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_texte_gras : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_document) _menhir_state -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState01 ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState41 ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState03 ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_45 : type  ttv_stack. (ttv_stack, _menhir_box_document) _menhir_cell1_STARX2 -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_STARX2 (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_05 _2 in
      _menhir_goto_element_de_texte _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_39 : type  ttv_stack. (ttv_stack, _menhir_box_document) _menhir_cell1_STARX2 -> _ -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_STARX2 (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_12 _2 in
      _menhir_goto_element_de_texte_italique _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_document =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STARX2 ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | STARX1 ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | MOT _v ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00
      | ITEM ->
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | HASHZ2 ->
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | HASHY1 ->
          _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | CROCHET_OUV ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | COLOR ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | EOF | PARAGRAPHE ->
          let _v = _menhir_action_27 () in
          _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00 _tok
      | _ ->
          _eRR ()
  
end

let document =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_document v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
