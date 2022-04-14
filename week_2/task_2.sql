use store;
select client.first_name, client.last_name, count(sale.id) as  new_sale_num from sale
inner join client on sale.client_id = client.id
inner join status on sale.status_id =status.id where (status.name='new')
group by client.first_name, client.last_name; 