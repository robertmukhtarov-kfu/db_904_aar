ALTER TABLE `gamecenter`.`mouse` 
ADD INDEX `fk_mouse_accessory_item_id_idx` (`accessory_item_id` ASC) INVISIBLE;
;
ALTER TABLE `gamecenter`.`mouse` 
ADD CONSTRAINT `fk_mouse_accessory_item_id`
  FOREIGN KEY (`accessory_item_id`)
  REFERENCES `gamecenter`.`accessory_item` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
