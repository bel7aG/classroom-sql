DROP VIEW Client_tun ;
DROP VIEW Client_com ;
DROP VIEW Art_com ;

CREATE VIEW Client_tun AS SELECT Idclt,Nom,Ville,Tel FROM Client WHERE UPPER(Ville) IN ('TUNIS','BEN AROUS');
SELECT * FROM Client_tun ;

CREATE VIEW Client_com AS SELECT Idclt,Nom,Ville FROM Client INNER JOIN commande1 USING (Idclt) ;
SELECT * FROM Client_com ;

CREATE VIEW Art_com AS SELECT Idart,Desart,Qtestk FROM Article INNER JOIN Lig_com USING (Idart);
SELECT * FROM Art_com ;
