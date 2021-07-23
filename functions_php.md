**Création de fonctions PHP pour le projet _Adressbuch_**
-----------------------------------------------------------------
**1) Valorisation des données de recherche**

Pour valoriser le projet _Adressbuch_ ainsi que ces données, il a été mis à la disposition des chercheurs la possiblité d'enregistrer les informations de chaque personne sur Zotero. Puis, pour mettre en avant la source du projet _Adressbuch_, le Département des Humanités Numériques met à disposition les numérisations pour pouvoir consulter le document d'origine sur l'interface.  
Dans une démarche historique, il est essentiel pour les chercheurs de pouvoir avoir accès au document primaire. 

**2) Les balises span**

Pour mettre en place l'enregistrement de chaque personne dans Zotero et la visualtion des images des scripts PHP ont été créés.  
Pour la mise en place des balises Zotero, des fonctions pour chaque élément de l'interface (persons, unternehmen, straße, arrondissements) ont été créés. Ces derniers génèrent des balises span en HTML qui vont transmettre les différentes informations structurés à Zotero. Dans chaque fonctions, on y retrouve des variables qui vont avoir différentes valeurs selon la personne, la rue ou la companie qui est sélectionnée dans l'interface. Ces variables sont définies dans des fichiers à part comme pour les fonctions. Le fichier de variable et le fichier de fonction sont appelés par le fichier de vue. Le fichier de vue imprime les fonctions pour permettre la création de la balise span. 
  
**3) L'affichage des images**

Le principe est le même pour la visualisation des images. Une fonction PHP permet la construction d'une balise img en HTML avec différentes variables. Ces variables modifient le numéro de page numérisé selon la personne ou companie sélectionées. Les images sont d'abord affichées en vignette avec les autres informations dans une dimension et résolution réduites. Le visiteur peut choisir de visualiser la page en HD en la sélectionnant ou en cliquant sur le bouton prévu à cet effet. L'image s'ouvre alors dans une nouvelle fenêtre dans une haute définition destiné à la consultation ou à l'impression.  
  
* _voir [ici](https://github.com/evirevialle/Adressbuch1854/tree/master/templates/functions) les fonctions et variables créées dans le cadre du projet Adressbuch_  
* _voir [ici](Extraction_metadonnees_redimensionnement.md) l'étape précédente d'extraction et de redimensionnement_
