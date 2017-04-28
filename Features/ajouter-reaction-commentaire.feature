#language : fr
Fonctionnalité: Mettre en avant un commentaire
	En tant que doctorant (Pierre),
	Je veux mettre en avant le commentaire d'un membre sur un vitrail de la plateforme car il me semble pertinent
	L'ajout pouvant être réalisé par tout le monde (connecté) comme sur facebook ou slack.

Scénario: Mise en avant réussie
	Etant donné que je suis un doctorant
	Et que je consulte les commentaires d'un vitrail
	Quand je mets en avant le commentaire d'un membre
	Alors un élément indique que le commentaire a reçu une mise en avant

Scénario: Ajouter une réaction positive sur un commentaire

	Etant donné que Pierre identifie un commentaire qui lui semble pertinent
	Quand Pierre clique sur une icone "content" ou un "pouce"
	Alors le commentaire recoit une nouvelle réaction qui s'affiche sous le commentaire
	Et Pierre est invité à motiver sa réaction via un nouveau commentaire

Scénario: Ajouter une réaction négatice sur un commentaire

	Etant donné que Pierre identifie un commentaire qui lui ne lui semble pa du tout pertinent
	Quand Pierre clique sur une icone "pas d'accord"
	Alors le commentaire recoit une nouvelle réaction négative qui s'affiche sous le commentaire
	Et Pierre est invité à motiver sa réaction via un nouveau commentaire
