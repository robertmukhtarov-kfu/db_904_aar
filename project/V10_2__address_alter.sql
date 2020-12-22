ALTER TABLE `address` 
DROP FOREIGN KEY `fk_address_game_center_id`;
ALTER TABLE `address` 
DROP COLUMN `game_center_id`,
CHANGE COLUMN `id` `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
DROP INDEX `game_center_id_UNIQUE` ;
;