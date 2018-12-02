      /* MAX() MIN() SUM() AVG() COUNT()*/

SELECT max(commision) AS commision
  FROM EMP;
/* MAX(COMMISION)
--------------
           790*/

SELECT min(commision)
  FROM EMP;

/* MIN(COMMISION)
--------------
             0*/

SELECT SUM(commision)
  FROM EMP;

/*
SUM(COMMISION)
--------------
          1189*/

SELECT MAX(commision)
  FROM EMP
  WHERE LOWER(jobE) LIKE 'js%';
/* MAX(COMMISION)
--------------
           120*/


SELECT COUNT(jobE)
  FROM EMP;
/*COUNT(JOBE)
  -----------
      6         */

SELECT COUNT(commision)
 FROM EMP;
/* COUNT(COMMISION)
  ----------------
          5            */


SELECT AVG(commision)
  FROM EMP;
/* AVG(COMMISION)
--------------
   237.8      */
   /* => i have 6 record but the average of commision div with 5 because i have one SET TO NULL*/


SELECT SUM(commision) / COUNT(COMMISION)
 FROM EMP;
/* SUM(COMMISION)/COUNT(COMMISION)
-------------------------------
                         237.8*/


SELECT SUM(commision) / COUNT(COMMISION), avg(COMMISION) AS "Commision Avg "
  FROM EMP;
/* SUM(COMMISION)/COUNT(COMMISION) Commision Avg
------------------------------- --------------
                          237.8          237.8*/

SELECT COUNT(*)
  FROM EMP;
/*   COUNT(*)
----------
         6*/

SELECT COUNT(*) + AVG(commision) as computed
  FROM EMP;
/*   COMPUTED
----------
     243.8*/


SELECT COUNT(*) - AVG(commision) as computed
 FROM EMP;

/*   COMPUTED
----------
    -231.8  */ 
