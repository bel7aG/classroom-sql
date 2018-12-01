DROP TABLE Department;
DROP SEQUENCE seq_dno;
CREATE TABLE Department(
  dno NUMBER(8),
  dName VARCHAR(70),
  loc VARCHAR(30)
);

CREATE SEQUENCE seq_dno
  start with 10
  increment by 10;

INSERT INTO Department
  VALUES(seq_dno.nextval, 'Accounting', 'New York');


INSERT INTO Department
  VALUES(seq_dno.nextval, 'Research', 'Dallas');


INSERT INTO Department
  VALUES(seq_dno.nextval, 'Operation', 'Berlin');


INSERT INTO Department
  VALUES(seq_dno.nextval, 'Sales', 'Tunisia');
