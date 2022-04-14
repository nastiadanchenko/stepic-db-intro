SELECT source.name FROM source
WHERE NOT EXISTS (SELECT * FROM client WHERE client.source_id = source.id)
UNION
SELECT source.name FROM source
INNER JOIN client ON client.source_id = source.id
INNER JOIN sale ON sale.client_id = client.id
INNER JOIN status ON status.id = sale.status_id WHERE status.name = "rejected";