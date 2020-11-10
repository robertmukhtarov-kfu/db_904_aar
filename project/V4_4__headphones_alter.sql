ALTER TABLE `gamecenter`.`headphones` 
ADD INDEX `fk_headphones_accessory_item_id_idx` (`accessory_item_id` ASC) VISIBLE;
;
ALTER TABLE `gamecenter`.`headphones` 
ADD CONSTRAINT `fk_headphones_accessory_item_id`
  FOREIGN KEY (`accessory_item_id`)
  REFERENCES `gamecenter`.`accessory_item` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
