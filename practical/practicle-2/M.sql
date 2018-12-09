INSERT INTO commande VALUES (12,NULL,'14-NOV-17',12000) ;

SELECT Idclt,Nom
FROM Client
RIGHT JOIN commande
USING (Idclt) ;
