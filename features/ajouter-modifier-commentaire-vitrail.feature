#language: fr

Fonctionnalité: Ajouter un commentaire sur un vitrail

	En tant qu'utilisateur,
	Je veux ajouter un commentaire sur un vitrail

Scénario: Ajouter un commentaire

	Etant donné que Kevin veut ajouter un commentaire sur un vitrail
	Et qu'il est sur la page des informations du vitrail
	Quand il saisit du texte dans le champs commentaire
	Et qu'il clique sur le bouton valider
	Alors le commentaire est ajouté au vitrail
	Et s'affiche lors de l'affichage de celui-ci

Scénario: Modifier un commentaire

	Etant donné que Kevin veut modifier un commentaire sur un vitrail
	Et qu'il est sur la page des informations du vitrail
	Et qu'il est le propriétaire de ce commentaire
	Quand il clique sur le bouton de modification du commentaire
	Et qu'il change le texte dans le champs commentaire
	Et qu'il clique sur le bouton valider
	Alors le commentaire est modifié
	Et s'affiche lors de l'affichage de celui-ci

Scénario: Supprimer un commentaire

	Etant donné que Kevin veut supprimer un commentaire sur un vitrail
	Et qu'il est sur la page des informations du vitrail
	Et qu'il est le propriétaire de ce commentaire
	Quand il clique sur le bouton de suppression du commentaire
	Alors le commentaire est supprimé du vitrail
	Et ne s'affiche plus lors de l'affichage de celui-ci