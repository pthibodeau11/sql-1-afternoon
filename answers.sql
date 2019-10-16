-- ////////////////////////////////////////////////////

-- Table - person

-- 1
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL,
    height INTEGER NOT NULL,
    city VARCHAR(50) NOT NULL,
    favorite_color VARCHAR(50) NOT NULL
)

-- 2

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Pat', 32, 188, 'Emporia', 'green'),
('Jess', 32, 157, 'Houston', 'red'),
('June', 4, 112, 'Dallas', 'pink'),
('Beck', 1, 76, 'Dallas', 'blue'),
('Buster', 11, 107, 'Red Oak', 'brown');

--3

SELECT * FROM person
ORDER BY height DESC

--4

SELECT * FROM person
ORDER BY height ASC

--5

SELECT * FROM person
ORDER BY age DESC

--6

SELECT * FROM person
WHERE age > 20

--7

SELECT * FROM person
WHERE age = 18

-- 8

SELECT * FROM person
WHERE age < 20 OR age > 30

--9

SELECT * FROM person
WHERE age != 27

--10

SELECT * FROM person
WHERE favorite_color != 'red'

--11

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue'

--12 

SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green'

--13

SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue')

--14

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple')


-- ////////////////////////////////////////////////////

-- Table - orders

--1

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER NOT NULL,
  product_name VARCHAR(200) NOT NULL,
  product_price NUMERIC NOT NULL,
  quantity INTEGER NOT NULL
)

--2 

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(101, 'Cheetos', 2.99, 2),
(101, '6-pack Beer', 9.99, 1),
(101, 'Pizza', 4.99, 1),
(201, 'Oreos', 3.99, 5),
(201, 'Gummy Bears', 1.99, 4);

--3 

SELECT * FROM orders

--4

SELECT sum(quantity) FROM orders

--5

SELECT sum(product_price * quantity) FROM orders

--6

SELECT sum(product_price * quantity) 
FROM orders
WHERE person_id = 201

-- ////////////////////////////////////////////////////

-- Table - artist

--1

INSERT INTO artist
(name)
VALUES
('Childish Gambino'),
('The Avett Brothers'),
('Bon Iver');

--2

SELECT * FROM artist 
ORDER BY name DESC
LIMIT 10

--3 

SELECT * FROM artist 
ORDER BY name ASC
LIMIT 5

--4 

SELECT * FROM artist 
WHERE name LIKE 'Black%'

--5

SELECT * FROM artist 
WHERE name LIKE '%Black%'

-- ////////////////////////////////////////////////////

-- Table - employee

--1 

SELECT first_name, last_name 
FROM employee
WHERE city = 'Calgary' 

--2 

SELECT MAX(birth_date) from employee

--3

SELECT MIN(birth_date) from employee

--4

SELECT * 
FROM employee
WHERE reports_to = 2

--5

SELECT count(*) 
FROM employee
WHERE city = 'Lethbridge'

-- ////////////////////////////////////////////////////

-- Table - invoice

--1

SELECT count(*)
FROM invoice
WHERE billing_country = 'USA'

--2 

SELECT MAX(total)
FROM invoice

--3

SELECT MIN(total)
FROM invoice

--4

SELECT *
FROM invoice
WHERE total > 5

--5

SELECT count(*)
FROM invoice
WHERE total < 5

--6

SELECT count(*)
FROM invoice
WHERE billing_state 
IN ('CA', 'TX', 'AZ')

--7

SELECT avg(total)
FROM invoice

--8

SELECT sum(total)
FROM invoice
