SELECT * FROM `products` WHERE `id` = 2;
START TRANSACTION;
UPDATE `products` SET `price` = 9999.00 WHERE `id` = 2;
SELECT * FROM `products` WHERE `id` = 2;
ROLLBACK;
SELECT * FROM `products` WHERE `id` = 2;