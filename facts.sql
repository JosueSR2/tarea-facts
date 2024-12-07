USE [DWHNorthwindOrders];
GO

-- Limpiar datos previos de las tablas Fact
DELETE FROM dbo.FactOrders;
DELETE FROM dbo.FactClientesAtendidos;
DELETE FROM dbo.FactOrdersDetails;

-- Cargar datos en FactOrders
INSERT INTO dbo.FactOrders (OrderKey, CustomerKey, StoreKey, OrderDateKey, TotalAmount)
VALUES
(1, 101, 1, 20240101, 500.00),  -- Pedido 1
(2, 102, 2, 20240102, 300.00),  -- Pedido 2
(3, 103, 3, 20240103, 450.00);  -- Pedido 3

-- Cargar datos en FactClientesAtendidos
INSERT INTO dbo.FactClientesAtendidos (CustomerKey, StoreKey, AttendedDateKey, ServiceType, AmountSpent)
VALUES
(1, 1, 20240101, 'Repair', 150.00),  -- Cliente 1
(2, 2, 20240102, 'Maintenance', 200.00),  -- Cliente 2
(3, 3, 20240103, 'Purchase', 100.00);  -- Cliente 3

-- Cargar datos en FactOrdersDetails
INSERT INTO dbo.FactOrdersDetails (OrderDetailKey, OrderKey, ProductKey, Quantity, UnitPrice)
VALUES
(1, 1, 1, 2, 25.00),  -- Detalle 1 de la Orden 1
(2, 1, 2, 1, 50.00),  -- Detalle 2 de la Orden 1
(3, 2, 3, 4, 15.00);  -- Detalle 1 de la Orden 2

-- Verificar datos en FactOrders
SELECT * FROM dbo.FactOrders;

-- Verificar datos en FactClientesAtendidos
SELECT * FROM dbo.FactClientesAtendidos;

-- Verificar datos en FactOrdersDetails
SELECT * FROM dbo.FactOrdersDetails;
