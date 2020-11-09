ALTER TABLE `admin` 
ADD INDEX `fk__admin_game_center_id_idx` (`game_center_id` ASC) VISIBLE;
;
ALTER TABLE `admin` 
ADD CONSTRAINT `fk__admin_game_center_id`
  FOREIGN KEY (`game_center_id`)
  REFERENCES `game_center` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;