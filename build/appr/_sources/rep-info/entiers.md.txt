(appr:repinfo:entiers)=
# Les entiers

Notre système de numération, le système indo-arabe, a été inventé en Inde et repris par les Arabes qui l'ont transmis à l'Europe. Il utilise le système décimal.
Pourquoi? Tout simplement parce que nous avons 10 doigts !

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


Donnez la conversion décimale des nombres binaires suivants :

  - 10101101
  - 01110010
  - 1111
  - 1111011



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

### Le système hexadécimal

La représentation binaire des nombres est bien adaptée pour leur manipulation par des ordinateurs,
mais vous avez peut-être remarqué qu'elle a un désavantage notoire pour les humains: les nombres
écrits en binaire sont longs (ils contiennent beaucoup de chiffre), et on a tendance à s'emméler
en les manipulant, par exemple pour les recopier ou les reconnaître. C'est pas exemple nettement plus
facile pour nous (surtout au vu de notre expérence) de faire la différence entre $76_{10}$ et $78_{10}$
qu'entre $1001100_{2}$ et $1001110_{2}$ qui représentent la même paire de nombres en binaire.

C'est pour résoudre ce problème que le système hexadécimal est utilisé. Il s'agit simplement d'un système de numération en base 16. Ce système utilise donc 16 symboles différents pour représenter les 16 chiffres que l'on peut utiliser. Ces symboles sont donnés dans le tableau suivant:

```{math}
\begin{array}{|l|c|c|c|c|c|c|c|c|c|c|c|c|c|c|c|c|}
\hline
\text{Décimal} & 0 & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10 & 11 & 12 & 13 & 14 & 15 \\ 
\hline
\text{Binaire} & 0 & 1 & 10 & 11  & 100 & 101 & 110 & 111 & 1000 & 1001 & 1010 & 1011 & 1100 & 1101 & 1110 & 1111 \\ 
\hline
\text{Hexadécimal} & 0 & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & A & B & C & D & E & F \\ 
\hline 
\end{array} 
```

Pour les nombres de 0 à 9, le système hexadécimal reprend les symboles du système décimal, ce qui
semble logique. Pour les nombres de 10 à 15, on a décidé de prendre les 6 premières lettres de
l'alphabet. On aurait pu choisir d'autres symboles, mais les lettres ont l'avantage d'être faciles
à mémoriser (si on utilise l'alphabet latin), d'avoir déjà un ordre bien connu et d'être déjà
disponible dans les claviers et les systèmes d'affichage.

Dans la notation hexadécimale, les positions des chiffres n'indiquent pas les unité, dizaines,
centaines, mais de manière analogue, des unités, "seizaines" et "256-aines" (car $16^2= 256$).

Ainsi, la forme canonique du nombre hexadécimal $23_{16}$ est $2\cdot 16^{1} + 3\cdot 16^{0}$
ce qui fait $2\cdot 16 + 3 = 35_{10}$. De même comme $B_{16} = 11_{10}$,
le nombre hexadécimal $1B_{16}$ peut se traduire en
$1\cdot 16^{1} + 11 \cdot 16^{0} = 16 + 11 = 27_{10}$.

Afin d'éviter d'utiliser des indices, les informaticiens préfixent parfois les nombres héxadécimaux avec
les caractères "0x" plutôt que de mettre le 16 en indice. L'expression "0x3B" est donc équivalente à "$3B_{16}$".

```{admonition} Micro-activité ✏️📒 
:class: note

Convertissez en décimal puis en binaire les nombres hexadécimaux suivants. 

  - 0x32
  - AB
  - 4E
  - 10C

Est-ce que vous remarquez quelque chose de spécial? Lisez la suite pour en savoir plus. 

```

Si on utilise l'hexadécimal, c'est-à-dire une représentation en base 16, et pas une autre base comme
15, 17 ou 18, c'est parce qu'il est très facile de convertir un nombre binaire en un nombre hexadécimal
et vice-versa. On pourrait bien sûr le faire en passant par la représentation décimale, comme ci-dessus,
mais il y a une manière plus simple. En effet, on peut établir une correspondance entre chaque chiffre
hexadécimal et son équivalent codé sur 4 bits. Ainsi pour convertir $3D_{16}$ en binaire, on prend
le premier chiffre $3_{16}$ et on le code en binaire sur quatre bit, ce qui donne $0011_{2}$ et de même
avec le chiffre suivant: $D_{16} = 1101_{2}$ comme indiqué sur le tableau ci-dessus. En mettant bout à
bout les groupe de 4 bits (en gardant le bon ordre!), on obtient la représentation binaire du nombre
hexadécimal: $3D_{16} = \underbrace{0011}_{3}\ \underbrace{1101_{2}}_{D}$ (l'espace est facultatif et
aide à la lecture). On peut se convaincre que la réponse est correcte en faisant la conversion en décimal.
```{math}
3D_{16} = 3*16+13 = 61_{10} \quad \text{et}\quad 111101_{2} = 32+16+8+4+1 = 61_{10}
```

```{admonition} Micro-activité ✏️📒 
:class: note 
Convertissez les nombres hexadécimaux suivants en binaire:
  - 2B3
  - 819
  - BAFFE
  - B0F
```


De la même manière, on peut convertir un nombre binaire en hexadécimal en faisant des groupes de 4 bit
en commençant par la droite et en les remplaçant par le symbole hexadécimal correspondant. Par exemple,
$101100_{2}$ peut se séparer en groupes (en commençant à droite) ainsi
$\underbrace{10}_{2}\ \underbrace{1100_{2}}_{C}$ ce qui est équivalent à $2C$. A nouveau,
la conversion en décimal nous permet de vérifier que c'est bien juste:
```{math}
2C_{16} = 2*16+12 = 44_{10} \quad \text{et}\quad 101100_{2} = 32+8+4 = 44_{10}
```

Cette manière de faire ne fonctionne que parce que $16 = 2^{4}$ et ne peut donc pas être utilisée avec
une autre base que l'hexadécimal.


```{admonition} Micro-activité ✏️📒 
:class: note 
Convertissez les nombres binaire suivants en hexadécimal:
  - 1010110
  - 001010100011
  - 1111101011011110
  - 1101111010101101

Vous pouvez vérifier vos réponses avec un convertisseur en ligne, par exemple [celui-ci](https://sebastienguillon.com/test/javascript/convertisseur.html).

```


```{admonition} Pour aller plus loin
:class: note
1. Justifier pourquoi cette méthode de conversion entre binaire en hexadécimal est correcte.
1. Par analogie, trouver comment convertir un nombre binaire en nombre octal, c'est-à-dire en base 8. 
```
