ALTER TABLE `hw2`.`students` 
ADD INDEX `fk_students_user_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `hw2`.`students` 
ADD CONSTRAINT `fk_students_user`
  FOREIGN KEY (`user_id`)
  REFERENCES `hw2`.`users` (`id`)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;
