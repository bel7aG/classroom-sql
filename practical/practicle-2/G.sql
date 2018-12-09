SELECT Numc , COUNT(Idart) AS nbr_art
FROM Lig_com
GROUP BY Numc ;

SELECT Idclt , COUNT(Numc) AS nbr_cmd
FROM commande 
GROUP BY Idclt ;


SELECT Idclt , COUNT(Idart) AS nbr_art
FROM Lig_com
JOIN commande 
USING (Numc)
GROUP BY Idclt ;
