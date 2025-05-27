-- Tabela de Motoristas
CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    CNH VARCHAR(20) NOT NULL,
    CategoriaCNH VARCHAR(5),
    ValidadeCNH DATE,
    Endereco NVARCHAR(200),
    Contato NVARCHAR(50),
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- Tabela de Clientes
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL,
    Empresa NVARCHAR(100),
    Endereco NVARCHAR(200),
    Contato NVARCHAR(50),
    Preferencias NVARCHAR(255),
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- Tabela de Pedidos
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    ClientID INT NOT NULL,
    DriverID INT NOT NULL,
    DetalhesPedido NVARCHAR(MAX),
    DataEntrega DATE,
    Status VARCHAR(50) CHECK (Status IN ('Pendente', 'Em trânsito', 'Entregue', 'Cancelado')),
    CreatedAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)
);

-- Tabela de Histórico de Entregas (1 registro por entrega concluída)
CREATE TABLE DriverHistory (
    HistoryID INT PRIMARY KEY IDENTITY(1,1),
    DriverID INT NOT NULL,
    OrderID INT NOT NULL,
    DataInicio DATETIME,
    DataFim DATETIME,
    Observacoes NVARCHAR(255),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Tabela de Log de Eventos de Entrega (múltiplos registros por pedido)
CREATE TABLE DeliveryLog (
    LogID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT NOT NULL,
    Evento VARCHAR(100) NOT NULL,           -- Ex: 'Saiu para entrega'
    Descricao NVARCHAR(255),                -- Detalhe adicional
    DataEvento DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
GO