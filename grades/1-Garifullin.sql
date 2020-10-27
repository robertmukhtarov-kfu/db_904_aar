--1. ID, StudentName, GroupName
SELECT student.id, student.name, group.name FROM grades.student INNER JOIN grades.group ON group_id=group.id;

--2. Список студентов одной группы.
SELECT * FROM grades.student INNER JOIN grades.group ON group.name=11705 WHERE group_id=group.id;

--3. Получить список оценок: ID, Оценка, Дата, ИмяСтудента, НазваниеПредмета
SELECT students_grade.id, grade, grade_date, student.name,  subject.name FROM students_grade INNER JOIN student ON students_grade.student_id = student.id INNER JOIN subject ON students_grade.subject_id = subject.id;

--4. Получить список оценок по  Информатике, студента с id=26
SELECT grade FROM students_grade INNER JOIN subject ON subject.name=" Информатика" WHERE subject_id=subject.id AND student_id=26 ;

--5. получить список оценок группы id=4
SELECT student.name, grade FROM grades.student INNER JOIN students_grade ON students_grade.student_id=student.id WHERE group_id=4 ;