Drop table Lig_com;
Drop table commande;
Drop table Article;
Drop table Client;
drop table Facture;
Drop sequence codeF_seq;

Create Table Client
(
	Idclt Number(4),
	Nom varchar(5) NOT NULL ,
	Adresse Varchar(30),
	Codep Number (4) ,
	ville varchar(15),
	Tel Number(7),
	CONSTRAINT key1 PRIMARY KEY(Idclt),
	CONSTRAINT CH1 check(codep Between 1000 and 8000)
);

Create Table Article
(
	Idart Number(4),
	Desart varchar(20),
	Pu Decimal(7,2),
	qtestk Number(5),
	CONSTRAINT key2 PRIMARY KEY(Idart),
	CONSTRAINT ci_p check(Pu Between 0 and 50000)
);
Create Table commande
(
	Numc Number(4) ,
	Idclt Number(4),
	Datec Date,
	CONSTRAINT key3 PRIMARY KEY(Numc),
	CONSTRAINT ci_cm FOREIGN KEY (Idclt) references Client
);
Create Table Lig_com
(
	Numc Number(4) ,
	Idart Number(4) NOT NULL,
	Qtecom Number(5) ,
	CONSTRAINT key4 PRIMARY KEY(Numc,Idart),
	CONSTRAINT ci_lig2 FOREIGN KEY (Idart) references Article,
	CONSTRAINT ci_cc FOREIGN KEY (Numc) references commande ,
	CONSTRAINT ch4 check (Qtecom>0)
);
-- 
-- ALTER TABLE Article ADD Qtemin Number(5) ;
-- ALTER TABLE commande ADD Mntc Number(8,3) NOT NULL;
-- ALTER TABLE Client MODIFY NOM varchar(20);
-- ALTER TABLE Client DROP COLUMN Adresse ;
--
-- CREATE INDEX I_art on Article (Desart) ;
-- CREATE INDEX I_client on Client (nom) ;
-- CREATE INDEX I_Com on commande (Numc,Idclt) ;
--
-- INSERT INTO Client  VALUES (1000,'Mohamed',1000,'tunis',1121032);
-- INSERT INTO Client  VALUES (1010,'Ali',1000,'tunis',1235411);
-- INSERT INTO Client  VALUES (1020,'Adel',1010,'ben arous',1254225);
-- INSERT INTO Client  VALUES (1030,'Boubaker',1010,'ben arous',2541211);
-- INSERT INTO Client  VALUES (4000,'Zied',4000,'Sousse',Null);
-- INSERT INTO Client  VALUES (4010,'tarek',4010,'sousse nord',Null);
-- INSERT INTO Client  VALUES (4020,'tahar',4010,'sousse nord',3226045);
--
-- INSERT INTO Article  VALUES(1,'Ecran VGA',450.000,20,5);
-- INSERT INTO Article  VALUES(2,'Ecran SVGA',500.000,10,5);
-- INSERT INTO Article  VALUES(3,'Clavier bilingue',120.000,5,5);
-- INSERT INTO Article  VALUES(4,'Clavier azerty',100.000,2,6);
-- INSERT INTO Article  VALUES(5,'Souris 2 boutons',20.000,4,3);
-- INSERT INTO Article  VALUES(6,'Disquette',1.500,10,20);
-- INSERT INTO Article  VALUES(7,'Imprimante laser',750.000,4,2);
-- INSERT INTO Article  VALUES(8,'CD_ROM',25.000,40,20);
-- INSERT INTO Article  VALUES(9,'Disque Dur C40',250.000,25,5);
--
-- INSERT INTO commande Values(10,1000,'12-01-02',250.365);
-- INSERT INTO commande Values(20,1010,'12-01-02',120.500);
-- INSERT INTO commande Values(30,1010,'12-01-02',300);
-- INSERT INTO commande Values(40,1020,'01-02-02',400);
-- INSERT INTO commande Values(50,1020,'01-02-02',800);
-- INSERT INTO commande Values(60,4000,'01-02-02',500);
-- INSERT INTO commande Values(70,4000,'05-02-02',360);
-- INSERT INTO commande Values(80,4000,'05-02-02',310);
-- INSERT INTO commande Values(90,4010,'05-02-02',800);
-- INSERT INTO commande Values(100,4010,'06-02-02',450);
-- INSERT INTO commande Values(110,4020,'06-02-02',1580);
-- INSERT INTO commande Values(120,4020,'06-02-02',280);
--
-- INSERT INTO lig_com VALUES(10,1,2);
-- INSERT INTO lig_com VALUES(10,2,3);
-- INSERT INTO lig_com VALUES(10,4,8);
-- INSERT INTO lig_com VALUES(10,5,10);
-- INSERT INTO lig_com VALUES(10,6,2);
-- INSERT INTO lig_com VALUES(20,2,13);
-- INSERT INTO lig_com VALUES(20,8,4);
-- INSERT INTO lig_com VALUES(20,3,2);
-- INSERT INTO lig_com VALUES(20,5,2);
-- INSERT INTO lig_com VALUES(30,7,3);
-- INSERT INTO lig_com VALUES(30,1,5);
-- INSERT INTO lig_com VALUES(30,6,6);
-- INSERT INTO lig_com VALUES(30,4,4);
-- INSERT INTO lig_com VALUES(40,1,3);
-- INSERT INTO lig_com VALUES(40,2,5);
-- INSERT INTO lig_com VALUES(40,5,6);
-- INSERT INTO lig_com VALUES(40,6,10);
-- INSERT INTO lig_com VALUES(90,1,25);
-- INSERT INTO lig_com VALUES(90,2,33);
--
--
-- CREATE TABLE Facture
-- (CodeF NUMBER,
-- DateF DATE,
-- CodeCmd NUMBER,
-- CONSTRAINT key5 PRIMARY KEY(CodeF),
-- CONSTRAINT ci_fac2 FOREIGN KEY(CodeCmd) references commande(Numc)
-- );
--
-- CREATE SEQUENCE codeF_seq increment by 1 start with 1 ;
--
-- ALTER TABLE Facture ADD CONSTRAINT date_ck check(DateF BETWEEN TO_DATE('2007-07-19','YYYY-MM-DD') AND TO_DATE('2016-10-22','YYYY-MM-DD'));
-- Alter table Facture drop Constraint date_ck;
--
-- INSERT INTO Facture VALUES(1,'11/02/02',10);
-- INSERT INTO Facture VALUES(2,'15/04/02',50);
-- INSERT INTO Facture VALUES(3,'12/06/02',30);
-- INSERT INTO Facture VALUES(4,'01/01/02',40);
-- INSERT INTO Facture VALUES(5,'10/02/02',20);
--
-- Create Table Employe
-- (
-- 	NumE NUMBER(4),
-- 	Nom varchar(20),
-- 	Prenom varchar(20),
-- 	Mng Number(4),
-- 	CONSTRAINT Key_emp PRIMARY KEY (NumE)
-- );
--
-- Alter table Employe Add Constraint emp_co Foreign key(Mng) references Employe(NumE);
--
--
-- Create view Client_t as select Idclt , nom , ville , tel
-- from Client
-- where ville = 'Tunis' and ville = 'Ben Arous';
--
--
-- /*define_editor="C:\Program Files\Sublime Text 3\sublime_text.exe";*/
--
