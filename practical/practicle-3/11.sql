SELECT IDCLT, Nom, COUNT(Numc) AS nbr_com, SUM(Mntc) AS tot_mnt
  from Commande join Client
  Using(Idclt)
  GROUP BY(Idclt, Nom);
