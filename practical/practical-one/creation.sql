Drop table Lig_com;
Drop table Commande;
Drop table Article;
Drop table Client;

Create Table Client (
  idclt Number(4),
  nom varchar(5) NOT NULL ,
  adresse Varchar(30),
  codep Number (4) ,
  ville varchar(15),
  tel Number(7),
  CONSTRAINT key1 PRIMARY KEY(idclt),
  CONSTRAINT CH1 check(codep Between 1000 and 8000)
);

Create Table Article (
  idart Number(4),
  desart varchar(20),
  pu Decimal(7,2),
  qtestk Number(5),
  CONSTRAINT key2 PRIMARY KEY(idart),
  CONSTRAINT ci_p check(pu Between 0 and 50000)
);

Create Table Commande (
  numc Number(4) ,
  idclt Number(4),
  datec Date,
  CONSTRAINT key3 PRIMARY KEY(numc),
  CONSTRAINT ci_cm FOREIGN KEY (idclt) references Client
);

Create Table Lig_com (
  numc Number(4) ,
  idart Number(4) NOT NULL,
  Qtecom Number(5) ,
  CONSTRAINT key4 PRIMARY KEY(numc,idart),
  CONSTRAINT ci_lig2 FOREIGN KEY (idart) references Article,
  CONSTRAINT ci_cc FOREIGN KEY (numc) references Commande ,
  CONSTRAINT ch4 check (Qtecom>0)
);

ALTER TABLE Article (
  ADD qtemin Number(5)
);

ALTER TABLE Commande (
  ADD mntc number(8,3) NOT NULL
);

ALTER TABLE Client (
  MODIFY nom varchar(20)
);

ALTER TABLE Client (
  DROP COLUMN adresse
);

/*
CREATE INDEX index_name
ON table_name (column1, column2, ...);
*/

CREATE INDEX I_art
ON Article (desart);

CREATE INDEX I_Client
ON Client (nom);

CREATE INDEX I_Com
ON Commande (numc, idclt);

# INSERT INTO ARTICLE

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
VALUES (8, 'Disque Dur c40', 250.000, 25, 5);

# INSERT INTO CLIENT

INSERT INTO Client (ldclt, nom, codep, ville, tel)
VALUES (1000, 'Mohamed', 1000, 'tunis', 1121032);

INSERT INTO Client (ldclt, nom, codep, ville, tel)
VALUES (1010, 'ali', 1000, 'tunis', 1235411);

INSERT INTO Client (ldclt, nom, codep, ville, tel)
VALUES (1020, 'adel', 1010, 'ben arous', 1254225);

INSERT INTO Client (ldclt, nom, codep, ville, tel)
VALUES (1030, 'boubaker', 1010, 'ben arous', 2541211);

INSERT INTO Client (ldclt, nom, codep, ville, tel)
VALUES (4000, 'zied', 4000, 'sousse', Null);

INSERT INTO Client (ldclt, nom, codep, ville, tel)
VALUES (4010, 'tarek', 4010, 'sousse nord', Null);

INSERT INTO Client (ldclt, nom, codep, ville, tel)
VALUES (4020, 'tahar', 4010, 'sousse nord', 3226045);

INSERT INTO Commande(numc, datec, mntc, idclt) VALUES (10, '12-01-02', 250.365, 1000);
INSERT INTO Commande(numc, datec, mntc, idclt) VALUES (20, '12-01-02', 120.500, 1010);
INSERT INTO Commande(numc, datec, mntc, idclt) VALUES (30, '12-01-02', 300.000, 1010);
INSERT INTO Commande(numc, datec, mntc, idclt) VALUES (40, '01-02-02', 400.000, 1020);
INSERT INTO Commande(numc, datec, mntc, idclt) VALUES (50, '01-02-02', 800.000, 1020);
INSERT INTO Commande(numc, datec, mntc, idclt) VALUES (60, '01-02-02', 500.000, 4000);
INSERT INTO Commande(numc, datec, mntc, idclt) VALUES (70, '05-02-02', 360.000, 4000);
INSERT INTO Commande(numc, datec, mntc, idclt) VALUES (80, '05-02-02', 310.000, 4000);
INSERT INTO Commande(numc, datec, mntc, idclt) VALUES (90, '05-02-02', 800.000, 4010);
INSERT INTO Commande(numc, datec, mntc, idclt) VALUES (100, '06-02-02', 450.000, 4010);
INSERT INTO Commande(numc, datec, mntc, idclt) VALUES (110, '06-02-02', 1580.000, 4020);
INSERT INTO Commande(numc, datec, mntc, idclt) VALUES (120, '06-02-02', 280.000, 4020);
INSERT INTO Commande(numc, datec, mntc, idclt) VALUES (130, '06-02-02', 680.000, 4050);

INSERT INTO Lig_com VALUES (10, 1, 2);
INSERT INTO Lig_com VALUES (10, 2, 3);
INSERT INTO Lig_com VALUES (10, 4, 8);
INSERT INTO Lig_com VALUES (10, 5, 10);
INSERT INTO Lig_com VALUES (10, 6, 2);
INSERT INTO Lig_com VALUES (20, 2, 13);
INSERT INTO Lig_com VALUES (20, 8, 4);
INSERT INTO Lig_com VALUES (20, 3, 2);
INSERT INTO Lig_com VALUES (20, 5, 2);
INSERT INTO Lig_com VALUES (30, 7, 3);
INSERT INTO Lig_com VALUES (30, 1, 5);
INSERT INTO Lig_com VALUES (30, 6, 6);
INSERT INTO Lig_com VALUES (30, 4, 4);
INSERT INTO Lig_com VALUES (40, 1, 3);
INSERT INTO Lig_com VALUES (40, 2, 5);
INSERT INTO Lig_com VALUES (40, 5, 6);
INSERT INTO Lig_com VALUES (40, 6, 10);
INSERT INTO Lig_com VALUES (90, 1, 25);
INSERT INTO Lig_com VALUES (90, 2, 33);

CREATE TABLE Facture(
  codeF NUMBER,
  dateF DATE,
  codeCmd NUMBER,
  CONSTRAINT key5 PRIMARY KEY(codeF),
  CONSTRAINT ci_fac2 FOREIGN KEY(codeCmd) references Commande(numc)
);

CREATE SEQUENCE codeF_seq increment by 1 start with 1 ;

ALTER TABLE Facture
ADD CONSTRAINT date_ck check(dateF BETWEEN '19-07-2007' and '22-10-2016');

ALTER TABLE Facture
DROP CONSTRAINT date_ck;
