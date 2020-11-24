ALTER TABLE `player` 
DROP FOREIGN KEY `fk__player_team_id`;
ALTER TABLE `player` 
CHANGE COLUMN `team_id` `team_id` INT UNSIGNED NULL DEFAULT NULL ;
ALTER TABLE `player` 
ADD CONSTRAINT `fk__player_team_id`
  FOREIGN KEY (`team_id`)
  REFERENCES `team` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;