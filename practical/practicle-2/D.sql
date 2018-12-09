SELECT Idart,SUM(Qtecom)
FROM Lig_com GROUP BY Idart
HAVING SUM(Qtecom) >10
ORDER BY SUM(Qtecom);