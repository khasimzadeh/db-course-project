INSERT INTO `customers` (`name`, `email`, `password_hash`)
VALUES ('Victor Petrov', 'victor.petrov@gmail.com', 'hash_new1');
SELECT * FROM `customers`;

INSERT INTO `products` (`category_id`, `name`, `description`, `price`, `stock`)
VALUES (1, 'Gaming Keyboard', 'Mechanical gaming keyboard', 149.99, 45);
SELECT * FROM `products`;

UPDATE `products`
SET `price` = 27.99
WHERE `name` = 'Wireless Mouse';
SELECT * FROM `products`;

DELETE FROM `order_items`
WHERE `order_id` = 2 AND `product_id` = 3;
SELECT * FROM `order_items`;