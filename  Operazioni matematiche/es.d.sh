#!/bin/bash

# Chiede all'utente il numero di righe
echo -n "Inserisci il numero di righe: "
read righe

# Controlla che l'input sia un numero valido
if ! [[ "$righe" =~ ^[0-9]+$ ]]; then
    echo "Errore: devi inserire un numero!"
    exit 1
fi

# Stampa il triangolo rettangolo
riga=1
while (( riga <= righe )); do
    colonna=1
    while (( colonna <= riga )); do
        echo -n "O"
        (( colonna++ ))
    done
    echo
    (( riga++ ))
done
