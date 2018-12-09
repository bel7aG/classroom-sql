SELECT Idclt,Nom
FROM Client
LEFT JOIN commande
USING (Idclt) ;
