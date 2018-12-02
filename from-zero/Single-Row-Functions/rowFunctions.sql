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


/* WARNING two concat inside concat :D*/
SELECT CONCAT(CONCAT(nameE, UPPER(' is the name ')), CONCAT('and their job is ', jobE))
  FROM EMP;
/* CONCAT(CONCAT(NAMEE,UPPER('ISTHENAME')),CONCAT('ANDTHEIRJOBIS',JO
-----------------------------------------------------------------
Belhassen       IS THE NAME and their job is JS DEVELOPER
bg              IS THE NAME and their job is PYTHON DEVELOPER
bel7aG          IS THE NAME and their job is ES[6..9] DEVELOPER
bel7aG          IS THE NAME and their job is JS DEVELOPER
bel7aG          IS THE NAME and their job is JS DEVELOPER
bel7aG          IS THE NAME and their job is JS DEVELOPER*/

              /*    initcap(str)    */

SELECT initcap('hello my name iS Belhassen Gharsallah you can call Me bel7aG.') AS Greeting
  FROM DUAL;
/* GREETING
-------------------------------------------------------------
Hello My Name Is Belhassen Gharsallah You Can Call Me Bel7ag.*/


              /*    LENGTH(str)     */

SELECT LENGTH('bel7aG')
  FROM DUAL;
/* LENGTH('BEL7AG')
----------------
        6           */

SELECT nameE
  FROM EMP
  WHERE LENGTH(nameE) >  6;
/* NAMEE
---------------
Belhassen       */


        /* SUBSTR(str, index[1 .. n], number of char) */

SELECT 'bel7aG', substr('bel7aG', 4, 3)
  FROM DUAL;
/* 'BEL7A SUB
------ ---
bel7aG 7aG*/

        /* LPAD(str, total length of str, char) */
SELECT LPAD('abc', 5, '$M') --left pad
  FROM DUAL;
/* LPAD
  ----
  $Mabc    */

SELECT LPAD('abc', 2, '$')
  FROM DUAL;
/* LPAD
  ----
  ab    */

  /* RPAD(str, total length of str, char) */
SELECT RPAD('abc', 5, '$M') --Right pad
FROM DUAL;
/* RPAD
----
abc$M    */

SELECT RPAD('abc', 2, '$')
FROM DUAL;
/* RPAD
----
ab    */
