SELECT Idart,Desart,Qtestk,Idclt
FROM Article
JOIN Lig_com
USING (Idart)
JOIN commande
USING (Numc)
WHERE Idclt IN (1010,1020) AND Qtestk < Qtemin;
