ALTER TABLE `player` 
CHANGE COLUMN `team_id` `team_id` INT UNSIGNED NOT NULL ,
ADD INDEX `fk__player_team_id_idx` (`team_id` ASC) VISIBLE;
;
ALTER TABLE `player` 
ADD CONSTRAINT `fk__player_team_id`
  FOREIGN KEY (`team_id`)
  REFERENCES `team` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;