INSERT INTO customers
(customer_id, customer_name, email, city, registration_date)
VALUES
(1, 'Ali Raza', 'ali@example.com', 'Multan', '2025-01-15'),
(2, 'Ayesha Khan', 'ayesha@example.com', 'Lahore', '2025-01-20'),
(3, 'Hassan Ahmed', 'hassan@example.com', 'Karachi', '2025-02-05'),
(4, 'Fatima Noor', 'fatima@example.com', 'Islamabad', '2025-02-18'),
(5, 'Usman Malik', 'usman@example.com', 'Multan', '2025-03-01'),
(6, 'Sara Ali', 'sara@example.com', 'Lahore', '2025-03-12'),
(7, 'Hamza Tariq', 'hamza@example.com', 'Faisalabad', '2025-03-20'),
(8, 'Zainab Iqbal', 'zainab@example.com', 'Karachi', '2025-04-02'),
(9, 'Bilal Shah', 'bilal@example.com', 'Rawalpindi', '2025-04-15'),
(10, 'Maha Aslam', 'maha@example.com', 'Multan', '2025-05-01');
INSERT INTO categories
(category_id, category_name)
VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home Appliances'),
(4, 'Beauty'),
(5, 'Books');
INSERT INTO products
(product_id, product_name, category_id, price, stock_quantity)
VALUES
(101, 'Wireless Headphones', 1, 4500.00, 40),
(102, 'Smart Watch', 1, 7500.00, 25),
(103, 'Bluetooth Speaker', 1, 3200.00, 30),
(104, 'Cotton Shirt', 2, 2500.00, 60),
(105, 'Denim Jeans', 2, 4000.00, 45),
(106, 'Hair Dryer', 3, 5500.00, 20),
(107, 'Electric Kettle', 3, 3500.00, 35),
(108, 'Face Wash', 4, 1200.00, 80),
(109, 'Skin Care Kit', 4, 3000.00, 50),
(110, 'Python Programming Book', 5, 2200.00, 40),
(111, 'Database Systems Book', 5, 2800.00, 35);
INSERT INTO orders
(order_id, customer_id, order_date, order_status)
VALUES
(1001, 1, '2025-05-03', 'Completed'),
(1002, 2, '2025-05-05', 'Completed'),
(1003, 3, '2025-05-08', 'Completed'),
(1004, 1, '2025-05-12', 'Completed'),
(1005, 4, '2025-05-15', 'Cancelled'),
(1006, 5, '2025-05-18', 'Completed'),
(1007, 6, '2025-05-22', 'Completed'),
(1008, 7, '2025-06-01', 'Completed'),
(1009, 8, '2025-06-04', 'Completed'),
(1010, 9, '2025-06-08', 'Completed'),
(1011, 10, '2025-06-12', 'Completed'),
(1012, 2, '2025-06-15', 'Completed'),
(1013, 3, '2025-06-18', 'Cancelled'),
(1014, 5, '2025-06-20', 'Completed'),
(1015, 1, '2025-06-25', 'Completed');
INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 1001, 101, 2, 4500.00),
(2, 1001, 108, 1, 1200.00),

(3, 1002, 102, 1, 7500.00),
(4, 1002, 104, 2, 2500.00),

(5, 1003, 103, 2, 3200.00),
(6, 1003, 110, 1, 2200.00),

(7, 1004, 105, 1, 4000.00),
(8, 1004, 109, 1, 3000.00),

(9, 1005, 106, 1, 5500.00),

(10, 1006, 107, 2, 3500.00),
(11, 1006, 108, 2, 1200.00),

(12, 1007, 101, 1, 4500.00),
(13, 1007, 111, 1, 2800.00),

(14, 1008, 104, 3, 2500.00),
(15, 1008, 108, 2, 1200.00),

(16, 1009, 102, 1, 7500.00),
(17, 1009, 109, 2, 3000.00),

(18, 1010, 103, 1, 3200.00),
(19, 1010, 105, 2, 4000.00),

(20, 1011, 110, 2, 2200.00),
(21, 1011, 111, 1, 2800.00),

(22, 1012, 101, 1, 4500.00),
(23, 1012, 107, 1, 3500.00),

(24, 1013, 106, 1, 5500.00),

(25, 1014, 109, 1, 3000.00),
(26, 1014, 108, 3, 1200.00),

(27, 1015, 102, 1, 7500.00),
(28, 1015, 105, 1, 4000.00);
INSERT INTO payments
(payment_id, order_id, payment_date, payment_method, payment_status)
VALUES
(501, 1001, '2025-05-03', 'Card', 'Paid'),
(502, 1002, '2025-05-05', 'Cash on Delivery', 'Paid'),
(503, 1003, '2025-05-08', 'Card', 'Paid'),
(504, 1004, '2025-05-12', 'Bank Transfer', 'Paid'),
(505, 1005, '2025-05-15', 'Card', 'Refunded'),
(506, 1006, '2025-05-18', 'Cash on Delivery', 'Paid'),
(507, 1007, '2025-05-22', 'Card', 'Paid'),
(508, 1008, '2025-06-01', 'Cash on Delivery', 'Paid'),
(509, 1009, '2025-06-04', 'Card', 'Paid'),
(510, 1010, '2025-06-08', 'Bank Transfer', 'Paid'),
(511, 1011, '2025-06-12', 'Card', 'Paid'),
(512, 1012, '2025-06-15', 'Cash on Delivery', 'Paid'),
(513, 1013, '2025-06-18', 'Card', 'Refunded'),
(514, 1014, '2025-06-20', 'Card', 'Paid'),
(515, 1015, '2025-06-25', 'Bank Transfer', 'Paid');