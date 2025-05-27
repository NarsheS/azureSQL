SELECT 
    L.OrderID,
    L.Evento,
    L.Descricao,
    L.DataEvento
FROM DeliveryLog L
WHERE L.OrderID = 1
ORDER BY L.DataEvento;
GO