ALTER TABLE `person` 
ADD INDEX `email_index` (`email` ASC) VISIBLE,
ADD INDEX `phone_number_index` (`phone_number` ASC) VISIBLE;
;