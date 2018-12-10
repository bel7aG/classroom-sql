SELECT Idart, Qtestk, SUM(qtecom) AS tot_qte
  FROM lig_com JOIN Article
  Using(Idart)
  WHERE Qtemin < Qtestk
  GROUP BY(Idart,Qtestk);
