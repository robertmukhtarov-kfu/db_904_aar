ALTER TABLE `gamecenter`.`room` 
ADD COLUMN `game_center_id` INT UNSIGNED NOT NULL AFTER `id`,
ADD INDEX `fk__room_game_center_id_idx` (`game_center_id` ASC) VISIBLE;
;
ALTER TABLE `gamecenter`.`room` 
ADD CONSTRAINT `fk__room_game_center_id`
  FOREIGN KEY (`game_center_id`)
  REFERENCES `gamecenter`.`game_center` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;