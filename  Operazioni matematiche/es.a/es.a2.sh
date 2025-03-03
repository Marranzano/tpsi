#!/bin/bash

# Verifica che siano stati passati 3 argomenti
if [ "$#" -ne 3 ]; then
    echo "Errore: Devi fornire 3 argomenti (operazione, operando1, operando2)."
    exit 1
fi

# Prendi gli argomenti
operation=$1
operand1=$2
operand2=$3

# Verifica che gli operandi siano numeri validi
if ! [[ "$operand1" =~ ^-?[0-9]+$ ]]; then
    echo "Errore: L'operando 1 ($operand1) non è un numero valido."
    exit 2
fi

if ! [[ "$operand2" =~ ^-?[0-9]+$ ]]; then
    echo "Errore: L'operando 2 ($operand2) non è un numero valido."
    exit 3
fi

# Esegui l'operazione usando espansione aritmetica
if [ "$operation" == "add" ]; then
    ((result = operand1 + operand2))
    echo "Somma: $result"
elif [ "$operation" == "sub" ]; then
    ((result = operand1 - operand2))
    echo "Sottrazione: $result"
elif [ "$operation" == "mul" ]; then
    ((result = operand1 * operand2))
    echo "Moltiplicazione: $result"
elif [ "$operation" == "div" ]; then
    if [ "$operand2" -eq 0 ]; then
        echo "Errore: Divisione per zero."
        exit 4
    fi
    ((result = operand1 / operand2))
    echo "Divisione: $result"
else
    echo "Errore: Operazione non valida. Usa add, sub, mul o div."
    exit 5
fi

