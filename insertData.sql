INSERT INTO Drivers (DriverID, Nome, CNH, Endereco, Contato) 
VALUES (4, 'Sebastião Pereira', 'AZU32654523', 'Rua Petesburgo, 102', '(51) 95555-5555');
GO
INSERT INTO Clients (ClientID, Nome, Empresa, Endereco, Contato)
VALUES (4, 'Random Client', 'Rand', 'Av. Radint, 321', '(51) 92222-3333');
GO
INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status)
VALUES (4, 4, 4, 'Entrega de 20 Cabos de Aço', '2025-05-30', 'Pendente');
GO