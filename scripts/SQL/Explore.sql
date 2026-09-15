USE magist;


SELECT product_category_name,
COUNT(*) AS product_by_name
FROM products
GROUP BY product_category_name
ORDER BY product_by_name DESC;


SELECT * FROM customers;
SELECT * FROM geo;
SELECT * FROM order_items;
SELECT * FROM order_payments;
SELECT * FROM order_reviews;
SELECT * FROM orders;
SELECT * FROM product_category_name_translation;
SELECT * FROM products;
SELECT * FROM sellers;