#!/bin/bash
clear
VERDE='\033[0;32m'
NC='\033[0m'

read -p "Introduceți numele noului fisier cu angajati: " fisiernou

read -p "Introduceți numărul de angajați: " nr_angajati

re='^[0-9]+$'
if ! [[ $nr_angajati =~ $re ]]; then
  echo "Introduceți un număr valid de angajați."
  sleep 3
  source listanoua.sh
fi

echo "ID,Nume,Prenume,Salariu,Vechime" > "$fisiernou"


for ((i=1; i<=nr_angajati; i++))
do
  echo "Introduceți informațiile pentru angajatul $i:"
  
  echo "Nume:"
  read nume
  
  echo "Prenume:"
  read prenume
  
  echo "Salariu:"
  read salariu
  
  echo "Vechime:"
  read vechime

  echo "$i,$nume,$prenume,$salariu,$vechime" >> "$fisiernou"
done

echo
echo -e "${VERDE}Lista angajaților a fost creată în fișierul $fisiernou${NC}"
sleep 3
clear
source meniu.sh