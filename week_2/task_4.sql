use store;
SELECT good.name as good_name, category.name as category_name
FROM category_has_good RIGHT OUTER JOIN good ON
category_has_good.good_id = good.id
LEFT OUTER JOIN category ON category_has_good.category_id = category.id
UNION
SELECT good.name as good_name, category.name as category_name
FROM category_has_good LEFT OUTER JOIN good ON
category_has_good.good_id = good.id
RIGHT OUTER JOIN category ON category_has_good.category_id = category.id;
