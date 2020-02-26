DROP FUNCTION IF EXISTS `backoffice`.`uuid_to_bin`;

DELIMITER $$
CREATE FUNCTION `uuid_to_bin`(uuid VARCHAR(36)) RETURNS BINARY(16)
    DETERMINISTIC
BEGIN
RETURN UNHEX(REPLACE(uuid, '-', ''));
END$$

DELIMITER ;
;
