SELECT  Idart,Desart,COUNT(Numc)
FROM Article
LEFT JOIN Lig_com
USING(Idart)
GROUP BY Idart,Desart ;