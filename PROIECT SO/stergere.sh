#!/bin/bash

ROSU='\033[0;31m'
VERDE='\033[0;32m'
NC='\033[0m'

read -p "Introduceti fisierul din care doriti sa stergeti angajatul: " fisiercsv

if [ ! -f "$fisiercsv" ] 
 then
    echo -e "${ROSU}Eroare: Fișierul nu există.${NC}"
    sleep 3
    source stergere.sh
fi

read -p "Introduceți ID-ul angajatului de șters: " id_angajat

re='^[0-9]+$'
if ! [[ $id_angajat =~ $re ]]; then
  echo "Introduceți un id valid"
  sleep 3
  source stergere.sh
fi

if grep -q "^$id_angajat," "$fisiercsv" 
 then
    sed -i "/^$id_angajat,/d" "$fisiercsv"
    echo -e "${VERDE}Angajatul cu ID-ul $id_angajat a fost șters din fișierul $fisiercsv.${NC}"
    sleep 3
    source meniu.sh
else
    echo "Nu există un angajat cu ID-ul $id_angajat în fișierul $fisiercsv"
    sleep 3
    source meniu.sh
fi
