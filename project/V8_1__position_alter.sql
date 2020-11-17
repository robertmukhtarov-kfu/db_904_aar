ALTER TABLE `position` 
DROP FOREIGN KEY `fk__position_player_id`;
ALTER TABLE `position` 
DROP COLUMN `player_id`,
DROP INDEX `player_id_UNIQUE` ;
;