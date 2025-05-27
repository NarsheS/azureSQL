SELECT 
    H.HistoryID,
    D.Nome AS NomeMotorista,
    H.OrderID,
    H.DataInicio,
    H.DataFim,
    H.Observacoes
FROM DriverHistory H
JOIN Drivers D ON H.DriverID = D.DriverID
ORDER BY H.DataInicio DESC;
GO