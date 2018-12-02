SELECT *
  FROM DEPARTMENT
  WHERE DNO = 30;
/*        DNO DNAME      LOC
---------- ---------- ----------
        30 Operation  Berlin*/

SELECT *
  FROM DEPARTMENT
  WHERE dno = (SELECT dno FROM DEPARTMENT WHERE DNO = 30);
/*        DNO DNAME      LOC
  ---------- ---------- ----------
        30 Operation  Berlin*/

SELECT *
  FROM DEPARTMENT
  WHERE dno < (SELECT dno FROM DEPARTMENT WHERE DNO = 30)
  AND initcap(dname) = 'Research';

/*        DNO DNAME      LOC
---------- ---------- ----------
        20 Research   Dallas*/

SELECT *
  FROM DEPARTMENT
  WHERE dno IN (SELECT dno FROM (SELECT * FROM DEPARTMENT) WHERE dno in (10, 30));
/*        DNO DNAME      LOC
---------- ---------- ----------
        10 Accounting New York
        30 Operation  Berlin      */
