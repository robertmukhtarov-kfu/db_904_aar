-- 1 Взять число всех студентов в каждой из у кого средний бал больше 4
SELECT `group`.id, `group`.name, count(distinkt student.id) FROM studens_grade
LEFT JOIN student on `student`.id = studens_grade.student_id
LEFT JOIN `group` ON `group`.id = student.group_id;
group by `group`.id
having avg(score) > 4;
 
-- 2 Кол-во групп c 20 с 20 студентами
SELECT count(distinkt `group`.id) FROM student 
LEFT JOIN group ON `group`.student_id = student.id;
having count(distinkt student.id) = 20;

-- 3 Средняя оценка каждоый группы
SELECT `group`.id, avg(score) FROM student
JOIN `group` ON student.group_id = `group`.id
JOIN students_grade ON student.id = students_grade.student_id
group by `group`.id;
