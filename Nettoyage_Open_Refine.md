
**Nettoyage et enrichissement des données sur Open Refine**
--------------------------



**I) Tranformations courantes** 

Ces transformations sont déjà proposées sur le logiciel dans >**editer les cellules** puis >**tranformations courantes**.   
Elles consistent notamment a supprimer les espaces en début et fin des données, supprimer les espaces consécutifs ou encore mettre les données en initale majuscule.  

**II) Facette/Filtre**  

Open Refine permet la normalisation des données qui est essentielle pour une meilleure interprétation des données.   
Prenons pour exemple les données "rue du havre" et "Rue Du Havre". Elles veulent dire la même chose mais elles ne sont pas écrites pareilles ce qui peut poser problèmes pour une personne qui cherche toutes les personnes habitant
"rue du havre", il n´aurait pas, à ce moment, toutes les personnes car les personnes habitant "Rue Du Havre" ne seraient pas dans les résultats.  
Pour y remédier, il faut se diriger vers >**facette** puis >**facette textuelle** et enfin >**groupe** dans la colonne **facette/filtre** qui se trouve à droite de nos données.
Les données qui ont une orthographe similaire et qui semblent avoir la même signification puevent être regroupées.  
**Facette** peut **filtrer le texte** pour isoler une ou plusieurs lignes et pour travailler uniquement sur les lignes choisies.  
**trier** pour avoir les chiffres en ordre croissant ou les adresses dans l´ordre alphabétique.  
Certains changements mauvais ou fait par inadvertance puevent être défaits avec la fonction **Defaire/Refaire** (à côté de Facette/Filtre) ce qui s´avère très pratique pour revenir avant les modifications.  

**III) Reconcilier**

C´est l´étape essentielle pour enrichir les données. Open Refine proprose d'utiliser des sources de données externe pour enrichir les données.
La base de données par défault est **Wikidata** en anglais, la langue peut être modifiée en modifiant l´url de réconciliation. Grâce à la [liste de service de réconciliation](https://reconciliation-api.github.io/testbench/), nous pouvons ajouter des serveurs d'autorité comme **GND**, **VIAF**, **Geonames** ou d´autres sources de données externe.  
Pour effectuer la réconcilation, il faut aller vers >**reconciliation** puis >**demarrer la reconciliation**. Une fenêtre s´ouvre qui nous permet de choisir la base de données avec laquelle la réconciliation de données est éffectuée. 
La réconciliation des données peut ensuite être lancée. 
Certaines données vont correspondre automatiquement, d´autres devront être réconciliés par l'utilisateur-même et enfin les dernières peuvent être inconnues pour la base de données.  
Les données sont associées à une base de données externe ce qui nous permet d'ajouter des colonnes à partir de ces données réconciliées. Depuis **editer une colonne** > **ajouter une colonne à partir des valeurs réconciliées**,d'autres données peuvent être obtenues dans la source externe comme les coordonnées GPS, par exemple, mais aussi des identifiants pour des personnes par la VIAF ou la GND par exemple.

* *Pour plus d'informations vous pouvez vous référer à la [documentation d'Open Refine](https://docs.openrefine.org/).*

* *voir [ici](Integration_des_donnees.md) la suite du projet avec l'intégration des données dans la base SQL.*
