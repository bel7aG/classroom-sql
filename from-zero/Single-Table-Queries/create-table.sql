DROP TABLE emp;
DROP TABLE Department;
DROP SEQUENCE seq_dno;

CREATE TABLE Department(
  dno Number(8) PRIMARY KEY,
  dName varchar(10),
  loc Varchar(10)
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


CREATE TABLE emp(
  idE Number(4),
  nameE char(15) NOT NULL,
  address VARCHAR(10),
  codeE Number(4),
  jobE VARCHAR(20),
  comession Number(6),
  city char(15),
  tel Number(8),
  dateE DATE,
  CONSTRAINT cli PRIMARY KEY(idE)
);

INSERT INTO emp (idE, nameE, codeE, city, tel, jobE, comession)
VALUES (1000, 'Belhassen', 1000, 'tunis', 1121032, 'JS DEVELOPER', 120);

INSERT INTO emp (idE, nameE, codeE, city, tel, jobE, comession)
VALUES (1010, 'bg', 1000, 'seattle', 1235411, 'PYTHON DEVELOPER', 230);

INSERT INTO emp (idE, nameE, codeE, city, tel, jobE, comession)
VALUES (1020, 'bel7aG', 1010, 'ben arous', 1254225, 'ES[6..9] DEVELOPER', 790);

INSERT INTO emp (idE, nameE, codeE, city, tel, jobE, comession)
VALUES (1030, 'bel7aG', 1010, 'ben arous', 2541211, 'JS DEVELOPER', 49);
