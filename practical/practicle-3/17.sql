select Avg(Qtecom),Idart,count(Numc)
from lig_com
group by (idart)
Having count(Numc)=3;