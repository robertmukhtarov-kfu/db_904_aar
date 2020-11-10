ALTER TABLE `gamecenter`.`monitor` 
ADD INDEX `fk_monitor_accessory_item_id_idx` (`accessory_item_id` ASC) INVISIBLE;
;
ALTER TABLE `gamecenter`.`monitor` 
ADD CONSTRAINT `fk_monitor_accessory_item_id`
  FOREIGN KEY (`accessory_item_id`)
  REFERENCES `gamecenter`.`accessory_item` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
