# Grouper - `list`

Dans un programme on doit souvent manipuler des groupes d'objets : 

- noms des élèves
- notes d'un cours
- couleurs possibles

En Python on peut grouper des objets avec une liste. Une liste est ordonnée, ce qui veut dire qu'il y a un premier objet et un dernier objet.

```{codeplay}
noms = ['Tim', 'Kim', 'Anna', 'Cindy']
notes = [4, 5, 4, 5.5, 6, 3.5]
couleurs = ['fuchsia', 'pink', 'orange']

print(noms)
print(notes)
````

**Exercice** : Ajoutez une nouvelle liste at affichez-la.

En Python,une liste est délimitée par des crochets `[]` ses éléments sont séparés par des virgules `,`.

## La fonction `len()`

La fonction `len` retourne la longueur d'une liste, c'est à dire le nombre d'éléments qu'elle contient.

```{codeplay}
noms = ['Tim', 'Kim', 'Anna', 'Cindy']
notes = [4, 5, 4, 5.5, 6, 3.5]
couleurs = ['fuchsia', 'pink', 'orange']

print(len(noms))
print(len(notes))
````

**Exercice** : Ajoutez des éléments à une liste at affichez de nouveau sa longueur.

## La fonction `list()`

La fonction `list()` peut transformer une chaîne de caractère ou une plage numérique en liste.

```{codeplay}
print(list('Python'))
print(list(range(10)))
print(list(range(100, 150, 7)))
```

## Créer une liste

Nous utilisons une boucle `while` pour demander des noms à l'utilisateur. 
On ne peut pas savoir à l'avance combien de noms il y aura, donc ici nous ne pouvons pas utiliser la boucle `for`.  Nous prenons comme condition de terminaison une réponse avec une chaîne vide (`''`).

La convention est d'utiliser des noms au pluriel (`noms`) pour désigner la liste et le même nom au singulier (`nom`) pour désigner un de ses éléments.

```{codeplay}
noms = []
nom = input('Entrez un nom: ')

while nom != '':
    noms.append(nom)
    nom = input('Entrez un nom: ')
    
print(noms)
```

## Index `[i]`

Nous pouvons accéder à un élément de la liste en utilisant un numéro entre crochets `[]`, appelé _index_. L'index d'un élément est toujours un nombre entier. En Python, comme dans beaucoup de langages de programmation, l'index pour le premier élément de la liste est 0 et non pas 1. Ainsi, les éléments d'une liste de longueur `n` auront comme premier index 0 et comme dernier index `n - 1`.

```{codeplay}
noms = ['Tim', 'Mia', 'Kim', 'Anna', 'Cindy', 'Léa']
print(noms[0])
print(noms[2])
print(noms[-1])
print(noms[-2])
```

Un index négatif désigne un élément d'une liste pris depuis la fin de la liste.

Les chaines de caractères (`str`) peuvent aussi être indexé.

```{codeplay}
noms = ['Tim', 'Mia', 'Kim', 'Anna', 'Cindy', 'Léa']
print(noms[0][0])
print(noms[2][1])
print(noms[-1][2])
```

## Tranche `[i:j]`

La notation `[i:j]`, après le nom d'une variable qui contient une liste, permet d'extraire une tranche de la liste, c'est à dire une partie de la liste telle qu'identifiée par ses bornes, les deux index `i` et `j`.

```{codeplay}
noms = ['Tim', 'Mia', 'Kim', 'Anna', 'Cindy', 'Léa']

print(noms[:2])    # élément 0 et 1
print(noms[2:4])   # élément 2 et 3
print(noms[4:])    # élément 4 et 5

print(noms[::2])   # chaque 2e élément
print(noms[1::2])  # chaque 2e élément
```

**Exercice** : Modifiez l'expression de tranche et exécutez de nouveau.

## Itérer sur une liste

La boucle `for` peut itérer sur les éléments d’une liste. La variable d’itération prend successivement la valeur de chaque élément de la liste.
La pratique est d'utiliser pour la liste un nom de variable au pluriel (`noms`) et pour l'itérateur le même nom au singulier (`nom`).

```{codeplay}
noms = ['Tim', 'Mia', 'Kim', 'Anna', 'Cindy', 'Léa']
for nom in noms:
    print(nom)
```

## Concaténation

L'opérateur `+` permet de concaténer (mettre bout à bout) deux listes.

```{codeplay}
noms = ['Kim', 'Wendy']

print([1, 2, 3] + [5, 4, 99])
print(noms + ['George'])
```

## Répétition

L'opérateur `*` permet de répéter une liste.

```{codeplay}
noms = ['Kim', 'Ada'] * 2
print(noms)
print([0] * 6)
print(5 * [0])
```

## Ajouter des éléments

Une **méthode** fonctionne comme une fonction, mais est rattachée à une liste avec la notation (`.`). 
Par exemple si `a` désigne une liste, on peux ajouter un élément `x` à la fin de cette liste avec l'expression `a.append(x)`. 

Ces trois méthodes différentes permettent d’ajouter des éléments à une liste existante :

- `append(x)`,
- `extend(iterable)`,
- `insert(i, x)`.


```{codeplay}
a = [1, 2, 3]
a.append(99)
print(a)
```

La méthode `extend(itérable)` ajoute plusieurs éléments. Un *itérable* est une séquence telle qu'une liste, une chaîne de caractères (texte), un ensemble, un tuple, ..., c'est à dire un objet pour lequel on peut itérer sur les objets élémentaires le constituant. 

```{codeplay}
a = [1, 2, 3]
a.extend([10, 11])
a.extend('abc')
print(a)
```

La méthode `insert(i, x)` insère un nouvel élément `x` à la i<sup>ème</sup> position.

```{codeplay}
a = [1, 2, 3]
a.insert(2, 999)
print(a)
```

## Enlever des éléments

Les méthodes suivantes permettent d'enlever des éléments à une liste.

- `remove(x)`,
- `pop(i)`,
- `clear()`.

La méthode `remove(x)` enlève l'élément `x` s'il existe, et donne une erreur autrement.

```{codeplay}
a = [1, 2, 3, 4]
a.remove(3)
print(a)
```

La méthode `pop()` enlève le dernier élément.

```{codeplay}
a = [1, 2, 3, 4]
a.pop()
print(a)
```

La méthode `pop(i)` enlève le i<sup>ème</sup> élément.

```{codeplay}
a = [1, 2, 3, 4]
a.pop(1)
print(a)
```

La méthode `clear()` enlève tous les éléments.

```{codeplay}
a = [1, 2, 3, 4]
a.clear()
print(a)
```

## Opérations

Les listes disposent aussi de méthodes pour trier et inverser leurs éléments et pour compter un élément spécifique.

La méthode `sort()` trie la liste dans l'ordre croissant (pour les caractères, on se réfère au code ASCII ou UTF utilisé). 
Cette méthode fonctionne uniquement si tous les éléments sont évidemment du même type (nombre, texte) et peuvent être comparés. 

```{codeplay}
m = list('Python')
m.sort()
print(m)
```

La fonction `reverse()` inverse l'ordre de la liste.

```{codeplay}
m = list('Python')
m.reverse()
print(m)
```

La fonction `count(x)` compte le nombre d'occurences de l'élément `x`.

```{codeplay}
m = list('Monty Python')
print(m.count('y'))
```

## Vecteurs

Une liste peut représenter un vecteur.
Pour calculer la **norme d'un vecteur** nous additionnons les carrés des éléments et prenons la racine carrée.

```{codeplay}
a = [1, 4, 7]
norm = 0
for i in a:
    norm += i**2
    
norm = norm ** 0.5
print(norm)
```

Pour **additionner deux vecteurs**, il faut additionner chacun de leurs éléments.

```{codeplay}
a = [1, 4, 7]
b = [2, 1, 2]
result = [0, 0, 0]
for i in range(3):
    result[i] = a[i] + b[i]
print(result)
```

Pour multiplier un vecteur avec un **scalaire k**, il faut multiplier chaque élément avec ce scalaire.

```{codeplay}
a = [1, 4, 7]
result = [0, 0, 0]
k = 2
for i in range(3):
    result[i] = a[i] * k
print(result)
```

Pour calculer le **produit scalaire** de deux vecteurs, il faut additionner le produit des éléments des vecteurs.

```{codeplay}
a = [1, 4, 7]
b = [2, 1, 2]
s = 0
for i in range(3):
    s += a[i] * b[i]
print(s)
```

## Compréhension de liste
Une **compréhension de liste** est une spécificité «élégante» du langage Python qui permet de construire de manière compacte des listes sur une seule ligne.

Voici un exemple de construction «traditionnelle» d'une liste où on ajoute un élément après l'autre avec une boucle :


```{codeplay}
cubes = []
for i in range(10):
    cubes.append(i ** 3)
print(cubes)
```

En utilisant la compréhension de liste, on peut construire la même liste sur une seule ligne :

```{codeplay}
print([i ** 3 for i in range(10)])
```

On peut comprendre cette formulation de la manière suivante : *«la liste cubes indicée par i prend la valeur i<sup>3</sup> pour toutes les valeurs de i de 0 à 9.»*

Une condition peut être ajoutée dans la compréhension (par exemple, pour n'ajouter à la liste que les valeurs impaires) :

```{codeplay}
a = []
for i in range(10):
    if i % 2 == 1:
        a.append(i ** 2)
print(a)
```
*Note : l'opérateur % est l'opérateur modulo, c'est à dire renvoie le reste de la division par 2.*

Nous pouvons alors écrire la formation de cette liste en une seule ligne.

```{codeplay}
print([i**2 for i in range(10) if i % 2 == 1])
```

## <span commented>La pile (LIFO)</span><!-- REVIEW/JPP: je pense qu'on a besoin de faire maintenant pas mal d'exercices sur les listes avant de pouvoir comprendre le reste. Je ne trouve pas super clair dans la présentation actuelle le parallèle entre list et stack. On vient d'apprendre à manier des listes en Python avec leurs primitives, bien; mais maintenant, on a l'impression qu'on va aprrendre d'autres structures de données (pile et tampon) et on ne sait pas si c'est différent des listes ou pas. Il faudrait que ce soit vraiment clair, et que les exemples sont plus concrets, parce que ces valeurs numériques ne veulent pas dire grand-chose ou ne représente pas un problème ou une situation de la vie réelle. Pour moi, on n'a simplement pas besoin de parler de stack ou queue ici, mais on peut mettre en pratique des listes dans des exercices où elles ont ce genre de fonctionnement -->

Une **pile** est une structure de données qui permet de gérer l'arrivée et le départ des éléments. Dans une pile d'assiettes ou de magazines, le dernier élément ajouté est le premier à être enlevé.

En anglais cette structure s'appelle **stack** ou **LIFO** (last in first out).

L'exemple suivant est une pile qui accumule des entiers.
Répondre avec une chaine vide, enlève le dernier élément mis sur la pile, jusqu'à ce que la pile est vide.

```{codeplay}
x = input('[] < ')
pile = []

while x or len(pile):
    if x:
        pile.append(int(x))
    else:
        print(pile.pop()) 
    x = input(str(pile) + ' < ')

print('fin')
```

## La file d'attente

La file d'attente est une structure de données qui permet de gérer l'arrivée et le départ d'éléments.

Dans une file d'attente devant un guichet, la première personne arrivée est la première à être servi.

En anglais cette structure s'appelle **buffer** ou encore **FIFO** (first in first out).

L'exemple suivant est une file d'attente pour des entiers.
Répondre avec une chaine vide, enlève le plus ancien élément de la file, jusqu'à ce que la file est vide.

```{codeplay}
x = input('[] < ')
file = []

while x or len(file):
    if x:
        file.append(int(x))
    else:
        print(file.pop(0))
    x = input(str(file) + ' < ')

print('fin')
```