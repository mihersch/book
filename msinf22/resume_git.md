Micro-tutoriel git pour l'utilisation des ressources
=====================================================

## Clonage du répertoire
Afin de pouvoir compiler ou modifier les ressources d'enseignement, vous allez devoir en établir
une copie locale sur votre ordinateur, autrement dit 'cloner' le répertoire en jargon git. 

Pour ceci, il faut, dans un terminal, se rendre là oû vous voulez avoir votre copie et utiliser la
commande git suivante: 

```git clone https://github.com/mihersch/didroP22.git```

Si votre connexion internet est fonctionnelle, vous devriez avoir l'entier du répertoire qui se copie dans sur votre ordinateur. 

## Suivi de modifications
Après avoir modifié un fichier, vous allez indiquer que vous avez l'intention d'enregistrer et
suivre les modifications effectuées dans ce fichier (par exemple mon_intro.md) avec la commande suivante:

```git add mon_intro.md```

Ceci correspond à la phase de "staging" en langage git, qui prépare en quelque sorte les fichers sur
lesquel on travail et dont on va ensuite enregistrer une version avec la commande suivante

```git commit -m "message descriptif décrivant ce qui a été modifié par rapport à la version précédente"``` 

Ce "commit" en langage git signifie que l'on a maintenant un enregistrement permanent de cette version
du projet incluant tous les fichiers que l'on a sélectionné avec la commande add (depuis le dernier commit). 

Il est possible, si les fichiers figuraient déjà dans un commit précédant, de faire le "staging" et le "commit" en
une fois en ajoutant l'option -a dans le commit:

```git commit -am "message descriptif". ```

Avec ce système il est possible d'avoir un résumé des derniers changements effectués sur les fichiers, grâce à
la commande suivante qui va lister les commits avec l'auteur-rice, la date et le descriptif.

```git log```

Cette commande indique aussi l'identifiant de chaque commit, si bien qu'il est possible de revenir à une version
précédente du répertoire. 

```git reset --hard <id>```

où ```<id>```est l'identifiant du commit auquel on souhaite revenir (à n'utiliser que si les commits suivants n'ont pas été partagés).

Afin de partager ses modifications avec les autres, il faut faire remonter ses commits dans le répertoire partagé
avec la commande suivante:

```git push origin master```

Le mot "origin" désigne le répertoire d'origine vers lequel on fait remonter les modifications (il est possible d'avoir
plusieurs répertoires distants) et le mot "master" désigne la branche que l'on souhaite remonter (cf section suivante pour une explication sur les branches).

Pour que cela fonctionne, il est nécessaire d'avoir un droit d'écriture dans le répertoire. Envoyez-moi un email avec votre username github si vous désirez écrire dans le répertoire didroP22. 

Si une autre personne a également modifié les fichiers que vous tentez de faire remonter, git pourra vous demander de fusionner manuellement les deux versions (la vôtre et celle déjà modifiée en parallèle) en vous présentant un fichier
à éditer contenant les différentes versions. 

Pour mettre à jour la version locale par rapport à d'éventuelles modifications faites à la versions distance, on
utilise la commande suivante:

```git pull origin master ```


## Branches
Il est courant, lorsqu'on fait du développement de logiciel, d'avoir différents développements en parallèle, par exemple une équipe qui travaille sur l'interface graphique, une sur le back-end, etc. Pour ne pas se marcher sur les pieds entre les différents développements et les garder bien séparés, chaque équipe travaille sur sa propre version du logiciel, appelée sa "branche" dans le linguo git. Il existe une branche principale, habituellement appelée "master". Lorsqu'on veut développer une nouvelle fonctionnalité on crée une nouvelle branche auquel on attribue un nom (par exemple scratch):

```git branch scratch```

La branche ainsi créée est une copie de la branche actuelle. On y accède avec la commande suivante:

```git checkout scratch```

qui va activer (c'est à dire que les modifications de fichiers ne se feront que dans cette branche)

Lorsqu'on sera satisfait des modifications apportées dans cette branche, on peut la réintégrer dans la
branche initiale (souvent la branche master) avec la commande suivante:

```git merge scratch```

Cette réintégration (le "merge" dans le jargon git), est une opération qui peut être délicate car la branche initiale a
probablement évolué depuis le moment où la branche a été créée. Git se retrouve donc avec une version initiale du
fichier et deux ensembles de modifications qui ont été réalisées indépendemment l'une de l'autre et doit déterminer
comment intégrer ces deux ensembles de modification. Si les modifications portent sur des parties différentes du fichier, il le fera sans trop de problème. Mais si les modification portent sur les même parties du fichier (par exemple une version a effacé une ligne alors que l'autre l'a complétée), il vous demandera de faire vous-même le tri en présentant les deux alternatives que vous devrez combiner dans un éditeur de texte. On parle alors de "conflit"
entre deux versions que vous devez résoudre manuellement.  

Il est possible en tout temps de naviguer entre les différentes branches grâce à la commande suivante (par exemple
 pour retourner à la branche master):

```git checkout master```

Si on travaille sur plusieurs branches, il est important de bien suivre dans quelle branche on se trouve,
afin de ne pas faire de modification dans la mauvaise branche. Les environnements de programmation tels Visual Studio,
Emacs, Eclipse, Sublime Text, indiquent généralement la branche courante.

On peut aussi faire remonter dans le répertoire distant une branche qui n'existe que localement et ainsi partager sa branche: 

```git push -u origin scratch```

# Résumé

## Pour une utilisation simple et sans branche:

La première fois pour créer une copie locale du répertoire:

```git clone ```

ensuite pour mettre à jour la version locale

```git pull origin master```

Lorsqu'on ajoute un fichier:

```git add nouveau_fichier.txt```

Tant qu'on travaille sur les fichiers:

```git commit -am "descriptif"```

Quand on a quelque chose que l'on peut partager (et qui ne vas pas embêter tout le monde):

```git push origin master```

##  Pour créer et travailler sur une nouvelle branche

```git branch ma_branche```

Pour activer une branche:

```git checkout ma_branche```

Pour fusionner (ou fermer) une branche:

```git merge ma_branche```

Pour mettre à jour une branche:

```git pull ma_branche```

Pour partager les commit d'une branche (ajouter -u si la branche n'existe encore que localement):

```git push origin ma_branch```