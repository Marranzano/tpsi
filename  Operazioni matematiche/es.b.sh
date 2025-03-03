#!/bin/bash

# Verifica che siano stati passati almeno due argomenti (operazione e almeno un numero)
if [ "$#" -lt 2 ]; then
    echo "Errore: Devi fornire almeno 2 argomenti (operazione e numeri da sommare)."
    exit 1
fi

# Inizializza la variabile per la somma
sum=0

# Inizializza il contatore a 2 per iniziare dal secondo argomento
count=2

# Usa un ciclo while per sommare tutti gli argomenti
while [ "$count" -le "$#" ]; do
    # Aggiungi l'argomento corrente alla somma (usando espansione aritmetica)
    ((sum += ${!count}))  # Accedi direttamente agli argomenti con l'indice
    ((count++))  # Passa al prossimo argomento
done

# Mostra il risultato
echo "Risultato della somma: $sum"
