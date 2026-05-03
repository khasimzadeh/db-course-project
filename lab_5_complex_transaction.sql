START TRANSACTION;
INSERT INTO `orders` (`customer_id`, `status`) VALUES (1, 'pending');
SET @new_order_id = LAST_INSERT_ID();
INSERT INTO `order_items` (`order_id`, `product_id`, `quantity`, `price_at_sale`)
VALUES (@new_order_id, 1, 2, 149.99);
UPDATE `products` SET `stock` = `stock` - 2 WHERE `id` = 1;
COMMIT;
SELECT * FROM `orders` WHERE `id` = @new_order_id;
SELECT * FROM `order_items` WHERE `order_id` = @new_order_id;
SELECT `id`, `name`, `stock` FROM `products` WHERE `id` = 1;