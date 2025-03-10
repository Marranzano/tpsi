numero_segreto=$((RANDOM % 100 + 1));
tentativi=1;
while true; do
echo -n "inserisci un nr"
read guess 
 if (( guess < numero_segreto ))
 then 
 echo "nr piu grande"
 elif (( guess > numero_segreto ))
 then
 echo "nr piu piccolo"
 else
 echo "complimenti hai indovinato"
 break
 fi 
 (( tentativi++ ))
 done
 echo "i nr di tentativi sono $tentativi"
