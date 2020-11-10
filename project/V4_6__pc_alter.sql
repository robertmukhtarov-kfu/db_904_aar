ALTER TABLE `gamecenter`.`pc` 
ADD INDEX `fk_pc_device_id_idx` (`device_id` ASC) VISIBLE;
;
ALTER TABLE `gamecenter`.`pc` 
ADD CONSTRAINT `fk_pc_device_id`
  FOREIGN KEY (`device_id`)
  REFERENCES `gamecenter`.`device` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
