SELECT * FROM `products`
WHERE `category_id` = 1 AND `price` < 500;

SELECT * FROM `orders`
WHERE `status` IN ('shipped', 'completed');

SELECT * FROM `customers`
WHERE `email` LIKE '%@gmail.com';

SELECT * FROM `products`
ORDER BY `price` DESC;