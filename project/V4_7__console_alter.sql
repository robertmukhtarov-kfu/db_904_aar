ALTER TABLE `gamecenter`.`console` 
ADD INDEX `fk_console_device_id_idx` (`device_id` ASC) VISIBLE;
;
ALTER TABLE `gamecenter`.`console` 
ADD CONSTRAINT `fk_console_device_id`
  FOREIGN KEY (`device_id`)
  REFERENCES `gamecenter`.`device` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
