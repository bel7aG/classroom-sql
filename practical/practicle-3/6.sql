select Desart,PU
from Article join lig_com
Using(Idart)
join commande
Using(Numc)
join client
using (Idclt)
where Upper(Nom)='ALI'
Order by PU DESC;