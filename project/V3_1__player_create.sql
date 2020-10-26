CREATE TABLE `player` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `surname` VARCHAR(100) NOT NULL,
  `email` VARCHAR(320) NOT NULL,
  `hours` INT UNSIGNED NOT NULL DEFAULT 0,
  `phone_number` VARCHAR(15) NULL,
  `team_id` INT NULL,
  `balance` INT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE);
