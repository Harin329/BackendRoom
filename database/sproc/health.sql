# STORED PROCEDURES FOR HEALTH

USE `health_db`;
DROP procedure IF EXISTS `postHealth`;

DELIMITER $$
USE `health_db`$$
CREATE PROCEDURE `postHealth`(IN `name` VARCHAR(255))
BEGIN

INSERT INTO `health_table` (`name`, `time`) VALUES (`name`, now());

END$$

DELIMITER ;