SELECT 
    O.OrderID,
    C.Nome AS NomeCliente,
    D.Nome AS NomeMotorista,
    O.DetalhesPedido,
    O.DataEntrega,
    O.Status
FROM Orders O
JOIN Clients C ON O.ClientID = C.ClientID
JOIN Drivers D ON O.DriverID = D.DriverID;
GO