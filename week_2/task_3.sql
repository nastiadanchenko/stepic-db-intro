use store;
select good.name as good_name, category.name as category_name from category_has_good 
right outer join good on category_has_good.good_id = good.id
left outer join category on category_has_good.category_id = category.id
group by good_name, category_name;