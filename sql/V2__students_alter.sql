ALTER TABLE `hw2`.`students` 
CHANGE COLUMN `user_id` `user_id` INT NOT NULL ,
CHANGE COLUMN `teacher_id` `group_id` INT NOT NULL ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `user_id`);
;