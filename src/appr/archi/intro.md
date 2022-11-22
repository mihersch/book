# Introduction


Dans ce chapitre, nous aborderons la question de l'architecture des ordinateurs, c'est-à-dire les multiples couches physiques qui rendent possibles des opérations numériques aussi complexes que celles qu'effectuent à chaque instant nos smartphones. 

Comme vous avez pu le voir dans le chapitre lié à la représentation de l'information, tout ce qui apparaît sur votre écran est représenté par l'ordinateur par suite de 0 et de 1. Pour comprendre comment ces <span commented>{glo}`codebinaire|0 et 1` sont traités par l'ordinateur, il faut avoir en tête que les ordinateurs sont construits à partir d'une couche et de multiples niveaux, comme un mille-feuille, dont chacun possède ses propres règles. 


```{figure} media/abstractionlight.png
---
height: 400px
width: 250px
align: left
---
Les différents niveaux d'abstraction de l'informatique, en partant des électrons, jusqu'aux «programmes» 
```


<br>


Dans ce chapitre, nous nous concentrerons sur les couches de bas niveau, et tenterons de remonter progressivement jusqu'aux couches logicielles. 


## De quoi sont faits les nombres binaires? 

Les ordinateurs ne comprennent que les nombres binaires. La lettre «A», par exemple, est pour ces derniers une suite de 0 et de 1. Même chose pour une image, une vidéo, une chanson et ainsi de suite. Mais alors comment ces 0 et ces 1 sont-ils {glo}`stockage|stockés` et manipulés physiquement par les ordinateurs ? De quelle matière sont-ils faits ? Un indice : que mettez-vous dans votre smartphone pour le faire fonctionner : de l'essence ? Du gaz ? De l'énergie solaire ?

De l'électricité  !


```{figure} media/iphonecpu.jpeg
---
height: 350px
width: 500px
align: left
---
Vos photos, vos vidéos, vos messages, tout ce que vous consultez sur votre téléphone portable, sont traitées par un processeur similaire au modèle A9 de Apple, commercialisé dans les iPhone SE. 
```


```{figure} media/datacenter.jpeg
---
height: 350px
width: 500px
align: left
---
Vos likes, vos partages, vos vidéos transmises via des applications telles que WhatsApp, Instagram, TikTok, Snapchat, YouTube, sont stockées dans des centres de données aux quatre coins de la planète. 
```

## Électricité et nombres binaires

Les nombres binaires, au niveau le plus élémentaire, sont matérialisés par des <span commented>courants électriques</span>qui traversent les circuits des ordinateurs. Mais pourquoi avoir choisi des 0 et des 1 comme alphabet ? Quel rapport avec l'électricité ?

En informatique, si nous avons choisi d'utiliser un code binaire, ça n'est pas par hasard. Ce sont les deux signaux les plus élémentaires que l'on puisse transmettre avec l'électricité. Soit le courant passe, soit il ne passe pas. Ouvert ou fermé ; allumé ou éteint ; 1 ou 0. 

```{admonition} Le saviez-vous?
:class: hint
On aurait pu choisir un code possédant plus de deux signaux différents. Par exemple, avec trois signaux, on pourrait coder trois valeurs avec un courant faible, un courant moyen, un courant fort, ou encore mieux : une tension négative, une tension nulle et une tension positive. On appelle cette dernière proposition le ternaire balancé. En fait, cela s'est déjà fait: les soviétiques ont développé en 1958 un ordinateur nommé [Setun](https://en.wikipedia.org/wiki/Setun) basé sur ce principe, réputé très fiable et extrêmement peformant dans le développement d'applications dans certains domaines.  Mais ce projet, pour des raisons politiques, n'a pas reçu le soutient qu'il aurait mérité. D'autre part, il est plus simple de concevoir des circuits électroniques qui ne doivent traiter que deux valeurs.
```

La grande idée derrière la conception des ordinateurs et de leurs circuits électroniques repose sur l'utilisation de sortes de "mini-circuits" capables
de laisser passer un courant en sortie en fonction de la présence ou l'absence de courant en entrée. Ces mini-circuits constituent les briques de bases
d'un ordinateurs et sont appelées les *portes logiques*.

