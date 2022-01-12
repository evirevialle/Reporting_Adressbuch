# Cartographie du projet Adressbuch

<img src=" /../screenshots/map.png" width="70%" title="map_adressbuch"></img>

### L'étude Diachronique dans un projet historique

Le projet Adressbuch utilise deux temporalités, celle de 1854, au moment où l'annuaire des allemands à Paris a été publié et la temporalité actuelle.
La temporalité actuelle est nécessaire parce-qu'elle permet de placer nos individus sur une cartographie interractive.  
Les anciennes rues de Paris ont été retrouvées avec leurs noms actuels et permet ainsi de savoir où se situaient les allemands dans Paris en 1854 (voir Jacques Hillairet 1963).
Il est possible que certaines rues aient disparues avec les transformations de Paris dans les anneés 1860 avec les travaux de Hausmann.  
Une fois, les indidividus d'Adressbuch placés sur la carte moderne Paris, il fallait trouver le moyen de pouvoir comparer cette carte  
moderne avec une carte historique. En effet, dans un projet hsitorique comme celui-ci, il est  essentiel de pouvoir comparer les deux  
temporalités pour voir les changements opérés dans Paris entre le XIXe et XXIe siècle.  
Une étude diachronique de l'espace Parisien s'ouvre alors pour l'utilisateur ou/et l'utilisatrice avec un choix de visualisation entre carte moderne et carte d'époque. 

### La mise en place de la cartographie

La cartographie du projet Adressbuch a été réalisée avec le logiciel Open Source [Leaflet](https://leafletjs.com/).  
Pour voir les individus sur la carte du Projet, la carte récupère les coordonnées de chaque personne au format JSON. Des marqueurs sont créés pour afficher les personnes et companies du carnet d'adresses sur la carte. Des markersclusters sont créés pour rassembler les personnes habitant dans la même rue. 

1) La carte d'Etat-Major de 1820-1866

Il n'est pas aisé de trouver une carte géoréférencé de Paris au XIXe siècle, de plus, avant les travaux de 1860 et la création des nouveaux arrondissments. Par chance le [géoportail](https://www.geoportail.gouv.fr/donnees/carte-de-letat-major-1820-1866) du gouvernement propose une carte de l'État-Major realisée entre 1820 et 1866.  
Il est possible de d'implémenter cette carte sur notre cartographie interractive. Avec [L.tilelayer](https://leafletjs.com/reference-1.4.0.html#tilelayer), on ajoute la carte historique via le service WMS (Web Map Service) ou WMTS (Web Map Tile Service). Dans ce cas ci, ce sera par WMTS car on ajoute des tuiles géoréféencées. Une fois cette manipulation effectuée on ajoute un [L.control.layers](https://leafletjs.com/examples/layers-control/) qui permet de permuter entre la carte historique et moderne. 

 
2) Les quartiers et arrondissements

Pour enrichir l'étude diachronique de l'espace Parisien, les données vecteurs des arrondissements de Paris, avant et après 1860, ont été rajoutés ainsi que le découpages de quartiers de l'époque. Les données proviennent du projet [ALPAGE](https://alpage.huma-num.fr/) du [LaMOP](https://lamop.pantheonsorbonne.fr/) de Paris 1 Panthéon-Sorbonne. 
Lorsqu'on navigue sur leur plateforme de webmapping, il est possible de téléchager les données du projet dans différents formats. Les données ont été téléchargées au format Shapefile.  
Pour ajouter les données sur notre carte, on utilise le plugin [Leaflet.shapefile](https://github.com/calvinmetcalf/leaflet.shapefile), ce plugin est très utile car il suffit d'indiquer le chemin du dossier Zip contenant les dossiers shapefile et le plugin s'occupe de la suite pour l'affichage des données sur la carte. On ajoute ensuite les vecteurs dans le L.control.layer pour choisir de les voir ou non sur la cartographie.

3) Autres fonctionnalités

Pour enrichir la carte interractive, de nouvelles fonctionnalités ont été ajoutées à la carte. En premier lieu, le plugin [Opacity.Control](https://github.com/lizardtechblog/Leaflet.OpacityControls) a été rajouter. Ce dernier, permet de superposer la carte moderne et historique en réglant l'opacité avec un curseur disponible sur la carte. Cela permet se rendre compte de la transformation de Paris en 170 ans. Le plugin [Leaflet.Fullscreen](https://github.com/Leaflet/Leaflet.fullscreen) a été ajouté pour afficher la carte en plein-écran et permettre une meilleure visualisation des données. Enfin, le plugin [Leaflet.sidebar](https://github.com/turbo87/sidebar-v2/) a été également mis sur la carte. Ce dernier permet d'avoir des informations complémentaires grâce à une barre de naviagtion interractive. Il permet de télecharger les données vecteur du projet.


  
*  Jacques Hillairet, Dictionnaire Historique des rues de Paris, 1963



