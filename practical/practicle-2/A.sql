DROP VIEW Clt_Sousse ;

CREATE VIEW Clt_Sousse AS
SELECT *
FROM Client
where UPPER(Ville) = 'SOUSSE' ;

-- INSERT INTO Client VALUES (4030,'Fatma',4000,'sousse',3365211);
