-- 1. ID группы студента с именем Ivan Ivanov.
SELECT group_id FROM students WHERE name='Ivan' AND surname='Ivanov';

-- 2. Имя, фамилия и балл студентов, средний балл которых меньше 2.5, в порядке убывания балла
SELECT name, surname, score FROM students WHERE score<2.5 ORDER BY score DESC;

-- 3. Топ-5 (по рейтингу) преподавателей в порядке убывания рейтинга
SELECT * FROM teachers ORDER BY rating DESC LIMIT 5;

-- 4. Увеличить рейтинг преподавателя с id = 7 на 0.3
UPDATE teachers SET rating=rating+0.3 WHERE id=7;

-- 5. Удалить студентов со средним баллом <= 1.5
DELETE FROM students WHERE score<=1.5;

-- 6. Посчитать средний балл студентов группы с id = 5
SELECT AVG(score) FROM students WHERE group_id=5;

-- 7. Добавить группу 11-904 с преподавателем, чей id = 5
INSERT INTO hw2.groups (name, teacher_id) VALUES ('11-904', 5);

-- 8. id и названия групп, к которым привязаны преподаватели с id 1 или 2, в порядке возрастания (по названию)
SELECT id, name FROM hw2.groups WHERE teacher_id=1 OR teacher_id=2 ORDER BY name ASC;

-- 9. Имена пользователей, электронные адреса которых заканчиваются на mail.ru
SELECT username FROM users WHERE email LIKE '%mail.ru';

-- 10. Пользователи, имена которых длиннее 10, в порядке убывания длины
SELECT * FROM users WHERE LENGTH(username)>10 ORDER BY LENGTH(username) DESC;