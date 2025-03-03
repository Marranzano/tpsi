#nomecorretto.sh                            
 #!/bin/bash
USERNAME_CORRETTO="gigi"
PASSWORD_CORRETTA="info"
echo -n "Inserisci il nome utente: "
read USERNAME
echo -n "Inserisci la password: "
read -s PASSWORD
if test "$USERNAME" = "$USERNAME_CORRETTO" && test "$PASSWORD" = "$PASSWORD_CORRETTA"; then
    echo "Accesso consentito. Benvenuto, $USERNAME!"
else
    echo "Accesso negato. Credenziali errate."
fi
