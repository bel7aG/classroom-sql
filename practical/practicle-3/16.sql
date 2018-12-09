
--2
select Idart,Count(Idclt)
from commande join lig_com
Using (Numc)
join Client
using(Idclt)
Group by (Idart)
Having Count(Idclt)>(select Count(Idclt) from Client );