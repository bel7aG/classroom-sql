select Numc,Mntc,Datec,Nom
from commande join Client
Using(Idclt)
where Datec >'31/JAN/02' and Nom like '%a%';
