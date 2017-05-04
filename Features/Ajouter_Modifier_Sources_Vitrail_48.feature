#language: fr

Fonctionnalité: Ajouter / Modifier les sources d'un vitrail
	Pierre sera dans cette fonctionnalité un utilisateur lambda. 
	L'ajout ou la modifications des sources pouvant être réalisée par tout le monde comme c'est fait pour wikipédia.

Scénario: Ajouter des sources à un vitrail

Etant donné que Pierre identifie un vitrail manquant de sources
Et qu'il dispose de sources vérifiées concernant celui-ci
Quand Pierre clique sur l'icone de modifications
Et ajoute des sources sur le vitrail
Et qu'il confirme les changements réalisés
Alors les sources ajoutés sont associées au vitrail
Et s'affichent lors de l'affichage de celui-ci


Scénario: Modifier les sources d'un vitrail

Etant donné que Pierre identifie un vitrail ayant des sources incorrectes
Et qu'il dispose de sources vérifiées concernant celui-ci
Quand Pierre clique sur l'icone de modifications
Et ajoute des sources sur le vitrail
Et qu'il confirme les changements réalisés
Alors les sources ajoutées sont associées au vitrail
Et s'affichent lors de l'affichage de celui-ci 