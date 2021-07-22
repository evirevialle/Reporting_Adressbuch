**Intégration des données dans la base SQL**
-------------------------------------------

**I) Création des difféentes tables de données**

Une base de données SQL avait été créée avec l'aide de l'outil de conceptualisation [Mocodo](http://www.mocodo.net/).  
Une fois que le fichier de données est [nettoyée avec Open Refine](Nettoyage_Open_Refine.md), il peut être exporté au format SQL et être intégré dans une base de données. 
Pour cela, il faut sélectionner **export tabulaire personnalisé** sur Open Refine qui permet de choisir le format et les colonnes que l'on souhaite exporter. 

**II) Export SQL des différentes tables**

Avec Open Refine, l'opération est simple, on choisit **export SQL**, le logiciel propose différentes options comme l'intégration du schéma, c'est-à-dire, les instructions SQL qui permettent de créer la table si elle n'existent pas ou la valeur des différentes colonnes comme INT, VARCHAR. 
Le schéma n'est pas nécessaire quand les tables sont créées dans la base de données, Il faut juste conserver la fonction **INSERT INTO ('nom de la colonne')**. 

**III) Intégration des données**

La prochaine étape consiste à importer les fichier SQL créés dans notre base de données, elle est gérée par [phpMyAdmin](https://www.phpmyadmin.net/). 
Pour éviter la moindre perte du travail, une sauvegarde de la base est effectuée pour pouvoir la recréer si un problème survenait.   
Pour éviter des erreurs lors de l'intégration des données, les tables courantes qui continnent les données sont importées en premier puis les tables associatives qui assurent les jointures entre les tables courantes. 
Déselectionnez **verification des clés étrangères** quand ces dernières sont déjà créées.  
Lorsque que les données sont intégrées avec la vérification activée, nous avons une erreur à cause d'une contrainte de clé étrangère.
Les tables ont été importées avec succès, pour vérifier que les jointures étaient bien effectuées, des requêtes SQL impliquant différentes tables ont été formulées. 

 * *voir [ici](Nettoyage_Open_Refine.md) l'étape précédente sur le nettoyage des données avec Open Refine.*
 * *les tables SQL de Adressbuch sont disponibles [ici](adressbuch1854.sql)*
 * *les tables CSV de Adressbuch sont disponibles [ici](adressbuch1854.csv)*
 * *voir [ici](Interconnexion_Cakephp_BaseSQL.md) la suite du projet avec l'interconnexion entre Cakephp et la base SQL*

