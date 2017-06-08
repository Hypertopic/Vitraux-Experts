#language: fr

Fonctionnalité: Restaurer un vitrail
	
	Un vitrail peut être restauré par un(e) restaurateur(trice).
	La restauration d'un vitrail désigne sa modification partielle ou totale dans le but de le remettre en valeur tout en respectant des conditions historiques et techniques.

Scénario: Restaurer un vitrail pour la première fois

	Etant donné que Toto souhaite restaurer un vitrail
	Et que le vitrail n'est jamais restauré
	Quand Toto clique sur le bouton "initialiser la restauration"
	Et qu'il glisse les photos de la restauration
	Et qu'il définit un titre, type de la restauration
	Alors le vitrail est bien restauré
	Et il contient une seule restauration
	
Scénario: Restaurer un vitrail à partir la dernière restauration

	Etant donné que Toto souhaite restaurer un vitrail
	Et que le vitrail contient N restauration, avec N > 0
	Quand Toto clique sur le bouton "Restauration n° N+1"
	Et qu'il glisse les photos de la restauration N+1
	Et qu'il définit un titre, type de la restauration N+1
	Alors le vitrail est bien restauré
	Et il contient N+1 restauration