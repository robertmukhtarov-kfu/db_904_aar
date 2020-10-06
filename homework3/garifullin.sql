-- 1. Студенты группы 5 в алфавитном порядке.
SELECT * FROM students WHERE group_id=5 Order BY name ASC;

-- 2. Студенты, средний балл которых меньше 3, в порядке убывания балла
SELECT * FROM students WHERE score<3 ORDER BY score DESC;

-- 3. Топ-5 (по рейтингу) студентов в порядке убывания баллов и в порядке возрастания по названию
SELECT * FROM students ORDER BY score DESC, name ASC LIMIT 5;

-- 4. Увеличить баллы студента с id = 7 на 0.5
UPDATE students SET score=score+0.5 WHERE id=7;

-- 5. Удалить студентов со средним баллом <= 1
DELETE FROM students WHERE score<=1.5;

-- 6. Посчитать средний балл студентов группы с id = 5
SELECT AVG(score) FROM students WHERE group_id=5;

-- 7. Добавить преподавателя, чей user_id = 5
INSERT INTO hw2.teachers (user_id) VALUES (5);

-- 8. id и названия групп, в порядке возрастания (по названию)
SELECT id, name FROM hw2.groups ORDER BY name ASC;

-- 9. Имена пользователей, электронные адреса которых заканчиваются на mail.ru
SELECT username FROM users WHERE email LIKE '%mail.ru';

-- 10. Преподователи, рейтинг которых больше 5, в порядке убывания рейтинга
SELECT * FROM teachers WHERE LENGTH raiting >5 ORDER BY raiting DESC;