ALTER TABLE `gamecenter`.`vr_headset` 
ADD INDEX `fk_vr_headset_device_id_idx` (`device_id` ASC) VISIBLE;
;
ALTER TABLE `gamecenter`.`vr_headset` 
ADD CONSTRAINT `fk_vr_headset_device_id`
  FOREIGN KEY (`device_id`)
  REFERENCES `gamecenter`.`device` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
