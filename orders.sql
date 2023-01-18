CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY,
  person_id INT,
  product_name VARCHAR(30),
  product_price FLOAT,
  quantity INT
)

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'Taco', 6.99, 3), (2, 'Hamburger', 4.99, 2), (1, 'Mountain Dew', 2.33, 1), (3, 'Grill Cheese', 2, 1), (4, 'Ice cream shake', 4.20, 3);

SELECT * FROM orders;
SELECT SUM(quantity) FROM orders;
SELECT SUM(product_price) FROM orders;

SELECT person_id, SUM(product_price)
FROM orders
GROUP BY person_id;

