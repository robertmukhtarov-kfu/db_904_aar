CREATE TABLE `accessory_items` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `accessory_id` INT UNSIGNED NOT NULL,
  `position_id` INT UNSIGNED NOT NULL,
  `condition` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`));
