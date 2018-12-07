SELECT numc, mntc, idclt, nom, ville
  FROM COMMANDE
  join client
  USING (idclt)
  WHERE mntc > 290 AND ville = 'tunis';

/*2*/

SELECT idart, desart, qtestk, qtemin
  FROM ARTICLE
  where qtestk <= qtemin;

/*3*/

SELECT nom
  from client
  where codep = (SELECT codep from client where nom = 'Mohamed')
  AND ville = (select ville from client where nom = 'Mohamed' );

/*4*/
SELECT numc, mntc, datec, nom
  FROM COMMANDE join client
  using(idclt)
  where datec > '31/JAN/02' and nom like '%a%';


/*5*/

select numc, datec, mntc, idart, pu
  from article join commande
  on pu <= 30;

/*6*/
SELECT DESART
 FROM article
 join lig_com
 using(idart)
 join commande
 using(numc)
 join client
 using (idclt)
 where nom = 'ali'
 ORDER BY pu DESC;

/*7*/

SELECT desart
  FROM article
  where idart not in (SELECT idart from lig_com);

/*8*/
select Idartfrom
  from Lig_com
  join commande
  using(numc  )
/*9*/
select numc, datec, mntc from COMMANDE
  where mntc = (SELECT max(mntc) from lig_com);
