SELECT Idclt,Idart FROM commande1
INNER JOIN Lig_com
USING (Numc)
WHERE Idclt = 1010 ;