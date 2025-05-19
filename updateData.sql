UPDATE Drivers
SET Nome = 'Sebastião R. Pereira', Contato = '(51) 91111-1111'
WHERE DriverID = 4;
GO
UPDATE Clients
SET Nome = 'Random C. Ltda', Endereco = 'Av. Radint, 999'
WHERE ClientID = 4;
GO
UPDATE Orders
SET Status = 'Entregue', DataEntrega = '2025-06-01'
WHERE OrderID = 4;
GO
