# Sujet B1 Projet Développement logiciels

*Modélisation du sujet projet pour une meilleurs compréhension du sujet.*

# Sommaire

* [Descriptif du projet](#descriptif-du-projet)
* [Livrables](#livrables)
* [Modalités d'évaluation](#MODALITÉS-D’ÉVALUATION)
* [Ressources Complémentaires](#RESSOURCES-COMPLÉMENTAIRES)
* [Besoins matériels et logiciels](#BESOINS-MATÉRIELS-ET-LOGICIELS)
* [Détails](#détails)
* [Commentaire ?](#commentaire-?)
    * [Règle Basique Simple](#règle-basique-simple)
    * [Faire le plus simple au plus vite](#faire-le-plus-simple-au-plus-vite)
    * [Bouchon](#bouchon)

# Descriptif du projet

Vous êtes l’entreprise **Connected Flowers** 

Connected Flowers fournit une **base de données**, que l’utilisateur peut **étendre** ***(1)*** , qui contient initialement les spécifications d’***environ 30 plantes de la région.*** 

Cette base de données doit comprendre : ***(2)***

* Le Nom de la plante 
* Une Catégorisation de la plante 
* La Description 
* Une ou plusieurs Photos 
* L’humidité optimale du sol, 
* La température atmosphérique optimale
* La luminosité optimale 
* La période de floraison

La notion de base de données est générique vous pouvez utiliser le support de stockage qui vous convient le mieux : sql, nosql, lecture écriture dans un fichier, etc. 

**Connected Flowers fournit aussi un objet connecté qui permet de capter l’humidité du sol, la luminosité et la température atmosphérique.**

**Les données captées** sont remontées dans la base de données **sous forme d’historique** ***(4)*** permettant de suivre et contrôler les données captées. Par le biais d’un **application cliente** ***(5)*** , l’utilisateur peut contrôler si les conditions sont optimales pour ses plantes et être **alerter par courriel ou autre** si les conditions deviennent critiques pour la plante. 

Par ailleurs, l’utilisateur peut aussi **planifier de planter une plante spécifique** ***(6)***, le logiciel l’assistera en lui indiquant quand et comment la planter.


# LIVRABLES

Vous devez produire les éléments suivants : 

* Un dossier technique par groupe (Architecture, Algorigramme etc.) 
* Un document présentant les membres du groupe (format PDF) 
* Un document (pour chaque membre du groupe) expliquant votre propre contribution, vos difficultés, vos axes de progression (format PDF). Ce document est à rendre à chaque évaluation intermédiaire pour suivre votre avancée. 
* Les sources du projet sur un dépôt Git 
* Un fichier README.txt à la racine de votre dépôt Git qui donne les indications relatives au déploiement 
* Une présentation orale 
* Les slides de votre présentation (format PDF)



# MODALITÉS D’ÉVALUATION

Vous serez évalué sur l’ensemble des productions. L’évaluation prendra aussi la forme d’une présentation orale de synthèse d’environ 15 minutes accompagnée d’un support de présentation avec un jury composé d’une partie des intervenants des cours de l’UF ‘Développement logiciels’. Un temps de questions-réponses sera prévu à l’issue des 15 minutes d’une durée de 5 minutes.

* Plusieurs évaluations intermédiaires auront également lieu au cours de l’année
* Les livrables
* La présentation orale

Vous serez évalué sur la qualité des livrables. 
L’évaluation portera sur : 

* La qualité et la pertinence des documents de conception. 
* La qualité du code source 
* La réalisation en elle même 
* La clarté, l'efficacité et le dynamisme de la présentation orale 
* Votre capacité à organiser la collaboration au sein du projet (répartition des tâches, communication, ...) 
* Votre contribution au projet 
* La qualité de votre prestation à l’oral


# RESSOURCES COMPLÉMENTAIRES
https://www.tela-botanica.org/
https://www.tela-botanica.org/bdtfx-nn-75134-synthese


# BESOINS MATÉRIELS ET LOGICIELS
**Matériel** : Arduino, Capteurs & actionneurs, Raspberry PI
**Logiciels** : Éditeur de texte, IDE pour programmer en C/C++

# Détails

1. - **CRUD** :
* CREATE
* READ
* UPDATE
* DELETE

2. - **Base de notre MCD**

tout cela :
```
* Le Nom de la plante 
* Une Catégorisation de la plante 
* La Description 
* Une ou plusieurs Photos 
* L’humidité optimale du sol, 
* La température atmosphérique optimale
* La luminosité optimale 
* La période de floraison
```
est notre MCD :)

3. - Librairies **ORM** SQL 

4. - Recuperer les données tout les tant de temps.

5. - Faire un **CRUD**
(pour nous un Site :P)

6. - Période de floraison

# Commentaire ?

### Règle Basique Simple

Toutes les info en **GRAS** sont tres tres **TRES** importantes !
Les infos en gras sont **obligatoires** à faire !

### Faire le plus simple au plus vite

Comme au soutiens dev', faire une version béta (alpha ?) de notre projet qui définie l'ossature de notre projet.

* les capteur qui marchote
* une BDD pas secur' mais qui marche
* un site moche MAIS qui recupere les donné de notre BDD et l'affiche

(C'est nul, mais ça marche)

Pour ensuite la developper pour en faire une premiere versions (final ou pas) et developper pour en faire un projet bien complet.

### Bouchon

Faire un bouchon.

Pour notre base de donnée, il nous faut des données.
Seulement (je dis ça aujourd'hui, mais ça ne serra pas vrai tout le long du projet), notre parti I.O.T dois envoyer les données récuperer

**SI** elle n'envoie pas de donnée la BDD ne peut pas etre commencé..
**EH BIEN SI !** 

On bouchonne !

On envois des données random (fictive) pour que la base de donnée soit fonctionnel je jour OU l'I.O.T envoie bien les bonne données.

Cela evite de dire :

```
Ah mais moi je peut pas faire la base de donnée car ta pas fais ton boulot, tu me passe pas les donnée. Sans donnée pas de base de données. Deso pas deso...
```