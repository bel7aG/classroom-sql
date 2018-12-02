SELECT jobE
  FROM EMP;
/* JOBE
--------------------
JS DEVELOPER
PYTHON DEVELOPER
ES[6..9] DEVELOPER
JS DEVELOPER
JS DEVELOPER
JS DEVELOPER*/

-- SELECT avg(commision), jobE
--   FROM EMP;
/* SELECT avg(commision), jobE
                       *
ERROR at line 1:
ORA-00937: not a single-group group function*/

SELECT avg(commision), jobE
  FROM EMP
  GROUP BY jobE;

/* AVG(COMMISION) JOBE
-------------- --------------------
    56.3333333 JS DEVELOPER
           230 PYTHON DEVELOPER
           790 ES[6..9] DEVELOPER*/

SELECT COUNT(*), jobE
  FROM EMP
  GROUP BY jobE;
/*   COUNT(*)     JOBE
----------    --------------------
    4           JS DEVELOPER
    1          PYTHON DEVELOPER
    1          ES[6..9] DEVELOPER*/

SELECT MIN(commision), nameE
  FROM EMP
  -- WHERE min(commision) != 0 -- WE CANNOT USE GROUP FUNCTION (min, max, avg, count ..) in while so we need having
  GROUP BY nameE;

/* MIN(COMMISION) NAMEE
-------------- ---------------
           120 Belhassen
             0 bel7aG
           230 bg             */

SELECT MIN(commision), nameE
  FROM EMP
  GROUP BY nameE
  HAVING min(commision) > 0;
/* MIN(COMMISION) NAMEE
-------------- ---------------
           120 Belhassen
           230 bg             */
