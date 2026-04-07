USE embroidery_db;

-- 1. CUSTOMERS
INSERT INTO customers (full_name, email, phone, address)
VALUES
('John Kamau', 'john.kamau@email.com', '01761234567', 'Berlin, Germany'),
('Mary Wanjiku', 'mary.wanjiku@email.com', '01769876543', 'Potsdam, Germany'),
('David Otieno', 'david.otieno@email.com', '01511222333', 'Hamburg, Germany'),
('Sarah Njeri', 'sarah.njeri@email.com', '01633445566', 'Leipzig, Germany');

-- 2. CATEGORIES
INSERT INTO categories (category_name)
VALUES
('School Uniforms'),
('Corporate Wear'),
('Sportswear'),
('Accessories');

-- 3. PRODUCTS
INSERT INTO products (category_id, product_name, description, base_price, stock_quantity)
VALUES
(1, 'School Sweater', 'Navy blue school sweater with embroidery option', 25.00, 50),
(1, 'School Shirt', 'White cotton school shirt', 15.00, 100),
(2, 'Branded Polo Shirt', 'Corporate polo shirt with logo embroidery', 20.00, 70),
(3, 'Sports Hoodie', 'Custom sports hoodie', 35.00, 40),
(4, 'Embroidered Cap', 'Adjustable cap with embroidered logo', 12.00, 80);

-- 4. ORDERS
INSERT INTO orders (customer_id, order_date, status, total_amount, delivery_method)
VALUES
(1, '2026-04-01', 'Pending', 65.00, 'Delivery'),
(2, '2026-04-02', 'Completed', 40.00, 'Pickup'),
(3, '2026-04-03', 'Processing', 70.00, 'Delivery'),
(1, '2026-04-04', 'Completed', 24.00, 'Pickup');

-- 5. ORDER ITEMS
INSERT INTO order_items (order_id, product_id, quantity, unit_price, subtotal)
VALUES
(1, 1, 2, 25.00, 50.00),
(1, 5, 1, 15.00, 15.00),
(2, 3, 2, 20.00, 40.00),
(3, 4, 2, 35.00, 70.00),
(4, 5, 2, 12.00, 24.00);

-- 6. PAYMENTS
INSERT INTO payments (order_id, payment_date, amount, payment_method, payment_status)
VALUES
(1, '2026-04-01', 30.00, 'M-Pesa', 'Partial'),
(2, '2026-04-02', 40.00, 'Cash', 'Paid'),
(3, '2026-04-03', 70.00, 'Bank Transfer', 'Paid'),
(4, '2026-04-04', 24.00, 'Cash', 'Paid');


ADDTION OF MORE DATA
-- 1.  CUSTOMERS
INSERT INTO customers (full_name, email, phone, address)
VALUES
('Kevin Mwangi', 'kevin@email.com', '01761111111', 'Berlin'),
('Lucy Achieng', 'lucy@email.com', '01762222222', 'Berlin'),
('Brian Kiptoo', 'brian@email.com', '01763333333', 'Munich'),
('Grace Atieno', 'grace@email.com', '01764444444', 'Frankfurt'),
('Daniel Mutua', 'daniel@email.com', '01765555555', 'Cologne');

--2. PRODUCTS
INSERT INTO products (category_id, product_name, description, base_price, stock_quantity)
VALUES
(2, 'Corporate Jacket', 'Formal jacket with embroidery', 60.00, 30),
(3, 'Sports T-shirt', 'Lightweight sports shirt', 18.00, 120),
(4, 'Embroidered Bag', 'Custom logo bag', 22.00, 50);

--3. ORDERS
INSERT INTO orders (customer_id, order_date, status, total_amount, delivery_method)
VALUES
(5, '2026-04-05', 'Pending', 60.00, 'Delivery'),
(6, '2026-04-06', 'Completed', 36.00, 'Pickup'),
(7, '2026-04-06', 'Processing', 18.00, 'Delivery'),
(8, '2026-04-07', 'Completed', 22.00, 'Pickup'),
(9, '2026-04-07', 'Pending', 120.00, 'Delivery');

--4. ORDER_ITEMS
INSERT INTO order_items (order_id, product_id, quantity, unit_price, subtotal)
VALUES
(5, 6, 1, 60.00, 60.00),
(6, 7, 2, 18.00, 36.00),
(7, 7, 1, 18.00, 18.00),
(8, 8, 1, 22.00, 22.00),
(9, 6, 2, 60.00, 120.00);

--5. PAYMENTS
INSERT INTO payments (order_id, payment_date, amount, payment_method, payment_status)
VALUES
(5, '2026-04-05', 20.00, 'Cash', 'Partial'),
(6, '2026-04-06', 36.00, 'M-Pesa', 'Paid'),
(7, '2026-04-06', 18.00, 'Bank Transfer', 'Paid'),
(8, '2026-04-07', 22.00, 'Cash', 'Paid'),
(9, '2026-04-07', 50.00, 'M-Pesa', 'Partial');
