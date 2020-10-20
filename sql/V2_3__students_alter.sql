ALTER TABLE `hw2`.`students` 
ADD CONSTRAINT `fk_students_groups`
  FOREIGN KEY (`group_id`)
  REFERENCES `hw2`.`groups` (`id`)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;
