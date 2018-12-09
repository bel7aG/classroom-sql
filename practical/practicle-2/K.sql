--Method1--
SELECT Nom
FROM Client
MINUS SELECT Nom
FROM commande JOIN Client
USING (Idclt) ;

--Method2--
SELECT Nom
FROM Client
FULL JOIN commande
USING (Idclt)
WHERE Numc IS NULL ;

--Method3--
SELECT Nom
FROM Client
WHERE Idclt NOT IN
(
 SELECT Idclt
 FROM commande
) ;
