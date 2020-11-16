ALTER TABLE `game_center` 
ADD COLUMN `company_id` INT UNSIGNED NOT NULL AFTER `phone_number`;
ALTER TABLE `game_center` 
ADD CONSTRAINT `fk_game_center_company_id`
  FOREIGN KEY (`company_id`)
  REFERENCES `company` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
