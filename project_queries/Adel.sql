-- Список пользователей игравших в первой половине 2020 года(Имя, фамилие и время игры) .
SELECT pe.name, pe.surname, b.datetime_start, t.hours
FROM person AS pe
JOIN player AS p ON p.person_id=pe.id
JOIN `order` AS o ON o.player_id=p.id
JOIN booking AS b on o.booking_id=b.id
JOIN tariff AS t on b.tariff_id=t.id
WHERE b.datetime_start BETWEEN '2020-01-01' AND '2020-07-01'
ORDER BY datetime_start

-- Адресс гейм центра в котором впервые сыграл первый игрок
SELECT a.city, a.street,a.house, b.datetime_start FROM `order` AS o
JOIN booking AS b on o.booking_id=b.id
JOIN position as po on b.position_id=po.id
JOIN room as r on po.room_id=r.id
JOIN game_center as gc on r.game_center_id=gc.id
JOIN address as a on gc.address_id=a.id
Where o.player_id=1
ORDER by b.datetime_start
LIMIT 1

-- Количество бронирований в гейм центрах по убыванию
SELECT a.city, a.street,a.house, COUNT(b.id) AS count_of_bookings FROM game_center AS gc
JOIN address as a on gc.address_id=a.id
JOIN room as r on r.game_center_id=gc.id
JOIN position as po on po.room_id=r.id
JOIN booking as b on b.position_id=po.id
GROUP by gc.id
ORDER BY count_of_bookings DESC

-- Имя ,номер телефона и email админов из комнат в которых играл второй игрок
SELECT pe.name, pe.surname, pe.email, pe.phone_number 
FROM `order` AS o
JOIN booking AS b on o.booking_id=b.id
JOIN position as po on b.position_id=po.id
JOIN room as r on po.room_id=r.id
JOIN admin as a on r.admin_id=a.id
JOIN person as pe on a.person_id=pe.id
WHERE o.player_id = 2
GROUP by a.id

--Общий доход за все время
SELECT SUM(t.cost) AS income 
FROM booking AS b
JOIN tariff AS t on b.tariff_id=t.id

-- Доход каждого гейм центра с 2000 по 2020 год
SELECT a.city, a.street,a.house, SUM(t.cost) AS income 
FROM booking AS b
JOIN tariff AS t on b.tariff_id=t.id
JOIN position as po on b.position_id=po.id
JOIN room as r on po.room_id=r.id
JOIN game_center as gc on r.game_center_id=gc.id
JOIN address as a on gc.address_id=a.id
WHERE b.datetime_start BETWEEN '2000-01-01' AND '2020-12-31'
GROUP by gc.id
ORDER BY income DESC


