-- За каким производителем монитора сидел Первый игрок 
SELECT mf.name FROM accessory_model as am
LEFT JOIN monitor_model as mm ON mm.model_id = am.id
LEFT JOIN monitor as mon ON mon.monitor_model_id = mm.id
LEFT JOIN accessory_item as ai ON ai.id = mon.accessory_item_id
LEFT JOIN device_has_accessory_item as dhai ON dhai.accessory_item_id = ai.id
LEFT JOIN device as d ON d.id = dhai.device_id
LEFT JOIN booking as b ON b.position_id = d.position_id
LEFT JOIN manufacturer as mf ON mf.id = am.manufacturer_id
LEFT JOIN `order` as o ON o.booking_id = b.id WHERE o.player_id = 1;
 
-- Какой мышкой пользовались чаще всего (список)
SELECT am.id, am.name, count(am.id) FROM accessory_model as am
LEFT JOIN mouse_model as mm ON mm.model_id = am.id
LEFT JOIN mouse ON mouse.mouse_model_id = mm.id
LEFT JOIN accessory_item as ai ON ai.id = mouse.accessory_item_id
LEFT JOIN device_has_accessory_item as dhai ON dhai.accessory_item_id = ai.id
LEFT JOIN device as d ON d.id = dhai.device_id
LEFT JOIN booking as b ON b.position_id = d.position_id
LEFT JOIN `order` as o ON o.booking_id = b.id
GROUP BY am.id
ORDER BY count(am.id) DESC;

-- Вывести список компаний упорядоченный по убыванию количества сломанных клавиаутур
SELECT mf.id, mf.name, count(mf.id) FROM accessory_model as am
LEFT JOIN manufacturer as mf ON mf.id = am.manufacturer_id 
LEFT JOIN keyboard_model as km ON km.model_id = am.id
LEFT JOIN keyboard as k ON k.keyboard_model_id = km.id
LEFT JOIN accessory_item as ai ON ai.id = k.accessory_item_id
LEFT JOIN device as d ON d.manufacturer_id = mf.id 
WHERE d.condition = 0 OR ai.condition = 0
GROUP BY mf.id
ORDER BY count(mf.id) DESC;

-- Среднее количество часов у игроков, которые бронировали VR-heads
SELECT avg(p.hours) FROM player as p
LEFT JOIN `order` as o ON o.player_id = p.id
LEFT JOIN booking as b ON b.id = o.booking_id
LEFT JOIN tariff as t ON t.id = b.tariff_id
LEFT JOIN platform_has_tariff as pht ON pht.tariff_id = t.id 
WHERE pht.platform_id = 3;
