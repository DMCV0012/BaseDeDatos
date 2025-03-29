--1.-¿Que promociones ha tenido un producto x ?
SELECT p.date_promotion, p.discount, p.amount_promotion, i.name_item
FROM promotion.promotion p
JOIN store.item i ON p.id_item = i.id
WHERE p.id_item = 1;

--2.- mostrar  las ventas realizadas por un usuario x?
SELECT s.id, s.date_sale, c.name_client, i.name_item, sd.amount, sd.cost_detail
FROM sale.sale s
JOIN sale.client c ON s.id_client = c.id
JOIN sale.sale_detail sd ON s.id_detail = sd.id
JOIN store.item i ON sd.id_item = i.id
WHERE s.id_users = 5;

--3.- mostrar la lista de empleados en un cargo x 
SELECT e.name_employee, e.ap_paterno, e.ap_materno, p.name_position
FROM users.employee e
JOIN users.contract c ON e.id = c.id_employee
JOIN users.position p ON c.id_position = p.id
WHERE c.id_position = 6;

--4.-mostar una lista de empleados que alla realizado una compra y saber el cargo 
SELECT DISTINCT e.name_employee, e.ap_paterno, p.name_position
FROM buys.buys b
JOIN users.users u ON b.id_users = u.id
JOIN users.employee e ON u.id = e.id_users
JOIN users.contract c ON e.id = c.id_employee
JOIN users.position p ON c.id_position = p.id;

--5.- saber cuanto queda de un producto x 
SELECT i.name_item, st.final_amount
FROM store.store st
JOIN store.item i ON st.id_item = i.id
WHERE st.id_item = 3
ORDER BY st.date_store DESC
LIMIT 1;

--6.- mostrar la lista de proveedores que venden un producto x 
SELECT bs.supplier_name, bs.company_name, bs.email, bs.number_phone
FROM buys.buys_detail bd
JOIN buys.buys b ON bd.id = b.id_buys_detail
JOIN buys.buys_supplier bs ON b.id_buys_supplier = bs.id
WHERE bd.id_item = 6
GROUP BY bs.id;

--7.- saber cuanto hacido el ingreso por ventas realizadas por un mes x 
SELECT SUM(sd.cost_detail * sd.amount) AS total_ventas
FROM sale.sale s
JOIN sale.sale_detail sd ON s.id_detail = sd.id
WHERE EXTRACT(MONTH FROM s.date_sale) = 1 AND EXTRACT(YEAR FROM s.date_sale) = 2024;

--8.-conocer el producto mas vendido 
SELECT i.name_item, SUM(sd.amount) AS total_vendido
FROM sale.sale_detail sd
JOIN store.item i ON sd.id_item = i.id
GROUP BY i.name_item
ORDER BY total_vendido DESC
LIMIT 1;

--9.- conocer al cliente que más productos ha comprado 
SELECT c.name_client, SUM(sd.amount) AS total_productos
FROM sale.sale s
JOIN sale.client c ON s.id_client = c.id
JOIN sale.sale_detail sd ON s.id_detail = sd.id
GROUP BY c.name_client
ORDER BY total_productos DESC
LIMIT 1;

--10.-Conocer al cliente  con el costo más alto de compra 
SELECT c.name_client, SUM(sd.cost_detail * sd.amount) AS total_gastado
FROM sale.sale s
JOIN sale.client c ON s.id_client = c.id
JOIN sale.sale_detail sd ON s.id_detail = sd.id
GROUP BY c.name_client
ORDER BY total_gastado DESC
LIMIT 1;

--11.-mostrar la cantidad de clientes que se tiene
SELECT COUNT(*) AS total_clientes
FROM sale.client;

--12.-mostrar los productos con un stock menor a 10
SELECT i.name_item, st.final_amount AS stock_actual
FROM store.store st
JOIN store.item i ON st.id_item = i.id
WHERE st.final_amount < 10
ORDER BY st.final_amount;