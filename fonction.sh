

function menu ()
{

echo "-------------------------"
echo "     Menu principale      "
echo "-------------------------"  
echo "1) gestion des package -gestion"
echo " 2) sauvgarder les noms -s"
echo " 3) -h ou -help"
echo "4)quiter"
echo ""

}
function menu1 ()
{

echo "-------------------------"
echo "     2eme menu      "
echo "-------------------------"  
echo "-inside) afficher le nom"
echo " -list) lister les noms"
echo " -desc) description "
echo "-rm)supprimer"
echo ""
}
 
function liste()
{
 echo "******"

      echo `dpkg-query -f '${binary:Package}\n' -W`"\n"
      echo "******"
echo `dpkg-query -l '*' | less` 
}
function des()
{
 echo "******"
echo `dpkg-query -l '*' | less` 
}

function sauvegarder()
{
 echo "******"
 #grep dpkg -l |cut -3 >> test.txt
 cut -d: -f1 `dpkg -l`> test1.txt
 echo "******"
}
function supp()
{
  echo "******"
        sudo mv /var/lib/dpkg/info/mon_paquet.* /tmp/
sudo dpkg --remove --force-remove-reinstreq mon_paquet
       echo "******"

}


function help_()
{
   echo "-------------------------------MENU HELP---------------------------------"
echo "-> Tapez l'option '-inside' pour afficher les packages "
echo "-> Tapez l'option '-list' pour lister les noms des packages "
echo "-> Tapez l'option '-desc' pour afficher les descriptions"
echo "-> Tapez l'option '-rm' pour supprimer un package"
echo "-------------------------------------------------------------------------"
}
function exit_prog()
{
             echo "******"
             echo à bientot
             echo "******"    
             exit
}




