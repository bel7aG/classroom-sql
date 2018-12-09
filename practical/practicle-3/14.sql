select Idart,Qtestk,sum(qtecom) as tot_qte
from lig_com join Article
Using(Idart)
where Qtemin<Qtestk 
group by (Idart,Qtestk)
;
