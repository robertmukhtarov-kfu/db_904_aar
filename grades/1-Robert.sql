-- 1.
SELECT s.id, s.name AS student_name, g.name AS group_name FROM `student` AS s JOIN `group` AS g ON s.group_id = g.id;

-- 2.
SELECT s.name, s.surname, s.lastname FROM `student` AS s JOIN `group` AS g ON s.group_id = g.id WHERE g.name = 11705;

-- 3.
SELECT sg.id, sg.grade, sg.grade_date, st.name, su.name AS subject FROM `students_grade` AS sg JOIN `student` AS st ON sg.student_id = st.id JOIN `subject` AS su ON sg.subject_id = su.id;

-- 4.
SELECT sg.grade, sg.grade_date FROM `students_grade` AS sg JOIN `subject` AS su ON sg.subject_id = su.id WHERE sg.student_id = 26 AND su.name = ' Информатика';

-- 5.
SELECT st.name, st.surname, st.lastname, sg.grade, sg.grade_date, su.name AS subject FROM `student` AS st JOIN `students_grade` AS sg ON st.id = sg.student_id JOIN `subject` AS su ON sg.subject_id = su.id WHERE st.group_id = 4;