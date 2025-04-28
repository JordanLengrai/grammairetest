open Ast

let rec html_of_texte t =
  match t with
  | Mot s -> s
  | Italique l -> "<em>" ^ (String.concat " " (List.map html_of_texte l)) ^ "</em>"
  | Gras l -> "<strong>" ^ (String.concat " " (List.map html_of_texte l)) ^ "</strong>"
  | Lien (l, url) -> "<a href=\"" ^ url ^ "\">" ^ (String.concat " " (List.map html_of_texte l)) ^ "</a>"
  | TexteCompose l -> String.concat " " (List.map html_of_texte l)
  | Couleur (code, l) -> "<span style=\"color:#" ^ code ^ "\">" ^ (String.concat " " (List.map html_of_texte l)) ^ "</span>"

let rec html_of_element e =
  match e with
  | Titre t -> "<h1>" ^ (String.concat " " (List.map html_of_texte t)) ^ "</h1>"
  | SousTitre t -> "<h2>" ^ (String.concat " " (List.map html_of_texte t)) ^ "</h2>"
  | Paragraphe t -> "<p>" ^ (String.concat " " (List.map html_of_texte t)) ^ "</p>"
  | Liste items -> "<ul>" ^ (String.concat "" (List.map html_of_item items)) ^ "</ul>"

and html_of_item item =
  match item with
  | Item l -> "<li>" ^ (String.concat "" (List.map html_of_element l)) ^ "</li>"

let html_of_document doc =
  String.concat "\n" (List.map html_of_element doc)
