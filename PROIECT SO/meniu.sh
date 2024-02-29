#!/bin/bash
i=1

while [ $i -eq 1 ]; do
   clear

   echo "==============MENIU================="
   echo "1) Adaugare lista angajati"
   echo "2) Adauga noi angajati"
   echo "3) Concediere angajat"
   echo "4) Sortare dupa vechime"
   echo "5) Sortare dupa salariu"
   echo "6) Afisare lista angajati"
   echo "0) Inchidere program"
   echo "===================================="
   echo
   read -p "Alegeti optiunea: " optiune

   case $optiune in
      1) 
        echo "Ati ales sa creati o noua lista de angajati"
        sleep 3
        source listanoua.sh
        ;;
      2)
        echo "Ati ales sa adaugati noi angajati"
        sleep 3
        source adaugare.sh
        ;;
      3)
        echo "Ati ales sa concediati un angajat"
        sleep 3
        source stergere.sh
        ;;
      4)
        echo "Ati ales sa sortati angajatii dupa vechime"
        sleep 3
        source sortarev.sh
        ;;
      5)
        echo "Ati ales sa sortati angajatii dupa salariu"
        sleep 3
        source sortares.sh
        ;;
      6)
        echo "Ati ales sa afisati lista cu angajati"
        sleep 3
        source afisare.sh
        ;;

      0) 
        echo "Programul se va inchide..."
        sleep 3
        clear
        i=0
        ;;
      *)
        echo "Nu exista aceasta optiune"
        sleep 3
        source meniu.sh
        ;;
    esac
done