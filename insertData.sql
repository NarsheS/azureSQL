-- Motoristas
INSERT INTO Drivers (Nome, CNH, CategoriaCNH, ValidadeCNH, Endereco, Contato)
VALUES 
('João Pereira', '123456789', 'B', '2026-10-01', 'Rua Um, 123', 'joao@exemplo.com'),
('Luciana Lima', '987654321', 'C', '2027-05-15', 'Rua Dois, 456', 'luciana@exemplo.com');

-- Clientes
INSERT INTO Clients (Nome, Empresa, Endereco, Contato, Preferencias)
VALUES 
('Carlos Souza', 'Loja Souza', 'Av. Principal, 100', 'carlos@lojasouza.com', 'Entrega à tarde'),
('Fernanda Dias', 'Distribuidora Dias', 'Rua das Flores, 88', 'fernanda@dias.com', 'Evitar sábados');

-- Pedidos
INSERT INTO Orders (ClientID, DriverID, DetalhesPedido, DataEntrega, Status)
VALUES 
(1, 1, '10 caixas de papel A4', '2025-06-01', 'Pendente'),
(2, 2, '5 pacotes de toner', '2025-06-03', 'Em trânsito');

-- Histórico de entrega
INSERT INTO DriverHistory (DriverID, OrderID, DataInicio, DataFim, Observacoes)
VALUES
(1, 1, '2025-06-01 08:00', '2025-06-01 10:30', 'Entrega feita dentro do prazo');

-- Logs de eventos de entrega
INSERT INTO DeliveryLog (OrderID, Evento, Descricao)
VALUES
(1, 'Saiu para entrega', 'Motorista João saiu às 08h00'),
(1, 'Chegou ao destino', 'Chegou no local de entrega às 10h15'),
(1, 'Entrega concluída', 'Cliente recebeu os produtos e assinou o comprovante');
GO