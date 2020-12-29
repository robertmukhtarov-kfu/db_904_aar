-- 3 самых популярных тарифа за 2019—2020 гг. (название и количество заказов)
SELECT t.name, COUNT(tariff_id) AS times_ordered
FROM booking
JOIN tariff AS t ON tariff_id=t.id 
WHERE datetime_start BETWEEN '2019-01-01' AND '2020-12-31' 
GROUP BY t.id
ORDER BY times_ordered DESC
LIMIT 3;

-- Какой игрок потратил больше всего денег (имя, фамилия и сумма)
SELECT pe.name, pe.surname, SUM(t.cost) AS money_spent 
FROM person AS pe
JOIN player AS p ON pe.id=p.person_id
JOIN `order` AS o ON o.player_id=p.id
JOIN booking AS b ON o.booking_id=b.id
JOIN tariff AS t ON b.tariff_id=t.id
GROUP BY pe.name, pe.surname
ORDER BY money_spent DESC
LIMIT 1;

-- 5 тарифов, при выборе которых чаще всего используют скидку (название и количество применённых скидок)
SELECT t.name, COUNT(o.discount_id) AS discounts_applied
FROM tariff AS t
JOIN booking AS b ON b.tariff_id=t.id
JOIN `order` AS o ON o.booking_id=b.id
GROUP BY t.name
ORDER BY discounts_applied DESC
LIMIT 5;

-- Пользователь с указанным email (имя, фамилия, в какой команде состоит)
SELECT pe.name, pe.surname, t.name AS team 
FROM player AS p
JOIN person AS pe ON p.person_id=pe.id
JOIN team AS t ON p.team_id=t.id
WHERE pe.email='opal.roob@example.org';

-- Все игровые центры Казани (email, номер телефона, адрес)
SELECT g.email, g.phone_number, a.street, a.house FROM game_center AS g
JOIN address AS a ON g.address_id=a.id
WHERE a.city='Kazan';

-- Последние 10 заказов по тарифу dicta (время заказа, имя и фамилия игрока)
SELECT b.datetime_start, pe.name, pe.surname 
FROM `order` AS o
JOIN player AS p ON o.player_id=p.id
JOIN person AS pe ON p.person_id=pe.id
JOIN booking AS b ON o.booking_id=b.id
JOIN tariff AS t ON b.tariff_id=t.id
WHERE t.name='dicta'
ORDER BY b.datetime_start DESC
LIMIT 10;

-- Игроки, не состоящие ни в одной команде (имя и фамилия в алфавитном порядке) 
SELECT pe.surname, pe.name FROM player AS p
JOIN person AS pe ON p.person_id=pe.id
WHERE p.team_id IS NULL
ORDER BY pe.surname;

-- Тарифы, стоимость которых не превышает 500 рублей
SELECT name, cost FROM tariff 
WHERE cost <= 500
ORDER BY cost DESC;