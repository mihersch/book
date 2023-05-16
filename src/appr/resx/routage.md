# Routage

Le **routage** est le mécanisme par lequel des chemins sont sélectionnés dans un réseau pour acheminer les données d'un expéditeur jusqu'à un destination.

Pour effectuer le routage, nous avons besoin deux types de machines :

- le **routeur**, qui sert d'intermédiaire dans la transmission d'un message,
- le **hôte** qui émettet ou reçoit un message.

{itodo}` [ajouter une illustration] `

## Les routeurs

Les *routeurs* sont des ordinateurs spécialisés dont le rôle est de relayer
et d'orienter correctement les informations qui circulent sur Internet. Si
Internet est représenté par un graphe dont les arêtes représentent les canaux
de communication, alors les routeurs sont situés aux noeuds du graphe et
décident dans quelle direction faire suivre une information afin qu'elle atteigne
son destinataire. Les routeurs sont donc comme des facteurs
disposés aux intersections du réseau Internet qui vont lire la destination des
messages qui leur arrivent et les rediriger vers la prochaine intersection
de manière à les rapprocher de leur destination.

```{figure} media/routing.svg
---
width: 600
align: center
---
Le routeur regarde le destinataire de chaque paquet qu'il reçoit et le redirige dans la bonne direction vers le prochain routeur ou
le destinataire. Dans notre exemple, le paquet de données (représenté par le carré orange) qu'Alice veut envoyer au serveur
champignons.ch transite par différents routeurs, qui décident par où faire transiter le message en fonction de l'adresse de destination du paquet. 
```

Pour ceci, les routeurs s'aident de *tables de routage* qui leur indique la direction à suivre pour chaque destination.

## Les tables de routage

Une table de routage est un tableau qui indique dans quelle direction orienter
un message en fonction de son destinataire. Conceptuellement, on peut imaginer
une table de routage comme un tableau à deux colonnes, la première colonne contenant
l'adresse IP de destination (ou un sous réseau à laquelle elle appartient),
la seconde colonne indiquent *l'interface* à laquelle il faut envoyer
les messages destinés à cette adresse. L'interface représente la "direction" dans laquelle envoyer le message
(par exemple un port Ethernet, un câble en fibre optique, un émetteur wifi).
Ainsi lorsqu'un nouveau message atteindra le routeur, celui-ci regardera dans sa table
de routage la ligne contenant le sous-réseau le plus spécifique incluant l'adresse IP
de destination et le fera suivre dans l'interface correspondante (qui est elle-même connectée soit à un
autre routeur soit au destinataire).

| Destinataire | Interface |
|--------------|-----------|
| 127.1.1.1    | 0         |
| 34.234.15.x  | 1         |
| 87.45.x.x    | 2         |
| 87.33.x.x    | 2         |
| ...          | ...       |

```{Exercise}
Remplir les tables de routage simplifiées des routeurs du réseau suivant:

{itodo}`à compléter`
```

```{togofurther} Masques de réseau
Si chaque destinataire possible devait figurer dans une ligne de la table de routage, cela ferait d’immenses tables de routage
qui prendraient beaucoup de place en mémoire et seraient très compliquées à gérer. C'est pour ceci que les lignes de la table
de routage peuvent correspondre, soit à des machines individuelles, soit à des sous-réseaux. 

Pour qu'une machine sache si une autre machine est dans le même sous-réseau qu'elle, son sous-réseau est spécifié par un
*masque* de réseau composé d'une suite de 32 bits (en IPv4) dont les $n$ premiers sont à 1 et les $32-n$ suivants sont à 0.
Par exemple, une machine peut avoir une adresse IP 128.178.23.132 avec un masque de 11111111.11111111.1111111.000000000.
Cela signifie que toutes les machines qui ont la même adresse IP là où le masque vaut 1 sont dans le même sous-réseau. Dans
notre exemple, cela correspond à toutes les adresses IP 128.178.23.x. Pour gagner de la place, les masques sont aussi exprimés
en 4 nombres décimaux, dans notre exemple 255.255.255.0, ou alors, pour faire encore plus court, on peut simplement spécifier
le nombre de 1 du masque, ce qui donne, toujours pour le même exemple, 128.178.23.132/24. 

Ainsi toutes les adresses IP qui n'a pas les mêmes $n$ premiers bits, fait partie d'un différent sous-réseau. Pour lui envoyer
des paquets, il faudra passer par la *passerelle par défaut* (*default gateway* en anglais) qui est le routeur qui s'occupe de
communiquer avec l'extérieur du sous-réseau.

````

Dans des petits réseaux locaux, cette table de routage peut être construite
manuellement, mais généralement c'est le routeur qui construit sa
propre table de routage en interaction avec les routeurs voisins.

## Le routage dynamique

Dans la pratique, le réseau de connections qui constituent Internet change et
évolue constamment: de nouvelles machines se connectent au réseau, changent
d'adresse IP, des
routeurs tombent en panne, certaines
connexions s'ajoutent ou disparaissent, par exemple en cas de dommages aux
câbles. Cela ne serait pas gérable pour des humains de constamment mettre à
jour les tables de routage pour les adapter à la configuration du réseau.
C'est pourquoi un système automatisé de mise à jour des tables de routage
est utilisé. C'est ce qu'on appelle le *routage dynamique*.
Cela permet non
seulement de gérer les changements configuration du réseau, mais également les
phénomènes de congestion du trafic.

### Le protocole RIP

Le protocole RIP (Routing Information Protocol) est une des manières les plus anciennes et
les plus simples de faire du routage dynamique. Toutes les 30 secondes, chaque routeur
envoie à tous ses voisins le contenu de sa table de routage. Lorsqu'un routeur reçoit une ligne
de la table de routage de son voisin dont la destination n'est pas incluse dans sa propre table,
il l'ajoute à sa table en indiquant comme interface, celle le connectant avec ce voisin.
De plus lorsqu'un routeur reçoit une ligne de la table de routage de son voisin dont la destination est incluse dans sa table, mais
avec une distance plus grande, cela signifie qu'en passant par ce voisin le chemin sera plus court (ou égal) pour atteindre sa destination.
Le routeur modifie sa table de routage pour faire passer par ce voisin les messages à destination de ce destinataire.
{itodo}` [ajouter deux exemples] `

```{Exercise}
La table de routage d'un routeur contient les lignes suivantes:


Ce routeur reçoit de son voisin sur l'interface 2 la table suivante.


Mettre à jour la table de routage du routeur. 
{itodo}`à compléter`


```
