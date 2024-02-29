#!/bin/bash

ROSU='\033[0;31m'
VERDE='\033[0;32m'
NC='\033[0m'

echo
read -p "Introduceti fisierul in care doriti sa adaugati angajatul: " fisiercsv

if [ ! -f "$fisiercsv" ] 
 then
    echo -e "${ROSU}Eroare: Fișierul nu există.${NC}"
    sleep 3
    source meniu.sh
fi

read -p "Introduceti numarul de angajati de adaugat: " nr_angajati

if [ -s "$fisiercsv" ]; then
    last_id=$(tail -n 1 "$fisiercsv" | cut -d ',' -f 1)
    next_id=$((last_id + 1))
else
     next_id=1
fi

for ((i = 1; i <= $nr_angajati; i++))
 do
    read -p "Introduceți nume angajat: " nume
    read -p "Introduceți prenume angajat: " prenume
    read -p "Introduceți salariu angajat: " salariu
    read -p "Introduceți vechime angajat: " vechime

    echo "$next_id,$nume,$prenume,$salariu,$vechime" >>"$fisiercsv"

    next_id=$((next_id + 1))
done

echo -e "${VERDE}Angajatii au fost adaugati cu succes in fisierul $fisiercsv${NC}"
sleep 3
source meniu.sh
