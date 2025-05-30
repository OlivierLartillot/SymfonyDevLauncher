# SymfonyDevLauncher

Un script batch simple et efficace pour lancer rapidement tes projets Symfony sous Windows, un raccourci sur le bureau pour lancer tous les outils basiques de Symfony.

Tous les jours quand je veux reprendre un projet Symfony:
1. je me rends dans mon dossier de travail du projet
2. je clic droit pour ouvrir une CMD et y taper code . pour ouvrir vsCode
3. j'entre la commande (symfony server:start) dans le terminal
4. j'ouvre WampServer64
5. j'ouvre mon google chrome et je clic sur mon raccourci Localhost:8000
6. j'ouvre un nouvel onglet avec mon raccourci vers ma bdd (phpMyAdmin)

Bon j'avoue ce n'est pas bien long, mais qu'est ce que c'est chi*****. Mais ça, c'était avant !!!

Maintenant, je fais plutot ça:

1. je clic sur le raccourci: 

![Image](https://github.com/user-attachments/assets/4d270428-8de3-4738-88d1-2423c6a2289e)   

2. je réponds à la question: 

![Image](https://github.com/user-attachments/assets/e3930928-697e-4b52-b2a8-bec2a1f68e31)

3. j'attends une 10aine de secondes:

![Image](https://github.com/user-attachments/assets/5163d3b0-5201-47d6-91e9-e25ab67f983b)

...et encore c'est parceque je voulais styliser le bordel !!! les 3 premières secondes... c'est juste pour ça 😂😂😂 (et m'amuser aussi un peu j'avoue).


## Description

**SymfonyDevLauncher** facilite le lancement et la gestion de tes projets Symfony sur ta machine Windows.  
Il te permet de :  

- Gérer simplement les projets via un menu interactif  
    - Choisir un nouveau projet Symfony parmi la liste des dossiers présents dans C:\wamp64\www (peut être modifié)  
    - Relancer automatiquement le dernier projet utilisé 
- Une fois le projet selectionné le script fait le reste:
    - Ouvrir le dossier projet dans VS Code  
    - Démarrer le serveur de dev Symfony dans une console dédiée (symfony server:start)  
    - Lancer WampServer 
    - Ouvrir Chrome avec les bons onglets:
        - localhost 
        - phpMyAdmin  

---

## Prérequis

- Windows 10 ou 11  
- [Symfony CLI](https://symfony.com/download) installé et accessible en ligne de commande  
- [Visual Studio Code](https://code.visualstudio.com/) installé et ajoutée au PATH (`code` fonctionnel dans cmd)  
- WampServer installé si tu souhaites démarrer le serveur local (optionnel)  
- Un navigateur internet...

## Installation

1. Clone ce dépôt
2. Modifie la variable `ROOT` dans le script pour pointer vers le dossier contenant tes projets Symfony, par exemple :  
   ```batch
   set "ROOT=C:\wamp64\www"
3. Si besoin modifie le chemin vers Wamp
    ```batch
   set "ROOT=C:\wamp64\wampmanager.exe"
4. Place le script dans un dossier accessible (moi je l'ai mis dans C:\wamp64\www)
5. Lance le script en double-cliquant dessus ou via une invite de commandes (**launch_symfony_project.bat**)

## Utilisation simplifiée

1. Crée un raccourci sur ton bureau 
    - pointant vers **launch_symfony_project.bat**
2. Fenetre agrandie pour une meilleure expérience:
    - clic droit sur le raccourci => propriétés => Raccourci => Exécuter: Agrandie

## Autre

- .last_project: Fichier qui sauvegarde le nom du dernier projet utilisé
