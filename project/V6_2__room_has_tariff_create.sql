CREATE TABLE `room_has_tariff` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `room_id` INT UNSIGNED NOT NULL,
  `tariff_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_room_has_tariff_room_id_idx` (`room_id` ASC) VISIBLE,
  INDEX `fk_room_has_tariff_tariff_id_idx` (`tariff_id` ASC) VISIBLE,
  CONSTRAINT `fk_room_has_tariff_room_id`
    FOREIGN KEY (`room_id`)
    REFERENCES `room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_room_has_tariff_tariff_id`
    FOREIGN KEY (`tariff_id`)
    REFERENCES `tariff` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);