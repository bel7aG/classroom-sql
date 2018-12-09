select Idclt,Nom,Count(Numc) as nbr_com,sum(Qtecom) as qte_tot
from Client join commande 
Using (idclt)
join lig_com 
Using(Numc)
group by (Idclt,Nom)
Having sum(Qtecom)>4;