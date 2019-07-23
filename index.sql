CREATE TABLE person ( 
  person_id serial PRIMARY key, 
  name varchar(200), 
  age integer, 
  height integer, 
  city varchar(200), 
  favorite_color varchar(200) )

INSERT INTO person (name, age, height, city, favorite_color) 
  VALUES ('Peyton Matussevich', 21, 187 , 'Jeminay', 'Indigo');
INSERT INTO person (name, age, height, city, favorite_color) 
  VALUES ('Berty Dumphry', 26, 171, 'Nong Don', 'Violet');
INSERT INTO person (name, age, height, city, favorite_color) 
  VALUES ('Archambault Ivchenko', 53, 166, 'Ban Huai Thalaeng', 'Green');
INSERT INTO person (name, age, height, city, favorite_color) 
  VALUES ('Tina Defew', 37, 164, 'Beigong', 'Orange');
INSERT INTO person (name, age, height, city, favorite_color) 
  VALUES ('Jason Krull', 47, 174, 'Springfield', 'Blue');
INSERT INTO person (name, age, height, city, favorite_color) 
  VALUES ('Cherice Orbell', 55, 163, 'Norashen', 'Puce');
INSERT INTO person (name, age, height, city, favorite_color) 
  VALUES ('Frieda Blaycock', 26, 154, 'Limoges', 'Pink');
INSERT INTO person (name, age, height, city, favorite_color) 
  VALUES ('Jessica Sanchez',	18,	158, 'Atlanta', 'Purple');
INSERT INTO person (name, age, height, city, favorite_color) 
  VALUES ('Meryl Yearnes', 27, 151, 'Mineralnye Vody', 'Khaki');
INSERT INTO person (name, age, height, city, favorite_color) 
  VALUES ('Roselia Maleck', 19, 183, 'Zonghan', 'Indigo');
INSERT INTO person (name, age, height, city, favorite_color) 
  VALUES ('Patti Davidowich', 61, 178, 'Tianning', 'Fuscia');
INSERT INTO person (name, age, height, city, favorite_color) 
  VALUES ('Suzi Dunstone', 43, 173, 'Unidad', 'Yellow');

SELECT person 
  ORDER BY height ASC

SELECT person 
  ORDER BY height DESC

SELECT person 
  ORDER BY age ASC

SELECT *
FROM person
WHERE age > 20

SELECT *
FROM person
WHERE age = 18

SELECT * 
FROM person
WHERE age > 20 OR age < 30

SELECT * 
FROM person
WHERE age != 27

SELECT * 
FROM person
WHERE favorite_color != 'Red'

SELECT * 
FROM person
WHERE favorite_color != 'Red' or favorite_color != 'Blue'

SELECT * 
FROM person
WHERE favorite_color != 'Orange' and favorite_color != 'Green'

SELECT * 
FROM person
WHERE favorite_color != 'Orange' and favorite_color != 'Green'

SELECT * 
FROM person
WHERE favorite_color in ( 'orange', 'green', 'blue' );

SELECT * 
FROM person
WHERE favorite_color in ( 'yellow', 'purple' );

CREATE TABLE  orders ( order_id SERIAL PRIMARY KEY, person_id INTEGER, product_name VARCHAR(200), product_price NUMERIC, quantity INTEGER)

INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 0, 'Product', 12.50, 3 );
INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 1, 'Product', 22.75, 2 );
INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 1, 'Product', 16.00, 1 );
INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 2, 'Product', 28.50, 2 );
INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 0, 'Product', 65.50, 1 );
INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 2, 'Product', 34.00, 1 );

SELECT * FROM orders

SELECT sum(orders) FROM orders

SELECT sum(product_price * quantity) FROM orders

SELECT sum(person_id * quantity) FROM orders WHERE person_id = 0;

SELECT * FROM artist ORDER BY name DESC LIMIT 10;

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

SELECT * FROM artist WHERE name LIKE 'Black%';

SELECT * FROM artist WHERE name LIKE '%Black%';

SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA'

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice WHERE total > 5;

SELECT * FROM invoice WHERE total < 5;

SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');

SELECT avg(total) FROM invoice

SELECT sum(total) FROM invoice


/*/  sql-mini black diamond  /*/

SELECT avg(milliseconds) FROM tracks 

SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA'

SELECT * FROM artist ORDER BY name ASC LIMIT 5 OFFSET 15;


/*/ Excersize /*/

DELETE COLUMN column_name

RENAME COLUMN person TO people /* rename column */

ALTER TABLE people ADD COLUMN shoe_size INT /* add column to table */



-- Glossary --

DELETE FROM table_name WHERE condition