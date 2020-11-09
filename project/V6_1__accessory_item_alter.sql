ALTER TABLE `accessory_item` 
ADD INDEX `fk_accessory_item_position_id_idx` (`position_id` ASC) VISIBLE;
;
ALTER TABLE `accessory_item` 
ADD CONSTRAINT `fk_accessory_item_accessory_id`
  FOREIGN KEY (`id`)
  REFERENCES `accessory` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_accessory_item_position_id`
  FOREIGN KEY (`position_id`)
  REFERENCES `position` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;