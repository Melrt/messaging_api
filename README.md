## Messaging API

### Spec
Objectif : développement d’une API Ruby on Rails permettant d’écrire, poster et lister des messages.
Un message est composé d’un texte et d’un champ précisant s’il est public ou privé. Un message a nécessairement un auteur, et un destinataire.
Les fonctionnalités suivantes sont attendues :
• archivage automatique des messages de plus de 3 mois
• remplacement automatique des emails et numéro de téléphone contenus dans les
messages par le mot « confidentiel »
• réponse à un message (fil de discussion à n niveaux) – sans utilisation de gem
• listage des messages visibles par un destinataire par ordre chronologique ou par fil de discussion

## Comment lancer le projet

````
git clone git@github.com:Melrt/messaging_api.git
cd messaging_api
bundle install
rails s # to launch server
````
