SELECT `category_id`, COUNT(*) AS `total_products`
FROM `products`
GROUP BY `category_id`;

SELECT SUM(`price` * `stock`) AS `total_stock_value`
FROM `products`;

SELECT AVG(`price`) AS `average_price`,
       MIN(`price`) AS `min_price`,
       MAX(`price`) AS `max_price`
FROM `products`
WHERE `category_id` = 1;

SELECT c.name, SUM(oi.quantity * oi.price_at_sale) AS total_spent
FROM `customers` AS c
JOIN `orders` AS o ON c.id = o.customer_id
JOIN `order_items` AS oi ON o.id = oi.order_id
GROUP BY c.id, c.name
ORDER BY total_spent DESC

SELECT c.name, SUM(oi.quantity * oi.price_at_sale) AS total_spent
FROM `customers` AS c
JOIN `orders` AS o ON c.id = o.customer_id
JOIN `order_items` AS oi ON o.id = oi.order_id
GROUP BY c.id, c.name
HAVING total_spent > 1000
ORDER BY total_spent DESC

SELECT c.name AS customer_name, p.name AS product_name,
       oi.quantity, o.status
FROM `customers` AS c
INNER JOIN `orders` AS o ON c.id = o.customer_id
INNER JOIN `order_items` AS oi ON o.id = oi.order_id
INNER JOIN `products` AS p ON oi.product_id = p.id
WHERE o.status = 'completed'
ORDER BY c.name

SELECT c.name AS customer_name, o.id AS order_id
FROM `customers` AS c
LEFT JOIN `orders` AS o ON c.id = o.customer_id
ORDER BY c.name

SELECT p.name
FROM `products` AS p
WHERE p.id NOT IN (
    SELECT DISTINCT oi.product_id FROM `order_items` AS oi
)

SELECT c.name AS item_name, 'Customer' AS item_type
FROM `customers` AS c
UNION
SELECT cat.name AS item_name, 'Category' AS item_type
FROM `categories` AS cat
ORDER BY item_type, item_name