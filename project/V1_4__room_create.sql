CREATE TABLE `room` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` INT UNSIGNED NOT NULL,
  `platform_id` INT UNSIGNED NOT NULL,
  `capacity` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`));