## 21.09.2022 
### Concernant le cours
#### Chemin absolu/Chemin relatif
#### Command Unix:
pwd (affiche le chemin absolu du répertoire courant)  
ls (list, affiche les répertoires et les fichiers du répertoire actif)  
ls (affiche seulement les noms)  
ls toto* (affiche les fichiers commençant par toto)

ls -l (affiche le format long : types + droits + Nbre de liens + ....)  
cd (change directory)  
cp chemin (vers le répertoire dont le chemin absolu est donné)  
cd .. (répertoire parent)  
cd ~ (répertoire de base)  
cd - (répertoire précedent)  
cd / (répertoire racine)  
cp (copie)  
cp rapport*.txt sauvegarde  
cp * dossier (copie)  
mv (move, renomme et déplace un fichier)  
mv source destination  
mv * dossier (déplace tous les fichiers du répertoire actif vers le répertoire dossier)  
mkdir (créer un répertoire)  
mkdir répertoire  
rmdir (effacer un répertoire)  
rmdir dossier (supprime un répertoire vide)  
rm (remove, éfface!!!)  
rm -R (enlèvement récursif!!!)  
rm fichier  
rm -i fichier (interactivement, avec demande de confirmation)  
rm -f fichier (avec force, sans demande de confirmation)  
rm -r fichier (avec récursivité, avec les sous répertoires)  
rm -rf dossier (supprime le répertoire et tou son contenu, sans confirmation)  
Référence: https://web.lmd.jussieu.fr/~flott/polytechnique/mec583_08/linux_vi_f77.pdf  
## 28.09.2022  
### Github
Git= système de gestion de versions  
Gérer des modifications effectuées sur un dossier données des manières décentralisées  
#### Les commandes Git
Les notes sont enregistrées dans  Notion ：https://www.notion.so/Git-0bf8c40afe9946cfbcac0d699ec1c35a  
git clone( -option…)  <URL(est le lien vers un dossier git)>  
git config user .name ‘’user’’  
git pull: permet de mettre a jour les métadonnées du dépôt sur votre répertoire local.  
git fetch(play fetch): fonctionne toujours   
Ne modifie pas des dossiers métadonnées  
git add  <fille>  
git rm: supprimer du dépôt  
git commit: valider les modifications des fichiers suivis  
git push: envoie les modifications mise en place vers le dépôt distant  
git status: voir les changements  
git log: voir tous les commits ayant été effectués sur le dépôt  
## 05.10.2022
### Scripts
#### Command pour fichiers
grep: recherche de motifs dans l'entrée  
sort: trier des lignes  
uniq: supprimer les lignes répètent  
echo: agffiche
echo "aa" > aa.txt: écrit aa dans un fichier aa  
echo "aa" >> aa.txt: ajout aa à la fin du fichier aa  
#### Command bash
command pour onvrir vs.code: code .  
ajout des commentaires #  
ajout un shebang #!/user/bin/bash  
rendre le fichier exécutable: chmod +x aaa.sh  
command pour VIM   
ref: https://www.unomaha.edu/college-of-information-science-and-technology/computer-science-learning-center/_files/resources/CSLC-Helpdocs-Vim.pdf  
  
## 12.10.2022
### Bash
Les notes sont enregistrées dans  Notion ：https://www.notion.so/Shell-b116b9fe17ad4b8bb051c6b7f491bc89  

Pour stocker le résultat d'une commande dans une variable, on utilisera la syntaxe suivante :

variable=$(commande)

Command Substitution Syntax:

variable=$(command)  

variable=$(command [option…] argument1 arguments2 …)  

variable=$(/path/to/command)  

donne valeur avec le signe:   
sans espace fichier=urls.txt  
avec " ou ' : MSG="aa kk ll"  

## 19.10.2022
### shell&HTML
instruction if  :
if [condition]  
then  
  echo "ls condition est valide"  
else  
  echo "la condition n'est pas valide"  
fi  

chemins:  
-f fichier vrais si fichier existe  
-d dossierv rai si dossier existe  
-s fichier vrai si fichier existe et pas vide  
chaînes de caractères:  
=ou!= tester identiques ou pas  
< ou > déterminer si chaîne est avant ou après une autre dans l'ordre alphabétique  
-n chaine vrai si chaîne n'est pas vide  
-z vrais si .. vide    
boucles FOR et WHILE
boucles FOR: la boucle for itère sur une liste d’éléments et exécute l’ensemble des commandes données. Le séparateur est l’espace.  
boucles WHILE: la boucle while est utilisée pour exécuter un ensemble donné de commandes tant que la condition donnée est vraie.
 ### HTML
 HTML reprend la construstion globale du balisage,mais a sa propre syntaxe:
 head:l'entête du fichier  (l'encodage-charest)
 body: le corpus du fichier  
 
 Créer tableau dans HTML  
 table: balise racine  
 tr: table row,ligne  
 th: table header  
 td: table data  

Lynx: permet d'afficher une page web avec uniquement du texte et des liens    
lynx -dump -nolist url #formatage en text brut  
lynx -dump -nolist -assume_charset=encodage -display_charset=encodagesortie url > nom_fichier.txt   
wget(écrit dans fichier) et cURL(écrit dans terminal): permet de récupérer des pages web sans passer par un navigateur  
Command cURL:
 curl < URL >   
 curl -i:donner des infos sur l'interaction avec le serveur  
 curl -L:suit les redirections  
 curl -O < fichier > :indique un fichier de sortie  

## 26.10.2022
### Traitement urls
Après avoir trouvé les urls, nous avons commencé à créer un tableau pour traiter ces urls.  
## 16.11.2022&23.11.2022&07.12.2022&14.12.2022
### Exploration du projet
Notre groupe se concentre sur le développement de notre projet et les connaissances acquises seront mises à jour dans le journal de bord du groupe.













