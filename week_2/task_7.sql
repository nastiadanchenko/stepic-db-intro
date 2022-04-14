use store;
select category.name as name, count(sale.id) as sale_num from category
left outer join category_has_good on category_has_good.category_id = category.id
left outer join good on category_has_good.good_id = good.id
left outer join sale_has_good on good.id = sale_has_good.good_id
left outer join sale on sale_has_good.sale_id = sale.id
group by category.name;