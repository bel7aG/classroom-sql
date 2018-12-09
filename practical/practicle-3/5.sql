select Numc,Datec,Mntc,Idart,desart,PU
from commande join lig_com
Using(Numc)
join Article
using(Idart)
where PU<=30;
