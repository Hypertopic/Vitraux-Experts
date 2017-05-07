#language: fr

Fonctionnalité: Consulter l'historique de la restauration d'un vitrail
	Un vitrail contient l'historique des restaurations effecuées par les experts.

Scénario: Un expert souhaite voir l'historique de la restauration d'un vitrail
	
	Etant donné qu'un expert souhaite voir l'historique de la restauration d'un vitrail
	Et que le vitrail contient N restauration, avec N > 0
	Quand l'expert clique sur le bouton "Visualiser la restauration"
	Alors la liste de la restauration du vitrail est affichée et ordonnée chronologiquement 
	Et l'expert a l'accès aux détails de chaque restauration