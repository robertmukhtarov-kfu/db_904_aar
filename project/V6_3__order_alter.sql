ALTER TABLE `order` 
ADD INDEX `fk_order_tariff_id_idx` (`tariff_id` ASC) VISIBLE,
ADD INDEX `fk_order_discount_id_idx` (`discount_id` ASC) VISIBLE;
;
ALTER TABLE `order` 
ADD CONSTRAINT `fk_order_player_id`
  FOREIGN KEY (`player_id`)
  REFERENCES `player` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_order_tariff_id`
  FOREIGN KEY (`tariff_id`)
  REFERENCES `tariff` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_order_discount_id`
  FOREIGN KEY (`discount_id`)
  REFERENCES `discount` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
