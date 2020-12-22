ALTER TABLE `device` 
ADD COLUMN `accessory_item_id` INT(10) UNSIGNED NOT NULL AFTER `condition`,
ADD INDEX `fk_device_accessory_item_id_idx` (`accessory_item_id` ASC) VISIBLE;
;

ALTER TABLE `device` 
DROP COLUMN `accessory_item_id`,
DROP INDEX `fk_device_accessory_item_id_idx` ;
;