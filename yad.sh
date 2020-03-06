#!/bin/bash
function on_click () {
while true
do

INPUT=`yad --no-buttons --title "Menu" --form --separator="" --width=400 --height=200 --text-align=left --text="Voila notre Menu \n 1) La commande -gestion \n  2) La commande -save \n 3) -h \ Help \n   4) Quitter " --entry --entry-label=Label --entry-text="Type here"`  \

case $INPUT in
 	1) iwlist wlx00117f4bd32d scan 
;;
	 2) iwlist scan | grep ESSID >>test.txt 
;;

	3) yad --tittle "Help Center" --text-align=center --text=" ******************************* \n Bienvenue dans le menu HELP :) \n ******************************* \n 1) -inside: \n Permet d affiche le nom de packages  \n 2) -list :\n permet de lister les noms des packages  \n 3) -desc: \n afficher une description \n 4) -rm :\n permet de supprimer le package \n ******************************* \n Bienvenue dans le menu HELP :) \n ******************************* \n "
;;
	
	4) exit

;;
esac

done
}
export -f on_click

function help () {
yad --title "Help Center" --text-align=center --text=" ******************************* \n \n Bienvenue dans le menu HELP :) \n ******************************* \n 1) -l: \n Permet de lister les differentes points d'accees  \n 2) -lsort : permet de lister en ordre decroissant les points d'acces \n 3) -d :\n Permet de desactiver le networkmanager  \n 4) -s: \n Permet de configurer les points  d'acces \n 5) -v :\n Permet de sauvgarder les points d'acces dans un fichier text \n 6) -h ou help :\n Permet d'afficher le menu HELP \n 7) -q ou quitter :\n Permet de arreter le programme \n ******************************* \n Bienvenue dans le menu HELP :) \n ******************************* \n "
}
export -f help




