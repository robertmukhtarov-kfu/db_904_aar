CREATE TABLE `discount` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `price_cut` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `price_cut_UNIQUE` (`price_cut` ASC) VISIBLE);