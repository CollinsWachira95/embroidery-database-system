USE embroidery.db;

#To confirm if all tables were created.
SHOW TABLES;

#To confirm if data is present.
SELECT * FROM customers;
SELECT * FROM categories;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;
SELECT * FROM payments;

#To confirm each order is assigned to its respective customer.
SELECT o.order_id, c.full_name, o.order_date, o.status, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

#To confirm the number of items ordered align with our stock.
SELECT oi.order_item_id, p.product_name, oi.quantity, oi.subtotal
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;

#To confirm each payment with its respective customer.
SELECT p.payment_id, c.full_name, p.amount, p.payment_method, p.payment_status
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id;

#To show total revenue
SELECT SUM(amount) AS total_revenue
FROM payments
WHERE payment_status = 'Paid';

#To show how many order done by a speficic customer.
SELECT c.full_name, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.full_name;

#Update Query
UPDATE orders
SET status = 'Completed'
WHERE order_id = 1;

SELECT * FROM orders WHERE order_id = 1;
