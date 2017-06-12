#language: fr

Fonctionnalité: chercher des vitraux par spécification (type, époque, etc.) 

	Je veux pouvoir trouver un vitrail que je recherche grâce à ses spécification.

Scénario: 
	Je souhaite trouver les vitraux d'une certaine époque

	Etant donné que je recherche des vitaux d'une certaine époque
	Et qu'il y'a un vitrail du 16éme siècle dans la base de donnée
	Et qu'il y'a un vitrail du 18ème siècle dans la base de données
	Quand je demande à avoir accès aux vitraux de l'époque du 18éme siècle
	Alors le vitrail du 18éme siècle est affiché

Scénario: 
	Je souhaite trouver les vitraux d'une certaine région

	Etant donnée que je recherche des vitraux d'une certaine région
	Et qu'il y'a un vitrail de Troyes dans la base de données
	Et qu'il y'a un vitrail de nogent-sur seine dans la base de donnée
	Quand je demande à avoir accès aux vitraux de Troyes
	Alors le vitrail de Troyes est affiché

Scénario:

	Je souhaite trouver les vitraux d'un certain type

	Etant donnée que je recherche des vitraux d'un certain type
	Et qu'il y'a un vitrail au plomb dans notre base de données
	Et qu'il y'a un vitrail Tiffany dans notre base de données
	Quand je demande à avoir accès aux vitraux Tiffany
	Alors le vitrail Tiffany est affiché