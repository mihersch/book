# Algorithmique et programmation

## Algorithmique avancée

Nous avons vu que pour résoudre un problème, il faut commencer par le décomposer en sous-problèmes. Pour chaque sous-problème à résoudre, on décrit les opérations à réaliser sous la forme d’un algorithme. Il existe une multitude d’algorithmes pour résoudre un problème, mais ils ne se valent pas tous. 

L’*algorithmique* étudie les propriétés de ces algorithmes. Cette analyse est nécessaire pour nous aider à décider quel algorithme utiliser. Nous allons maintenant passer en revue quelques propriétés importantes des algorithmes. 

```{admonition} Matière à réfléchir
:class: note
Voici une version naïve du compte à rebours des secondes pour le passage du Nouvel An :

```{code-block} python
# Compte à rebours 
def compte_a_rebours(nb_secondes) :
    while True :
        print(nb_secondes)
    	nb_secondes = nb_secondes - 1 
```

Qu’arrive-t-il lorsqu’on exécute ce programme avec compte_a_rebours(10) ?

Corriger le programme pour qu’il s’arrête à 0. 

Qu’arrive-t-il lorsque l’on exécute la nouvelle version du  programme avec  la valeur  -10 en entrée
compte_a_rebours(-10) ?
```