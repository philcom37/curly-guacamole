#!/bin/bash
# Script de formatage du certificat avec ajout de commentaires en début de PEM pour faciliter la lecture du certificat
# ====================================================================================================================
for user in `ls *.pem`
do
# formatage du certificat avec ajout de commentaires en début de PEM pour faciliter la lecture du certificat
openssl x509 -in $user -text -noout | egrep -i "issuer:|subject:" | sed 's/^ */#/' > $user-BUREAU.pem;
done
