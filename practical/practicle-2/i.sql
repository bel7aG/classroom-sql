SELECT Idclt,Nom
FROM Client
JOIN commande
USING (Idclt)
JOIN Lig_com
USING (Numc)
WHERE Idart = ANY
(
SELECT Idart FROM commande
JOIN Lig_com
USING (Numc)
WHERE Idclt = 1010
)
GROUP BY (Idclt,Nom) ;


-- Pour ne pas afficher le client 1010 : AND Idclt <> 1010 --
