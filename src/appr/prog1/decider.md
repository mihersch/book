(prog1.decider)=
# Décider - `if`

Dans ce chapitre, nous allons voir comment un programme peut faire des choix, et comment il peut exécuter du code de façon sélective. Nous allons voir que :

- le mot-clé `if` permet une exécution conditionnelle,
- les mots-clés `if-else` permettent de choisir entre deux alternatives,
- le mot-clé `elif` (else if) permet d'ajouter différentes conditions.

```{question}
En Python, `if` est suivi

{f}`d'un bloc`  
{v}`d'une condition`  
{f}`de parenthèses`  
{f}`d'un deux-points`
```

## Êtes-vous majeur ?

Basé sur votre âge, le programme exécute soit le premier bloc (`if`) soit le  deuxième bloc (`else`).  Il affiche si vous êtes majeur ou pas.

```{codeplay}
:file: if1.py
age = input('Entrez votre âge: ')

if int(age) < 18:
    print('accès interdit - vous êtes mineur')
else:
    print('accès OK - vous êtes majeur')
```

## Comparer

Un programme doit parfois comparer deux valeurs.
Python connait six types de comparaisons :

- plus petit (`<`),
- plus petit ou égal (`<=`),
- égal (`==`),
- différent (`!=`),
- plus grand  (`>`),
- plus grand ou égal (`>=`).

```{caution}
Il ne faut pas confondre l'opérateur d'affectation (`x = 3`) avec l'opérateur de comparaison (`x == 2`).
```

Le résultat d'une comparaison est une valeur booléenne, soit `True` soit `False`.

Voici quelques exemples :

```{codeplay}
:file: if2.py
x = 3
print('x =', x)
print('(x > 2) =', x > 2)
print('(x < 2) =', x < 2)
print('(x == 2) =', x == 2)
```

```{question}
L'expression `x == 2`

{f}`met la valeur 2 dans la variable x`  
{v}`compare deux valeurs`  
{f}`affecte la variable x avec une valeur`  
{v}`retourne True ou False`
```

## Le signe d'un nombre

Le mot-clé `elif` est une contraction de **else if** et permet de continuer à tester d'autres conditions.
Trouvez le signe d'un nombre.

```{codeplay}
:file: if4.py
n = input('Entrez un nombre: ')
n = int(n)

if n > 0:
    print('positif')
elif n < 0:
    print('négatif')
else:
    print('zéro')
```

Sans le mot-clé `elif` nous devrions mettre le bloc `if` à l'intérieur du bloc  `else` en indentation.
Avec multiples conditions, les blocs se décalent de plus en plus et rendent le programme illisible.

```{codeplay}
:file: if4.py
n = input('Entrez un nombre: ')
n = int(n)

if n > 0:
    print('positif')
else:
    if n < 0:
        print('négatif')
    else:
        print('zéro')
```

**Exercice** : Testez le programme avec -2, 0, 3.

## Pair ou impair ?

La fonction modulo `(x % 2)` permet de décider si un nombre est pair ou impair. Le programme suivant affiche si le nombre que vous entrez est pair ou impair.

```{codeplay}
:file: if5.py
x = int(input('Entrez un entier: '))

if (x % 2) == 0:
    print('pair')
else:
    print('impair')
```

## Pierre-papier-ciseaux

Le jeu [pierre-papier-ciseaux](https://fr.wikipedia.org/wiki/Pierre-papier-ciseaux) est effectué avec les mains et oppose deux joueurs. Il possède de nombreux noms alternatifs, notamment en remplaçant certains mots comme « papier » par « feuille » ou « pierre » par « caillou ». Le terme **chifoumi** est également une appellation courante.

Pour le choix du jouer on pourrait lui faire entrer les mots `pierre`, `papier`, et `ciseaux`. Mais c'est plus simple si nous utilisons juste un nombre entier pour choisir une des trois options.

En interne, nous utilisons 1, 2, et 3 pour désigner les 3 choix. Dans un programme informatique, c'est plus efficace d'utiliser des entiers pour designer des choses. Pour l'utilisateur humain par contre, des mots sont plus compréhensibles. Nous utilisons un tuple pour faire la conversion d'un entier vers un mot. Comme l'indexage en Python commence toujours avec 0, nous devons décaler l'index de un avec l'expression `[i-1]`.

Un grand avantage de séparer la logique abstraite du jeu, et les mots concrets, est qu'il devient très facile de traduire le jeu dans une autre langue. Par exemple, il suffit de changer le tuple `objets` en `('rock', 'paper', 'cissors')` pour traduire en anglais, ou `('Stein', 'Papier', 'Schere')` pour le traduire en allemand.

```{codeplay}
objets = ('pierre', 'papier', 'ciseaux')

i = int(input('1=pierre, 2=papier, 3=ciseaux : '))
print('vous avez choisi: ', objets[i-1])
```

### Tour de l'ordi

Pour jouer contre un ordinateur, nous avons besoin d'une fonction qui fait un choix aléatoire. Les fonctions aléatoires se trouvent dans le module `random` que nous importons au début. La fonction `randint(a, b)` renvoie un entier aléatoire dans l'intervalle [a, b].

Psychologiquement, le jeu se présente mieux quand il y a un petit délai entre notre réponse et la réponse de l'ordinateur. Nous utilisons la fonction `sleep()` du module `time` pour insérer un délai d'une seconde.

```{codeplay}
from random import *
from time import *

objets = ('pierre', 'papier', 'ciseaux')

i = int(input('1=pierre, 2=papier, 3=ciseaux : '))
print('vous avez choisi: ', objets[i-1])
sleep(1)

j = randint(1, 3)
print('ordinateur choisit: ', objets[j-1])
```

### Décider qui gagne

Une fois le choix est fait par les deux joueurs (humain et ordinateur) nous devons décider qui va gagner. Nous pouvons représenter la situation pour l'humain avec ce tableau.

|               | humain| pierre        | papier    | ciseaux   |
| ---           |---    |---            |---        |---        |
| ordinateur    |       | 1             | 2         | 3         |
| pierre        | 1     | match nul     | gagne     | perd      |
| papier        | 2     | perd          | match nul | gagne     |
| ciseaux       | 3     | gagne         | perd      | match nul |

Avec les instructions conditionnelles `if-elif-else` nous pouvons décider alors qui gagne pour une combinaison donnée. Avec un choix judicieux, nous pouvons décider avec seulement 4 tests les 9 combinaisons différentes.

```{codeplay}
from random import *
from time import *

objets = ('pierre', 'papier', 'ciseaux')

i = int(input('1=pierre, 2=papier, 3=ciseaux : '))
print('vous avez choisi: ', objets[i-1])
sleep(1)

j = randint(1, 3)
print('ordinateur choisit: ', objets[j-1])
sleep(1)

if i == j:
    print('match nul')
elif (i == 1 and j == 3):
    print('gagné')
elif (i == 2 and j == 1):
    print('gagné')
elif (i == 3 and j == 2):
    print('gagné')
else:
    print('perdu')
```

### Jouer en boucle

Maintenant nous pouvons tout mettre dans une boucle pour jouer multiples fois.
Dans la première ligne, nous indiquons le tour. Comme pour l'indexage des objets, quand nous affichons le nombre du tour, nous le décalons d’un avec l'expression `n+1`.

```{codeplay}
from random import *
from time import *

objets = ('pierre', 'papier', 'ciseaux')

for n in range(3):
    print('tour', n+1)

    i = int(input('1=pierre, 2=papier, 3=ciseaux : '))
    print('vous avez choisi: ', objets[i-1])
    sleep(1)

    j = randint(1, 3)
    print('ordinateur choisit: ', objets[j-1])
    sleep(1)

    if i == j:
        print('match nul')
    elif (i == 1 and j == 3):
        print('gagné')
    elif (i == 2 and j == 1):
        print('gagné')
    elif (i == 3 and j == 2):
        print('gagné')
    else:
        print('perdu')
    print()

print('fini')
```

## Décrire un chemin

Un programme de dessin avec la tortue est une séquence d'instructions. Si la tortue ne se déplace que sur les lignes d'une grille, nous pouvons représenter un chemin par une séquence d'actions où chaque action peut être représentée avec une seule lettre :

- `f` = avancer
- `l` = tourner à gauche
- `r` = tourner à droite

Nous pouvons insérer des espaces dans `chemin` pour rendre la description plus lisible. Lors de l'exécution, ils ne sont pas pris en considération.

```{codeplay}
:file: if8.py
from turtle import *

d = 20
def dessiner(chemin):
    for c in chemin:
        if c == 'f':
            forward(d)
        elif c == 'l':
            left(90)
            forward(d)
        elif c == 'r':
            right(90)
            forward(d)

E = 'lffff rff rrfllf rrfllf rrff'
dessiner(E)
```

**Exercice** : Définissez et dessinez la lettre F.

## Opérations logiques

Les opérateurs logiques permettent de combiner des valeurs logiques. En Python, nous avons :

- *et* logique (`and`),
- *ou* logique (`or`),
- négation (`not`).

Pour tester si un nombre x est dans l'intervalle (a, b) il faut combiner deux comparaisons avec une opération logique.

```{codeplay}
:file: if9.py
a = 5
b = 10

x = 8

if (a < x) and (x < b):
    print(x, 'est entre', a, 'et', b)

if (x < a) or (b < x):
    print(x, "est dehors l'interval (", a, '...', b, ')')
```

L'opérateur `not` inverse la valeur logique :

- `True` devient `False`,
- `False` devient `True`.

Une double inversion revient à l'identité.

Dans l'exemple suivant, essayez de changer la valeur de `p`.

```{codeplay}
:file: if10.py
p = True

print('p =', p)
print('not p =', not p)
print('not not p =', not not p)
```

## Dans un intervalle ?

Python permet de remplacer `(a < x) and (x < b)` par l'expression plus compacte `a < x < b`.

```{codeplay}
:file: if11.py
a = 5
b = 10

x = 8

if a < x < b:
    print(x, 'est entre', a, 'et', b)

if not (a < x < b):
    print(x, "est dehors l'interval (", a, '...', b, ')')
```

## Exercices

- Téléchargez l'exercice
- Lancez un éditeur externe (tel que Thonny)
- Depuis l'éditeur, ouvrez le fichier téléchargé
- Remplacez ... par votre code
- Déposez vos exercices sur Moodle

### Équation quadratique

En mathématiques, une équation quadratique est une équation polynomiale qui peut s'écrire sous la forme

$$ a x^2 + b x + c = 0 $$

Calculez d'abord le discriminant

$$ delta = b^2 - 4 a c $$

Selon le discriminant vous avez 3 cas. Si le discriminant est :

négatif : pas de solution

zéro : une solution

$$ x = \frac{-b}{2a} $$

positif : deux solutions

$$ x_1 = \frac{-b + \sqrt{delta}}{2a},  x_2 = \frac{-b - \sqrt{delta}}{2a} $$

Écrivez un programme qui calcule la solution d'une équation quadratique.

```{codeplay}
:file: equation_quad.py
print('Équation quadratique')
print()
a = int(input('a='))
b = int(input('b='))
c = int(input('c='))

print(a, 'x^2 +', b, 'x +', c, '= 0')
...
```

### Jeu multilangue

Adaptez le jeu `pierre-papier-ciseaux` pour qu'on puisse choisir la langue du jeu entre :

- Français
- Anglais
- Allemand

```{codeplay}
langue = input('1=Français, 2=Anglais, 3=Allemand: ')
```

### Big Bang Theory

Une nouvelle variante de pierre-papier-ciseaux a été popularisée par la série américaine The Big Bang Theory. Il s'agit de **Pierre-Papier-Ciseaux-Lézard-Spock**. Ici, les règles classiques s'appliquent, mais il faut ajouter que le lézard mange le papier, empoisonne Spock, il est écrasé par la pierre et est décapité par les ciseaux. Spock vaporise la pierre, casse les ciseaux, et est discrédité par le papier.

```{youtube} llq528pnv9c
```

Cette variante augmente le nombre de combinaisons de 3 à 10, et est censée réduire le nombre d'égalités entre deux joueurs qui se connaissent (bien qu'entre les personnages de la série, cette variante amène systématiquement à une égalité Spock vs. Spock).

|               |humain | pierre| papier    | ciseaux   | lézard| Spock |
| ---           |---    |---    |---        |---        |---    |---    |
| ordinateur    |       | 1     | 2         | 3         | 4     | 5     |
| pierre        | 1     | nul   | gagne     | perd      | perd  | gagne |
| papier        | 2     | perd  | nul       | gagne     | gagne | perd  |
| ciseaux       | 3     | gagne | perd      | nul       | perd  | gagne |
| lézard        | 4     | gagne | perd      | gagne     | nul   | perd  |
| Spock         | 5     | perd  | gagne     | perd      | gagne | nul   |

```{codeplay}
:file: bigbang.py
objets = ('pierre', 'papier', 'ciseaux', 'lézard', 'Spock')

print('Choisissez parmi')
print(*objets)
```
