# language: fr

Fonctionnalité: Ajouter / Modifier les tags à un vitrail

Tous les utilisateurs peuvent ajouter ou modifier des tags à des vitraux.
Chaque tag est considéré comme un concept/thème permettant la catégorisation des vitraux par des mots-clés.

Scénario: Ajouter un nouveau tag à un vitrail

Etant donné que Pierre a listé les vitraux
Et qu'il souhaite ajouter un nouveau tag pour un vitrail
Quand il clique sur le vitrail cible
Et clique sur le bouton "Ajouter nouveau tag"
Et renseigne la description du nouveau tag
Alors le nouveau tag est bien créé
Et il est bien associé au vitrail

Scénario: Ajouter un tag existant à un vitrail

Etant donné que Pierre a listé les vitraux
Et qu'il souhaite ajouter un tag existant pour un vitrail
Quand il clique sur le vitrail cible
Et clique sur le bouton "Ajouter tag"
Et séléctionne un tag existant de la liste
Alors le tag séléctionné est bien associé au vitrail

Scénario: Modifier les tags d'un vitrail

Etant donné que Pierre a listé les vitraux
Et qu'il souhaite modifier un tag pour un vitrail
Quand il clique sur le vitrail cible
Et clique sur liste des tags
Et séléctionne l'option (-) pour enlever un tag
Alors le tag séléctionné est bien dissocié du vitrail