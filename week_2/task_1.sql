use store;
select good.name, category.name from category_has_good inner join good on category_has_good.good_id = good.id
inner join category on category_has_good.category_id = category.id
order by good.name, category.name;