{ 
(* lexer.mll : Analyseur lexical pour SimpleText *)
open Parser

}

rule lire = parse
  | "#" [' ' '\t']* { HASHY1 }
  | "##" [' ' '\t']* { HASHZ2 }
  | "\\item" [' ' '\t']* { ITEM }
  | "\\color" [' ' '\t']* { COLOR }
  | ['0'-'9' 'A'-'F' 'a'-'f'] ['0'-'9' 'A'-'F' 'a'-'f'] ['0'-'9' 'A'-'F' 'a'-'f'] ['0'-'9' 'A'-'F' 'a'-'f'] ['0'-'9' 'A'-'F' 'a'-'f'] ['0'-'9' 'A'-'F' 'a'-'f'] as code { CODECOULEUR code }
  | "{" { ACCOLADES_OUV }
  | "}" { ACCOLADES_FERM }
  | "**" { STARX2 }
  | "*" { STARX1 }
  | "[" { CROCHET_OUV }
  | "]" { CROCHET_FERM }
  | "(" { PAREN_OUV }
  | ")" { PAREN_FERM }
  | [' ' '\t']+ { lire lexbuf }
  | "\n\n" { PARAGRAPHE }
  | "\n" { lire lexbuf }
  | [^'*' '#' '\\' '[' ']' '(' ')' '{' '}' ' ' '\n' '\t']+ as m { MOT m }
  | eof { EOF }
