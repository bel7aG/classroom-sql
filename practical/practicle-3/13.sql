SELECT Idclt,Nom, COUNT(Numc) AS nbr_com, SUM(Qtecom) as qte_tot
  from Client INNER JOIN commande
  Using (idclt)
  INNER JOIN lig_com
  Using(Numc)
  GROUP BY (Idclt,Nom)
  Having sum(Qtecom)>4;
