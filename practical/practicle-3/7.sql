select Idart,Desart
from article left join lig_com
Using (Idart)
where Idart is null;