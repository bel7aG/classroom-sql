select Idclt,Nom,Count(Numc) as nbr_com ,sum(Mntc) as tot_mnt
from Commande join Client
Using(Idclt)
group by(Idclt,Nom)
Having sum(Mntc)>400.000;