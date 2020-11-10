ALTER TABLE `gamecenter`.`device` 
ADD INDEX `fk_device_platform_id_idx` (`platform_id` ASC) VISIBLE;
;
ALTER TABLE `gamecenter`.`device` 
ADD CONSTRAINT `fk_device_platform_id`
  FOREIGN KEY (`platform_id`)
  REFERENCES `gamecenter`.`platform` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
