#!/bin/bash
clear
ROSSO="\033[0;31m"
RESET="\033[0m"
CYAN="\033[0;36m"
echo  "${ROSSO}===== MENU =====$RESET"
echo  "${CYAN}1) Mostra un messaggio di benvenuto"
echo  "2) Mostra il nome utente"
echo  "3) Esci$RESET"
echo  "${ROSSO}================$RESET"
# Legge l'input dell'utente
read -p "Seleziona un'opzione (1-3): " scelta
# Verifica l'opzione scelta
if test "$scelta" -eq 1; then
    echo "Benvenuto nel sistema!"
elif test "$scelta" -eq 2; then
echo "inserisci nome utente"
read utente
    echo "Il tuo nome utente : $utente"
elif test "$scelta" -eq 3; then
    echo "Uscita dal programma."
else
    echo "Scelta non valida."
fi