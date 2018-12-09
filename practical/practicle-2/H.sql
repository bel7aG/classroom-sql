SELECT Idclt,Nom,Ville
FROM Client
JOIN commande
USING (Idclt)
JOIN Lig_com
USING (Numc)
WHERE Idart=2
INTERSECT
SELECT Idclt,Nom,Ville
FROM Client
JOIN commande
USING (Idclt)
JOIN Lig_com
USING (Numc)
WHERE Idart=3 ;
