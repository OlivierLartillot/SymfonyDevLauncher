# SymfonyDevLauncher

Un script batch simple et efficace pour lancer rapidement tes projets Symfony sous Windows, un raccourci sur le bureau pour lancer tous les outils basiques de Symfony:
- VsCode
- WampServer
- le serveur de développement (symfony server:start)
- chrome avec deux onglets
    - localhost:8000
    - localhost/phpmyadmin/
    

## Description

**SymfonyDevLauncher** facilite le lancement et la gestion de tes projets Symfony sur ta machine Windows.  
Il te permet de :  

- Gérer simplement les projets via un menu interactif  
    - Choisir un nouveau projet Symfony parmi la liste des dossiers présents dans C:\wamp64\www (peut être modifié)  
    - Relancer automatiquement le dernier projet utilisé 
- Une fois le projet selectionné le script fait le reste:
    - Ouvrir le dossier projet dans VS Code  
    - Démarrer le serveur de dev Symfony dans une console dédiée  
    - Lancer WampServer 
    - Ouvrir Chrome avec les bons onglets:
        - localhost 
        - phpMyAdmin  
    - Afficher des messages et emojis pour rendre l’expérience plus sympa

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