CREATE TABLE `order` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `player_id` INT UNSIGNED NOT NULL,
  `positions` INT UNSIGNED NOT NULL,
  `price` INT UNSIGNED NOT NULL,
  `tariff_id` INT UNSIGNED NOT NULL,
  `discount_id` INT UNSIGNED NULL,
  PRIMARY KEY (`id`),
  INDEX `player_id_UNIQUE` (`player_id` ASC) VISIBLE);