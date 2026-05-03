DELIMITER //

CREATE TRIGGER `trg_Products_BeforeUpdate`
BEFORE UPDATE ON `products`
FOR EACH ROW
BEGIN
    SET NEW.updated_at = NOW();
END //

DELIMITER ;

SELECT * FROM `products` WHERE id = 1;

UPDATE `products` SET `price` = 400.00 WHERE id = 1;