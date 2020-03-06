source fonction.sh
while true
do 
menu 
echo "veuillez choisir la commande :"
read choix
case $choix in 
   "-gestion"|"1")
menu1
   	echo "rep :"
	read rep
	case $rep in 
  	 "-inside")
   	#echo `dpkg-query -l`
echo `dpkg --list`      
;;

       "-list")
       liste
#dpkg -l | grep '^.i'
	;;
   	"-desc")
 	des
	;;
 	"-rm")   
	supp
     	;;
	esac
      ;;
       "-s"| "2")
         sauvegarder
;;
   "-h"|"-help"|"3")
 	help_
	;;
 "-q"|"quitter"|"4")   
	exit
     ;;
esac
done
      
      
