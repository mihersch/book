![modulo-banner](https://github.com/edunumsec2/modulo2/blob/main/source/_static/assets/modulo-head-banner.svg)

# Informatique au Gymnase

## Introduction

Ce document est un fork du projet [modulo] (https://github.com/edunumsec2/book) pour l'enseignement pour
l'informatique en discipline obligatoire au
niveau Secondaire II dans le canton de Vaud pour mon propre enseignement. Le but est de produire une version
compilable latex pouvant être distribuée sous forme de polycopié. Ces ressources ne seront pas directement
utilisées en classe mais feront office de référence théorique à laquelle pourront se référer les élèves,
par exemple pour réviser la théorie ou rattraper les cours manqués. Le polycopié sera mis à disposition des élèves
qui pourront également le consulter en ligne en format web.


### Installation recommandée

Modulo est basé sur le générateur de documentation [Sphinx](https://www.sphinx-doc.org/en/master/) et utilise le template [Furo](https://github.com/pradyunsg/furo).

### Pré-requis

- Python 3.x et pip ([Installation MacOSX](https://docs.python-guide.org/starting/install3/osx/)) ([Installation Windows](https://docs.python-guide.org/starting/install3/win/)) ([Installation rapide](https://www.python.org/downloads/))
- [virtualenv](https://virtualenv.pypa.io/en/latest/) (`$ pip install virtualenv`)
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- latex

Pour vérifier la bonne installation de l'environnement de base :
- `$ python --version`
- `$ virtualenv --version`
- `$ git --version`



### Installation rapide

1. Récupération du projet : `git clone git@github.com:mihersch/book.git`
2. Vers la racine du projet : `cd book` 
3. Création d'un environnement virtuel : `virtualenv .env`
4. Activation de l'environnement virtuel : 
  - Sur MacOS : `source .env/bin/activate`
  - Sur Windows : `.env\Scripts\activate`
5. Installation des librairies dans l'environnement virtuel : `pip install -r requirements.txt -U`

**Remarque** : à chaque fois que vous travaillez sur le projet, l'environnement virtuel devrait être activé (point 4).

### Utilisation

1. Activation de l'environnement virtuel (si pas déjà fait)
2. Compilation :
  - 'latex' : `sphinx-build  -E -b latex src/appr  build/latex/appr` génère les fichiers latex dans le répertoire `build/latex/appr'. Ces fichiers peuvent ensuite être compilé en un pdf, par exemple en utilisant
  `pdflatex modulo2` dans ce répertoire. 
  - 'html : `sphinx-build  -E -b latex src/appr  build/appr` génère les fichiers html dans le répertoire `build/appr`.


### Paramétrisation
La génération du document peut être paramétrée (pour latex et ou html) en modifiant le fichier [src/appr/conf.py](src/appr/conf.py)

### Licence

Ce document est disponible sous licence Creative Commons CC-BY-NC