--method1
select Numc,Datec,Count(Idart) as nbr_art
from commande join lig_com
using(Numc)
group by (Numc,Datec)
Having Count(Idart) >=all (select count(Idart)
from lig_com
group by (Numc));

--method2
Drop view nb_article;
Create view nb_article as
select Numc,Count(Idart) as nb
from lig_com
group by (Numc);
select Numc,Datec,Count(Idart) as nbr_art
from commande join lig_com
using(Numc)
join nb_article using(Numc)
where nb=(select max(nb) from nb_article)
group by (Numc,Datec);
 
