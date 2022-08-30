(appr:repinfo:redondance)=
# Redondance

Pourrait-on construire un véhicule qui ne tombe jamais en panne ?

Si tous les ingénieurs cherchent à y parvenir, l'aviation commerciale est un domaine dans lequel les résultats sont les plus probants. Les [statistiques](https://www.icao.int/safety/iStars/Pages/Accident-Statistics.aspx) montrent que, depuis une décennie, seuls 2 à 4 accidents mortels par millions de vols sont enregistrés.

Ce résultat est atteint au prix d'une maintenance extrêmement stricte, une formation exigeante et continue du personnel de bord, une analyse méticuleuse de chaque incident, un contrôle permanent du respect des recommandations tant par les constructeurs que par les opérateurs, et enfin un soin particulier apporté à la redondance des systèmes critiques.

La **redondance** est une technique qui consiste à dupliquer les fonctions critiques d'un système pour augmenter sa fiabilité ou ses performances. Évidemment, la redondance des systèmes a un coût : en complexité, en masse et volume, et en maintenance. En effet, paradoxalement, comme chaque composant a une probabilité de panne (fût-elle faible), plus il y a de composants, plus il y a de pannes. Toutefois, moins leurs conséquences sont graves. On parle alors d'un **système robuste ou résilient**, puisqu'il n'est pas mis en péril par la première panne.

La redondance se retrouve à tous les niveaux des systèmes informatiques, qu'ils soient embarqués dans un avion ou non. Ces redondances ont toujours un coût qui se mesure dans ce cas par une **augmentation** de la **quantité de données** et/ou du **temps de traitement** requis. Ils contribuent en échange à la sécurité des données, en augmentant l'**intégrité** (cohérence) et/ou la **disponibilité** de l'information.

## Somme de contrôle (checksum)

Pour s'assurer qu'une information est reçue **intégralement** (sans omissions) et **parfaitement** (sans erreurs), un expéditeur pourrait naïvement l'envoyer deux fois, par deux moyens indépendants, dans un SMS et sur une carte postale par exemple. Le destinataire devrait alors renvoyer une confirmation… par deux moyens indépendants ?!

On convient aisément que cette solution serait atrocement dispendieuse. Une étude attentive montre que, de plus, elle ne permet pas de déterminer laquelle des deux copies est la bonne version lorsqu'elles diffèrent, ce qui indique qu'il y a un problème, mais ne propose pas de solution pour le résoudre.

Pourtant, aucun signal n'étant parfait, l'augmentation de la vitesse de transmission débouche nécessairement sur une augmentation des erreurs,
lorsque des bits sont perdus ou mal transmis

Les systèmes informatiques, dès lors qu'ils communiquent continuellement et abondamment, sont particulièrement sensibles à ce problème. Lorsqu'il s'agit d'assurer l'intégrité des informations transmises, des solutions plus élégantes que la proposition naïve présentée plus haut ont été élaborées pour effectuer un contrôle de qualité par redondance.

Les **checksums** par exemple sont une brève représentation d'un bloc d'information plus grand, des sortes d'empreintes numériques. Bien qu'elles soient transmises avec le bloc d'information qu'elles représentent, leur petite taille relative ne surcharge pas démesurément la transmission. En choisissant une représentation qui se calcule et se contrôle facilement, ces checksums n'imposent pas non plus un temps de traitement beaucoup plus long pour les créer et les vérifier.

Idéalement, les checksums de deux blocs d'information sont très différentes même lorsque les différences entre les blocs sont infimes. Cela simplifie en effet la détection des erreurs.

La forme la plus simple est utilisée depuis la nuit des temps informatiques : le **bit de parité**. Il permet de contrôler par redondance une erreur sur la transmission d'un paquet de 7 bits, en utilisant 1 bit supplémentaire.

Dans l'exemple qui suit, on donne la valeur 0 au bit de parité lorsque la somme des bits de la valeur à transmettre est paire, et la valeur 1 lorsque cette somme est impaire. On notera que, de cette façon, la somme des 8 bits est toujours paire.

Le bit de parité est habituellement placé à la position de poids le plus faible, ce qui permet de contrôler directement la valeur transmise.

| Valeur à transmettre | Somme des bits | Bit de parité | Valeur transmise  |
|----------------------|----------------|---------------|-------------------|
|       0000000        |       0        |        0      |   0000000**0**    |
|       0000001        |       1        |        1      |   0000001**1**    |
|       0000010        |       1        |        1      |   0000010**1**    |
|       0000011        |       2        |        0      |   0000011**0**    |
|       0000100        |       1        |        1      |   0000100**1**    |
|       0000101        |       2        |        0      |   0000101**0**    |
|       0000110        |       2        |        0      |   0000110**0**    |
|       0000111        |       3        |        1      |   0000111**1**    |
|          …           |                |        …      |        …          |
|       1111101        |       6        |        0      |   1111101**0**    |
|       1111110        |       6        |        0      |   1111110**0**    |
|       1111111        |       7        |        1      |   1111111**1**    |

````{panels}
:column: col-lg

On notera que, pour un coût de taille modeste (un huitième des bits transmis) et un calcul rapide à réaliser (une somme et une comparaison), des erreurs de transmission ponctuelles — celles qui ne portent que sur un nombre de positions impair — sont immédiatement détectables. Cela inclut les erreurs qui porteraient sur le bit de parité lui-même.

````{admonition} Le saviez-vous ?
:class: note
Les contrôles de bit de parité peuvent être intégrés aux composants électroniques.

La mémoire vive RAM (*Random Access Memory*) de type ECC (*Error-Correcting Code*) s'appuie sur des bits de contrôle pour détecter, voire corriger, les erreurs de stockage qui pourraient affecter les données ou le code des logiciels en cours d'exécution.

Cette fonction supplémentaire explique leur coût plus élevé.
````

## Fonction de hachage

L'exemple de bit de parité permet grossièrement de contrôler une communication caractère par caractère. Une forme plus élaborée du même concept prend la forme du **hachage** de l'information qui peut alors s'appliquer à des quantités d'information beaucoup plus importantes, de type et de longueurs variables.

Prenons par exemple un texte représenté par les valeurs décimales de l'encodage ASCII et construisons une empreinte digitale sur la base de calculs simples :

|   h |   a |   c |   h |   a |   g |   e |
|-----|-----|-----|-----|-----|-----|-----|
| 104 |  97 |  99 | 104 |  97 | 103 | 101 |

La somme de toutes ces valeurs totalise 705 (= 104 +  97 + 99 + 104 +  97 + 103 + 101), soit 0x2**C1** en hexadécimal.

La somme des produits de chaque valeur par l'index de sa position totalise quant à elle 2821 (= 1x104 + 2x97 + 3x99 + 4x104 + 5x97 + 6x103 + 7x101), soit 0xB**05** en hexadécimal.

On peut décider de limiter ces deux totaux à leur deux dernières positions hexadécimales, (C1 et 05, respectivement), ce qui permet de construire une empreinte digitale (**digest** ou **hash**) C105 indépendante de la longueur du texte.

Si le texte venait à être modifié, ne serait-ce que très légèrement, l'empreinte numérique ainsi définie serait afectée :

|   h |   a |   c |   h |   a |    h    |   e |
|-----|-----|-----|-----|-----|---------|-----|
| 104 |  97 |  99 | 104 |  97 | **104** | 101 |

En effet, la somme des valeurs totalise alors 706 (= 104 +  97 + 99 + 104 +  97 + 104 + 101), soit 0x2**C2** en hexadécimal, alors que la somme des produits totalise 2827 (= 1x104 + 2x97 + 3x99 + 4x104 + 5x97 + 6x104 + 7x101) soit 0xB**0B**, ce qui donne un hash de C20B au lieu de C105 précédemment, alors qu'un seul bit diffère entre les deux messages.

On notera que la suppression d'une lettre au texte ("hachage" => C105) ne change pas la longueur de cette simple empreinte
mais sa valeur ("hachag" => 5C42) et que cette **fonction de hachage** est aussi sensible à la casse ("Hachage" => A1E5).

Mais il peut arriver que deux mots débouchent sur la même empreinte, par exemple 'hat' et 'fer' débouchent sur  (3D86). On parle alors de *collision* de hachage, un phénomène que l'on cherche autant que possible à éviter. De plus, une bonne fonction de hachage ne permet pas de reconstruire le texte d'origine sur la base de la seule empreinte.

Grâce à leurs propriétés (déterministes et rapides), des **fonctions de hachage** plus complexes (**SHA**, **MD5**…) trouvent des applications dans de nombreux contextes : authenticité (signatures numériques), intégrité (erreurs de transfert, stockage, blockchains…), identification (fichiers, connexions réseau…), authentification (stockage et vérification des mots de passe)…


````{admonition} Le saviez-vous ?
:class: note
Même si le hachage d'une information est à dessein relativement rapide en soi,
des contraintes artificielles provoquant délibéremment la multiplication de ces hachages peuvent être imposées lors de l'ajout des blocs dans une **blockchain**. Cela constitue la preuve de travail (*proof-of-Work*, PoW) des cryptomonnaies que l'on nomme communément **minage des cryptomonnaies**.
````