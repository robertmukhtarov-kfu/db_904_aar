ALTER TABLE `company` 
ADD INDEX `fk__company_gamecenter_id_idx` (`game_center_id` ASC) VISIBLE;
;
ALTER TABLE `company` 
ADD CONSTRAINT `fk__company_gamecenter_id`
  FOREIGN KEY (`game_center_id`)
  REFERENCES `game_center` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;