(* ast.ml : Définition de l'arbre de syntaxe abstraite pour SimpleText *)

type texte =
  | Mot of string
  | Italique of texte list
  | Gras of texte list
  | Lien of texte list * string
  | TexteCompose of texte list
  | Couleur of string * texte list

(* Un élément du document : titre, sous-titre, paragraphe ou liste *)
type element =
  | Titre of texte list
  | SousTitre of texte list
  | Paragraphe of texte list
  | Liste of item list

and item =
  | Item of element list

(* Un document est une liste d'éléments *)
type document = element list
