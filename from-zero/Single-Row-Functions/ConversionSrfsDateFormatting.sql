/*   NVL(element, value)   */

SELECT nameE, jobE, NVL(commision, -9999)
  FROM EMP;
/* NAMEE           JOBE                 NVL(COMMISION,-9999)
--------------- -------------------- --------------------
Belhassen       JS DEVELOPER                          120
bg              PYTHON DEVELOPER                      230
bel7aG          ES[6..9] DEVELOPER                    790
bel7aG          JS DEVELOPER                           49
bel7aG          JS DEVELOPER                        -9999
bel7aG          JS DEVELOPER                            0*/


                /*   TO_CHAR(value)   */

SELECT nameE, jobE, NVL(TO_CHAR(commision), 'its a null commision')
  FROM EMP;
/*
NAMEE           JOBE                 NVL(TO_CHAR(COMMISION),'ITSANULLCOMMISIO
--------------- -------------------- ----------------------------------------
Belhassen       JS DEVELOPER         120
bg              PYTHON DEVELOPER     230
bel7aG          ES[6..9] DEVELOPER   790
bel7aG          JS DEVELOPER         49
bel7aG          JS DEVELOPER         its a null commision
bel7aG          JS DEVELOPER         0
*/


              /*     NULLIF(who, value) */
SELECT nameE, NULLIF(jobE, LTRIM(jobE, 'E'))
  FROM EMP;
/* NAMEE           NULLIF(JOBE,LTRIM(JO
--------------- --------------------
Belhassen
bg
bel7aG          ES[6..9] DEVELOPER
bel7aG
bel7aG
bel7aG                                     */
/*WARNING: OMG LTRIM RETURN TRUE IF IT DONT HAVE E (bél3akés :3)*/
