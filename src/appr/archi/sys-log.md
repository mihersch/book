# Portes logiques



Même si on a l'impression que les ordinateurs peuvent faire toutes sortes de choses, par exemple traduire des textes, corriger de l'ortographe,
ou composer de la musique, le processeur n'est capable de faire qu'un nombre limité d'opérations, par exemples additionner et soustraire des nombres,
stocker et lire des valeur dans une mémoire. Tous les applications et programmes ne sont que de longues combinaisons de ces opérations de base. 

Ces opérations de bases sont elles-même réalisée par des circuits électroniques, eux-même constitués de "mini-circuits" capable de réaliser des
opérations très simples. Ces opérations sont qualifées de "logiques" car elles sont inspirées des opérations logiques "et", "ou", "non". En effet,
comme on n'a que deux valeurs possibles, 0 et 1, (allumé ou éteint), cela ressemble opérations logiques qui manipulent, elles aussi,
que deux valeurs possibles "Vrai" et "Faux". Par convention, on dit que la valeur 1 est équivalente à "Vrai" et la valeur 0 est équivalente à "Faux".
On peut ainsi naviguer entre l'état d'un circuit électronique, des chiffres binaires et des valeurs logique (ou booléennes) "Vrai" et "Faux":

| électronique | chiffre binaire | valeur logique|
| :-:     | :-: | ----:|
| éteint  | 0   | Faux   |
| allumé  | 1   | Vrai   |


Les portes logiques sont des composants électroniques qui ont une ou plusieurs entrées et qui combinent ces entrées pour produire une sortie donnée. La manière dont la sortie est calculée dépend du type de la porte. On se propose à présent d'étudier en détails l'ensemble de ces portes.

## Porte ET

Une de ces portes est la porte **ET**. Elle a deux entrées, qu'on appellera $X$ et $Y$, et une sortie $Z$. $Z$ sera 1 si et seulement si aussi bien $X$ que $Y$ valent 1. D'où son nom: il faut que $X$ **_et_** $Y$ soient à 1 pour obtenir un 1 sur la sortie.

En énumérant les quatre possibilités pour les entrées, on peut écrire ce qu'on appelle {glo}`tableverite|table de vérité` pour la porte **ET** :

| $X$ | $Y$ | $Z$ |
| :-: | :-: | :-: |
| 0   | 0   | 0   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 1   |


On peut dessiner des diagrammes avec des portes logiques. Ce ne sont pas des diagrammes électroniques, ils cachent une partie de la complexité réelle des circuits. Dans un tel diagramme logique, la porte **ET** est représentée ainsi :

```{logic}
:height: 60
:mode: static

{"v": 3, "opts": {"showDisconnectedPins": true}, "gates": [{"type": "AND", "pos": [50, 30], "in": [0, 1], "out": 2}]}
```

Sur ce schéma logique, les entrées sont à gauche, la sortie à droite et la porte est connectée au milieu. Les circuits sont représentés en noir s'ils véhiculent un «0» et avec une couleur s'ils véhiculent un «1».

Cliquez sur {logicref}`tryout_and.x|l'entrée $X$` ou {logicref}`tryout_and.y|l'entrée $Y$` pour changer leurs valeurs et observez le comportement de la {logicref}`tryout_and.z|sortie $Z$`. Est-ce que cela correspond à la table de vérité ci-dessus ?

```{logic}
:ref: tryout_and
:height: 100
:mode: tryout

{
  "v": 3,
  "in": [
    {"pos": [50, 30], "id": 3, "ref": "x", "name": "X", "val": 0},
    {"pos": [50, 70], "id": 4, "ref": "y", "name": "Y", "val": 0}
  ],
  "out": [{"pos": [220, 50], "id": 5, "ref": "z", "name": "Z"}],
  "gates": [{"type": "AND", "pos": [150, 50], "in": [0, 1], "out": 2}],
  "wires": [[3, 0], [4, 1], [2, 5]]
}
```

On peut remarquer que l'opération ET est équivalente à la multiplication. En effet le
produit de deux valeure binaires (c'est-à-dire 0 ou 1) X et Y vaut 1 uniquement si X=1 et Y=1. 

## Porte OU

Pour que la sortie de la porte **OU** vaille 1, il suffit que l'une des deux entrées $X$ ou $Y$ vaille 1.

Voici sa table de vérité:

| $X$ | $Y$ | $Z$ |
| :-: | :-: | :-: |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 1   |

On notera que le **OU** logique est un peu différent du «ou» que l'on utilise en général à l'oral : on voit à la dernière ligne de la table de vérité que la sortie $Z$ vaut également 1 si les deux entrées $X$ et $Y$ valent 1. À l'oral, le «ou» est en général interprété comme _exclusif_: si l'on propose à un ami un bonbon _ou_ une glace, on exclut la possibilité qu'il choisisse les deux. Ce n'est pas le cas pour le **OU** logique.

Essayez la porte **OU** :

```{logic}
:height: 100
:mode: tryout

{
  "v": 3,
  "in": [
    {"pos": [50, 30], "id": 3, "name": "X", "val": 0},
    {"pos": [50, 70], "id": 4, "name": "Y", "val": 0}
  ],
  "out": [{"pos": [220, 50], "id": 5, "name": "Z"}],
  "gates": [{"type": "OR", "pos": [150, 50], "in": [0, 1], "out": 2}],
  "wires": [[3, 0], [4, 1], [2, 5]]
}
```





## Porte OU-X

Pour que la sortie de la porte **OU-X** vaille 1, il faut que l'une des deux entrées $X$ ou $Y$ vaille 1, mais pas les deux. Autrement dit, il faut que
$X$ soit différent de $Y$. 

Voici sa table de vérité:

| $X$ | $Y$ | $Z$ |
| :-: | :-: | :-: |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 0   |



Essayez la porte **OU-X** :

```{logic}
:height: 100
:mode: tryout

{
  "v": 3,
  "in": [
    {"pos": [50, 30], "id": 3, "name": "X", "val": 0},
    {"pos": [50, 70], "id": 4, "name": "Y", "val": 0}
  ],
  "out": [{"pos": [220, 50], "id": 5, "name": "Z"}],
  "gates": [{"type": "XOR", "pos": [150, 50], "in": [0, 1], "out": 2}],
  "wires": [[3, 0], [4, 1], [2, 5]]
}
```

## Porte NON

Cette porte est plus simple : elle n'a qu'une entrée, et sa sortie se contente d'inverser la valeur en entrée. On l'appelle d'ailleurs aussi un _inverseur_.

Voici sa table de vérité :

| $X$ | $Z$ |
| :-: | :-: |
| 0   | 1   |
| 1   | 0   |

Essayez l'inverseur :

```{logic}
:height: 60
:mode: tryout

{
  "v": 3,
  "in": [{"pos": [50, 30], "id": 0, "name": "X", "val": 0}],
  "out": [{"pos": [220, 30], "id": 2, "name": "Z"}],
  "gates": [{"type": "NOT", "pos": [130, 30], "in": 1, "out": 3}],
  "wires": [[0, 1], [3, 2]]
}
```

Ensemble, les portes **ET**, **OU**, **OU-X** et **NON** représentent les relations logiques de la {glo}`conjonction|conjonction`, la {glo}`disjonction|disjonction` inclusive et exclusive et la {glo}`negation|négation`. Même si on ne les appelle pas ainsi, on utilise tous les jours des relations logiques de conjonction, de disjonction et de négation.

 * La **conjonction** est ainsi l'«intersection logique» de deux propositions. Si on dit «je vais à la piscine s'*il fait beau* **ET** *que mes amis m'accompagnent*», on utilise la conjonction.
 * Au contraire, si on dit «je vais à la piscine s'*il fait beau* **OU** *que mes amis m'accompagnent*», on utilise la **disjonction** inclusive, qui est comme une sorte de «somme logique» de deux propositions
 * Si on dit «je vais à la piscine **OU** au marché», on  utilise le **disjonction exclusive**, c'est-à-dire qu'on va faire soit l'un soit l'autre mais pas les deux.
 * La **négation** est encore plus évidente, puisque la proposition «je ne vais pas à la piscine» est simplement la négation, ou l'inverse, de la proposition «je vais à la piscine». 

La porte NON peut être combinées aux autres portes ci-dessus pour faire les portes NON-ET, NON-OU et NON-OU-X. Pour gagner de la place, on ajoute
simplement un rond du côté de la sortie de la porte, obtenant les portes suivantes:

```{logic}
:height: 150
:mode: tryout

{
  "v": 3,
  "in": [
    {"pos": [20, 50], "id": 0, "val": 0},
    {"pos": [20, 90], "id": 1, "val": 0},
    {"pos": [260, 50], "id": 9, "val": 0},
    {"pos": [260, 100], "id": 10, "val": 0},
    {"pos": [490, 50], "id": 15, "val": 0},
    {"pos": [490, 90], "id": 16, "val": 0}
  ],
  "gates": [
    {"type": "NAND", "pos": [130, 70], "in": [2, 3], "out": 4},
    {"type": "NOR", "pos": [370, 70], "in": [6, 7], "out": 8},
    {"type": "XNOR", "pos": [600, 70], "in": [12, 13], "out": 14}
  ],
  "out": [{"pos": [200, 70], "id": 5}, {"pos": [440, 70], "id": 11}, {"pos": [670, 70], "id": 17}],
  "wires": [[0, 2], [1, 3], [4, 5], [9, 6], [10, 7], [8, 11], [14, 17], [16, 13], [15, 12]]
}
```

Comme on peut l'observer, le rond inverse simplement la sortie de ces portes.

     
## Circuits logiques

Ces portes logiques peuvent être combinées les unes ou autres pour créer des *circuits logiques* dont les fonctions sont plus complexes.
Un circuit logique possède une ou plusieurs *entrées* qui vont déterminer une ou plusieurs *sorties*. Les entrées sont les
valeurs "reçues" par le circuit, elles peuvent par exemple être données par un humain (en appuyant sur un bouton),
fournies par un capteur, ou déterminées par un autre circuit.
Les sorties sont les valeurs produites par le circuit en fonction des entrées.


### Fonctions logiques

Chaque circuit logique réalise une *fonction logique* qui s'obtient en étudiant la manière dont les portes logiques sont connectées.
Considéront, par exemple les circuit logique suivant 

```{logic}
:height: 290
:mode: tryout

{
  "v": 3,
  "in": [
    {"pos": [150, 90], "id": 0, "name": "A", "val": 0},
    {"pos": [150, 140], "id": 1, "name": "B", "val": 0},
    {"pos": [150, 200], "id": 9, "name": "C", "val": 0}
  ],
  "out": [{"pos": [600, 110], "id": 8, "name": "Z"}],
  "gates": [{"type": "AND", "pos": [290, 100], "in": [2, 3], "out": 4}, {"type": "OR", "pos": [460, 110], "in": [5, 6], "out": 7}],
  "wires": [[0, 2], [1, 3], [4, 5], [7, 8], [9, 6]]
}
```

Sa fonction logique est donnée par (A ET B) OU C. En effet la sortie de la première porte est A ET B et la deuxième porte prend
cette sortie et combine avec l'entrée C dans un OU, ce qui donne (A ET B) OU C.

```{exercise}
Déterminer la fonction logique des quatres circuits logiques suivants:
```{logic}
:height: 290
:mode: tryout

{
  "v": 3,
  "in": [
    {"pos": [40, 30], "id": 0, "name": "A", "val": 0},
    {"pos": [40, 70], "id": 1, "name": "B", "val": 0},
    {"pos": [40, 110], "id": 9, "name": "C", "val": 0},
    {"pos": [410, 90], "id": 10, "name": "B", "val": 0},
    {"pos": [410, 50], "id": 11, "name": "A", "val": 0},
    {"pos": [410, 130], "id": 12, "name": "C", "val": 0},
    {"pos": [40, 200], "id": 22, "name": "A", "val": 0},
    {"pos": [40, 250], "id": 23, "name": "B", "val": 0},
    {"pos": [410, 180], "id": 31, "name": "A", "val": 0},
    {"pos": [410, 220], "id": 32, "name": "B", "val": 0},
    {"pos": [410, 260], "id": 33, "name": "C", "val": 0}
  ],
  "out": [
    {"pos": [310, 60], "id": 8, "name": "Z"},
    {"pos": [740, 110], "id": 21, "name": "Z"},
    {"pos": [290, 220], "id": 30, "name": "Z"},
    {"pos": [740, 210], "id": 52, "name": "Z"}
  ],
  "gates": [
    {"type": "AND", "pos": [140, 50], "in": [2, 3], "out": 4},
    {"type": "OR", "pos": [230, 60], "in": [5, 6], "out": 7},
    {"type": "NOT", "pos": [490, 50], "in": 13, "out": 14},
    {"type": "AND", "pos": [580, 60], "in": [15, 16], "out": 17},
    {"type": "XOR", "pos": [670, 110], "in": [18, 19], "out": 20},
    {"type": "NAND", "pos": [130, 210], "in": [24, 25], "out": 26},
    {"type": "XOR", "pos": [220, 220], "in": [27, 28], "out": 29},
    {"type": "NAND", "pos": [540, 190], "in": [37, 38], "out": 39},
    {"type": "OR", "pos": [540, 250], "in": [43, 44], "out": 45},
    {"type": "XNOR", "pos": [650, 210], "in": [49, 50], "out": 51}
  ],
  "wires": [
    [0, 2],
    [1, 3],
    [4, 5],
    [7, 8],
    [9, 6],
    [11, 13],
    [10, 16],
    [14, 15],
    [17, 18],
    [12, 19],
    [20, 21],
    [22, 24],
    [23, 25],
    [26, 27],
    [23, 28],
    [29, 30],
    [31, 37],
    [32, 38],
    [32, 43],
    [33, 44],
    [39, 49],
    [45, 50],
    [51, 52]
  ]
}
```

```{exercise}
Dessiner les  circuits logiques correspondant aux fonctions logiques suivantes:

1. Z = (A OU-X B) ET C
1. Z = (A ET B) ET (B OU C)
1. Z = (NON (A OU B) ) OU C
1. Z = (NON A) OU (B OU C)

```


### Analyse de circuit
L'analyse d'un circuit donné consiste à en déterminer la table de vérité de ce circuit. Pour ceci, faut d'abord remplir la table avec
toutes les combinaisons possible de valeur pour les entrée. Ainsi si le circuit n'a qu'une entrée $X$, il n'y aura que deux valeurs
possibles pour les entrées, $X=0$ ou $X=1$, donc la table n'aura que deux lignes. Si le circuit a deux entrées, $X$ et $Y$, il y aura
quatres valeurs possibles pour les entrées, $X=0$ et $Y=0$, $X=0$ et $Y=1$, $X=1$ et $Y=0$,$X=1$ et $Y=1$. Ainsi chaque fois qu'on ajoute
une entrée, on multiplie le nombre de possibilités par deux (car il y a celles déjà existantes avec la nouvelle entrée à 0 et celles
déjà existantes avec la nouvelle entrées à 1). Si $n$ est le nombre d'entrées, il y a donc $2^{n}$ possibilités de combinaisons de
valeurs et donc de lignes à la table de vérité. Considérons l'exemple suivant:

```{logic}
:height: 230
:mode: tryout

{
  "v": 3,
  "in": [{"pos": [150, 90], "id": 0, "name": "X", "val": 0}, {"pos": [150, 140], "id": 1, "name": "Y", "val": 0}],
  "out": [{"pos": [600, 110], "id": 8, "name": "Z"}],
  "gates": [{"type": "NAND", "pos": [290, 100], "in": [2, 3], "out": 4}, {"type": "XOR", "pos": [460, 110], "in": [5, 6], "out": 7}],
  "wires": [[0, 2], [1, 3], [1, 6], [4, 5], [7, 8]]
}
```
La fonction logique correspondante et Z = (NON(X ET Y)) OU-X Y. En effet, la première porte (à droite) implémente la fonction NON (X ET Y), et la seconde
porte combine ce résultat avec Y dans une opération OU-X. Il est ensuite possible de remplir la table de vérité de ce circuit, colonne par colonne:

|  X  |  Y  | X ET Y |  NON(X ET Y) | (NON(X ET Y)) OU-X Y |
| :-: | :-: | :----: | :----------: | :------------------: |
| 0   | 0   | 0      | 1            | 1                    |
| 0   | 1   | 0      | 1            | 0                    |
| 1   | 0   | 0      | 1            | 1                    |
| 1   | 1   | 1      | 0            | 1                    |
    

    
```{exercise}
Déterminer, sans utiliser le simulateur, la table de vérité des circuits logiques de l'exercice précédent. Vérifer ensuite vos réponses
avec le simulateur. 

```

### Synthèse de circuit
Cela peut être intéressant de pouvoir comprendre le fonctionnement d'un circuit déjà existant, mais
c'est d'habitude plus utile de concevoir un circuit réalisant une fonction donnée. Dans ce cas, on part
de la table de vérité et on essaie de déterminer un circuit correspondant à cette table de vérité.
    
Prenons l'exemple d'un circuit qui commande un store automatique connecté à un capteur de lumière et un
capteur de vent. On souhaite réaliser un circuit qui baisse le store lorsqu'il y a beaucoup de
lumière mais pas de vent. On suppose le que store se baisse lorsqu'il reçoit un 1, que le capteur
de lumière retourne un 1 lorsqu'il y beaucoup de lumière et 0 sinon. De même le capteur de vent retourne
1 lorsqu'il y a du vent et 0 sinon. Notre circuit a donc deux entrées, le capteur de lumière (L)
et le capteur de vent (V). Sa sortie est la commande du store (S). On peut donc définit la table
   de vérité du circuit de la manière suivante:

|  L  |  V  | S    |
| :-: | :-: | :--: | 
| 0   | 0   | 0    | 
| 0   | 1   | 0    | 
| 1   | 0   | 1    | 
| 1   | 1   | 0    | 
        
Cette table indique qu'on veut mettre S à 1 uniquement si $L=1$ et $V=0$. Sinon, S reste à 0. Une fois
    la table de vérité, il faut déduire une fonction logique correspondant à cette table. Pour ceci, il
    suffit de formuler une fonction logique décrivant toutes les lignes une sortie à 1. Dans notre
    exemple cette fonction est L ET NON V (c'est-à-dire $L=1$ et $V=0$). On peut ensuite dessiner le
    circuit logique correspondant à cette fonction, où chaque opération logique est représentée par
    une porte logique. Pour S=L ET NON V, on obtient le circuit suivant.

```{logic}
:height: 100
:mode: tryout

{
  "v": 3,
  "gates": [{"type": "AND", "pos": [190, 60], "in": [0, 1], "out": 2}, {"type": "NOT", "pos": [110, 70], "in": 5, "out": 6}],
  "in": [{"pos": [40, 30], "id": 3, "name": "L", "val": 0}, {"pos": [40, 70], "id": 4, "name": "V", "val": 0}],
  "out": [{"pos": [260, 60], "id": 7, "name": "S"}],
  "wires": [[3, 0], [6, 1], [4, 5], [2, 7]]
}
```
De manière générale, il y a plusieurs fonctions logiques, et donc plusieurs circuits logiques
    correspondant à une table de vérité. Par exemple, la table ci-dessus peut également être décrite
    par la fonction NON (V OU NON L), et donc le circuit ci-dessous.

```{logic}
:height: 140
:mode: tryout

{
  "v": 3,
  "in": [{"pos": [40, 50], "id": 3, "name": "L", "val": 0}, {"pos": [40, 90], "id": 4, "name": "V", "val": 0}],
  "out": [{"pos": [260, 60], "id": 7, "name": "S"}],
  "gates": [{"type": "NOR", "pos": [190, 60], "in": [0, 1], "out": 2}, {"type": "NOT", "pos": [110, 50], "in": 5, "out": 6}],
  "wires": [[2, 7], [6, 0], [3, 5], [4, 1]]
}
```

On dit que deux circuits sont
    équivalents s'ils ont la même table de vérité. Il y a donc toujours plusieurs manières possibles
    de concevoir un circuit. Dans la pratique, on va privilégier les circuits avec moins de portes,
    ou des circuits avec moins de sortes différentes de portes, pour en simplifier le montage et
    diminuer le risque de disfonctionnement
