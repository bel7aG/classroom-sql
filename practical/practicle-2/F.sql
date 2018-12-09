SELECT Idart,SUM(Qtecom)
FROM Lig_com
JOIN commande
USING (Numc)
WHERE Idclt = 1010
GROUP BY Idart
Having SUM(Qtecom) >10 ;
