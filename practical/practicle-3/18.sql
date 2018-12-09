select Idart
from Article
where PU<100
UNION
select Idart
from lig_com join commande
using(Numc)
where Idclt=1010;