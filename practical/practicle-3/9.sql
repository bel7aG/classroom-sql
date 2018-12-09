select Numc,Datec,Mntc
  from commande
  where Mntc in
  (select Max(Mntc) from commande);
