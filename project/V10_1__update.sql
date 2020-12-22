ALTER TABLE `accessory_item` 
DROP FOREIGN KEY `fk_accessory_item_position_id`;

ALTER TABLE `booking` 
DROP FOREIGN KEY `fk__booking_order_id`;

ALTER TABLE `device` 
DROP FOREIGN KEY `fk_device_platform_id`;

ALTER TABLE `order` 
DROP FOREIGN KEY `fk_order_tariff_id`;

ALTER TABLE `room` 
DROP FOREIGN KEY `fk__room_platform_id`;

ALTER TABLE `accessory_item` 
DROP COLUMN `position_id`,
ADD COLUMN `name` VARCHAR(45) NOT NULL AFTER `condition`,
DROP INDEX `fk_accessory_item_position_id_idx` ;
;

ALTER TABLE `admin` 
DROP COLUMN `surname`,
DROP COLUMN `phone_number`,
DROP COLUMN `email`,
DROP COLUMN `name`,
ADD COLUMN `person_id` INT(10) UNSIGNED NOT NULL AFTER `game_center_id`,
ADD INDEX `fk_admin_person1_idx` (`person_id` ASC) VISIBLE;
;

ALTER TABLE `booking` 
DROP COLUMN `datetime_finish`,
DROP COLUMN `order_id`,
ADD COLUMN `tariff_id` INT(10) UNSIGNED NOT NULL AFTER `datetime_start`,
ADD INDEX `fk_booking_tariff1_idx` (`tariff_id` ASC) VISIBLE,
DROP INDEX `fk__booking_order_id_idx` ;
;

ALTER TABLE `console` 
DROP COLUMN `price`;

ALTER TABLE `controller` 
DROP COLUMN `price`,
DROP COLUMN `name`,
ADD COLUMN `model` VARCHAR(10) NOT NULL AFTER `accessory_item_id`, RENAME TO  `gamepad` ;

ALTER TABLE `device` 
ADD COLUMN `position_id` INT(10) UNSIGNED NOT NULL AFTER `condition`,
CHANGE COLUMN `platform_id` `platform_id` INT(10) UNSIGNED NOT NULL AFTER `position_id`,
ADD INDEX `fk_device_position_id_idx` (`position_id` ASC) VISIBLE,
ADD INDEX `fk_device_platform1_idx` (`platform_id` ASC) VISIBLE,
DROP INDEX `fk_device_platform_id_idx` ;
;

ALTER TABLE `headphones` 
DROP COLUMN `price`,
DROP COLUMN `name`;

ALTER TABLE `keyboard` 
DROP COLUMN `price`,
DROP COLUMN `name`;

ALTER TABLE `monitor` 
DROP COLUMN `price`,
DROP COLUMN `name`;

ALTER TABLE `mouse` 
DROP COLUMN `price`,
DROP COLUMN `name`,
ADD COLUMN `dpi` INT(10) UNSIGNED NOT NULL AFTER `accessory_item_id`;

ALTER TABLE `order` 
DROP COLUMN `tariff_id`,
DROP COLUMN `price`,
ADD COLUMN `booking_id` INT(10) UNSIGNED NOT NULL AFTER `discount_id`,
ADD INDEX `fk_booking_id_idx` (`booking_id` ASC) VISIBLE,
DROP INDEX `fk_order_tariff_id_idx` ;
;

ALTER TABLE `pc` 
DROP COLUMN `price`,
DROP COLUMN `gpu`,
DROP COLUMN `cpu`;

ALTER TABLE `platform` 
ADD COLUMN `price` INT(10) UNSIGNED NOT NULL AFTER `name`;

ALTER TABLE `player` 
DROP COLUMN `phone_number`,
DROP COLUMN `email`,
DROP COLUMN `surname`,
DROP COLUMN `name`,
ADD COLUMN `person_id` INT(10) UNSIGNED NOT NULL AFTER `balance`,
ADD INDEX `fk_player_person1_idx` (`person_id` ASC) VISIBLE,
DROP INDEX `email_UNIQUE` ;
;

ALTER TABLE `room` 
DROP COLUMN `platform_id`,
DROP INDEX `fk__room_platform_id_idx` ;
;

ALTER TABLE `team` 
DROP COLUMN `player_count`;

ALTER TABLE `vr_headset` 
DROP COLUMN `price`;

CREATE TABLE `device_has_accessory_item` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `device_id` INT(10) UNSIGNED NOT NULL,
  `accessory_item_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `device_has_accessory_item_device_id_idx` (`device_id` ASC) VISIBLE,
  INDEX `device_has_accessory_item_accessory_item_id_idx` (`accessory_item_id` ASC) VISIBLE,
  CONSTRAINT `device_has_accessory_item_device_id`
    FOREIGN KEY (`device_id`)
    REFERENCES `device` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `device_has_accessory_item_accessory_item_id`
    FOREIGN KEY (`accessory_item_id`)
    REFERENCES `accessory_item` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE `platform_has_tariff` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tariff_id` INT(10) UNSIGNED NOT NULL,
  `platform_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_platform_has_tariff_tariff1_idx` (`tariff_id` ASC) VISIBLE,
  INDEX `fk_platform_has_tariff_platform1_idx` (`platform_id` ASC) VISIBLE,
  CONSTRAINT `fk_platform_has_tariff_tariff1`
    FOREIGN KEY (`tariff_id`)
    REFERENCES `tariff` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_platform_has_tariff_platform1`
    FOREIGN KEY (`platform_id`)
    REFERENCES `platform` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE `player_has_discount` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `player_id` INT(10) UNSIGNED NOT NULL,
  `discount_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_player_has_discount_player1_idx` (`player_id` ASC) VISIBLE,
  INDEX `fk_player_has_discount_discount1_idx` (`discount_id` ASC) VISIBLE,
  CONSTRAINT `fk_player_has_discount_player1`
    FOREIGN KEY (`player_id`)
    REFERENCES `player` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_player_has_discount_discount1`
    FOREIGN KEY (`discount_id`)
    REFERENCES `discount` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE `person` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `surname` VARCHAR(100) NOT NULL,
  `email` VARCHAR(320) NOT NULL,
  `phone_number` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

ALTER TABLE `admin` 
ADD CONSTRAINT `fk_admin_person1`
  FOREIGN KEY (`person_id`)
  REFERENCES `person` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `booking` 
ADD CONSTRAINT `fk_booking_tariff1`
  FOREIGN KEY (`tariff_id`)
  REFERENCES `tariff` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `device` 
ADD CONSTRAINT `fk_device_position_id`
  FOREIGN KEY (`position_id`)
  REFERENCES `position` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_device_platform_id`
  FOREIGN KEY (`platform_id`)
  REFERENCES `platform` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `order` 
ADD CONSTRAINT `fk_booking_id`
  FOREIGN KEY (`booking_id`)
  REFERENCES `booking` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `player` 
ADD CONSTRAINT `fk_player_person1`
  FOREIGN KEY (`person_id`)
  REFERENCES `person` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
ALTER TABLE `accessory_item` 
DROP FOREIGN KEY `fk_accessory_item_accessory_id`;

ALTER TABLE `console` 
DROP FOREIGN KEY `fk_console_device_id`;

ALTER TABLE `game_center` 
DROP FOREIGN KEY `fk_game_center_company_id`;

ALTER TABLE `pc` 
DROP FOREIGN KEY `fk_pc_device_id`;

ALTER TABLE `room_has_tariff` 
DROP FOREIGN KEY `fk_room_has_tariff_tariff_id`,
DROP FOREIGN KEY `fk_room_has_tariff_room_id`;

ALTER TABLE `vr_headset` 
DROP FOREIGN KEY `fk_vr_headset_device_id`;

ALTER TABLE `accessory_item` 
DROP COLUMN `accessory_id`;

ALTER TABLE `console` 
DROP COLUMN `device_id`,
DROP INDEX `fk_console_device_id_idx` ;
;

ALTER TABLE `game_center` 
DROP COLUMN `company_id`,
DROP INDEX `fk_game_center_company_id` ;
;

ALTER TABLE `pc` 
DROP COLUMN `device_id`,
DROP INDEX `fk_pc_device_id_idx` ;
;

ALTER TABLE `room_has_tariff` 
DROP COLUMN `tariff_id`,
DROP COLUMN `room_id`,
DROP INDEX `fk_room_has_tariff_tariff_id_idx` ,
DROP INDEX `fk_room_has_tariff_room_id_idx` ;
;

ALTER TABLE `vr_headset` 
DROP COLUMN `device_id`,
DROP INDEX `fk_vr_headset_device_id_idx` ;
;

DROP TABLE `company`;

DROP TABLE `pc`;

DROP TABLE `console`;

DROP TABLE `vr_headset`;

DROP TABLE `room_has_tariff`;

DROP TABLE `accessory`;