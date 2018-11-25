-- DROP VIEW ClientTun;
-- DROP VIEW ClientCom;
-- DROP VIEW ArtCom;
DROP TABLE Employe;
DROP SEQUENCE codeF_seq;
DROP TABLE Facture;
DROP TABLE Lig_com;
DROP TABLE Commande;
DROP TABLE Client;
DROP TABLE Article;

CREATE TABLE Client(
  idclt Number(4),
  nom char(15) NOT NULL,
  adresse VARCHAR(30),
  codep Number(4),
  ville char(15),
  tel Number(7),
  CONSTRAINT cp_client PRIMARY KEY(idclt)
);

Create Table Article(
	idart Number(4),
	desart VARCHAR(20),
	pu Decimal(7,2),
	qtestk Number(5),
	CONSTRAINT cp_article PRIMARY KEY (idart),
	CONSTRAINT cc_pu check(pu Between 0 and 50000)
);

Create Table Commande(
  numc Number(4) ,
  idclt Number(4),
  datec date,
  CONSTRAINT cp_commande PRIMARY KEY (numc),
  CONSTRAINT cf_commande FOREIGN KEY (idclt) REFERENCES Client
);

Create Table Lig_com(
  numc Number(4),
  idart Number(4) NOT NULL,
  qtecom Number(5),
  CONSTRAINT cp_lig PRIMARY KEY (numc,idart),
  CONSTRAINT cf_lig1 FOREIGN KEY (idart) references Article(idart),
  CONSTRAINT cf_lig2 FOREIGN KEY (numc) references Commande(numc),
  CONSTRAINT cc_lig check (qtecom > 0)
);

ALTER TABLE Article
  ADD qtemin Number(5);

ALTER TABLE Commande
  ADD mntc Number(8, 3) NOT NULL;

ALTER TABLE Client
  MODIFY nom VARCHAR(20);

ALTER TABLE Client
  DROP COLUMN adressE;


CREATE INDEX i_art
  ON Article (desart);

CREATE INDEX i_client
  ON Client (nom);

CREATE INDEX i_com
  ON Commande (numc, idclt);

          /*   INSERT INTO Article   */

INSERT INTO Article (idart, desart, pu, qtestk, qtemin)
  VALUES (1, 'Ecran VGA', 450.000, 20, 5);

INSERT INTO Article (idart, desart, pu, qtestk, qtemin)
  VALUES (2, 'Ecran VGAS', 500.000, 10, 5);

INSERT INTO Article (idart, desart, pu, qtestk, qtemin)
  VALUES (3, 'Clavier Bikingue', 120.000, 5, 2);

INSERT INTO Article (idart, desart, pu, qtestk, qtemin)
  VALUES (4, 'Clavier azerty', 100.000, 2, 6);

INSERT INTO Article (idart, desart, pu, qtestk, qtemin)
  VALUES (5, 'Sourie 2 boutons', 20.000, 4, 3);

INSERT INTO Article (idart, desart, pu, qtestk, qtemin)
  VALUES (6, 'Disquette', 1.500, 10, 20);

INSERT INTO Article (idart, desart, pu, qtestk, qtemin)
  VALUES (7, 'Imprimante', 750.000, 4, 2);

INSERT INTO Article (idart, desart, pu, qtestk, qtemin)
  VALUES (8, 'CD_ROM', 25.000, 40, 20);


INSERT INTO Article (idart, desart, pu, qtestk, qtemin)
  VALUES (9, 'DisqueDurc40', 250.000, 25, 5);

        /*   INSERT INTO CLIENT   */

INSERT INTO Client (idclt, nom, codep, ville, tel)
  VALUES (1000, 'Mohamed', 1000, 'tunis', 1121032);

INSERT INTO Client (idclt, nom, codep, ville, tel)
  VALUES (1010, 'ali', 1000, 'tunis', 1235411);

INSERT INTO Client (idclt, nom, codep, ville, tel)
  VALUES (1020, 'adel', 1010, 'ben arous', 1254225);

INSERT INTO Client (idclt, nom, codep, ville, tel)
  VALUES (1030, 'boubaker', 1010, 'ben arous', 2541211);

INSERT INTO Client (idclt, nom, codep, ville, tel)
  VALUES (4000, 'zied', 4000, 'sousse', Null);

INSERT INTO Client (idclt, nom, codep, ville, tel)
  VALUES (4010, 'tarek', 4010, 'sousse nord', Null);

INSERT INTO Client (idclt, nom, codep, ville, tel)
  VALUES (4020, 'tahar', 4010, 'sousse nord', 3226045);



INSERT INTO Commande (numc, datec, mntc, idclt)
  VALUES (10, TO_DATE ('2012/01/02', 'yyyy/mm/dd'), 250.365, 1000);





INSERT INTO Commande(numc, datec, mntc, idclt)
  VALUES (20, TO_DATE ('2012-01-03', 'yyyy/mm/dd'), 120.500, 1010);

INSERT INTO Commande(numc, datec, mntc, idclt)
  VALUES (30, TO_DATE ('2012-01-02', 'yyyy/mm/dd'), 300.000, 1010);

INSERT INTO Commande(numc, datec, mntc, idclt)
  VALUES (40, TO_DATE ('2001-02-02', 'yyyy/mm/dd'), 400.000, 1020);

INSERT INTO Commande(numc, datec, mntc, idclt)
  VALUES (50, TO_DATE ('2001-02-02', 'yyyy/mm/dd'), 800.000, 1020);

INSERT INTO Commande(numc, datec, mntc, idclt)
  VALUES (60, TO_DATE ('2001-02-02', 'yyyy/mm/dd'), 500.000, 4000);

INSERT INTO Commande(numc, datec, mntc, idclt)
  VALUES (70, TO_DATE ('2005-02-02', 'yyyy/mm/dd'), 360.000, 4000);

INSERT INTO Commande(numc, datec, mntc, idclt)
  VALUES (80, TO_DATE ('2005-02-02', 'yyyy/mm/dd'), 310.000, 4000);

INSERT INTO Commande(numc, datec, mntc, idclt)
  VALUES (90, TO_DATE ('2005-02-02', 'yyyy/mm/dd'), 800.000, 4010);

INSERT INTO Commande(numc, datec, mntc, idclt)
  VALUES (100, TO_DATE ('2006-02-02', 'yyyy/mm/dd'), 450.000, 4010);

INSERT INTO Commande(numc, datec, mntc, idclt)
  VALUES (110, TO_DATE ('2006-02-02', 'yyyy/mm/dd'), 1580.000, 4020);

INSERT INTO Commande(numc, datec, mntc, idclt)
  VALUES (120, TO_DATE ('2006-02-02', 'yyyy/mm/dd'), 280.000, 4020);

-- INSERT INTO Commande(numc, datec, mntc, idclt)
--   VALUES (130, TO_DATE ('2006-02-02', 'yyyy/mm/dd'), 680.000, 4050);

INSERT INTO Lig_com
  VALUES (10, 1, 2);
INSERT INTO Lig_com
  VALUES (10, 2, 3);
INSERT INTO Lig_com
  VALUES (10, 4, 8);
INSERT INTO Lig_com
  VALUES (10, 5, 10);
INSERT INTO Lig_com
  VALUES (10, 6, 2);
INSERT INTO Lig_com
  VALUES (20, 2, 13);
INSERT INTO Lig_com
  VALUES (20, 8, 4);
INSERT INTO Lig_com
  VALUES (20, 3, 2);
INSERT INTO Lig_com
  VALUES (20, 5, 2);
INSERT INTO Lig_com
  VALUES (30, 7, 3);
INSERT INTO Lig_com
  VALUES (30, 1, 5);
INSERT INTO Lig_com
  VALUES (30, 6, 6);
INSERT INTO Lig_com
  VALUES (30, 4, 4);
INSERT INTO Lig_com
  VALUES (40, 1, 3);
INSERT INTO Lig_com
  VALUES (40, 2, 5);
INSERT INTO Lig_com
  VALUES (40, 5, 6);
INSERT INTO Lig_com
  VALUES (40, 6, 10);
INSERT INTO Lig_com
  VALUES (90, 1, 25);
INSERT INTO Lig_com
  VALUES (90, 2, 33);

CREATE TABLE Facture(
  codeF NUMBER(4),
  dateF DATE,
  codeCmd NUMBER(4),
  CONSTRAINT key5 PRIMARY KEY(codeF),
  CONSTRAINT ci_fac2 FOREIGN KEY(codeCmd) references Commande(numc)
);

-- ALTER TABLE Facture
--   ADD CONSTRAINT date_ck check(dateF BETWEEN '19-07-07' AND '22/10/16');
--
-- ALTER TABLE Facture
--  DROP CONSTRAINT date_ck;

CREATE SEQUENCE codeF_seq
  start with 1
  increment by 1;

INSERT INTO Facture(codeF, dateF, codeCmd)
  VALUES (codeF_seq.nextval, TO_DATE ('11-02-02', 'dd-mm-yy'), 10);

INSERT INTO Facture(codeF, dateF, codeCmd)
  VALUES (codeF_seq.nextval, TO_DATE ('11-02-02', 'dd-mm-yy'), 50);

INSERT INTO Facture(codeF, dateF, codeCmd)
  VALUES (codeF_seq.nextval, TO_DATE ('11-02-02', 'dd-mm-yy'), 30);

INSERT INTO Facture(codeF, dateF, codeCmd)
  VALUES (codeF_seq.nextval, TO_DATE ('11-02-02', 'dd-mm-yy'), 40);

INSERT INTO Facture(codeF, dateF, codeCmd)
  VALUES (codeF_seq.nextval, TO_DATE ('11-02-02', 'dd-mm-yy'), 20);

Create Table Employe(
	numE NUMBER(4),
	nom VARCHAR(20),
	prenom VARCHAR(20),
	mng Number(4),
	CONSTRAINT cp_employe PRIMARY KEY (numE)
);
