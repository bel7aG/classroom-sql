select numc,mntc,nom,ville
from Client join commande
using(idclt)
where (mntc>290.000) and upper(ville)='TUNIS';