#!/bin/bash
# Script de formatage du certificat avec ajout de commentaires en début de PEM pour faciliter la lecture du certificat
# ====================================================================================================================
repertoire_test=certificat_test
repertoire_resultat=resultat
cd $repertoire_test
for user in `ls *.pem`
do
# formatage du certificat avec ajout de commentaires en début de PEM pour faciliter la lecture du certificat
openssl x509 -in $user -text -noout | egrep -i "issuer:|subject:" | sed 's/^ */#/' > ../$repertoire_resultat/$user-RESUME.pem;
done
