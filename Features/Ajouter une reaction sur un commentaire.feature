#language: fr

Fonctionnalité: Ajouter une réaction sur un commentaire
	Pierre sera dans cette fonctionnalité un utilisateur lambda. 
	L'ajout pouvant être réalisé par tout le monde comme sur facebook ou slack.

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

