
DROP TABLE really;
DROP TABLE stores;
DROP TABLE product;

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
  /* the SELECT Must be after the last insert when i use insert all else its error*/
SELECT * FROM stores;

SELECT * FROM stores;
SELECT * FROM stores;
SELECT * FROM stores;
SELECT * FROM stores;
SELECT * FROM stores;

SELECT max(store_id)
  FROM stores;


CREATE TABLE product (
  product_id Number(9) not NULL,
  name VARCHAR(50),
  product_cost Number(5,2),
  product_retail NUMBER(5,2),
  product_type VARCHAR(50),
  store_id NUMBER(9) NOT NULL,
  CONSTRAINT product_pk PRIMARY KEY (product_id)
);


INSERT
  INTO product (product_id, name, product_cost, product_retail, product_type, store_id)
  VALUES (1001, 'water', 2.25, 5.47, 'drink', 2);

INSERT
  INTO product (product_id, name, product_cost, product_retail, product_type, store_id)
  VALUES (1002, 'Coca', 2.25, 5.47, 'drink', 2);

INSERT
  INTO product (product_id, name, product_cost, product_retail, product_type, store_id)
  VALUES (1003, 'pizza', 2.25, 5.47, 'food', 2);

SELECT * FROM product;


CREATE TABLE really as
 SELECT product_COST, name, product_id, product_type, product_retail
  FROM product;

SELECT * FROM really;
