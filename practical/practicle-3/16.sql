SELECT Idart,Count(Idclt)
  FROM commande INNER JOIN lig_com
  Using (Numc)
  join Client
  using(Idclt)
  Group by (Idart)
  Having Count(Idclt)>(SELECT Count(Idclt) from Client );
