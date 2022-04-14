use store;
select source.name as source_name, sum(sale.sale_sum) as sale_sum from client
right outer join source on client.source_id = source.id
left outer join sale on client.id = sale.client_id
group by source_name;
 