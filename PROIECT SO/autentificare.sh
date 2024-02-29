#!/bin/bash

ROSU='\033[0;31m'
VERDE='\033[0;32m'
NC='\033[0m'

clear

valid_username="sergiu"
valid_password="1234"

echo "Introduceti numele si parola"
read -rp "Username: " nume
read -rsp "Password: " parola


if [[ "$nume" == "$valid_username" && "$parola" == "$valid_password" ]]
 then
    clear
    echo -e "${VERDE}Autentificare reușită! Bine ați venit, domnule manager.${NC}"
    sleep 3
    source meniu.sh
else
    echo
    echo -e "${ROSU}Autentificare eșuată. Vă rugăm să verificați numele de utilizator și parola.${NC}"
    sleep 3
    source autentificare.sh
fi