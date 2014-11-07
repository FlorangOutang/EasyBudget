EasyBudget
==========

Qu'est ce que EasyBudget ?
=
EasyBudget est une application web permettant de gérer votre budget mensuel ! Il s'adresse particulièrement aux familles.
Cette application vous permettra de prédire votre argent restant après toutes vos dépenses habituelles par mois (telles que l'argent de poche de vos enfants, la nourriture etc...). Vous pourez, avec cette argent restant prévoir le nombre de mois d'économie qu'il vous faudra pour atteindre un objectif exeptionnel (tel qu'un mariage ou l'achat d'une nouvelle voiture etc...) !

Pour l'installer
=
Veuillez trouver dans les sources un tutoriel détaillé sur l'installation de notre application en local (sous le fichier install.doc).


Architecture
=
Nous avons choisit d'implémenter notre application web grâce à la technologie J2E puisque c'est notre domaine de compétence le plus développé.
C'est en combinant plusieurs technologies et frameworks tel que J2E, Spring MVC, JQuery que nous avons réussit à produire une application fonctionnelles. 
L'architecture Model-View-Controller repose sur les principes suivant : 
 - Modèle
	Le modèle représente le cœur (algorithmique) de l'application.  Il décrit les données manipulées par l'application. Il regroupe la gestion de ces données et est responsable de leur intégrité. Le modèle comporte des méthodes standards pour mettre à jour ces données (insertion, 			suppression, changement de valeur). Il offre aussi des méthodes pour récupérer ces données. Le modèle a été codé en Java. 
	
 - Vue
 	Ce avec quoi l'utilisateur interagit se nomme précisément la vue. Sa première tâche est de présenter les résultats renvoyés par le modèle. Sa seconde tâche est de recevoir toute action de l'utilisateur (hover, clic de souris, sélection d'un bouton radio, cochage d'une case, entrée de texte, de mouvements, de voix, etc.). Ces différents événements sont envoyés au contrôleur. La vue n'effectue pas de traitement, elle se contente d'afficher les résultats des traitements effectués par le modèle et d'interagir avec l'utilisateur. Les vues se trouve dans des fichiers JSP et sont écrit en HTML et JQuery.
 	
 - Contrôleur
 	Le contrôleur prend en charge la gestion des événements de synchronisation pour mettre à jour la vue ou le modèle et les synchroniser. Les contrôleurs ont été codés en Java. 
 	
Le Framework Spring MVC permet de communiquer de manière automatique entre les 3 entités cités ci-dessus. C'est notemment grâce à des annotations tels que @Controlleur ou bien @ModelAttribute que les liens sont tissés. 
 	

 
