--Res Consulta 1
SELECT p.id, p.date_promotion, p.amount_promotion, p.discount
FROM promotion.promotion p
WHERE p.id_item = 5;

--Res Consulta 2
SELECT s.id, s.date_sale, s.id_client, s.id_detail, s.stock
FROM sale.sale s
WHERE s.id_users = 2;

--Res Consulta 3
SELECT e.id AS employee_id, e.name_employee, e.ap_paterno, e.ap_materno, p.name_position
FROM users.employee e
JOIN users.contract c ON e.id = c.id_employee
JOIN users.position p ON c.id_position = p.id
WHERE p.name_position = 'Cajero'; 

--Res Consulta 4
SELECT e.id AS employee_id, e.name_employee, e.ap_paterno, e.ap_materno, p.name_position
FROM users.employee e
JOIN users.contract c ON e.id = c.id_employee
JOIN users.position p ON c.id_position = p.id
JOIN buys.buys b ON b.id_users = e.id
GROUP BY e.id, e.name_employee, e.ap_paterno, e.ap_materno, p.name_position;

--Res Consulta 5
SELECT i.name_item,
COALESCE(SUM(CASE WHEN s.motion = 'i' THEN s.amount_store ELSE 0 END), 0) - 
COALESCE(SUM(CASE WHEN s.motion = 's' THEN s.amount_store ELSE 0 END), 0) AS remaining_stock
FROM store.store s
JOIN store.item i ON s.id_item = i.id
WHERE s.id_item = 5
GROUP BY i.name_item;

--Res Consulta 6
SELECT DISTINCT bs.supplier_name, bs.company_name, bs.email, bs.number_phone
FROM buys.buys_detail bd
JOIN buys.buys b ON bd.id = b.id_buys_detail
JOIN buys.buys_supplier bs ON b.id_buys_supplier = bs.id
WHERE bd.id_item = 5;

SELECT date_sale FROM sale.sale;

--Res Consulta 7
SELECT 
    SUM(sd.cost_detail * sd.amount) AS total_income
FROM sale.sale s
JOIN sale.sale_detail sd ON s.id_detail = sd.id
WHERE TO_CHAR(s.date_sale, 'YYYY-MM') = '2025-03'; --solo da con el mes de marzo

--Res Consulta 8
SELECT 
    i.name_item, 
    SUM(sd.amount) AS total_quantity_sold
FROM sale.sale_detail sd
JOIN store.item i ON sd.id_item = i.id
GROUP BY i.name_item
ORDER BY total_quantity_sold DESC
LIMIT 1;

--Res Consulta 9
SELECT 
    c.name_client, 
    SUM(sd.amount) AS total_products_purchased
FROM sale.sale s
JOIN sale.sale_detail sd ON s.id_detail = sd.id
JOIN sale.client c ON s.id_client = c.id
GROUP BY c.name_client
ORDER BY total_products_purchased DESC
LIMIT 1;

--Res Consulta 10
SELECT 
    c.name_client, 
    SUM(sd.cost_detail * sd.amount) AS total_spent
FROM sale.sale s
JOIN sale.sale_detail sd ON s.id_detail = sd.id
JOIN sale.client c ON s.id_client = c.id
GROUP BY c.name_client
ORDER BY total_spent DESC
LIMIT 1;

--Res Consulta 11
SELECT COUNT(*) AS total_clients
FROM sale.client;

--Res Consulta 12
SELECT 
    i.name_item,
    COALESCE(SUM(CASE WHEN s.motion = 'i' THEN s.amount_store ELSE 0 END), 0) - 
    COALESCE(SUM(CASE WHEN s.motion = 's' THEN s.amount_store ELSE 0 END), 0) AS current_stock
FROM store.store s
JOIN store.item i ON s.id_item = i.id
GROUP BY i.name_item
HAVING current_stock < 10;
