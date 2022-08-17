(appr:repinfo:son)=
# Le son

Un son est une histoire d’énergie et de vibrations. Un son émerge quand des molécules subissent une pression initiale, ce qui va les amener à avancer et entrainer ce mouvement sur les molécules devant immédiatement voisines en leur transmettant une grande partie de cette énergie. Suite à ce nouveau mouvement, elles repartent en arrière pour retrouver leur position d'équilibre ayant transmis cette énergie initiale aux molécules voisines qui à leur tour vont se comporter de la même manière. 


```{youtube} kW9nwkrfGFw
```


Toutes ces «tranches» de molécules vont donc osciller successivement, formant une onde qui va se déplacer au sein du milieu matériel : air, eau, caoutchouc par exemple. C'est similaire à ce que l'on observe lorsqu'un projectile heurte une flaque d’eau : à partir du point d'impact, se forme progressivement une onde circulaire qui s'étend et se propage à la surface de l'eau.

Le son est donc une **vibration mécanique**, nécessitant un **milieu matériel** : s'agissant des sons que nous entendons tous les jours, le milieu matériel est bien évidemment l'air ambiant. 

On appelle **fréquence** du son, la vitesse avec laquelle ces molécules vibrent. Plus la vibration des molécules est rapide, plus le son est aigu : on parle de fréquence élevée. Inversement, plus la vibration est lente, plus basse est la fréquence. Une corde de guitare détendue vibre moins vite que sa voisine très tendue, elle va produire un son plus grave avec une oscillation bien plus lente. 

Le niveau sonore correspond lui à l'**amplitude** de l’oscillation, c'est-à-dire si les molécule bougent beaucoup (grande amplitude) ou peu (faible amplitude).  

Lorsque la vibration de l'air atteint notre oreille, elle est transmise par le tympan à la cochlée dans laquelle des cellules vont détecter certaines fréquences spécifiques de vibration et envoyer cette information au cerveau. 
Votre musique préférée est donc une addition de sons avec des fréquences et amplitudes différentes qui vont vous fait vibrer au sens propre... comme au figuré !


Pour représenter ces oscillations sonores, on peut imaginer placer une membrane (par exemple un microphone) qui va vibrer avec le son. La position du centre de
cette membrane au cours du temps, constitue un signal (en une dimension) qui représente le son.
Dans un microphone, ces oscillations sont converties en oscillations de tension électrique constituant
un signal qui peut être captées par un ordinateur. En échange, un signal électrique qui stimule un
haut-parleur produit des oscillations de la pression de l'air qui peuvent à leur tour être perçues. Ce signal
peut provenir de la reconstruction d'un signal numérisé.

La question est de savoir comment représenter ces oscillations en un ensemble de 0 et 1 pour être stockées numériquement dans un ordinateur, comme les nombres, images et les caractères.


```{figure} media/soncontinu.png
---
height: 250px
name: fig-repr-num-sig
---
Un signal sonore représenté par la position d'une membrane vibrante
(axe vertical) en fonction du temps (axe hoorizontal). 
```

## Numérisation

````{admonition} Micro-activité
:class: note
Essayez de représenter le signal ci-dessus par une une suite de nombres. Votre
représentation est-elle précise? 

````

Un signal analogique continu tel que celui représenté ci-dessus ne peut pas
être directement représenté par un ordinateur, car étant continu, il est
constitué d'une infinité de nombres à virgules pouvant chacun avoir une infinité
de chiffres après la virgule. Pour convertir ce signal continu en données
numérique il faut le *discrétiser*, c'est à dire le transformer en une suite finie de nombres représentables
par un ordinateur. La discrétisation d'un signal et son stockage dans un ordinateur
s'appelle la *numérisation*. 

Pour ceci, le signal est d'abord *échantillonné*, c'est-à-dire que l'on va
découper l'intervalle de temps du signal en un nombre fini de morceaux par
exemple toutes les milisecondes. On va alors attribuer une valeur de signal pour
chaque morceau. Plus il y a de morceaux, plus  ceux-ci sont petits et plus il sera possible de
représenter précisément le signal. Le nombre de morceaux
par secondes représente la fréquence d'échantillonage exprimée en Herz (ou Hz).
Ainsi, un son de 5 secondes échantilloné à 1000 Hz (ou 1 kHz) aura
$5 \cdot 1000= 5000$ morceaux donc sera décrit par 5000 valeurs du signal. 


```{figure} media/numerisation-01.png
---
height: 250px
name: fig-repr-num-freq
---
Effet de la fréquence d'échantillonnage (sampling rate : 100, 200 et 400 Hz) sur la représentation obtenue par numérisation. Plus la fréquence est élevée, plus la quantité d'information collectée est importante. Dans tous les cas, les détails du signal qui se déroulent entre les échantillonnages sont perdus.

```

Une bonne fréquence d'échantillonnage est le résultat d'un compromis entre une grande qualité de son
(donc une haute fréquence d'échantillonage) et une petite place en mémoire (donc une faible fréquence
d'échantillonage). Pour conserver une fréquence donnée, par exempe 440 Hz qui correspond à un la, il faut
une échantilloner à une fréquence deux fois plus élevée (880 Hz dans notre exemple) puisqu'il faut au minimum
deux valeurs pour capter une oscillation. Par exemple, avec les six valeurs 0-1-0-1-0-1 on peut détecter au
plus 3 oscillations. Sachant que l’oreille humaine ne perçoit globalement que les fréquences comprises entre 20 et 20000 Hz, une fréquence d’échantillonnage supérieure à 40 kHz permettra de restituer l’ensemble de l’information physiologiquement perceptible par l’oreille humaine. C'est la raison pour laquelle l’échantillonnage de la musique en qualité “CD” est réalisé à 44.1 kHz (incluant ainsi 10% de marge). 




````{admonition} Un peu d'histoire…
:class: note
La fréquence d'échantillonnage de 44.1 kHz a été retenue dans les années 1970 pour permettre l'utilisation des bandes vidéo pour stocker les enregistrements numériques. Ces bandes représentaient le meilleur rapport volume de stockage/prix pour l'époque.

Cependant, les formats vidéos sont cadencés sur la fréquence du système électrique local : 60 Hz pour le NTSC américain (et 30 images par seconde) ; 50 Hz pour le PAL européen (et 25 images par seconde). En choisissant le multiple commun de 44.1 kHz, la norme permettait d'être utilisée avec les deux formats NTSC et PAL comme support de stockage physique pour le transport du "master" stéréo en vue de son impression sur des CDs.

Depuis, avec la disparition des cassettes vidéo comme supports de données, puis l'apparition du support DAT, l'échantillonnage à 48 kHz s'impose progressivement (avec ses multiples 96 et 192 kHz). Ces valeurs ont l'avantage d'être des multiples de huit, ce qui est toujours favorable dans le domaine informatique.

De plus, ces fréquences simplifient la synchronisation avec les enregistrements vidéo en 24, 25, 30, 60, 100 et même 120 images par seconde. Les multiples de 48 kHz sont donc des fréquences d'échantillonnage de choix pour la diffusion HDTV, notamment.

````

Si l'échantillonage correspond à un processus de discrétisation du temps (on sépare en morceaux
l'intervalle de temps
représenté sur l'axe horitzontal), la discretisation des valeurs observées, c'est-à-dire de l'axe
vertical, correspond à la *quantification*. De façon analogue à
l'échantillonnage, on sépare les valeurs possibles du signal en un morceaux (ou plages) et on indique,pour
chaque valeur échantillonnée, dans quelle plage elle se trouve. Si le découpage est très fin, il y aura
beaucoup de plages et donc la représentation sera plus précise. Par contre, ces plages devront être codées
sur plus de bits et donc cela prendra plus de place en mémoire. Le nombres de bits utilisé pour coder les
valeurs (déterminant ainsi le nombre de valeurs différentes possibles) est donné par la *profondeur* de
l'échantillonage. 


```{figure} media/numerisation-02.png
---
height: 250px
name: fig-repr-num-depth
---
Effet de la profondeur de l'échantillonnage (bit depth : 3, 4 et 5 bits) sur la représentation obtenue par numérisation. Plus la profondeur est importante, plus la discrimination du signal et la différence entre les basses et les hautes intensités est importante. La quantité d'information générée (le nombre de 0 et de 1) devient également plus importante.
```

Ici encore, l'oreille humaine ne peut percevoir ni les intensités les plus faibles
(inférieures au bruit émis par l'individu lui-même) ni les intensités au-delà du seuil de douleur.
Une précision minimale (environ 8 bits) est ainsi nécessaire pour restituer agréablement un enregistrement
respectant les subtilités de l'expression orale (entre voix posée et criée, par exemple).

Au-delà de 16 bits, une profondeur d'échantillonnage engendre une plage dynamique qui n'a pas d'application pertinente pour la restitution des sons pour la plupart des humains, au coût d'une plus grande quantité d'information collectée.

Enfin, le *gain* du signal détermine la plage d'amplitude dans laquelle la numérisation du signal se déroule, c'est-à-dire
quelle sera l'amplitude maximale qui pourra être numérisée. Si le gain est trop grand, alors on perd de la précision car
une partie des plages de valeurs ne seront pas utilisées. Si le gain est trop petit, le signal sera *saturé* c'est-à-dire que certaines valeurs du signal original sont en dehors des plages de prévues et ne pourront pas être rendues correctement, ce qui induira
une *distortion* du signal sonore. 

```{figure} media/numerisation-04.png
---
height: 250px
name: fig-repr-num-dist
---
Effet du gain (trop haut, correct, trop bas) sur la représentation obtenue par numérisation. La distorsion résulte de valeurs très différentes de celles du signal original. </br> Cette aberration du processus de numérisation ne peut plus être corrigée, car de l'information a été perdue au passage. À l'inverse, un gain trop faible nuit à la dynamique de l'information collectée, c'est-à-dire que l'écart entre la valeur retenue la plus faible et la plus élevée n'est qu'une fraction de l'intervalle disponible. Il en résulte une perte de précision.
```

On notera finalement que l'échantillonnage et la quantification travaillent ensemble pour définir la qualité du signal numérisé. Ces deux paramètres ne sont pas complètement indépendants. Leur choix est réalisé en fonction du résultat escompté et de ce que l'on cherche à réaliser avec le signal numérisé.

Pour l'intensité sonore par exemple, une fréquence d'échantillonnage insuffisante ne peut pas être compensée par une profondeur d'échantillonnage supérieure. La qualité du résultat n'est pas améliorée.

```{figure} media/numerisation-03.png
---
height: 250px
name: fig-repr-num-bal
---
Effet de la fréquence d'échantillonnage (sampling rate : 400, 200 et 100 Hz) sur la représentation obtenue par numérisation à une profondeur donnée (sampling depth : 5 bits). Une importante profondeur d'échantillonnage ne compense pas une fréquence d'échantillonnage insuffisante.
```

Les dispositifs électroniques dont la fonction est l'échantillonnage et la quantification des signaux sont appelés des convertisseurs analogique-numérique (CAN) ou **analog to digital converter** (ADC), en anglais. Les dispositifs électroniques dont la fonction est la reconstruction des signaux sont appelés des convertisseurs numérique-analogique (CNA) ou **digital to analog converter** (DAC), en anglais. La sortie du convertisseur est généralement une tension électrique proportionnelle à l'intensité du signal.

