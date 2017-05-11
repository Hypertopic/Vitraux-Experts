#language: fr

Fonctionnalité: Ajouter un nouveau vitrail

  En tant qu'utilisateur possédant des droits de modification de la base de données, je peux ajouter un nouveau vitrail dans la base de données de la plateforme, en précisant au minimum le Lieu, la Baie, et une Photo pour ce vitrail.

Scénario: Ajouter un vitrail à partir de sa photo, de son titre et son lieu

  Etant donné que je suis connecté
  Et que je possède les informations nécessaires pour ajouter un vitrail sur la plateforme
  Quand je vais sur la page pour ajouter un nouveau vitrail
  Et que je saisi ses informations puis valide
  Alors le vitrail se trouve ajouté à la base de données

Scénario: Ajouter un vitrail à partir de sa photo

  Etant donné que je suis connecté
  Et que je ne possède que la photo d'un vitrail
  Quand je vais sur la page pour ajouter un nouveau vitrail
  Et que j'envoie la photo puis valide
  Alors un message m'indique qu'il manque des informations pour pouvoir ajouter le vitrail
