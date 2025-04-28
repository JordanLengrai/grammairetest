type texte =
  | Mot of string
  | Italique of texte list
  | Gras of texte list
  | Lien of texte list * string
  | TexteCompose of texte list
  | Couleur of string * texte list

type element =
  | Titre of texte list
  | SousTitre of texte list
  | Paragraphe of texte list
  | Liste of item list

and item =
  | Item of element list

type document = element list
