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

Ensemble, les portes **ET**, **OU** et **NON** représentent les relations logiques de la {glo}`conjonction|conjonction`, la {glo}`disjonction|disjonction` et la {glo}`negation|négation`. Même si on ne les appelle pas ainsi, on utilise tous les jours des relations logiques de conjonction, de disjonction et de négation.

 * La **conjonction** est ainsi l'«intersection logique» de deux propositions. Si on dit «je vais à la piscine s'*il fait beau* **ET** *que mes amis m'accompagnent*», on utilise la conjonction.
 * Au contraire, si on dit «je vais à la piscine s'*il fait beau* **OU** *que mes amis m'accompagnent*», on utilise la **disjonction**, qui est comme une sorte de «somme logique» de deux propositions (même si, comme noté plus haut, le «ou», dans le langage courant, est généralement exclusif, contrairement au **OU** logique, qui est inclusif).
 * La **négation** est encore plus évidente, puisque la proposition «je ne vais pas à la piscine» est simplement la négation, ou l'inverse, de la proposition «je vais à la piscine». 





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
L'analyse d'un circuit donné consiste à en déterminer la table de vérité de ce circuit. Pour ceci, faut d'abord remplir le tablea avec les
toutes les combinaisons possible de valeur pour les entrée. Ainsi si le circuit n'a qu'une entrée $X$, il n'y aura que deux valeurs
possibles pour les entrées, $X=0$ ou $X=1$, donc la table n'aura que deux lignes. Si le circuit a deux entrées, $X$ et $Y$, il y aura
quatres valeurs possibles pour les entrées, $X=0$ et $Y=0$, $X=0$ et $Y1$, $X=1$ et $Y=0$,$X=1$ et $Y=1$. Ainsi chaque fois qu'on ajoute
une entrée, on multiplie le nombre de possibilités par deux (car il y a celles déjà existantes avec la nouvelle entrée à 0 et celles
déjà existantes avec la nouvelle entrées à 1). Si $n$ est le nombre d'entrées, il y a donc $2^{n}$ possibilités de combinaisons de
valeurs et donc de lignes à la table de vérité. 

```{logic}
:height: 230
:mode: tryout

{
  "v": 3,
  "in": [{"pos": [150, 90], "id": 0, "name": "X", "val": 1}, {"pos": [150, 140], "id": 1, "name": "Y", "val": 1}],
  "out": [{"pos": [600, 110], "id": 8, "name": "Z"}],
  "gates": [{"type": "AND", "pos": [290, 100], "in": [2, 3], "out": 4}, {"type": "OR", "pos": [460, 110], "in": [5, 6], "out": 7}],
  "wires": [[0, 2], [1, 3], [1, 6], [4, 5], [7, 8]]
}
```

```{exercise}
Déterminer, sans utiliser le simulateur, la table de vérité des circuits logiques de l'exercice précédent. Vérifer ensuite vos réponses
avec le simulateur. 

```

### Création d'un circuit

On s'intéresse à présent à la création de ce diagramme réalisant un **OU-X** avec les portes à disposition à partir de sa table de vérité. Plusieurs approches sont possibles, et on constatera que, suivant l'approche, on aurait très bien pu créer un circuit logique différent réalisant la même fonction.


**Approche ad hoc**

On se dit donc, selon la table de vérité, que la sortie de notre circuit «ou exclusif» doit être 1, donc l'une ou l'autre des entrées $X$ ou $Y$ est à 1, mais pas les deux. On peut ainsi commencer par {logicref}`xor_build_step1.or|insérer une porte **OU**` dans le diagramme, qui fait une partie du travail. Mais il faut modifier sa sortie, pour ne pas avoir la valeur 1 lorsque les deux entrées sont à 1 : cela contredirait la quatrième ligne de la table de vérité. Comment effectuer cela ? En connectant la sortie de {logicref}`xor_build_step1.or|cette porte **OU**` à {logicref}`xor_build_step1.and2|une nouvelle porte **ET** à droite` (dont on n'a pas encore déterminé la seconde entrée).

Pourquoi rajouter une porte **ET** ? On utilise ici le fait que connecter une porte **ET** à un signal peut _restreindre_ les conditions sous lesquelles la nouvelle sortie $Z$ sera 1 (alors qu'au contraire, on aurait pu _étendre_ ces conditions si on avait connecté une nouvelle porte **OU**). Comme si, pour être d'accord de finalement livrer 1 sur la sortie, {logicref}`xor_build_step1.and2|la porte **ET**` voulait la «confirmation» d'un autre signal avant de livrer 1...

À ce moment, on a ce diagramme partiel, qui peut être lu comme : «la sortie $Z$ sera 1 lorsque ces deux conditions sont vraies en même temps: (1) le **OU** de $X$ et $Y$ vaut 1, et (2) quelque chose qui reste ici à définir, qui sera connecté à la seconde entrée de la porte **ET**».

```{logic}
:ref: xor_build_step1
:height: 120
:mode: tryout

{
  "v": 3,
  "opts": {"showGateTypes": true, "showDisconnectedPins": true},
  "in": [
    {"pos": [50, 30], "id": 0, "name": "X", "val": 0},
    {"pos": [50, 90], "id": 1, "name": "Y", "val": 0}
  ],
  "out": [{"pos": [390, 50], "id": 2, "name": "Z"}],
  "gates": [
    {"type": "OR", "pos": [190, 40], "ref": "or", "in": [3, 4], "out": 5},
    {"type": "AND", "pos": [330, 50], "ref": "and2", "in": [6, 7], "out": {"id": 8, "force": "?"}}
  ],
  "wires": [[0, 3], [1, 4], [5, 6], [8, 2]]
}
```


Ce qui reste à définir en complétant avant la porte **ET**, c'est l'exclusion du cas où $X$ et $Y$ valent les deux 1, de manière à ce que la condition (2) puisse être lue comme «$X$ et $Y$ ne sont pas en même temps les deux à 1». Avec {logicref}`xor_build_step2.and1|une porte **ET** connectée directement aux deux entrées $X$ et $Y$`, on obtient une partie de ceci en créant le signal «$X$ et $Y$ sont les deux à 1». Mais c'est en fait la condition inverse de celle que l'on cherche. Pour l'inverser, on insère {logicref}`xor_build_step2.inv|un inverseur` à la sortie de {logicref}`xor_build_step2.and1|cette nouvelle porte **ET**`, ce qui complète le circuit :

```{logic}
:ref: xor_build_step2
:height: 150
:mode: tryout

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [
    {"pos": [50, 30], "id": 0, "name": "X", "val": 0},
    {"pos": [50, 90], "id": 1, "name": "Y", "val": 0}
  ],
  "out": [{"pos": [390, 50], "id": 2, "name": "Z"}],
  "gates": [
    {"type": "OR", "pos": [190, 40], "in": [3, 4], "ref": "or", "out": 5},
    {"type": "AND", "pos": [330, 50], "in": [6, 7], "ref": "and2", "out": 8},
    {"type": "NOT", "pos": [230, 120], "in": 9, "ref": "inv", "out": 10},
    {"type": "AND", "pos": [160, 120], "in": [11, 12], "ref": "and1", "out": 13}
  ],
  "wires": [[0, 3], [0, 11], [1, 4], [1, 12], [13, 9], [10, 7], [5, 6], [8, 2]]
}
```

La lecture finale du circuit est donc «la sortie $Z$ sera 1 lorsque ces deux conditions sont vraies en même temps (selon {logicref}`xor_build_step2.and2|la porte **ET** de droite`) : (1) {logicref}`xor_build_step2.or|le **OU** de $X$ et $Y$ vaut 1`, et (2) {logicref}`xor_build_step2.{and1,inv}|$X$ et $Y$ ne sont pas les deux en même temps à 1`».

````{admonition} Exercice 2 : analyse d'un circuit
Ceci est le même circuit que ci-dessus, mais sans la porte **ET** finale. À la place, on a inséré deux sorties intermédiaires, $I$ et $J$, qui sont les deux signaux qui allaient précédemment à la porte **ET** :

```{logic}
:height: 150
:mode: tryout

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [
    {"pos": [50, 30], "id": 0, "name": "X", "val": 0},
    {"pos": [50, 90], "id": 1, "name": "Y", "val": 0}
  ],
  "out": [
    {"pos": [310, 40], "id": 15, "name": "I"},
    {"pos": [310, 120], "id": 14, "name": "J"}
  ],
  "gates": [
    {"type": "OR", "pos": [190, 40], "in": [3, 4], "out": 5},
    {"type": "NOT", "pos": [230, 120], "in": 9, "out": 10},
    {"type": "AND", "pos": [160, 120], "in": [11, 12], "out": 13}
  ],
  "wires": [[0, 3], [0, 11], [1, 4], [1, 12], [13, 9], [10, 14], [5, 15]]
}
```

 1. Combien de lignes a une table de vérité pour $I$ et $J$ en fonction des deux entrées $X$ et $Y$ ? Écrivez cette table de vérité.
 1. Quelle différence y a-t-il entre $J$ et ce qu'on obtient en connectant directement une porte **ET** aux entrées $X$ et $Y$ : quel élément du schéma réalise cette différence ?
 1. Dans votre table de vérité, ajoutez une colonne et remplissez-là : elle doit représenter une nouvelle sortie $K$, qui serait produite si on connectait une porte **OU** en lui donnant $I$ et $J$ comme entrées, comme montré ci-dessous. Le schéma représente ici le circuit dans un état indéterminé, mais les types des portes ont été ajoutés pour vous aider. La sortie $K$ est-elle ici toujours la même que la sortie $Z$ plus haut ? Quelles sont les éventuelles différences ? Finalement, la sortie $K$ a-t-elle un intérêt ?

```{logic}
:height: 150
:mode: static

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [
    {"pos": [50, 30], "id": 0, "name": "X", "val": "?"},
    {"pos": [50, 90], "id": 1, "name": "Y", "val": "?"}
  ],
  "out": [{"pos": [390, 50], "id": 2, "name": "K"}],
  "gates": [
    {"type": "OR", "pos": [190, 40], "in": [3, 4], "out": 5},
    {"type": "OR", "pos": [330, 50], "in": [6, 7], "out": 8},
    {"type": "NOT", "pos": [230, 120], "in": 9, "out": 10},
    {"type": "AND", "pos": [160, 120], "in": [11, 12], "out": 13}
  ],
  "wires": [[0, 3], [0, 11], [1, 4], [1, 12], [13, 9], [10, 7], [5, 6], [8, 2]]
}
```
````


**Approche systématique**

Il est parfois difficile d'avoir l'«intuition» nécessaire pour suivre une telle approche ad hoc. Voici donc une autre technique, illustrée avec le même exemple.

La table de vérité montre qu'il y a deux lignes où la sortie doit valoir 1 : (a) la ligne où $X=1$ et $Y=0$, et (b) la ligne où $X=0$ et $Y=1$. Si l'on pouvait créer {logicref}`xor_build2_step1.sub1|un premier sous-circuit` qui livre un 1 lorsque qu'on se trouve dans la circonstance (a) et {logicref}`xor_build2_step1.sub2|un autre sous-circuit` qui livre un 1 lorsqu'on se trouve dans la circonstance (b), on pourrait ensuite les combiner avec {logicref}`xor_build2_step1.or|une porte **OU**` et ainsi construire notre sortie $Z$ ainsi :

```{logic}
:ref: xor_build2_step1
:height: 180
:mode: static

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [
    {"pos": [50, 30], "id": 0, "name": "X", "val": "?"},
    {"pos": [50, 150], "id": 1, "name": "Y", "val": "?"}
  ],
  "out": [{"pos": [400, 90], "id": 2, "name": "Z"}],
  "gates": [
    {"type": "OR", "pos": [340, 90], "in": [6, 7], "ref": "or", "out": 8},
    {"type": "AND", "pos": [200, 60], "in": [3, 4], "out": 5, "ref": "sub1", "showAsUnknown": true},
    {"type": "AND", "pos": [200, 130], "in": [9, 10], "out": 11, "ref": "sub2", "showAsUnknown": true}
  ],
  "wires": [[8, 2], [0, 3], [1, 10], [5, 6], [11, 7], [0, 9], [1, 4]]
}
```

Ici, les deux sous-circuits notés avec «?» et encadrés donc encore à définir — potentiellement avec plus d'une seule porte. Essayons de les créer.

Disons que le sous-circuit du haut correspond à la deuxième ligne de la table de vérité, le cas de figure (a). Pour cette ligne, nous voulons un 1 de sortie lorsque $X=1$ et $Y=0$. En lisant littéralement cette dernière phrase, on y détecte un **ET** de deux conditions qui doivent être remplies: $X=1$ et $Y=0$. Mais ajouter une porte **ET** directement avec les signaux $X$ et $Y$ ne fera pas l'affaire, parce que cela livrerait un 1 lors que les _deux_ entrées $X$ et $Y$ sont à 1. La solution ici, c'est d'{logicref}`xor_build2_step2.inv1|_inverser_ $Y$` avant l'entrée dans {logicref}`xor_build2_step2.and1|la porte **ET**` — ce qui donne bel et bien la condition (a).

On avance ainsi à ceci :

```{logic}
:ref: xor_build2_step2
:height: 180
:mode: static

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [
    {"pos": [50, 30], "id": 0, "name": "X", "val": "?"},
    {"pos": [50, 150], "id": 1, "name": "Y", "val": "?"}
  ],
  "out": [{"pos": [400, 90], "id": 2, "name": "Z"}],
  "gates": [
    {"type": "OR", "pos": [340, 90], "in": [6, 7], "out": 8},
    {"type": "AND", "pos": [230, 50], "in": [3, 4], "ref": "and1", "out": 5},
    {"type": "AND", "pos": [200, 130], "in": [9, 10], "out": 11, "showAsUnknown": true},
    {"type": "NOT", "pos": [160, 60], "in": 12, "out": 13, "ref": "inv1"}
  ],
  "wires": [[8, 2], [13, 4], [0, 3], [1, 12], [1, 10], [5, 6], [11, 7], [0, 9]]
}
```

Pour la condition (b), qui correspond à la troisième ligne de la table de vérité, un raisonnement similaire s'applique. À la place d'inverser $Y$, on {logicref}`xor_build2_step3.inv2|inversera cette fois $X$` afin d'obtenir, à la sortie de {logicref}`xor_build2_step3.and2|la nouvelle porte **ET** du bas`, un signal qui vaut 1 lorsque $X=0$ et $Y=1$.

Voici le circuit final ainsi réalisé :

```{logic}
:ref: xor_build2_step3
:height: 180
:mode: static

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [
    {"pos": [50, 30], "id": 0, "name": "X", "val": "?"},
    {"pos": [50, 150], "id": 1, "name": "Y", "val": "?"}
  ],
  "out": [{"pos": [400, 90], "id": 2, "name": "Z"}],
  "gates": [
    {"type": "OR", "pos": [340, 90], "in": [6, 7], "out": 8, "ref": "or"},
    {"type": "AND", "pos": [230, 50], "in": [3, 4], "out": 5, "ref": "and1"},
    {"type": "AND", "pos": [230, 130], "in": [9, 10], "out": 11, "ref": "and2"},
    {"type": "NOT", "pos": [160, 60], "in": 12, "out": 13, "ref": "inv1"},
    {"type": "NOT", "pos": [160, 120], "in": 14, "out": 15, "ref": "inv2"}
  ],
  "wires": [
    [8, 2], [13, 4], [15, 9], [0, 3], [0, 14], [1, 12], [1, 10],
    [5, 6], [11, 7]
  ]
}
```

(Ce schéma ne peut être simulé que dans l'indice de l'exercice suivant.)

Ce que cette approche systématique apprend, c'est qu'un circuit peut toujours être pensé comme {logicref}`xor_build2_step3.or|un **OU**` de toutes les conditions sous lesquelles la sortie doit être à 1. Ces conditions sont elles-mêmes réalisables avec les entrées du circuit avec {logicref}`xor_build2_step3.{and1,and2,inv1,inv2}|des portes **ET** et des inverseurs` directement connectés aux entrées.

On fait également les constats suivants :
 * plusieurs circuits logiques différents peuvent réaliser la même fonction de sortie,
 * l'approche systématique décrite ici ne livre pas forcément le circuit le plus compact: on a obtenu un circuit avec cinq portes pour réaliser un **OU-X** alors que l'approche ad hoc a conduit à la construction d'un circuit à quatre portes.


`````{admonition} Exercice 3 : analyse d'un circuit
En annotant le schéma logique avec les quatre cas de figure possibles pour les entrées $X$ et $Y$, faites l'analyse du circuit **OU-X** ci-dessus construit avec l'approche systématique et montrez que la table de vérité ainsi reconstituée est la même que celle de la porte **OU-X**.

````{dropdown} Indice
```{logic}
:height: 180
:mode: tryout

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [
    {"pos": [50, 30], "id": 0, "name": "X", "val": 0},
    {"pos": [50, 150], "id": 1, "name": "Y", "val": 0}
  ],
  "out": [{"pos": [400, 90], "id": 2, "name": "Z"}],
  "gates": [
    {"type": "OR", "pos": [340, 90], "in": [6, 7], "out": 8},
    {"type": "AND", "pos": [230, 50], "in": [3, 4], "out": 5},
    {"type": "AND", "pos": [230, 130], "in": [9, 10], "out": 11},
    {"type": "NOT", "pos": [160, 60], "in": 12, "out": 13},
    {"type": "NOT", "pos": [160, 120], "in": 14, "out": 15}
  ],
  "wires": [
    [8, 2], [13, 4], [15, 9], [0, 3], [0, 14], [1, 12], [1, 10],
    [5, 6], [11, 7]
  ]
}
```
````
`````


`````{admonition} Exercice 4 : porte cachée
Quelle est la porte cachée de ce circuit ?
````{logic}
:height: 100
:mode: tryout

{
  "v": 3,
  "in": [
    {"pos": [50, 30], "id": 3, "name": "X", "val": 0},
    {"pos": [50, 70], "id": 4, "name": "Y", "val": 0}
  ],
  "out": [{"pos": [220, 50], "id": 5, "name": "Z"}],
  "gates": [{"type": "OR", "pos": [150, 50], "in": [0, 1], "out": 2, "showAsUnknown": true}],
  "wires": [[3, 0], [4, 1], [2, 5]]
}
````
```{dropdown} Corrigé
C'est une porte **OU**.
```
`````

`````{admonition} Exercice 5 : circuit défectueux
Analysez ce circuit. De quel type de portes est-il constitué ? Fonctionne-t-il correctement ? Déterminez ce qui pose problème. Dites ce que fait ce circuit une fois corrigé et écrivez sa table de vérité.

````{logic}
:ref: faulty_and
:height: 140
:mode: tryout

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [
    {"pos": [50, 30], "id": 3, "name": "X", "val": 0},
    {"pos": [50, 70], "id": 4, "name": "Y", "val": 0},
    {"pos": [50, 110], "id": 6, "name": "W", "val": 0}
  ],
  "out": [{"pos": [320, 70], "id": 5, "name": "Z"}],
  "gates": [
    {"type": "AND", "pos": [150, 50], "in": [0, 1], "out": 2, "ref": "ok"},
    {"type": "OR", "pos": [260, 70], "in": [7, 8], "out": 9, "poseAs": "AND", "ref": "faulty"}
  ],
  "wires": [[3, 0], [4, 1], [6, 8], [2, 7], [9, 5]]
}
````

````{dropdown} Indice
Voici le circuit corrigé (il a la même apparence que le circuit de la question, mais toutes les portes fonctionnent ici correctement).
```{logic}
:height: 140
:mode: tryout

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [
    {"pos": [50, 30], "id": 3, "name": "X", "val": 0},
    {"pos": [50, 70], "id": 4, "name": "Y", "val": 0},
    {"pos": [50, 110], "id": 6, "name": "W", "val": 0}
  ],
  "out": [{"pos": [320, 70], "id": 5, "name": "Z"}],
  "gates": [
    {"type": "AND", "pos": [150, 50], "in": [0, 1], "out": 2},
    {"type": "AND", "pos": [260, 70], "in": [7, 8], "out": 9}
  ],
  "wires": [[3, 0], [4, 1], [6, 8], [2, 7], [9, 5]]
}
```
````

````{dropdown} Corrigé
Ce circuit est constitué de {logicref}`faulty_and.{ok,faulty}|deux portes **ET**`. Mais {logicref}`faulty_and.faulty|la porte **ET** de droite` semble poser problème, parce qu'elle se comporte comme une porte **OU** ! Le circuit montré dans l'indice se comporte correctement.

Ce circuit, une fois corrigé, implémente en fait un **ET** à trois entrée $X$, $Y$ et $W$, où la sortie $Z$ ne vaut 1 que si les trois entrées valent 1. Sa table de vérité, à huit lignes dues aux trois entrées, est ainsi la suivante :

| $X$ | $Y$ | $W$ | $Z$ |
| :-: | :-: | :-: | :-: |
| 0   | 0   | 0   | 0   |
| 0   | 0   | 1   | 0   |
| 0   | 1   | 0   | 0   |
| 0   | 1   | 1   | 0   |
| 1   | 0   | 0   | 0   |
| 1   | 0   | 1   | 0   |
| 1   | 1   | 0   | 0   |
| 1   | 1   | 1   | 1   |
````
`````


`````{admonition} Exercice 6 : conception d'un circuit

Écrivez la table de vérité de ce circuit, dont une partie est masquée :

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
  "gates": [{"type": "RIMPLY", "pos": [150, 50], "in": [0, 1], "out": 2, "showAsUnknown": true}],
  "wires": [[3, 0], [4, 1], [2, 5]]
}
```

```{dropdown} Corrigé
| $X$ | $Y$ | $Z$ |
| :-: | :-: | :-: |
| 0   | 0   | 1   |
| 0   | 1   | 0   |
| 1   | 0   | 1   |
| 1   | 1   | 1   |
```


Réalisez ensuite un circuit logique avec les mêmes deux entrées $X$ et $Y$ et la même sortie $Z$ qui implémente cette table de vérité. On peut utiliser des portes **ET** et **OU** et des inverseurs. Glissez les portes depuis la gauche pour en ajouter, et glissez entre les connecteurs rond pour les connecter.

```{logic}
:height: 350
:showonly: AND OR NOT

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [
    {"pos": [50, 40], "id": 3, "name": "X", "val": 0},
    {"pos": [50, 160], "id": 4, "name": "Y", "val": 0}
  ],
  "out": [{"pos": [380, 100], "id": 5, "name": "Z"}]
}
```

````{dropdown} Indice 1
On peut lire cette fonction comme «$Z$ vaut 1 lorsque $X$ et $Y$ sont les deux à 0 (la première ligne de la table de vérité) ou lorsque $X$ est à 1 (les deux dernières lignes)».
````

````{dropdown} Indice 2
$Z$ est donc le **OU** de $X$ et du **ET** de l'inverse de $X$ et de $Y$.
````

````{dropdown} Corrigé
Il y plusieurs solutions possibles. Celle qui correspond aux indices est la suivante:

```{logic}
:height: 200
:mode: tryout

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [
    {"pos": [50, 40], "id": 3, "name": "X", "val": 0},
    {"pos": [50, 160], "id": 4, "name": "Y", "val": 0}
  ],
  "out": [{"pos": [380, 100], "id": 5, "name": "Z"}],
  "gates": [
    {"type": "AND", "pos": [230, 110], "in": [0, 1], "out": 2},
    {"type": "OR", "pos": [320, 100], "in": [6, 7], "out": 8},
    {"type": "NOT", "pos": [130, 100], "in": 9, "out": 10},
    {"type": "NOT", "pos": [130, 160], "in": 11, "out": 12}
  ],
  "wires": [[3, 6], [8, 5], [2, 7], [3, 9], [10, 0], [4, 11], [12, 1]]
}
```

Une autre solution est la suivante, où on se dit qu'on construit d'abord une {logicref}`imply_exercise_key2.{inv1,and}|partie du circuit` qui identifie le cas où $X=0$ et $Y=1$, et on l'{logicref}`imply_exercise_key2.inv2|inverse` pour correspondre à la table de vérité.
```{logic}
:ref: imply_exercise_key2
:height: 130
:mode: tryout

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [
    {"pos": [50, 40], "id": 3, "name": "X", "val": 0},
    {"pos": [50, 90], "id": 4, "name": "Y", "val": 0}
  ],
  "out": [{"pos": [410, 80], "id": 5, "name": "Z"}],
  "gates": [
    {"type": "NOT", "pos": [320, 80], "ref": "inv2", "in": 17, "out": 18},
    {"type": "AND", "pos": [230, 80], "ref": "and", "in": [19, 20], "out": 21},
    {"type": "NOT", "pos": [130, 40], "ref": "inv1", "in": 22, "out": 23}
  ],
  "wires": [[18, 5], [21, 17], [4, 20], [23, 19], [3, 22]]
}
```

Voici un circuit plus simple, qui fait la même chose mais qui est plus difficile à concevoir d'emblée :
```{logic}
:height: 120
:mode: tryout

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [
    {"pos": [50, 40], "id": 3, "name": "X", "val": 0},
    {"pos": [50, 80], "id": 4, "name": "Y", "val": 0}
  ],
  "out": [{"pos": [290, 60], "id": 5, "name": "Z"}],
  "gates": [
    {"type": "OR", "pos": [230, 60], "in": [6, 7], "out": 8},
    {"type": "NOT", "pos": [120, 80], "in": 11, "out": 12}
  ],
  "wires": [[3, 6], [8, 5], [4, 11], [12, 7]]
}
```

En fait, il existe même une porte spéciale qui réalise exactement la fonction correspondant à la table de vérité, la porte **IMPLIQUE** :
```{logic}
:height: 120
:mode: tryout

{
  "v": 3,
  "opts": {"showGateTypes": true},
  "in": [{
    "pos": [50, 40], "id": 3, "name": "X", "val": 0},
    {"pos": [50, 80], "id": 4, "name": "Y", "val": 0}
  ],
  "out": [{"pos": [230, 60], "id": 5, "name": "Z"}],
  "gates": [{"type": "RIMPLY", "pos": [160, 60], "in": [0, 1], "out": 2}],
  "wires": [[3, 0], [4, 1], [2, 5]]
}
```

````

`````
