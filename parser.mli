
(* The type of tokens. *)

type token = 
  | STARX2
  | STARX1
  | PAREN_OUV
  | PAREN_FERM
  | PARAGRAPHE
  | MOT of (string)
  | ITEM
  | HASHZ2
  | HASHY1
  | EOF
  | CROCHET_OUV
  | CROCHET_FERM
  | COLOR
  | CODECOULEUR of (string)
  | ACCOLADES_OUV
  | ACCOLADES_FERM

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val document: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.document)
