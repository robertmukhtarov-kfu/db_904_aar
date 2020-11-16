ALTER TABLE `company` 
DROP FOREIGN KEY `fk__company_gamecenter_id`;
ALTER TABLE `company` 
CHANGE COLUMN `game_center_id` `name` VARCHAR(45) NOT NULL ,
DROP INDEX `fk__company_gamecenter_id_idx` ;
;