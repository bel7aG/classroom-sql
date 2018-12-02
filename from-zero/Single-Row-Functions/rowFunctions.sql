                    /*    CONCAT(,) => two argument    */

SELECT 'pizza' AS food, 'fanta' AS "drink", concat('Belhassen', ' Gharsallah') AS NAME
 FROM DUAL;
/* FOOD  drink NAME
----- ----- --------------------
pizza fanta Belhassen Gharsallah*/

/*WARNING: i don't have any of this column but the result is above*/


SELECT *
  FROM DUAL;
/* DUMMY
--------------
dummyOuch*/


SELECT CONCAT(LOWER(nameE), ' is the name') AS "Who am i"
  FROM EMP;
/* Who am i
---------------------------
belhassen       is the name
bg              is the name
bel7ag          is the name
bel7ag          is the name
bel7ag          is the name
bel7ag          is the name*/

SELECT DISTINCT CONCAT(LOWER(nameE), ' is the name') AS "Who am i"
  FROM EMP;
/* Who am i
---------------------------
belhassen       is the name
bel7ag          is the name
bg              is the name*/

SELECT CONCAT(nameE, UPPER(' is the name ')), CONCAT('and their job is ', jobE) as x
  FROM EMP;
/* CONCAT(NAMEE,UPPER('ISTHENAM X
---------------------------- -------------------------------------
Belhassen       IS THE NAME  and their job is JS DEVELOPER
bg              IS THE NAME  and their job is PYTHON DEVELOPER
bel7aG          IS THE NAME  and their job is ES[6..9] DEVELOPER
bel7aG          IS THE NAME  and their job is JS DEVELOPER
bel7aG          IS THE NAME  and their job is JS DEVELOPER
bel7aG          IS THE NAME  and their job is JS DEVELOPER*/


SELECT CONCAT(nameE, UPPER(' is the name ')) || CONCAT('and their job is ', jobE) as x
  FROM EMP;
/*     X
-----------------------------------------------------------------
Belhassen       IS THE NAME and their job is JS DEVELOPER
bg              IS THE NAME and their job is PYTHON DEVELOPER
bel7aG          IS THE NAME and their job is ES[6..9] DEVELOPER
bel7aG          IS THE NAME and their job is JS DEVELOPER
bel7aG          IS THE NAME and their job is JS DEVELOPER
bel7aG          IS THE NAME and their job is JS DEVELOPER*/
