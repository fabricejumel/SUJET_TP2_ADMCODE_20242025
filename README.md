# SUJET TP 2 4ETI_AdmCO_20242025
## Morpion

![Robot Target](morpion_s.jpg)

Votre rendu sera un unique dépôt Git. Vous devrez définir et justifier l'organisation des branches, l'utilisation ou non de branches `dev`, de branches liées aux fonctionnalités, de branches distinctes pour les versions, ou l'utilisation de tags.


Testez le code [morpion_v3.py](./morpion_v3.py)

Dans le cas ou le sujet ne vous paraitrez peu clair ou erronné, proposez des changements en les justifiant pour pouvoir répondre aux questions .
Même si rien ne marche, remplissez au mieux les attendus en étant clair sur ce qui marche et ce qui ne marche pas (cf la suite).

> [!IMPORTANT] 
> Soyez clair dans le README de votre main du rendu principal, où je dois trouver les differentes versions attendues

Pour chaque Version, vous devrez :

1. ***Expliquer ce qui marche et ce qui ne marche pas***
1. ***Joindre des copies d'écran, du résultats des scripts exécutés***
1. **Expliquer l'usage de venv, dans votre cas (NE PAS JOINDRE DE REPERTOIRE Venv dans votre git ou de fichiers temporaires)**
1. **Coder la ou les classes et le package associé et les déposer sur test Pypi**
1. **Mettre en place des tests, les plus complets possibles en utilisant unitest** : en particulier, comment gérez-vous les éventuelles erreurs ?
1. **Afficher les choix sur le code final de la classe si vous avez dû faire des changements** :  Affichez votre score et le retour de Pylint.
1. **Associer au projet gitlab le README le plus complet possible**
1. **Faire un gros effort sur les commentaires** : utilisez intensivement les docstrings.
1. **Proposer l'installation du paquet à partir de gitlab avec une procedure dans le README**
1.  **Proposer l'installation du paquet à partir de test pypi avec une procédure dans le README**
1. **Automatiser les phases de test et de création du .whl sur GitLab avec un fichier ci** 
1. Faire apparaitre votre arbre de commit dans le README, en expliquant les choix faits sur les branches et les tags


### Version 1 (8 points + bonus)

Le but est de cette version est de mettre en forme le code donné pour en créer un package (logique setup.py ou éventuellemnt pyproject.toml) en modifiant a minima le code donné (même si il vous semble incorrect ou peu pertinent). On mettra par contre en place toute la logique de test unitaires.
> [!IMPORTANT]
> on relira l'attendu précédent. Pour chaque Version, vous devrez : ...

### Version 2 ( 12 points + des bonus)

Le code proposé présente beaucoup d'améliorations possibles . En particulier on souhaite développer des stratégies de jeux par ordinateur. On proposera une version où un ou deux joueurs peuvent être l'ordinateur. On proposera au moins 2 stratégies que l'on peux chosir avec des arguments dans le code , une stragégie totalement aléatoire (avec tout de même des couts valides) et une stragégie ou l'ordinateur ne perd pas au coup suivant si ce n'était pas inéluctables. Vous pouvez ensuite si vous le souhaitez proposer d'autres améliorations . 
. Il est important que tous les changements se reperercutent sur les tests unitaires . N'hésitez pas à améliorer/enrichir au passage vos tests unitaires si il n'était pas suffisamment complet sur la version 1.

On trouve dans la littérature mathématique que les chances de résultat si l'on applique une politique aléatoire au morpion (avec des coups valides) est :

Victoire premier joueur: $(62 + 36*13/40)/126=0.58$


Victoire deuxième joueur : $(12 + 36*27/40)/126=0.29$


Match nul: $16/126=0.13$

Comment utiliser ce résultat dans nos tests, que peut on valider avec ça ? 

Mettez ce test en oeuvre.

> [!IMPORTANT]
> on relira l'attendu précédent. Pour chaque Version, vous devrez : ...


