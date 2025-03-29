-- en la esquema SALE se agrego 30 datos a CLIENT y 50 datos a DETAIL
INSERT INTO sale.sale (id_users, id_client, id_detail, date_sale, stock) VALUES
-- Enero 2024
(3, 12, 1, '2024-01-05', 2),
(7, 25, 2, '2024-01-07', 1),
(12, 8, 3, '2024-01-10', 3),
(5, 30, 4, '2024-01-12', 5),
(9, 17, 5, '2024-01-15', 2),
(2, 22, 6, '2024-01-18', 1),
(15, 5, 7, '2024-01-20', 4),
(11, 28, 8, '2024-01-22', 2),
(8, 14, 9, '2024-01-25', 3),
(4, 19, 10, '2024-01-28', 1),

-- Febrero 2024
(18, 3, 11, '2024-02-01', 2),
(14, 26, 12, '2024-02-03', 1),
(19, 11, 13, '2024-02-07', 3),
(6, 29, 14, '2024-02-10', 2),
(1, 7, 15, '2024-02-12', 4),
(20, 20, 16, '2024-02-15', 1),
(13, 15, 17, '2024-02-18', 2),
(17, 2, 18, '2024-02-20', 3),
(10, 23, 19, '2024-02-22', 1),
(16, 9, 20, '2024-02-25', 2),

-- Marzo 2024
(7, 16, 21, '2024-03-02', 1),
(3, 27, 22, '2024-03-05', 3),
(19, 4, 23, '2024-03-08', 2),
(12, 21, 24, '2024-03-12', 4),
(5, 10, 25, '2024-03-15', 1),
(9, 1, 26, '2024-03-18', 2),
(14, 24, 27, '2024-03-20', 1),
(20, 13, 28, '2024-03-22', 3),
(1, 18, 29, '2024-03-25', 2),
(18, 6, 30, '2024-03-28', 1),

-- Abril 2024
(11, 25, 31, '2024-04-02', 2),
(6, 12, 32, '2024-04-05', 1),
(15, 30, 33, '2024-04-08', 3),
(4, 17, 34, '2024-04-10', 2),
(13, 22, 35, '2024-04-12', 1),
(2, 5, 36, '2024-04-15', 4),
(17, 28, 37, '2024-04-18', 2),
(8, 14, 38, '2024-04-20', 1),
(10, 19, 39, '2024-04-22', 3),
(16, 3, 40, '2024-04-25', 2),

-- Mayo 2024
(7, 26, 41, '2024-05-03', 1),
(3, 11, 42, '2024-05-06', 2),
(19, 29, 43, '2024-05-09', 1),
(12, 7, 44, '2024-05-12', 3),
(5, 20, 45, '2024-05-15', 2),
(9, 15, 46, '2024-05-18', 1),
(14, 2, 47, '2024-05-21', 4),
(20, 23, 48, '2024-05-24', 2),
(1, 9, 49, '2024-05-27', 1),
(18, 16, 50, '2024-05-30', 3);

INSERT INTO sale.client (name_client) VALUES
('Juan Pérez'),
('María González'),
('Carlos Rodríguez'),
('Ana Martínez'),
('Luis Sánchez'),
('Laura López'),
('Pedro Ramírez'),
('Sofía Torres'),
('Jorge Fernández'),
('Elena Díaz'),
('Miguel Ruiz'),
('Isabel Gómez'),
('Francisco Hernández'),
('Carmen Jiménez'),
('Antonio Vázquez'),
('Patricia Moreno'),
('José Álvarez'),
('Rosa Navarro'),
('Manuel Molina'),
('Teresa Ortega'),
('David Romero'),
('Silvia Delgado'),
('Javier Castro'),
('Beatriz Ortiz'),
('Ángel Rubio'),
('Nuria Medina'),
('Fernando Garrido'),
('Olga Cortés'),
('Raúl Guerrero'),
('Mónica Cano');

INSERT INTO sale.sale_detail (id_item, cost_detail, amount) VALUES
-- Alimentos (precios entre $1 y $5)
(1, 150, 8),    -- Arroz blanco 1kg ($1.50)
(2, 200, 12),   -- Leche entera 1L ($2.00)
(3, 500, 5),    -- Aceite de oliva 500ml ($5.00)
(4, 250, 10),   -- Harina de trigo 2kg ($2.50)
(5, 180, 15),   -- Galletas integrales ($1.80)

-- Electrónicos (precios entre $50 y $300)
(6, 30000, 1),  -- Smartphone X200 ($300)
(7, 5000, 3),   -- Auriculares inalámbricos ($50)
(8, 15000, 2),  -- Tablet Pro 10" ($150)
(9, 3500, 4),   -- Teclado mecánico ($35)
(10, 12000, 2), -- Monitor 24" Full HD ($120)

-- Hogar (precios entre $10 y $50)
(11, 2500, 5),  -- Juego de sábanas king ($25)
(12, 3500, 3),  -- Olla a presión 5L ($35)
(13, 8000, 1),  -- Aspiradora vertical ($80)
(14, 1500, 6),  -- Cortina blackout ($15)
(15, 3000, 4),  -- Juego de cubiertos 12pz ($30)

-- Ropa (precios entre $10 y $60)
(16, 2000, 7),  -- Camisa manga larga ($20)
(17, 3000, 5),  -- Jeans slim fit ($30)
(18, 4500, 3),  -- Chaqueta impermeable ($45)
(19, 6000, 2),  -- Zapatos formales ($60)
(20, 1200, 10), -- Gorra deportiva ($12)

-- Oficina (precios entre $1 y $30)
(21, 800, 15),  -- Paquete de hojas A4 ($8)
(22, 500, 20),  -- Bolígrafos surtidos ($5)
(23, 2000, 3),  -- Agenda ejecutiva ($20)
(24, 1000, 6),  -- Grapadora metálica ($10)
(25, 1500, 4),  -- Calculadora científica ($15)

-- Varios (precios entre $5 y $80)
(26, 2000, 5),  -- Balón de fútbol ($20)
(27, 3000, 3),  -- Mochila escolar ($30)
(28, 4500, 2),  -- Reloj analógico ($45)
(29, 6000, 1),  -- Cámara instantánea ($60)
(30, 1200, 8),  -- Peluche oso mediano ($12)

-- Sistemas Operativos
(31, 5000, 1),  -- Windows 11 Pro ($50)
(32, 0, 1),     -- macOS Ventura (gratis)

-- Suite de Productividad
(33, 10000, 1), -- Microsoft Office 365 ($100/año)
(34, 3000, 1),  -- Adobe Creative Cloud ($30/mes)
(35, 2500, 2),  -- LibreOffice Pro ($25)

-- Antivirus
(36, 4000, 1),  -- Norton 360 Deluxe ($40/año)
(37, 5000, 1),  -- Kaspersky Total Security ($50/2años)

-- Diseño Gráfico
(38, 3000, 1),  -- Photoshop CC ($30/mes)
(39, 3000, 1),  -- Illustrator CC ($30/mes)
(40, 10000, 1), -- AutoCAD 2024 ($100)

-- Desarrollo
(41, 15000, 1), -- Visual Studio Pro ($150)
(42, 8000, 1),  -- PyCharm Professional ($80)
(43, 500, 1),   -- GitHub Copilot ($5/mes)

-- Bases de Datos
(44, 10000, 1), -- MySQL Enterprise ($100)
(45, 5000, 1),  -- MongoDB Atlas ($50)

-- Juegos
(46, 3000, 3),  -- The Sims 5 Deluxe ($30)
(47, 4000, 2),  -- FIFA 24 Ultimate ($40)

-- Utilidades
(48, 1500, 4),  -- WinRAR Pro ($15)
(49, 1000, 3),  -- CCleaner Professional ($10)
(50, 8000, 1);  -- VMware Workstation ($80)

-- en la esquema STORE se agrego 50 datos
INSERT INTO store.store (id_users, id_item, date_store, motion, amount_store, final_amount) VALUES
-- ENTRADAS (motion = 'i') - 25 registros
-- Alimentos (usuarios 11-15)
(11, 1, '2024-01-05', 'i', 100, 100),  -- Arroz
(12, 2, '2024-01-06', 'i', 150, 150),  -- Leche
(13, 3, '2024-01-07', 'i', 50, 50),    -- Aceite
(14, 4, '2024-01-08', 'i', 80, 80),    -- Harina
(15, 5, '2024-01-09', 'i', 120, 120),  -- Galletas

-- Electrónicos (usuarios 16-20)
(16, 6, '2024-01-10', 'i', 15, 15),    -- Smartphone
(17, 7, '2024-01-11', 'i', 30, 30),    -- Auriculares
(18, 8, '2024-01-12', 'i', 20, 20),    -- Tablet
(19, 9, '2024-01-13', 'i', 40, 40),    -- Teclado
(20, 10, '2024-01-14', 'i', 25, 25),   -- Monitor

-- Hogar (usuarios 11-15)
(11, 11, '2024-01-15', 'i', 30, 30),   -- Sábanas
(12, 12, '2024-01-16', 'i', 15, 15),   -- Olla
(13, 13, '2024-01-17', 'i', 10, 10),   -- Aspiradora
(14, 14, '2024-01-18', 'i', 40, 40),   -- Cortina
(15, 15, '2024-01-19', 'i', 25, 25),   -- Cubiertos

-- Reabastecimientos Febrero (usuarios 1-5)
(1, 1, '2024-02-01', 'i', 50, 150),    -- +50 Arroz
(2, 2, '2024-02-05', 'i', 60, 210),    -- +60 Leche
(3, 3, '2024-02-10', 'i', 20, 70),     -- +20 Aceite
(4, 4, '2024-02-15', 'i', 30, 110),    -- +30 Harina
(5, 5, '2024-02-20', 'i', 40, 160),    -- +40 Galletas

-- Reabastecimientos Marzo (usuarios 6-10)
(6, 6, '2024-03-05', 'i', 5, 20),      -- +5 Smartphones
(7, 7, '2024-03-10', 'i', 10, 40),     -- +10 Auriculares
(8, 8, '2024-03-15', 'i', 8, 28),      -- +8 Tablets
(9, 9, '2024-03-20', 'i', 15, 55),     -- +15 Teclados
(10, 10, '2024-03-25', 'i', 10, 35),   -- +10 Monitores

-- SALIDAS (motion = 's') - 25 registros
-- Ventas Enero (usuarios 1-10)
(1, 1, '2024-01-20', 's', 5, 95),      -- -5 Arroz
(2, 2, '2024-01-21', 's', 10, 140),    -- -10 Leche
(3, 3, '2024-01-22', 's', 3, 47),      -- -3 Aceite
(4, 4, '2024-01-23', 's', 8, 72),      -- -8 Harina
(5, 5, '2024-01-24', 's', 12, 108),    -- -12 Galletas

-- Ventas Febrero (usuarios 6-10)
(6, 6, '2024-02-10', 's', 2, 13),      -- -2 Smartphones
(7, 7, '2024-02-15', 's', 5, 25),      -- -5 Auriculares
(8, 8, '2024-02-20', 's', 3, 17),      -- -3 Tablets
(9, 9, '2024-02-25', 's', 7, 33),      -- -7 Teclados
(10, 10, '2024-02-28', 's', 4, 21),    -- -4 Monitores

-- Ventas Marzo (usuarios 11-15)
(11, 11, '2024-03-05', 's', 4, 26),    -- -4 Sábanas
(12, 12, '2024-03-10', 's', 2, 13),    -- -2 Ollas
(13, 13, '2024-03-15', 's', 1, 9),     -- -1 Aspiradora
(14, 14, '2024-03-20', 's', 5, 35),    -- -5 Cortinas
(15, 15, '2024-03-25', 's', 3, 22),    -- -3 Cubiertos

-- Ventas Abril (usuarios 16-20)
(16, 1, '2024-04-01', 's', 8, 137),    -- -8 Arroz
(17, 2, '2024-04-05', 's', 15, 185),   -- -15 Leche
(18, 3, '2024-04-10', 's', 5, 62),     -- -5 Aceite
(19, 4, '2024-04-15', 's', 12, 90),    -- -12 Harina
(20, 5, '2024-04-20', 's', 20, 128);   -- 20 Galletas

INSERT INTO store.item (name_item, description_item) VALUES
-- Alimentos
('Arroz blanco 1kg', 'Arroz de grano largo, paquete de 1 kilogramo'),
('Leche entera 1L', 'Leche pasteurizada, tetra pack de 1 litro'),
('Aceite de oliva 500ml', 'Aceite de oliva virgen extra, botella de 500ml'),
('Harina de trigo 2kg', 'Harina para repostería, bolsa de 2 kilogramos'),
('Galletas integrales', 'Paquete de galletas con fibra, 300 gramos'),

-- Electrónicos
('Smartphone X200', 'Teléfono inteligente con pantalla AMOLED de 6.5"'),
('Auriculares inalámbricos', 'Auriculares Bluetooth con cancelación de ruido'),
('Tablet Pro 10"', 'Tablet con procesador octa-core y 128GB almacenamiento'),
('Teclado mecánico', 'Teclado gaming con switches azules y retroiluminación RGB'),
('Monitor 24" Full HD', 'Monitor LED con resolución 1920x1080 y 75Hz'),

-- Hogar
('Juego de sábanas king', 'Juego de sábanas de algodón 600 hilos, color blanco'),
('Olla a presión 5L', 'Olla de acero inoxidable con válvula de seguridad'),
('Aspiradora vertical', 'Aspiradora inalámbrica con batería de larga duración'),
('Cortina blackout', 'Cortina opaca para dormitorio, 140x240 cm'),
('Juego de cubiertos 12pz', 'Cubiertos de acero inoxidable para 12 personas'),

-- Ropa
('Camisa manga larga', 'Camisa de vestir 100% algodón, talla M'),
('Jeans slim fit', 'Pantalón de mezclilla color azul, talla 32'),
('Chaqueta impermeable', 'Chaqueta resistente al agua con capucha'),
('Zapatos formales', 'Zapatos de vestir en cuero negro, talla 42'),
('Gorra deportiva', 'Gorra ajustable con protección UV'),

-- Oficina
('Paquete de hojas A4', 'Resma de 500 hojas de papel 75g/m2'),
('Bolígrafos surtidos', 'Pack de 12 bolígrafos de colores variados'),
('Agenda ejecutiva', 'Agenda 2024 con cubierta de cuero sintético'),
('Grapadora metálica', 'Grapadora de oficina con capacidad para 20 hojas'),
('Calculadora científica', 'Calculadora con 240 funciones y pantalla LCD'),

-- Varios
('Balón de fútbol', 'Balón oficial tamaño 5, material PU'),
('Mochila escolar', 'Mochila con compartimento para laptop de 15"'),
('Reloj analógico', 'Reloj de pulsera con correa de acero inoxidable'),
('Cámara instantánea', 'Cámara fotográfica con papel fotosensible incluido'),
('Peluche oso mediano', 'Peluche suave de 40 cm de altura, color marrón'),

-- Sistemas Operativos
('Windows 11 Pro', 'Sistema operativo de Microsoft, licencia para 1 PC'),
('macOS Ventura', 'Sistema operativo para computadoras Apple Mac'),

-- Suite de Productividad
('Microsoft Office 365', 'Suscripción anual para 5 dispositivos'),
('Adobe Creative Cloud', 'Suite completa de diseño, suscripción mensual'),
('LibreOffice Pro', 'Suite ofimática de código abierto, licencia perpetua'),

-- Antivirus
('Norton 360 Deluxe', 'Protección antivirus para 5 dispositivos, 1 año'),
('Kaspersky Total Security', 'Suite de seguridad completa, licencia de 2 años'),

-- Diseño Gráfico
('Photoshop CC', 'Editor de imágenes profesional, suscripción anual'),
('Illustrator CC', 'Software de diseño vectorial, suscripción anual'),
('AutoCAD 2024', 'Software de diseño CAD profesional, licencia perpetua'),

-- Desarrollo
('Visual Studio Pro', 'Entorno de desarrollo integrado para programadores'),
('PyCharm Professional', 'IDE para desarrollo en Python, licencia anual'),
('GitHub Copilot', 'Asistente de IA para programación, suscripción mensual'),

-- Bases de Datos
('MySQL Enterprise', 'Sistema de gestión de bases de datos relacionales'),
('MongoDB Atlas', 'Base de datos NoSQL en la nube, plan profesional'),

-- Juegos
('The Sims 5 Deluxe', 'Videojuego de simulación de vida, edición completa'),
('FIFA 24 Ultimate', 'Videojuego de fútbol con todos los equipos oficiales'),

-- Utilidades
('WinRAR Pro', 'Software de compresión de archivos, licencia vitalicia'),
('CCleaner Professional', 'Herramienta de optimización del sistema, 1 año'),
('VMware Workstation', 'Software de virtualización para desarrolladores');

-- en la esquema Users solo se generaron 20 datos
INSERT INTO users.users (name_users, password_users) VALUES
('admin', 'a1b2c3d4e5'),
('jperez', 'jp2024secure'),
('mgonzalez', 'mariagonz*123'),
('crodriguez', 'cr789!xyz'),
('amartinez', 'AnaM2024$'),
('lsanchez', 'LuisS@456'),
('llopez', 'LauLop*789'),
('pramirez', 'PedroR2024!'),
('storres', 'SofiT*1234'),
('jfernandez', 'JorgeF$567'),
('ediaz', 'ElenaD2024*'),
('mruiz', 'MiguelR@890'),
('igomez', 'IsaGomez*123'),
('fhernandez', 'FranH$456'),
('cjimenez', 'CarmenJ2024!'),
('avazquez', 'AntonioV*789'),
('pmoreno', 'PatriM@1234'),
('jalvarez', 'JoseA$2024'),
('rnavarro', 'RosaN*5678'),
('mmolina', 'ManuelM@2024');

INSERT INTO users.position (name_position, description_position) VALUES
-- Administración (5 posiciones)
('Gerente General', 'Responsable de la dirección estratégica de la empresa'),
('Subgerente', 'Apoyo en la gestión general y supervisión de áreas'),
('Asistente de Gerencia', 'Soporte administrativo a la gerencia'),
('Coordinador Administrativo', 'Coordina procesos administrativos'),
('Recepcionista', 'Atención al público y gestión de correspondencia'),

-- Ventas (5 posiciones)
('Jefe de Ventas', 'Lidera el equipo comercial y estrategias de venta'),
('Ejecutivo de Ventas Senior', 'Ventas corporativas y cuentas clave'),
('Ejecutivo de Ventas', 'Gestión de clientes y cierre de ventas'),
('Asesor Comercial', 'Atención a clientes y venta directa'),
('Auxiliar de Ventas', 'Soporte al área comercial'),

-- Almacén/Logística (5 posiciones)
('Jefe de Almacén', 'Responsable de inventarios y operaciones logísticas'),
('Supervisor de Logística', 'Supervisión de despachos y recepciones'),
('Operador de Almacén', 'Manejo físico de inventarios'),
('Auxiliar de Inventarios', 'Soporte en control de stock'),
('Conductor Logístico', 'Transporte y distribución de mercancías'),

-- Sistemas/TI (5 posiciones)
('Jefe de TI', 'Responsable de la infraestructura tecnológica'),
('Administrador de Sistemas', 'Gestión de servidores y redes'),
('Desarrollador Senior', 'Programación de sistemas internos'),
('Soporte Técnico', 'Atención a usuarios e incidencias TI'),
('Analista de Datos', 'Procesamiento y análisis de información');

INSERT INTO users.contract (id_employee, id_position, date_contract, type_contract, time_contrat) VALUES
-- Administración (empleados 1-5)
(1, 1, '2023-03-15', 'Directivo', 10),  -- Gerente General
(2, 2, '2023-06-10', 'Directivo', 8),   -- Subgerente
(3, 5, '2023-09-01', 'Temporal', 4),     -- Recepcionista
(4, 4, '2023-05-20', 'Tiempo completo', 7),  -- Coordinador Administrativo
(5, 3, '2023-08-15', 'Medio tiempo', 5),  -- Asistente de Gerencia

-- Ventas (empleados 6-10)
(6, 6, '2023-02-01', 'Comisión', 10),    -- Jefe de Ventas
(7, 7, '2023-04-15', 'Por objetivos', 9), -- Ejecutivo Senior
(8, 8, '2023-07-01', 'Temporal', 6),     -- Ejecutivo de Ventas
(9, 9, '2023-09-10', 'Por comisión', 3), -- Asesor Comercial
(10, 10, '2023-10-01', 'Prueba', 2),     -- Auxiliar de Ventas

-- Almacén/Logística (empleados 11-15)
(11, 11, '2023-01-05', 'Tiempo completo', 10),  -- Jefe de Almacén
(12, 12, '2023-03-20', 'Por temporada', 8),     -- Supervisor Logística
(13, 13, '2023-06-15', 'Temporal', 6),         -- Operador de Almacén
(14, 14, '2023-08-01', 'Medio tiempo', 4),     -- Auxiliar de Inventarios
(15, 15, '2023-09-15', 'Por obra', 3),         -- Conductor Logístico

-- Sistemas/TI (empleados 16-20)
(16, 16, '2023-02-10', 'Por proyecto', 10),    -- Jefe de TI
(17, 17, '2023-05-05', 'Tiempo completo', 8),  -- Administrador de Sistemas
(18, 18, '2023-07-20', 'Por proyecto', 6),     -- Desarrollador Senior
(19, 19, '2023-09-01', 'Prueba', 4),          -- Soporte Técnico
(20, 20, '2023-10-10', 'Por proyecto', 2);     -- Analista de Datos

INSERT INTO users.control_access (id_users, admin_control_access, buys_control_access, sale_control_access, store_control_access) VALUES
-- Administradores (acceso total)
(1, 'full', 'full', 'full', 'full'),
(2, 'read', 'full', 'full', 'full'),

-- Departamento de compras
(3, NULL, 'full', 'read', 'read'),
(4, NULL, 'full', NULL, 'read'),
(5, NULL, 'full', NULL, 'read'),

-- Vendedores
(6, NULL, NULL, 'full', 'read'),
(7, NULL, NULL, 'full', 'read'),
(8, NULL, NULL, 'full', 'read'),
(9, NULL, NULL, 'full', 'read'),
(10, NULL, NULL, 'full', 'read'),

-- Almacén/inventario
(11, NULL, 'read', 'read', 'full'),
(12, NULL, 'read', 'read', 'full'),
(13, NULL, 'read', NULL, 'full'),
(14, NULL, 'read', NULL, 'full'),
(15, NULL, 'read', NULL, 'full'),

-- Sistemas/TI (solo acceso de lectura)
(16, 'read', 'read', 'read', 'read'),
(17, 'read', 'read', 'read', 'read'),
(18, 'read', 'read', 'read', 'read'),
(19, 'read', 'read', 'read', 'read'),
(20, 'read', 'read', 'read', 'read');

INSERT INTO users.area (location_area, description_area, number_area) VALUES
-- Áreas administrativas
('Piso 1 - Oficina 101', 'Gerencia General', 1),
('Piso 1 - Oficina 102', 'Subgerencia', 2),
('Piso 1 - Oficina 103', 'Asistencia Gerencial', 3),
('Piso 1 - Oficina 104', 'Coordinación Administrativa', 4),
('Piso 1 - Recepción', 'Atención al público', 5),

-- Áreas de ventas
('Piso 2 - Oficina 201', 'Jefatura de Ventas', 6),
('Piso 2 - Oficina 202', 'Ventas Corporativas', 7),
('Piso 2 - Cubículos 1-5', 'Ejecutivos de Ventas', 8),
('Piso 2 - Showroom', 'Asesoría Comercial', 9),
('Piso 2 - Recepción', 'Soporte de Ventas', 10),

-- Áreas de almacén/logística
('Edificio B - Nivel 1', 'Administración de Almacén',-11),
('Edificio B - Nivel 1', 'Supervisión Logística', 12),
('Edificio B - Nivel 2', 'Operaciones de Almacén', 13),
('Edificio B - Nivel 2', 'Control de Inventarios', 14),
('Edificio B - Patio', 'Distribución y Transporte', 15),

-- Áreas de sistemas/TI
('Piso 3 - Sala 301', 'Dirección de TI', 16),
('Piso 3 - Sala 302', 'Administración de Sistemas', 17),
('Piso 3 - Cubículos 6-10', 'Desarrollo de Software', 18),
('Piso 3 - Sala 303', 'Soporte Técnico', 19),
('Piso 3 - Sala 304', 'Análisis de Datos', 20);

INSERT INTO users.assing_area (id_employee, id_area) VALUES
-- Asignaciones para Administración (empleados 1-5)
(1, 1),  -- Gerente General al área 1
(2, 2),  -- Subgerente al área 2
(3, 5),  -- Asistente de Gerencia al área 5
(4, 4),  -- Coordinador Administrativo al área 4
(5, 3),  -- Recepcionista al área 3

-- Asignaciones para Ventas (empleados 6-10)
(6, 6),  -- Jefe de Ventas al área 6
(7, 7),  -- Ejecutivo Senior al área 7
(8, 8),  -- Ejecutivo de Ventas al área 8
(9, 9),  -- Asesor Comercial al área 9
(10, 10), -- Auxiliar de Ventas al área 10

-- Asignaciones para Almacén (empleados 11-15)
(11, 11), -- Jefe de Almacén al área 11
(12, 12), -- Supervisor Logística al área 12
(13, 13), -- Operador de Almacén al área 13
(14, 14), -- Auxiliar de Inventarios al área 14
(15, 15), -- Conductor Logístico al área 15

-- Asignaciones para Sistemas/TI (empleados 16-20)
(16, 16), -- Jefe de TI al área 16
(17, 17), -- Administrador de Sistemas al área 17
(18, 18), -- Desarrollador Senior al área 18
(19, 19), -- Soporte Técnico al área 19
(20, 20); -- Analista de Datos al área 20

-- en la esquema BUYS solo se generaron 30 datos
INSERT INTO buys.buys (id_users, id_buys_detail, id_buys_supplier, date_buys) VALUES
-- Compras de Alimentos (realizadas por usuarios 1-5)
(1, 1, 1, '2024-01-05'),
(2, 2, 2, '2024-01-10'),
(3, 3, 3, '2024-01-15'),
(4, 4, 4, '2024-01-20'),
(5, 5, 5, '2024-01-25'),

-- Compras de Electrónicos (realizadas por usuarios 6-10)
(6, 6, 6, '2024-02-01'),
(7, 7, 7, '2024-02-05'),
(8, 8, 8, '2024-02-10'),
(9, 9, 9, '2024-02-15'),
(10, 10, 10, '2024-02-20'),

-- Compras de Hogar (realizadas por usuarios 11-15)
(11, 11, 11, '2024-03-01'),
(12, 12, 12, '2024-03-05'),
(13, 13, 13, '2024-03-10'),
(14, 14, 14, '2024-03-15'),
(15, 15, 15, '2024-03-20'),

-- Compras de Ropa (realizadas por usuarios 16-20)
(16, 16, 16, '2024-04-01'),
(17, 17, 17, '2024-04-05'),
(18, 18, 18, '2024-04-10'),
(19, 19, 19, '2024-04-15'),
(20, 20, 20, '2024-04-20'),

-- Compras de Oficina (realizadas por usuarios 1-5)
(1, 21, 21, '2024-05-01'),
(2, 22, 22, '2024-05-05'),
(3, 23, 23, '2024-05-10'),
(4, 24, 24, '2024-05-15'),
(5, 25, 25, '2024-05-20'),

-- Compras Varias (realizadas por usuarios 6-10)
(6, 26, 26, '2024-06-01'),
(7, 27, 27, '2024-06-05'),
(8, 28, 28, '2024-06-10'),
(9, 29, 29, '2024-06-15'),
(10, 30, 30, '2024-06-20');

INSERT INTO buys.buys_detail (id_item, cost_detail, amount_detail) VALUES
-- Alimentos (costos por unidad en centavos)
(1, 1200, 50),    -- Arroz blanco 1kg (S/12.00 c/u, 50 unidades)
(2, 1800, 40),    -- Leche entera 1L (S/18.00 c/u, 40 unidades)
(3, 4500, 20),    -- Aceite de oliva 500ml (S/45.00 c/u, 20 unidades)
(4, 2200, 30),    -- Harina de trigo 2kg (S/22.00 c/u, 30 unidades)
(5, 1500, 60),    -- Galletas integrales (S/15.00 c/u, 60 unidades)

-- Electrónicos (costos mayores)
(6, 350000, 5),   -- Smartphone X200 (S/3500 c/u, 5 unidades)
(7, 120000, 8),    -- Auriculares inalámbricos (S/1200 c/u, 8 unidades)
(8, 220000, 4),    -- Tablet Pro 10" (S/2200 c/u, 4 unidades)
(9, 35000, 12),    -- Teclado mecánico (S/350 c/u, 12 unidades)
(10, 180000, 6),   -- Monitor 24" Full HD (S/1800 c/u, 6 unidades)

-- Hogar
(11, 28000, 15),   -- Juego de sábanas king (S/280 c/u, 15 unidades)
(12, 45000, 8),    -- Olla a presión 5L (S/450 c/u, 8 unidades)
(13, 320000, 3),   -- Aspiradora vertical (S/3200 c/u, 3 unidades)
(14, 18000, 20),   -- Cortina blackout (S/180 c/u, 20 unidades)
(15, 65000, 10),   -- Juego de cubiertos 12pz (S/650 c/u, 10 unidades)

-- Ropa
(16, 8500, 25),    -- Camisa manga larga (S/85 c/u, 25 unidades)
(17, 12000, 20),   -- Jeans slim fit (S/120 c/u, 20 unidades)
(18, 22000, 12),   -- Chaqueta impermeable (S/220 c/u, 12 unidades)
(19, 35000, 8),    -- Zapatos formales (S/350 c/u, 8 unidades)
(20, 4500, 30),    -- Gorra deportiva (S/45 c/u, 30 unidades)

-- Oficina
(21, 800, 100),    -- Paquete de hojas A4 (S/8 c/u, 100 unidades)
(22, 500, 50),     -- Bolígrafos surtidos (S/5 c/u, 50 unidades)
(23, 12000, 15),   -- Agenda ejecutiva (S/120 c/u, 15 unidades)
(24, 3500, 25),    -- Grapadora metálica (S/35 c/u, 25 unidades)
(25, 8500, 20),    -- Calculadora científica (S/85 c/u, 20 unidades)

-- Varios
(26, 6500, 15),    -- Balón de fútbol (S/65 c/u, 15 unidades)
(27, 12000, 12),   -- Mochila escolar (S/120 c/u, 12 unidades)
(28, 35000, 5),    -- Reloj analógico (S/350 c/u, 5 unidades)
(29, 85000, 3),    -- Cámara instantánea (S/850 c/u, 3 unidades)
(30, 2500, 40);    -- Peluche oso mediano (S/25 c/u, 40 unidades)

INSERT INTO buys.buys_supplier (supplier_name, company_name, email, number_phone) VALUES
-- Proveedores de Alimentos
('Carlos Mendoza', 'Alimentos Integrales S.A.', 'c.mendoza@alimentosintegrales.com', '+51 987654321'),
('María López', 'Productos Frescos del Valle', 'maria.lopez@pfrescos.com', '+51 987654322'),
('Roberto Vega', 'Importadora Oleum', 'r.vega@oleumimport.com', '+51 987654323'),
('Sofía Ramírez', 'Molinos Modernos', 'sofia.ramirez@molinosmodernos.com', '+51 987654324'),
('Jorge Tapia', 'Snacks Saludables S.A.', 'j.tapia@snackssaludables.com', '+51 987654325'),

-- Proveedores de Electrónicos
('Luis Chang', 'Electrónica Avanzada S.A.', 'l.chang@electronicaavanzada.com', '+51 987654326'),
('Ana Kim', 'Soluciones de Audio S.A.', 'a.kim@audio-soluciones.com', '+51 987654327'),
('Pedro Wong', 'Dispositivos Móviles S.A.', 'p.wong@dispositivosmoviles.com', '+51 987654328'),
('Laura Chen', 'Tecnología para Gamers', 'l.chen@gaming-tech.com', '+51 987654329'),
('Daniel Park', 'Visual Systems S.A.', 'd.park@visualsystems.com', '+51 987654330'),

-- Proveedores de Hogar
('Marta Gómez', 'Confort Textil S.A.', 'm.gomez@conforttextil.com', '+51 987654331'),
('Ricardo Torres', 'Utensilios de Acero S.A.', 'r.torres@utensiliosacero.com', '+51 987654332'),
('Carmen Díaz', 'Electrodomésticos Modernos', 'c.diaz@electrodomesticos-mod.com', '+51 987654333'),
('Fernando Ruiz', 'Cortinas y Más S.A.', 'f.ruiz@cortinasymas.com', '+51 987654334'),
('Patricia Soto', 'Cubertería Fina S.A.', 'p.soto@cuberteriafina.com', '+51 987654335'),

-- Proveedores de Ropa
('Alejandro Méndez', 'Textiles Ejecutivos S.A.', 'a.mendez@textilesejecutivos.com', '+51 987654336'),
('Gabriela Ríos', 'Denim Experts S.A.', 'g.rios@denimexperts.com', '+51 987654337'),
('Oscar Fuentes', 'Ropa Técnica S.A.', 'o.fuentes@ropatecnica.com', '+51 987654338'),
('Lucía Vargas', 'Zapatería de Calidad S.A.', 'l.vargas@zapateriacalidad.com', '+51 987654339'),
('Héctor Morales', 'SportStyle S.A.', 'h.morales@sportstyle.com', '+51 987654340'),

-- Proveedores de Oficina
('Elena Castro', 'Suministros de Oficina S.A.', 'e.castro@suministros-oficina.com', '+51 987654341'),
('Raúl Jiménez', 'Utiles Escolares S.A.', 'r.jimenez@utilesescolares.com', '+51 987654342'),
('Adriana Navarro', 'Productividad Office S.A.', 'a.navarro@productividadoffice.com', '+51 987654343'),
('Javier Paredes', 'OficceTools S.A.', 'j.paredes@officetools.com', '+51 987654344'),
('Diana Campos', 'Math Solutions S.A.', 'd.campos@mathsolutions.com', '+51 987654345'),

-- Proveedores Varios
('Arturo Rojas', 'Artículos Deportivos S.A.', 'a.rojas@articulosdeportivos.com', '+51 987654346'),
('Silvia Peña', 'Bags & More S.A.', 's.pena@bagsandmore.com', '+51 987654347'),
('Mario Herrera', 'Time Masters S.A.', 'm.herrera@timemasters.com', '+51 987654348'),
('Verónica Cordero', 'Cameras Pro S.A.', 'v.cordero@cameraspro.com', '+51 987654349'),
('Roberto Salgado', 'Toys & Fun S.A.', 'r.salgado@toysandfun.com', '+51 987654350');

-- en la esquema PROMOTION se usaron 29 datos para asignarles una promocion
-- no todas tienen una promocion
INSERT INTO promotion.promotion (id_item, date_promotion, amount_promotion, discount) VALUES
-- Alimentos con promoción (5)
(1, '2024-06-01', 100, 10),   -- Arroz blanco 10% descuento
(2, '2024-06-15', 80, 15),    -- Leche entera 15% descuento
(3, '2024-07-01', 50, 20),    -- Aceite de oliva 20% descuento (verano)
(5, '2024-06-20', 150, 12),   -- Galletas integrales 12% descuento

-- Electrónicos en oferta (4)
(6, '2024-11-25', 15, 30),    -- Smartphone X200 30% (Black Friday)
(7, '2024-12-15', 25, 25),    -- Auriculares inalámbricos 25% (Navidad)
(9, '2024-08-15', 30, 20),    -- Teclado mecánico 20% (back to school)
(10, '2024-10-10', 10, 15),   -- Monitor 24" 15% (día del trabajo)

-- Hogar en promoción (4)
(11, '2024-05-30', 20, 18),   -- Juego de sábanas 18% (invierno)
(12, '2024-01-15', 15, 22),   -- Olla a presión 22% (año nuevo)
(14, '2024-09-01', 35, 15),   -- Cortina blackout 15% (primavera)
(15, '2024-12-01', 25, 20),   -- Cubiertos 20% (navidad)

-- Ropa con descuento (4)
(16, '2024-01-30', 40, 25),   -- Camisas 25% (rebajas enero)
(17, '2024-06-28', 35, 30),   -- Jeans 30% (medio año)
(19, '2024-04-15', 15, 18),   -- Zapatos formales 18% (cambio de temporada)
(20, '2024-08-12', 50, 10),   -- Gorras 10% (verano)

-- Oficina en oferta (3)
(21, '2024-02-20', 200, 12),  -- Hojas A4 12% (inicio escolar)
(22, '2024-03-15', 150, 15),  -- Bolígrafos 15% (mes del trabajo)
(25, '2024-10-05', 30, 20),   -- Calculadoras 20% (exámenes)

-- Software y tecnología (6)
(31, '2024-07-04', 50, 40),   -- Windows 11 Pro 40% (independencia)
(33, '2024-05-01', 30, 35),   -- Office 365 35% (día del trabajo)
(36, '2024-02-14', 20, 25),   -- Norton 360 25% (san valentín)
(38, '2024-09-15', 15, 30),   -- Photoshop 30% (día del diseñador)
(41, '2024-10-16', 10, 20),   -- Visual Studio 20% (día del programador)
(46, '2024-12-22', 25, 50);   -- The Sims 5 50% (navidad)
