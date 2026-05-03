SELECT * FROM `products` WHERE `id` = 1;
START TRANSACTION;
UPDATE `products` SET `price` = 199.99 WHERE `id` = 1;
COMMIT;
SELECT * FROM `products` WHERE `id` = 1;