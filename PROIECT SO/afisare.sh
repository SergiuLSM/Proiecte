#!/bin/bash

ROSU='\033[0;31m'
VERDE='\033[0;32m'
NC='\033[0m'

echo
read -p "Introduceti fisierul cu angajatii: " fisiercsv

if [ ! -f "$fisiercsv" ] 
 then
    echo -e "${ROSU}Eroare: Fișierul nu există.${NC}"
    sleep 3
    source meniu.sh
fi
clear
echo "-------------------------------------"
cat "$fisiercsv" | column -t -s ','
echo "-------------------------------------"

read -rp "Apăsați tasta Enter pentru a continua..."
source meniu.sh