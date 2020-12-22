-- 3 самых популярных тарифа за 2019—2020 гг. (название и количество заказов)
SELECT t.name, COUNT(tariff_id) AS times_ordered
FROM booking
JOIN tariff AS t ON tariff_id=t.id 
WHERE datetime_start BETWEEN '2019-01-01' AND '2020-12-31' 
GROUP BY t.id
ORDER BY times_ordered DESC
LIMIT 3

-- Какой игрок потратил больше всего денег (имя, фамилия и сумма)
SELECT pe.name, pe.surname, SUM(t.cost) AS money_spent 
FROM person AS pe
JOIN player AS p ON pe.id=p.person_id
JOIN `order` AS o ON o.player_id=p.id
JOIN booking AS b on o.booking_id=b.id
JOIN tariff AS t on b.tariff_id=t.id
GROUP BY pe.name, pe.surname
ORDER BY money_spent DESC
LIMIT 1

-- 5 тарифов, при выборе которых чаще всего используют скидку (название и количество применённых скидок)
SELECT t.name, COUNT(o.discount_id) AS discounts_applied
FROM tariff AS t
JOIN booking AS b ON b.tariff_id=t.id
JOIN `order` AS o ON o.booking_id=b.id
GROUP BY t.name
ORDER BY discounts_applied DESC
LIMIT 5