use store;
select good.name as good_name from category_has_good
inner join good on category_has_good.good_id = good.id
inner join category on category_has_good.category_id = category.id
where(category.name='Cakes')
union
select good.name as good_name from good
inner join sale_has_good on good.id = sale_has_good.good_id
inner join sale on sale.id= sale_has_good.sale_id
inner join status on status.id=sale.status_id
where(status.name='delivering');
