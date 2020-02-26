DROP FUNCTION IF EXISTS `backoffice`.`bin_to_uuid`;

DELIMITER $$
CREATE FUNCTION `bin_to_uuid`(id BINARY(16)) RETURNS VARCHAR(36)
    DETERMINISTIC
BEGIN
RETURN LOWER(CONCAT(
    SUBSTR(HEX(id), 1, 8), '-',
    SUBSTR(HEX(id), 9, 4), '-',
    SUBSTR(HEX(id), 13, 4), '-',
    SUBSTR(HEX(id), 17, 4), '-',
    SUBSTR(HEX(id), 21)
));
END$$

DELIMITER ;
;
