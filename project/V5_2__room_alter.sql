ALTER TABLE `room` 
ADD INDEX `fk__room_admin_id_idx` (`admin_id` ASC) VISIBLE,
ADD INDEX `fk__room_platform_id_idx` (`platform_id` ASC) VISIBLE;
;
ALTER TABLE `room` 
ADD CONSTRAINT `fk__room_admin_id`
  FOREIGN KEY (`admin_id`)
  REFERENCES `admin` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk__room_platform_id`
  FOREIGN KEY (`platform_id`)
  REFERENCES `platform` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;