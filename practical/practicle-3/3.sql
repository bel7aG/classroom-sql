select Nom
from Client 
where Ville In (select Ville from Client where Upper(Nom)='MOHAMED') and 
Codep In (select Codep from Client where Upper(Nom)='MOHAMED')
and Upper(Nom)<>'MOHAMED';