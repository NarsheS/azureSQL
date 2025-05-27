-- Motoristas
INSERT INTO Drivers (Nome, CNH, CategoriaCNH, ValidadeCNH, Endereco, Contato)
VALUES 
('João Pereira', '123456789', 'B', '2026-10-01', 'Rua Um, 123', 'joao@exemplo.com'),
('Luciana Lima', '987654321', 'C', '2027-05-15', 'Rua Dois, 456', 'luciana@exemplo.com'),
('Marcos Tavares', '1122334455', 'D', '2028-02-20', 'Rua Sete, 789', 'marcos@tavares.com'),
('Ana Paula Menezes', '9988776655', 'B', '2026-12-05', 'Av. Central, 321', 'ana@paulamenezes.com');

-- Clientes
INSERT INTO Clients (Nome, Empresa, Endereco, Contato, Preferencias)
VALUES 
('Carlos Souza', 'Loja Souza', 'Av. Principal, 100', 'carlos@lojasouza.com', 'Entrega à tarde'),
('Fernanda Dias', 'Distribuidora Dias', 'Rua das Flores, 88', 'fernanda@dias.com', 'Evitar sábados'),
('Bruno Martins', 'Martins Office', 'Rua Alfa, 222', 'bruno@martins.com', 'Somente em horário comercial'),
('Helena Castro', 'Castro Papelaria', 'Av. Beta, 333', 'helena@castro.com', 'Aceita entregas aos sábados');

-- Pedidos
INSERT INTO Orders (ClientID, DriverID, DetalhesPedido, DataEntrega, Status)
VALUES 
(1, 1, '10 caixas de papel A4', '2025-06-01', 'Pendente'),
(2, 2, '5 pacotes de toner', '2025-06-03', 'Em trânsito'),
(3, 3, '3 impressoras e 2 cartuchos de tinta', '2025-06-05', 'Pendente'),
(4, 4, '20 cadernos e 15 blocos de notas', '2025-06-07', 'Pendente'),
(1, 3, '2 pacotes de papel fotográfico', '2025-06-02', 'Em trânsito');

-- Histórico de entrega
INSERT INTO DriverHistory (DriverID, OrderID, DataInicio, DataFim, Observacoes)
VALUES
(1, 1, '2025-06-01 08:00', '2025-06-01 10:30', 'Entrega feita dentro do prazo'),
(2, 2, '2025-06-03 09:00', '2025-06-03 11:20', 'Entrega feita com sucesso, cliente satisfeito'),
(3, 5, '2025-06-02 07:30', '2025-06-02 09:10', 'Pequeno atraso por trânsito intenso');

-- Logs de eventos de entrega
INSERT INTO DeliveryLog (OrderID, Evento, Descricao)
VALUES
(1, 'Saiu para entrega', 'Motorista João saiu às 08h00'),
(1, 'Chegou ao destino', 'Chegou no local de entrega às 10h15'),
(1, 'Entrega concluída', 'Cliente recebeu os produtos e assinou o comprovante'),
(2, 'Saiu para entrega', 'Motorista Luciana saiu às 09h00'),
(2, 'Chegou ao destino', 'Chegou no local às 11h05'),
(2, 'Entrega concluída', 'Cliente Fernanda confirmou recebimento'),
(5, 'Saiu para entrega', 'Motorista Marcos saiu às 07h30'),
(5, 'Chegou ao destino', 'Chegada às 08h50'),
(5, 'Entrega concluída', 'Entrega recebida por assistente do cliente');
GO