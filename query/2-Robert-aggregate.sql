-- 1. Группы со средним баллом выше 3.5 в порядке убывания
SELECT `group`.name, AVG(students_grade.grade) AS average FROM `students_grade`
LEFT JOIN `student` ON `student`.id=`students_grade`.student_id
LEFT JOIN `group` ON `group`.id=`student`.group_id
GROUP BY `group`.id
HAVING AVG(`students_grade`.grade) > 3.5
ORDER BY average DESC;

-- 2. Количество первокурсников, хотя бы раз получивших оценку «5» за матанализ
SELECT COUNT(DISTINCT student_id) FROM `students_grade`
JOIN `subject` ON `subject`.id=`students_grade`.subject_id
JOIN `student` ON `student`.id=`students_grade`.student_id
JOIN `group` ON `student`.group_id=`group`.id
WHERE `subject`.name = ' Математический анализ' AND `students_grade`.grade=5.0 AND `group`.year=1;

-- 3. Первые три группы по количеству студентов в порядке убывания
SELECT `group`.name, COUNT(DISTINCT `student`.id) as total_num FROM `group`
LEFT JOIN `student` ON `student`.group_id=`group`.id
GROUP BY `group`.id
ORDER BY total_num DESC
LIMIT 3;