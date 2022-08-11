(appr:repinfo:entiers)=
# Les entiers

La plupart des civilisations humaines utilise le système décimal.
Pourquoi ? Tout simplement parce que nous avons 10 doigts !

L'ordinateur, lui, n'a pas de doigts mais utilise l'électricité. Par
conséquent, il ne connaît que deux types d'informations : il y a du
courant, il n'y a pas de courant ; allumé, éteint ; vrai, faux ; 1 ou 0.

**On dit qu'il travaille dans un système binaire, ou en base deux.**

## Les systèmes de numération

### Le système décimal

Ce système est composé de 10 symboles qui sont les chiffres :

0, 1, 2, 3, 4, 5, 6, 7, 8, 9

Ainsi, tout nombre écrit dans la base 10 est composé de ces chiffres.

La valeur de chaque chiffre dépend alors du chiffre lui-même et de sa
place. Ainsi, le 3 de 1934 et celui de 3008 n'ont pas la même valeur :
le premier vaut 30, alors que le second vaut 3000.
On parle alors de **représentation positionnelle en base 10**.

Dans ce système, pour connaître la valeur de chaque chiffre qui compose
un nombre, il faut décomposer ce nombre pour identifier chaque chiffre
et son coefficient, c'est la **forme canonique**.

``` {panels}
:column: col-sm

*Décomposition du nombre 4528* (en gardant en tête que $10^0=1$):
^^^
* 8 unités $= 8 \cdot 1 = 8 \cdot 10 ^{0}$ 
* 2 dizaines $= 2 \cdot 10 = 2 \cdot 10 ^{1}$ 
* 5 centaines $= 5 \cdot 100 = 5 \cdot 10 ^{2}$ 
* 4 milliers $= 4 \cdot 1000 = 4 \cdot 10 ^{3}$ 
+++

Sa forme canonique est : $4 \cdot 10^3 + 5 \cdot 10^2 + 2 \cdot 10^1 + 8 \cdot 10^0 $ ce qui fait 4528. 
```

Si on veut préciser que cette écriture est à interpréter en base 10, on peut l'indiquer
avec un petit indice placé à droite du nombre: $3528_{10}$ 
Les nombres représentés en base 10 ou du système décimal sont des nombres décimaux.


### Le système binaire

Le système binaire, ou numération positionnelle en base 2, est
représenté à l'aide d'uniquement deux symboles : 0 et 1.
De la même manière qu'en base 10 les nombres se représentent avec leurs unité, dizaines, centaines etc.,
en base 2 les nombres se représentent avec leurs unité, "deuzaines", "quatraines", "huitaines", etc. 

Ainsi, la forme canonique du nombre binaire $1101_{2}$ est : $1 \cdot 2^3 + 1 \cdot 2^2 + 0 \cdot 2^1 + 1 \cdot 2^0$
La valeur de chaque chiffre dépend toujours de sa place qui représente,
cette fois, une puissance de 2.

Ce nombre représente donc $1101_{2} =  1 \cdot 8 + 1 \cdot 4 + 0 \cdot 2 + 1 \cdot 1  = 8+4+1 = 13_{10}$.

Le nombre treize peut donc s'écrire $13_{10}$ en décimal comme on en a l'habitude, ou $1101_{2}$ comme le ferait un
ordinateur. 

Un élément binaire se nomme un *bit* et un ensemble de *bits* peut
représenter un entier en utilisant le même principe que pour le système
décimal. Ainsi le nombre treize $1101_{2}$ s'écrit avec 4 bits. 




```{admonition} Le saviez-vous ? 
:class: hint
Le *bit* vient de la terminologie anglo-saxonne de *binary digit*. Un ensemble
de 8 bits et appelé un **octet**. Un *kilo-octet* (ko) correspond à
$10^3$ octets soit $1000$ octets, donc $8000$ bits. Attention à ne pas
confondre les préfixes binaires ($2^{10}$, $2^{20}$, $2^{30}$, etc.) et
les préfixes décimaux ($10^3$, $10^6$, $10^9$, etc.). On appelle
*kibioctet*, pour kilo binaire, une quantité de $2^{10} = 1024$ octets.
On peut remarquer que cette notation, quoique rigoureuse, peine à
s'imposer dans le vocabulaire courant des ingénieurs eux-même...
```

#### Compter en binaire

On compte en binaire de la même manière que l'on compte en base 10 en
ajoutant 1 aux unités (position la plus à droite). Lorsqu'on arrive au
dernier chiffre (i.e. 9 en base 10 et 1 en base 2), on le remet à 0 et
on augmente de 1 le chiffre à sa gauche.

On répète ces opérations pour tous les chiffres, quelle que soit leur
position. Ainsi, en base 10 :

$$
0\quad1\quad 2\quad 3\quad ...\quad 9\quad 10\quad 11\quad ...\quad 99\quad 100\quad 101\quad ...
$$

En binaire, on obtient : $0\quad 1\quad 10\quad 11\quad 100\quad 101\quad 110\quad 111\quad 1000\quad ...$

```{admonition} Micro-activité ✏️📒 
:class: note 
Comptez jusqu'à 40 en binaire. Que pouvez vous observer au sujet de la parité des nombres
binaires ? Pourquoi ?
```

#### Conversion du binaire vers le décimal

La conversion d'un nombre binaire en nombre décimal se fait aisément
grâce à la forme canonique.

En effet, il suffit de calculer le résultat de la somme pondérée par les
puissances de 2.

```{panels}
:column: col-md

Conversion du nombre 10101
^^^
$$
10101_{2} = 1 \cdot 2^4 + 0 \cdot 2^3 + 1 \cdot 2^2 + 0 \cdot 2^1 + 1 \cdot 2^0 = 21_{10}
$$
```

Le {ref}`tableau <conversion-octet>` ci-dessous permet de convertir un
octet en nombre décimal. Prenons l'exemple de l'octet $00101010_{2}$: 

``` {list-table}
:header-rows: 1
:align: center
:name: conversion-octet

* - Coefficient
  - $2^7$
  - $2^6$
  - $2^5$
  - $2^4$
  - $2^3$
  - $2^2$
  - $2^1$
  - $2^0$
* - Valeur
  - 128
  - 64
  - 32
  - 16
  - 8
  - 4
  - 2
  - 1
* - Bit
  - 0
  - 0
  - 1
  - 0
  - 1
  - 0
  - 1
  - 0
```

L'octet $(00101010_{2})$ correspond donc à une valeur décimale de
$ 00101010_{2} = 0 \cdot 2^7 + 0 \cdot 2^6 + 1 \cdot 2^5 + 0 \cdot 2^4 + 1 \cdot 2^3 + 0 \cdot 2^2 + 1 \cdot 2^1 + 0 \cdot 2^0 = 32+ 8 + 2 = 42_{10}$

```{admonition} Important 
:class: caution 
L'utilisation d'un tableau de conversion nécessite d'écrire le nombre binaire de droite à gauche car
le bit de poids faible ($=2^0$) se trouve à droite, de la même façon que
le chiffre de poids faible (=l'unité) se trouve à droite en
représentation décimale.
```

```{admonition} Micro-activité ✏️📒 
:class: note
<!-- <span style="color:green">Niveau débutant</span> -->

Donnez la conversion décimale des nombres binaires suivants :

  - 10101101
  - 01110010
  - 1111
  - 1111011

<!-- end list -->

```

#### Conversion du décimal vers le binaire

L'opération de conversion du décimal vers le binaire est moins directe.
Cependant, à l'aide d'un tableau de conversion et des instructions suivantes, il est possible d'obtenir la représentation binaire de n'importe quel entier positif.

**Tableau de conversion**

```{math}
\begin{array}{|l|c|c|c|c|c|c|c|c|c|c|c|}
\hline
\text{Coefficient} & 2^{10} & 2^9 & 2^8 & 2^7 & 2^6 & 2^5 & 2^4 & 2^3 & 2^2 & 2^1 & 2^0  \\ 
\hline
\text{Valeur} & 1024 & 512 & 256 & 128 & 64 & 32 & 16 & 8 & 4 & 2 & 1\\ 
\hline
\text{Bit} &  &  &  &  &  &  &  &  &  &  & \\ 
\hline 
\end{array} 
```

**Instructions (ou algorithme) de conversion d'un entier décimal en binaire**

1.  Déterminer le coefficient **maximum** dont la valeur est plus petite
    que l'entier à convertir.
2.  Le bit associé à ce coefficient est 1.
3.  Soustraire la valeur de ce coefficient à l'entier à convertir pour
    obtenir le nouveau nombre à convertir.
4.  Recommencer à l'étape 1 tant que le nombre est différent de 0.
5.  En commençant par le plus grand coefficient utilisé, le nombre
    binaire correspondant est composé de la suite des bits où des 0
    représentent les coefficients non utilisés.

Par exemple, la conversion du nombre décimal 666 en binaire s'obtient
avec les étapes suivantes :

```{math}
:nowrap:
\begin{align}
666 &= 512 + 154 \\
154 &= 128 + 26 \\
26 &= 16 + 10 \\
10 &= 8 + 2 \\
2 &= 2 + 0
\end{align}
```

```{math}
\begin{array}{|l|c|c|c|c|c|c|c|c|c|c|c|}
%\hline
%\text{Coefficient} & 2^{10} & 2^9 & 2^8 & 2^7 & 2^6 & 2^5 & 2^4 & 2^3 & 2^2 & 2^1 & 2^0  \\ 
\hline
\text{Valeur} & 1024 & 512 & 256 & 128 & 64 & 32 & 16 & 8 & 4 & 2 & 1\\ 
\hline
\text{Bit} &  & 1 & 0 & 1 & 0 & 0 & 1 & 1 & 0 & 1 & 0\\ 
\hline 
\end{array}
```

Résultat : $(666_{10} = 1010011010_{2})$

```{admonition} Micro-activité ✏️📒 
:class: note

Donnez la conversion binaire des nombres décimaux suivants :

  - 97
  - 123
  - 256
  - 1000
  - 511
```

```{admonition} Anecdote 
:class: hint

Le 4 juin 1996, le premier vol de la fusée Ariane 5 a explosé 40
secondes après l'allumage. La fusée et son chargement avaient coûté 500
millions de dollars. La commission d'enquête a rendu son rapport au bout
de deux semaines. Il s'agissait d'une erreur de programmation dans le
système inertiel de référence. À un moment donné, un nombre codé en
virgule flottante sur 64 bits (qui représentait la vitesse horizontale
de la fusée par rapport à la plate-forme de tir) était converti en un
entier sur 16 bits. Malheureusement, le nombre en question était plus
grand que 32767 (le plus grand entier que l'on peut coder en tant qu'entier signé sur 16 bits)
et la conversion a été incorrecte, induisant un changement de
trajectoire fatal.
```
