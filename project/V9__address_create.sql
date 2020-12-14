CREATE TABLE `address` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `game_center_id` INT UNSIGNED NOT NULL,
  `city` VARCHAR(40) NOT NULL,
  `street` VARCHAR(100) NOT NULL,
  `house` VARCHAR(10) NOT NULL,
  `latitude` FLOAT(10,6) NOT NULL,
  `longitude` FLOAT(10,6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `game_center_id_UNIQUE` (`game_center_id` ASC) VISIBLE,
  CONSTRAINT `fk_address_game_center_id`
    FOREIGN KEY (`game_center_id`)
    REFERENCES `game_center` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);