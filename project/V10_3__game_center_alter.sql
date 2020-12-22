ALTER TABLE `game_center` 
ADD COLUMN `address_id` INT UNSIGNED NOT NULL AFTER `phone_number`,
ADD INDEX `fk_game_center_address_id_idx` (`address_id` ASC) VISIBLE;
;
ALTER TABLE `game_center` 
ADD CONSTRAINT `fk_game_center_address_id`
  FOREIGN KEY (`address_id`)
  REFERENCES `address` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;