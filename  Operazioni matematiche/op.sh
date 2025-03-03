#!/bin/bash

# Prendi gli argomenti
operation=$1
operand1=$2
operand2=$3

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
        echo "Errore: divisione per zero"
    else
        ((result = operand1 / operand2))
        echo "Divisione: $result"
    fi
else
    echo "Operazione non valida. Usa add, sub, mul o div."
fi

