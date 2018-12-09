SELECT Idclt AS Code, Nom ,COUNT(Idart)
FROM Client
FULL JOIN commande
USING (Idclt)
FULL JOIN Lig_com
USING (Numc)
GROUP BY Idclt,Nom;
