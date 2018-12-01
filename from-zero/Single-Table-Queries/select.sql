-- SELECT *
--   from Department;


SELECT jobE
  FROM emp;
  /* JOBE
  --------------------
  JS DEVELOPER
  PYTHON DEVELOPER
  ES[6..9] DEVELOPER
  JS DEVELOPER */

SELECT distinct jobE
  FROM emp;
  /*    JOBE
  --------------------
  JS DEVELOPER
  PYTHON DEVELOPER
  ES[6..9] DEVELOPER*/


SELECT jobE, nameE
FROM emp;
/* JOBE                 NAMEE
-------------------- ---------------
JS DEVELOPER         Mohamed
PYTHON DEVELOPER     ali
ES[6..9] DEVELOPER   adel
JS DEVELOPER         boubaker*/

SELECT distinct jobE, nameE
  FROM emp;
/* JOBE                 NAMEE
-------------------- ---------------
JS DEVELOPER         Mohamed
JS DEVELOPER         boubaker
ES[6..9] DEVELOPER   adel
PYTHON DEVELOPER     ali*/

SELECT nameE, tel
  FROM emp
  WHERE LOWER(jobE) = LOWER('jS devEloPeR')
  AND LOWER(nameE) = 'belhassen'
  OR LOWER(city) = 'seattle';
/* NAMEE                  TEL
--------------- ----------
Belhassen          1121032
bg                 1235411*/


SELECT nameE, jobE, commision
  FROM emp
  WHERE commision > 200;
/* NAMEE           JOBE                  COMMISION
--------------- -------------------- ----------
bg              PYTHON DEVELOPER            230
bel7aG          ES[6..9] DEVELOPER          790*/

SELECT nameE, jobE, commision
  FROM emp
  WHERE commision < 300
  AND UPPER(jobE) = 'JS DEVELOPER'
  AND LOWER(nameE) != 'bel7ag';
/* NAMEE           JOBE                  COMMISION
--------------- -------------------- ----------
Belhassen       JS DEVELOPER                120*/


SELECT *
  FROM Department
  WHERE dno IN (20, 40);
/*        DNO DNAME      LOC
---------- ---------- ----------
        20 Research   Dallas
        40 Sales      Tunisia*/

SELECT *
  FROM Department
  WHERE LOWER(dName) IN ('sales', 'research');
/* DNO DNAME      LOC
---------- ---------- ----------
        20 Research   Dallas
        40 Sales      Tunisia*/

SELECT *
  FROM Department
  WHERE LOWER(UPPER) NOT IN ('SALES', 'RESEARCH');
/*        DNO DNAME      LOC
---------- ---------- ----------
        10 Accounting New York
        30 Operation  Berlin*/

SELECT nameE, codeE, jobE, city, commision
  FROM emp
  WHERE commision BETWEEN 10 AND 150;
/* NAMEE                CODEE JOBE                 CITY             COMMISION
--------------- ---------- -------------------- --------------- ----------
Belhassen             1000 JS DEVELOPER         tunis                  120
bel7aG                1010 JS DEVELOPER         ben arous               49*/

SELECT *
  FROM Department
  WHERE loc is null;
/*        DNO   DNAME          LOC
     ---------- ----------  ----------
          50    Developers
*/

--WARNING +> 0 is not null

SELECT *
  FROM Department
  WHERE loc is not null;
/*        DNO DNAME      LOC
---------- ---------- ----------
        10 Accounting New York
        20 Research   Dallas
        30 Operation  Berlin
        40 Sales      Tunisia*/


/* Exercice:
  Write a query that (idE, namee, commision, jobe) returns those employees that don't make any commision
  and have a code employee (codeE) greater than 100 but less than 4500.
  Exclude those employees that have code between 290 AND 700 */

SELECT idE, nameE, commision, jobE
  FROM emp
  WHERE commision is null
  OR commision = 0
  AND codeE BETWEEN 101 AND 4499
  AND codeE NOT BETWEEN 290 AND 700;
/*        IDE NAMEE            COMMISION JOBE
---------- --------------- ---------- --------------------
      1040 bel7aG                     JS DEVELOPER*/


--OPERATOR   (=, >, <, >=, <=, !=, <>) WARNING (!= and <> is the same)
