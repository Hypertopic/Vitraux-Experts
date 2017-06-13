# Projet IF05

Application permettant aux experts des vitraux de Troyes de collaborer.

PORPHYRY – Corpus analyses confrontation
========================================

Contact: <aurelien.benel@utt.fr>

Home page: <https://github.com/Hypertopic/Porphyry>

Notice
------

Fork of Porphyry which is a server software. There is no need to install it on your own computer to use it. The usual way is to be "hosted" by one's own institution (ask your system administrator). If your use cases meet our research interests, we can also host your data on our community server.

Installation requirements
-------------------------

* Git client
* Node.js

Installation procedure
----------------------

    npm install

Launch in development mode
--------------------------

    npm start

Build for production
--------------------

    npm run build

Run Fonctionnals test
--------------------

    bundle exec cucumber features/
	
Installation requirements for Fonctionnals tests
-------------------------
Fonctionnals tests with Cucumber and  Capybara déclarés dans /features

Pour lancer les tests de l'interface :

install ruby 2.3 (MAX) 
	https://rubyinstaller.org/downloads/
	
install geckodriver in ruby/bin (should be int the system PATH)
	https://github.com/mozilla/geckodriver/releases	

in the project directory : 
	gem install bundler ou bundle install


Cucumber complains that you need ANSICON to get console colors because Windows doesn’t understand ANSI color escape sequences. 
Download ANSICON from http://adoxa.3eeweb.com/ansicon/. Extract it somewhere (I put it in c:utils). 
In your command window, cd to either the x86 or x64 directory where you extracted ANSICON, depending on your OS, and run ansicon -i. 
Exit that command window and open a new one. 
Now, when you run cucumber --help, you should no longer see the message in the output about needing ANSICON.

Run Fonctionnals test

    bundle exec cucumber features/
	
need some help to start  ? 
	http://agileforall.com/getting-started-with-ruby-cucumber-and-capybara-on-windows/
	

--------------------

Lien MyBalsamic :
	https://utt.mybalsamiq.com/projects/if05-vitraux-experts/prototype/Accueil%20%28m%C3%A0j%29?key=7fa4428f6a443469a823ee16c7990aa84702e93f
- Accès en lecture : http://steatite.hypertopic.org/ + Lasuli sur Firefox (http://hypertopic.org/)
	http://steatite.hypertopic.org/picture/?corpus=Vitraux%20-%20Dr.%20Krieger&sort=2
- Github du projet : 
	https://github.com/Hypertopic/Vitraux-Experts
- Les données: 
	http://argos2.hypertopic.org/corpus/Vitraux%20-%20B%C3%A9nel (joli: https://gist.github.com/66113f278f9ab476dafb1ab8f939bbd7)
- P17 : le backend : 
	https://github.com/Shyked/Vitraux-Experts-dev

Fonctionnals Test ok API REST in directory of the project backend
	descriptions/tests
	
based on http://frisbyjs.com/	
	npm install --save-dev frisby

required jasmine : 
	npm install -g jasmine-node

Run the test : 
	jasmine-node descriptions/tests


--------------------
--------------------

- P16 Le Wordpress: https://experddesvitraux.wordpress.com
  - Utilisateur: `dorianma`
  - Mot de passe: [Demander à Dorian :D]
- P16 Poc Etienne :
  - Github: https://github.com/etiennej70/Vitraux-expert-app
  - http://vitraux-experts.dev.etiennejacquot.com/
  - http://vitraux-experts.dev.etiennejacquot.com/fiche.php?vitrail=ID

