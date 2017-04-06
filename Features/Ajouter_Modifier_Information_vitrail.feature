#language: FR

Fonctionnalité: Ajouter / Modifier les informations d'un vitrail
	Pierre sera dans cette fonctionnalité un utilisateur lambda. 
	L'ajout ou la modifications pouvant être réalisée par tout le monde comme c'est fait pour wikipédia.

Scénario: Ajouter des informations à un vitrail

Etant donné que Pierre identifie un vitrail manquant d'informations
Et qu'il dispose d'informations vérifiées concernant celui-ci
Quand Pierre clique sur l'outil de modifications
Et ajoute des informations sur le vitrail
Et qu'il confirme les changements réalisés
Alors le contenu ajouté est associé au vitrail
Et s'affiche lors de l'affichage de celui-ci


Scénario: Modifier les informations d'un vitrail

Etant donné que Pierre identifie un vitrail ayant des informations incorrectes
Et qu'il dispose d'informations vérifiées concernant celui-ci
Quand Pierre clique sur l'outil de modifications
Et ajoute des informations sur le vitrail
Et qu'il confirme les changements réalisés
Alors le contenu ajouté est associé au vitrail
Et s'affiche lors de l'affichage de celui-ci