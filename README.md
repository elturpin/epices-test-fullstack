# Retour personnel de développement
Je n'ai jamais fait de ruby et a fortiori utilisé RubyOnRails avant ce test technique. J'ai donc fait un rapide tuto ruby avant le test et j'ai lu le guide de démarrage de Rails avant et pour m'aider dans cet exercice.

J'avoue que l'exercice a vraiment été très dur pour moi (je ne l'ai pas fini). Je suis plus habitué à des syntaxes de type C/C++, JS/TS ou Python. Ce qui m'a beaucoup manqué, c'est le typage.

L'exercice a aussi été très frustrant car j'ai eu beaucoup de mal à comprendre les documentations et surtout quand je lis trop de fois que le langage/le framework est construit pour être "amusant" alors que j'ai juste beaucoup galéré, cela m'a plus énervé qu'autre chose. La complexité reste complexe quoi qu'il arrive, c'est mieux de ne pas le cacher.

# Ce qui a été fait
+ Ajout d'une config de conteneur de développement (pour ne pas installer trop de chose sur son ordinateur)
+ Ajout d'une fonctionnalité d'import de fichier CSV pour enregistrer les log d'onduleur (*inverter*)
+ Affichage du nombre de log et des jours distincts. Il s'agit de la route racine

# Sujet

Une [centrale solaire photovoltaïque](https://fr.wikipedia.org/wiki/Centrale_solaire_photovolta%C3%AFque) dispose d'un appareil appelé [datalogger](https://en.wikipedia.org/wiki/Data_logger) qui nous transmet chaque jour des données de production d'énergie.

Cette installation est composée de 2 [onduleurs](https://fr.wikipedia.org/wiki/Onduleur).

Vous devrez construire une application permettant à un·e utilisateur·ice de :

- charger des données de production au format csv depuis une interface web
- disposer de ces données brutes ainsi que des données consolidées dans la base de données
- les consulter depuis une interface web

# Spécifications techniques

Il vous faudra réaliser une interface web simple (pas de mise en forme CSS demandée) qui permet de :
- envoyer un fichier CSV à charger au format CSV uniquement. Elles contiennent la production horaire de chaque onduleur. *(cf fichiers .csv dans ce repository)*
- voir la production totale d'une journée (au choix de l'utilisateur·ice) pour l'ensemble du système avec le total et la production par heure

Dans la base de données on devra pouvoir disposer :
- des données horaires de chaque onduleur
- des données consolidées (somme des énergies) sur la journée pour l'ensemble du système

Pour ce faire, nous mettons à votre disposition un starter d'application `RubyOnRails` + `SQLite` mais, il vous est possible d'utiliser une ou des technologie(s) équivalente(s) si vous n'êtes vraiment pas à l'aise avec `RubyOnRails` (ex: `Django`, `Symfony`, `Laravel`, etc.).

# Nous observerons

- Les modèles créés et leurs relations
- L'algorithme d'import
- La qualité et l'organisation du code en général

Évidemment, nous adapterons nos observations à votre expérience du langage.

**Merci de mettre le code à disposition sur un dépôt git et de nous transmettre les moyens d'y accéder.**
