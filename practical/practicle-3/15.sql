--1
select Idclt,Count(Idart)
from commande join lig_com
Using (Numc)
join Article
using(Idart)
Group by (Idclt)
Having Count(Idart)>(select Count(Idart) from Article );

