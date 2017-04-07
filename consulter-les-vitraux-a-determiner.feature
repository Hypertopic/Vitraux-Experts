#language: fr




Fonctionnalité: Consulter les Vitraux à déterminer




Le but de cette fonctionnalités est de rapidement trouver les vitraux qui sont non déterminer afin de corriger cela.

Lors d'une recherche on pourra ainsi préciser que l'on souhaite trouver principalement des vitraux qui n’ont pas de description.

Pour cela, les vitraux auront soit été préalablement tagués comme manquant de description par des utilisateurs soit nouvellement ajouté.




Scénario:




Etant donné que Benjamin et Paul ont un compte

Et que Benjamin a tagué un vitrail avec le tag « Manque de description »
Et que Benjamin vient d’ajouter un vitrail

Quand Paul effectue une recherche pour trouver des vitraux qui « Manque de description »

Alors la liste renvoyé par le site comprendra celui de tagué par Benjamin et celui qu’il vient d’ajouter
