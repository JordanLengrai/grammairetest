%{


open Ast
%}


%token <string> MOT
%token HASHY1 HASHZ2 STARX1 STARX2 CROCHET_OUV CROCHET_FERM PAREN_OUV PAREN_FERM ITEM PARAGRAPHE EOF
%token ACCOLADES_OUV ACCOLADES_FERM COLOR
%token <string> CODECOULEUR
%start <Ast.document> document

%%

document:
  corps EOF { $1 }
;

corps:
  element_plus { $1 }
;

element_plus:
  HASHY1 texte PARAGRAPHE element_plus { Titre($2) :: $4 }
| HASHY1 texte { [Titre($2)] }
| HASHZ2 texte PARAGRAPHE element_plus { SousTitre($2) :: $4 }
| HASHZ2 texte { [SousTitre($2)] }
| texte suite_items PARAGRAPHE element_plus { Paragraphe($1) :: Liste($2) :: $4 }
| texte suite_items { [Paragraphe($1); Liste($2)] }
| texte PARAGRAPHE element_plus { Paragraphe($1) :: $3 }
| texte { [Paragraphe($1)] }
| suite_items PARAGRAPHE element_plus { Liste($1) :: $3 }
| suite_items { [Liste($1)] }
;

element:
  HASHY1 texte { Titre($2) }
| HASHZ2 texte { SousTitre($2) }
| suite_items { Liste($1) }
| texte { Paragraphe($1) }
;

suite_items:
  ITEM item_contenu suite_items { Item($2) :: $3 }
| /* vide */ { [] }
;

item_contenu:
  ACCOLADES_OUV element_plus ACCOLADES_FERM { $2 }
| texte { [Paragraphe($1)] }
;

item:
  ITEM item_contenu { Item($2) }
;

texte:
  element_de_texte texte { $1 :: $2 }
| /* vide */ { [] }
;

element_de_texte:
  MOT { Mot($1) }
| STARX1 texte_italique STARX1 { Italique($2) }
| STARX2 texte_gras STARX2 { Gras($2) }
| CROCHET_OUV texte CROCHET_FERM PAREN_OUV MOT PAREN_FERM { Lien($2, $5) }
| COLOR ACCOLADES_OUV CODECOULEUR ACCOLADES_FERM ACCOLADES_OUV texte ACCOLADES_FERM { Couleur($3, $6) }
;

texte_italique:
  element_de_texte_italique texte_italique { $1 :: $2 }
| /* vide */ { [] }
;

element_de_texte_italique:
  MOT { Mot($1) }
| STARX2 texte_gras STARX2 { Gras($2) }
| CROCHET_OUV texte CROCHET_FERM PAREN_OUV MOT PAREN_FERM { Lien($2, $5) }
;

texte_gras:
  element_de_texte_gras texte_gras { $1 :: $2 }
| /* vide */ { [] }
;

element_de_texte_gras:
  MOT { Mot($1) }
| STARX1 texte_italique STARX1 { Italique($2) }
| CROCHET_OUV texte CROCHET_FERM PAREN_OUV MOT PAREN_FERM { Lien($2, $5) }
;
