#!/bin/bash

# Chiede all'utente l'altezza dell'albero
echo -n "Inserisci l'altezza dell'albero: "
read altezza

# Controlla che l'input sia un numero valido
if ! [[ "$altezza" =~ ^[0-9]+$ ]]; then
    echo "Errore: devi inserire un numero!"
    exit 1
fi

# Disegna la chioma dell'albero
riga=1
while (( riga <= altezza )); do
    # Stampa gli spazi prima dei cerchi
    spazio=altezza
    while (( spazio > riga )); do
        echo -n " "
        (( spazio-- ))
    done

    # Stampa i cerchi "O"
    colonna=1
    while (( colonna <= (2*riga-1) )); do
        echo -n "O"
        (( colonna++ ))
    done

    echo
    (( riga++ ))
done

# Disegna il tronco
tronco=1
while (( tronco <= altezza/3 )); do
    spazio=1
    while (( spazio < altezza )); do
        echo -n " "
        (( spazio++ ))
    done
    echo "O"
    (( tronco++ ))
done
