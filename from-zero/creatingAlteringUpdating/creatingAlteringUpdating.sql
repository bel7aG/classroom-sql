DROP TABLE stores;

CREATE TABLE stores (
  store_id Number NOT NULL,
  city VARCHAR(50)
);

INSERT INTO stores (store_id, city)
  VALUES (1, 'Rades');

SELECT * FROM stores;

INSERT ALL
  INTO stores (store_id, city)
  VALUES (2, 'Berlin')
  INTO stores (store_id, city)
  VALUES (3, 'Munich')
SELECT * FROM stores; /* Must be here when i use insert all else its error*/

SELECT * FROM stores;
