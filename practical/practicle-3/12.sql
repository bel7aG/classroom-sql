SELECT Idclt,Nom, COUNT(Numc) as nbr_com, SUM(MNTC) as tot_mnt
  FROM Client INNER JOIN COMMANDE
  USING(Idclt)
  GROUP BY (Idclt,Nom)
  Having SUM(MNTC) > 400.000;
