-- 1
SELECT student.id, student.`name`, `group`.`name` FROM student
LEFT JOIN `group` ON `group`.id = student.group_id;

-- 2
SELECT student.id, CONCAT(student.lastname, ' ', student.`name`, ' ', student.surname) as full_name, `group`.`name` FROM student 
LEFT JOIN `group` ON `group`.id = student.group_id WHERE `group`.`name` = '11701';

-- 3
SELECT students_grade.id, students_grade.grade, students_grade.grade_date, `subject`.`name`, student.`name` FROM students_grade
JOIN student ON student.id = students_grade.student_id
JOIN `subject` ON `subject`.id = students_grade.subject_id;

-- 4
SELECT student.id, student.`name`, subject.`name`, students_grade.grade FROM students_grade
JOIN student ON student.id = student_grade.student_id
JOIN `subject` ON `subject`.id = students_grade.subject_id
WHERE student_id = 26 AND `subject`.`name` = ' Информатика';

-- 5
SELECT student.`name`, student.surname, student.lastname, students_grade.grade, students_grade.grade_date, `subject`.`name` FROM student 
JOIN students_grade ON student.id = students_grade.student_id 
JOIN `subject` ON students_grade.subject_id = `subject`.id 
WHERE student.group_id = 4;
