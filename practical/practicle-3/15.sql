SELECT Idclt, COUNT(Idart)
  FROM commande INNER JOIN lig_com
  USING (Numc)
  INNER JOIN Article
  USING(Idart)
  GROUP BY (Idclt)
  Having Count(Idart)
  > (select Count(Idart) from Article );
