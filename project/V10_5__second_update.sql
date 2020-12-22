ALTER TABLE `device` 
ADD COLUMN `manufacturer_id` INT(10) UNSIGNED NOT NULL AFTER `platform_id`,
ADD INDEX `fk_device_manufacturer_id_idx` (`manufacturer_id` ASC) VISIBLE;
;

ALTER TABLE `gamepad` 
DROP COLUMN `model`,
ADD COLUMN `gamepad_model_id` INT(10) UNSIGNED NOT NULL AFTER `accessory_item_id`,
ADD INDEX `fk_gamepad_gp_model_id_idx` (`gamepad_model_id` ASC) VISIBLE;
;

ALTER TABLE `headphones` 
ADD COLUMN `headphones_model_id` INT(10) UNSIGNED NOT NULL AFTER `accessory_item_id`;

ALTER TABLE `keyboard` 
ADD COLUMN `keyboard_model_id` INT(10) UNSIGNED NOT NULL AFTER `accessory_item_id`,
ADD INDEX `fk_keyboard_kb_model_id_idx` (`keyboard_model_id` ASC) VISIBLE;
;

ALTER TABLE `monitor` 
DROP COLUMN `has_hdr`,
DROP COLUMN `refresh_rate`,
DROP COLUMN `resolution`,
DROP COLUMN `size`,
ADD COLUMN `monitor_model_id` INT(10) UNSIGNED NOT NULL AFTER `accessory_item_id`,
ADD INDEX `fk_monitor_model_id_idx` (`monitor_model_id` ASC) VISIBLE;
;

ALTER TABLE `mouse` 
DROP COLUMN `dpi`,
ADD COLUMN `mouse_model_id` INT(10) UNSIGNED NOT NULL AFTER `accessory_item_id`,
ADD INDEX `fk_mouse_model_id_idx` (`mouse_model_id` ASC) VISIBLE;
;

CREATE TABLE IF NOT EXISTS `manufacturer` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `accessory_model` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `cost` INT(10) UNSIGNED NOT NULL,
  `manufacturer_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_accessory_model_manufacturer_id_idx` (`manufacturer_id` ASC) VISIBLE,
  CONSTRAINT `fk_accessory_model_manufacturer_id`
    FOREIGN KEY (`manufacturer_id`)
    REFERENCES `manufacturer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `monitor_model` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `size` INT(10) UNSIGNED NOT NULL,
  `refresh_rate` INT(10) UNSIGNED NOT NULL,
  `model_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_monitor_model_id_idx` (`model_id` ASC) VISIBLE,
  CONSTRAINT `fk_monitor_model_id`
    FOREIGN KEY (`model_id`)
    REFERENCES `accessory_model` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mouse_model` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dpi` INT(10) UNSIGNED NOT NULL,
  `model_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_mouse_model_id_idx` (`model_id` ASC) VISIBLE,
  CONSTRAINT `fk_mouse_model_id`
    FOREIGN KEY (`model_id`)
    REFERENCES `accessory_model` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `headphones_model` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_headphones_model_id_idx` (`model_id` ASC) VISIBLE,
  CONSTRAINT `fk_headphones_model_id`
    FOREIGN KEY (`model_id`)
    REFERENCES `accessory_model` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `gamepad_model` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_gamepad_model_id_idx` (`model_id` ASC) VISIBLE,
  CONSTRAINT `fk_gamepad_model_id`
    FOREIGN KEY (`model_id`)
    REFERENCES `accessory_model` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `keyboard_model` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_keyboard_model_id_idx` (`model_id` ASC) VISIBLE,
  CONSTRAINT `fk_keyboard_model_id`
    FOREIGN KEY (`model_id`)
    REFERENCES `accessory_model` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

ALTER TABLE `device` 
ADD CONSTRAINT `fk_device_manufacturer_id`
  FOREIGN KEY (`manufacturer_id`)
  REFERENCES `manufacturer` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `gamepad` 
ADD CONSTRAINT `fk_gamepad_gp_model_id`
  FOREIGN KEY (`gamepad_model_id`)
  REFERENCES `gamepad_model` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `headphones` 
ADD CONSTRAINT `fk_headphones_hp_model_id`
  FOREIGN KEY (`headphones_model_id`)
  REFERENCES `headphones_model` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `keyboard` 
ADD CONSTRAINT `fk_keyboard_kb_model_id`
  FOREIGN KEY (`keyboard_model_id`)
  REFERENCES `keyboard_model` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `monitor` 
ADD CONSTRAINT `fk_monitor_monitor_model_id`
  FOREIGN KEY (`monitor_model_id`)
  REFERENCES `monitor_model` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `mouse` 
ADD CONSTRAINT `fk_mouse_mouse_model_id`
  FOREIGN KEY (`mouse_model_id`)
  REFERENCES `mouse_model` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
ALTER TABLE `accessory_item`
    DROP COLUMN `name`;
    
ALTER TABLE `tariff`
    DROP COLUMN `room_id`;
    