ALTER TABLE EMP
    ADD dno Number(4);
  INSERT INTO emp (idE, nameE, codeE, city, tel, jobE, commision, dno)
    VALUES (1080, 'ALI KLAY', 30, 'tunis', 1121032, 'PHP DEVELOPER', 3120, 10);
  INSERT INTO emp (idE, nameE, codeE, city, tel, jobE, commision, dno)
    VALUES (1200, 'YELLOW', 40, 'tunis', 1121032, 'JS ENGENEER', 110, 20);
  INSERT INTO emp (idE, nameE, codeE, city, tel, jobE, commision, dno)
    VALUES (1500, 'BLACK', 40, 'tunis', 1121032, 'NODEJS DEVELOPER', 190, 30);





SELECT jobE, nameE, dName, emp.dno AS empdno, DEPARTMENT.dno AS DEPDNO
  FROM EMP, DEPARTMENT
  WHERE EMP.dno = DEPARTMENT.dno;
/* JOBE                 NAMEE           DNAME          EMPDNO     DEPDNO
-------------------- --------------- ---------- ---------- ----------
JS ENGENEER          YELLOW          Research           20         20
NODEJS DEVELOPER     BLACK           Operation          30         30
PHP DEVELOPER        ALI KLAY        Accounting         10         10*/







DELETE FROM EMP
  WHERE DNO IS NOT NULL;
