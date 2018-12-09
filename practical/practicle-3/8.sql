select Idart,Desart
  from Article join lig_com
  Using(Idart)
  join commande
  Using(Numc)
  join Client
  Using (Idclt)
  where Idclt=1010 and Datec>'20/JAN/02';
