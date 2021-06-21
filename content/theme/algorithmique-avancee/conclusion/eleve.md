<span style="color:rgb(92, 201, 169);font-weight:600; font-size:1.2em">Version du 16 juin 2021</span>

Conclusion
==========

```{admonition} Ai-je compris ?
:class: hint

<ol>
<li>Je sais appliquer un algorithme de rechercher et un algorithme de tri rapide.</li>

<li>Je sais calculer la complexité temporelle des algorithmes.</li>

<li>Je comprends comment fonctionne la récursivité.</li>

<li>Je sais pourquoi un algorithme d’ordre de complexité exponentielle est lent.</li>

<li>Je comprends la différence entre une solution exacte et une solution heuristique.</li>

```


````{admonition} Pour aller plus loin
:class: attention

Voici un problème à 1 million de dollars, un parmi les sept problèmes mathématiques du prix du millénaire qui rapporteront de l’argent à celui ou celle qui les résout.

On appelle la classe des algorithmes qui sont faciles à résoudre la classe des problèmes P. Ces algorithmes peuvent être résolus en un temps polynomial en fonction de la taille des données n ou log(n<sup>a</sup>). 

Il existe aussi une classe de problèmes difficiles (d’ordre de complexité exponentielle), mais pour lesquelles il est facile de vérifier si une solution proposée permet de résoudre le problème.  Cette classe de problèmes s’appelle NP ou « non déterministe polynomial ».

On souhaite savoir si les problèmes NP peuvent être résolus en un temps P, ou en d’autres termes : est-ce que **P = NP** ? 

S’il s’avérait que c’est bien le cas (ce qui est tout de même peu probable), beaucoup de problèmes difficiles à résoudre deviendraient d’un seul coup plus faciles à résoudre, comme le **problème de repliement des protéines** en biologie pour trouver de nouveaux médicaments.  Cela pourrait également signifier la fin de la cryptographie telle qu’elle existe actuellement.

````


````{admonition} Pourquoi est-ce important ?
:class: warning

L’analyse de complexité des algorithmes nous permet de sélectionner les meilleurs algorithmes pour un problème donné et nous permet de comprendre pourquoi certains problèmes ne peuvent être résolus dans un temps raisonnable (à ce stade).

L’algorithmique a permis de mettre en place des stratégies intelligentes de résolution de problèmes comme les principes de « diviser pour régner » ou encore la récursivité. Ces stratégies ont rendu possibles les avancées technologiques fulgurantes du dernier demi-siècle. 

Pour des problèmes difficiles, s’il est impossible de trouver la solution exacte, on peut toujours trouver une solution approchée. L’étude formelle de l’algorithmique nous permet d’estimer la qualité de notre solution approchée.

````

```{admonition} A retenir
:class: danger

Il est important de garantir qu’un algorithme va se terminer pour être utile en pratique.

Les algorithmes de tri rapide et de tri par fusion sont plus efficaces que les algorithmes de tri vus précédemment. Ceci est possible grâce à la stratégie algorithmique « diviser pour régner », qui divise un grand problème difficile à résoudre en plein de petits sous-problèmes plus faciles à résoudre. La solution au grand problème s’obtient en combinant les solutions des petits problèmes. 

L’ordre de complexité des algorithmes nous dit si un algorithme est lent ou rapide. Un algorithme  avec un ordre de complexité logarithmique est plus rapide qu’un algorithme avec complexité linéaire, qui en retour est plus rapide qu’un algorithme de complexité quadratique.

Une fonction récursive est une fonction qui fait appel à soi-même. Une condition d’arrêt est nécessaire pour que l’algorithme se termine.

Un algorithme avec un ordre de complexité exponentielle implique que le temps nécessaire pour résoudre un problème est trop long en pratique. Dans ce cas, on ne va pas pouvoir trouver une solution exacte, mais seulement une solution approchée en utilisant des méthodes heuristiques.

```

```{admonition} Je veux en savoir plus
:class: hint

**Visualisation de problèmes** 

https://visualgo.net/en

https://interstices.info/le-probleme-du-sac-a-dos/

https://clementmihailescu.github.io/Pathfinding-Visualizer/

**Problèmes difficiles**

https://www.franceculture.fr/emissions/le-journal-des-sciences/le-journal-des-sciences-du-mardi-01-decembre-2020

https://www.bfmtv.com/sciences/ou-est-charlie-l-algorithme-pour-le-detecter-du-premier-coup_AN-201502100004.html

https://www.lebigdata.fr/algorithme-definition-tout-savoir

**P = NP ?**

https://www.youtube.com/watch?v=AgtOCNCejQ

```