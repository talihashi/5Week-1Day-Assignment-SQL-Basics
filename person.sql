CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    age INTEGER,
    height FLOAT,
    city VARCHAR(30),
    favorite_color VARCHAR(30)
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Jordan', 32, 166.5, 'Lehi', 'Red'), ('Justin', 29, 172.3, 'Lehi', 'Blue'), ('Travis', 27, 174.6, 'Lehi', 'Purple'), ('Ashton', 24, 177.2, 'Austin', 'Orange'), ('Allyssa', 20, 168.4, 'San Antonio', 'Pink');

SELECT name, height
FROM person
GROUP BY name, height
ORDER BY height DESC;

SELECT name, height
FROM person
GROUP BY name, height
ORDER BY height ASC;

SELECT name, age
FROM person
GROUP BY name, age
ORDER BY age DESC;

SELECT * FROM person WHERE age > 20;
SELECT * FROM person WHERE age = 18;
SELECT * FROM person WHERE age > 20 AND age > 30;
SELECT * FROM person WHERE age != 27;

SELECT * FROM person WHERE favorite_color != 'Red';
SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';
SELECT * FROM person WHERE favorite_color = 'Orange' AND favorite_color = 'Green';
SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green', 'Blue');
SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple');