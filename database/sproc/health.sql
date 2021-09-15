# STORED PROCEDURES FOR HEALTH

USE `health_db`;
DROP procedure IF EXISTS `postHealth`;

DELIMITER $$
USE `health_db`$$
CREATE PROCEDURE `postHealth`(IN `input_name` VARCHAR(255), `id` INT)
BEGIN

INSERT INTO `health_table` (`log_id`, `name`, `time`) VALUES (`id` `input_name`, now());

END$$

DELIMITER ;