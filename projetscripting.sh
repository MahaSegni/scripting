#! /bin/bash
#include<gtk/gtk.h>
yad --center --width=800 --height=250 --text "Would you like to run top and the options ?" \
---button=gtk-no:1 \
--button=gtk-yes:0 \
--buttons-layout=center
choix=$?
if [[ $choix -eq 1 ]]; then 
cancel && exit 0
elif [[ $choix -eq 0 ]]; then
while :
do
yad --center --width=800 --height=250 --text="Choose a command to launch :" \
--button="-inside":1 \
--button="-list":2 \
--button="-desc":3 \
--button="-save":4 \
--button="-help":5 \

foo=$?



if [[ $foo -eq 1 ]]; then
-inside

elif [[ $foo -eq 2 ]]; then
tasksel --list-tasks

elif [[ $foo -eq 3 ]]; then
tasksel --task-desc mail-server
elif [[ $foo -eq 4 ]]; then
#sauvegarde des informations dans un fichier texte
echo "Création d'un fichier texte en cours ..."
echo "-> Liste des processus en cours d'exécution :" > save.txt
ps -A >> save.txt
echo "" >> save.txt
echo "-> Les informations concernant le processeur :" >>save.txt
cat /proc/cpuinfo >> save.txt
echo "" >> save.txt
echo "-> Le nombre du core(s) du processeur est :" >> save.txt
cat /proc/cpuinfo | grep processor | wc -l >> save.txt
elif [[ $foo -eq 5 ]]; then
yad --center --width=600 --height=100 --text="`echo "◦ l’option -ltop pour lancer la commande top
◦ l’option -lps pour lancer la commande ps -aux
◦ l’option -root afin d’afficher uniquement les processus lancé par l’utilisateur root
◦ l’option -mcpu afin d’afficher uniquement les 5 processus les plus gourmands en terme
de cpu.
◦ l’option -h ou –help pour afficher le help
◦ Afficher les courbes/camembert des informations les plus pertinentes" `"

else
cancel && exit 0

fi
done
fi
