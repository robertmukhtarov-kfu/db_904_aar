CREATE TABLE `booking` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `position_id` INT UNSIGNED NOT NULL,
  `order_id` INT UNSIGNED NOT NULL,
  `datetime_start` DATETIME NOT NULL,
  `datetime_finish` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk__booking_position_id_idx` (`position_id` ASC) VISIBLE,
  INDEX `fk__booking_order_id_idx` (`order_id` ASC) VISIBLE,
  CONSTRAINT `fk__booking_position_id`
    FOREIGN KEY (`position_id`)
    REFERENCES `position` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk__booking_order_id`
    FOREIGN KEY (`order_id`)
    REFERENCES `order` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);