
Create database BancoSimple2M5
GO
Use BancoSimple2M5
GO

Create table Clientes (
ClienteId int primary key identity (1,1),
Nombre Nvarchar (50) not null,
Identificacion Nvarchar (14) not null
);

Create table Cuentas (
CuentaId Int primary key identity (1,1),
NumeroCuenta Nvarchar (20) not null,
Saldo Decimal (18,2) not null default 0,
Activa Bit not null default 1,
ClienteId int not null,
Foreign key (ClienteId) references Clientes (ClienteId)
);
create table Transacciones (
TransaccionId Int primary key identity (1,1),
Monto decimal (18,2) not null,
Fecha datetime not null default getdate (),
Descripcion Nvarchar (200),
CuentaOrigenId int,
CuentaDestinoId int,
Foreign key (CuentaOrigenId) references Cuentas (CuentaId),
Foreign key (CuentaDestinoId) references Cuentas (CuentaId)
);

INSERT INTO Clientes (Nombre, Identificacion) VALUES
(N'Ana López', '001-15-0011A'),
(N'Carlos Pérez', '001-08-0002B'),
(N'María García', '001-22-0003C'),
(N'Juan Martínez', '001-03-0004D'),
(N'Lucía Ramírez', '001-29-0005E'),
(N'José Herrera', '001-04-0006F'),
(N'Laura Jiménez', '001-19-0007G'),
(N'Pedro Castillo', '001-09-0008H'),
(N'Elena Torres', '001-14-0009I'),
(N'Diego Mendoza', '001-28-0010J'),
(N'Sofía Rivera', '001-07-0011K'),
(N'Miguel Duarte', '001-15-0012L'),
(N'Camila Rojas', '001-30-0013M'),
(N'Andrés Silva', '001-21-0014N'),
(N'Valeria Fuentes', '001-04-0015O'),
(N'Jorge Peña', '001-23-0016P'),
(N'Natalia Salinas', '001-08-0017Q'),
(N'Luis Navarro', '001-17-0018R'),
(N'Fernanda Cruz', '001-26-0019S'),
(N'Raúl Ortega', '001-06-0020T');

INSERT INTO Cuentas (NumeroCuenta, Saldo, Activa, ClienteId) VALUES
('100100001', 1200.50, 1, 1),
('100100002', 2300.00, 1, 1),
('100200001', 1500.75, 1, 2),
('100200002', 850.00, 1, 2),
('100300001', 4200.90, 1, 3),
('100300002', 3100.25, 1, 3),
('100400001', 900.00, 1, 4),
('100400002', 670.80, 1, 4),
('100500001', 250.00, 1, 5),
('100500002', 1250.00, 1, 5),
('100600001', 1890.45, 1, 6),
('100600002', 1000.00, 1, 6),
('100700001', 3600.00, 1, 7),
('100700002', 450.50, 1, 7),
('100800001', 750.00, 1, 8),
('100800002', 1490.00, 1, 8),
('100900001', 2500.00, 1, 9),
('100900002', 3300.75, 1, 9),
('101000001', 190.25, 1, 10),
('101000002', 980.00, 1, 10),
('101100001', 2100.00, 1, 11),
('101100002', 1900.00, 1, 11),
('101200001', 400.00, 1, 12),
('101200002', 750.00, 1, 12),
('101300001', 1380.40, 1, 13),
('101300002', 690.00, 1, 13),
('101400001', 5000.00, 1, 14),
('101400002', 4100.10, 1, 14),
('101500001', 1230.60, 1, 15),
('101500002', 1430.70, 1, 15),
('101600001', 890.30, 1, 16),
('101600002', 1300.00, 1, 16),
('101700001', 980.00, 1, 17),
('101700002', 250.00, 1, 17),
('101800001', 4600.00, 1, 18),
('101800002', 2200.00, 1, 18),
('101900001', 500.00, 1, 19),
('101900002', 300.00, 1, 19),
('102000001', 1200.00, 1, 20),
('102000002', 800.00, 1, 20);

INSERT INTO Transacciones (Monto, Fecha, Descripcion, CuentaOrigenId, CuentaDestinoId) VALUES
(100.00, GETDATE(), N'Transferencia a amigo', 1, 2),
(250.50, GETDATE(), N'Pago de servicio', 3, 4),
(90.75, GETDATE(), N'Retiro para compra', 5, 6),
(300.00, GETDATE(), N'Transferencia familiar', 7, 8),
(500.00, GETDATE(), N'Pago de préstamo', 9, 10),
(50.25, GETDATE(), N'Abono tarjeta', 11, 12),
(700.00, GETDATE(), N'Transacción entre cuentas', 13, 14),
(40.00, GETDATE(), N'Compra online', 15, 16),
(320.00, GETDATE(), N'Retiro de emergencia', 17, 18),
(180.25, GETDATE(), N'Giro a cuenta asociada', 19, 20),
(600.00, GETDATE(), N'Pago alquiler', 21, 22),
(90.00, GETDATE(), N'Envió a pariente', 23, 24),
(30.00, GETDATE(), N'Compra supermercado', 25, 26),
(450.50, GETDATE(), N'Pago colegiatura', 27, 28),
(115.00, GETDATE(), N'Transferencia interna', 29, 30),
(370.00, GETDATE(), N'Envío por regalo', 31, 32),
(50.00, GETDATE(), N'Abono mensual', 33, 34),
(275.00, GETDATE(), N'Transacción habitual', 35, 36),
(95.60, GETDATE(), N'Pago de reparación', 37, 38),
(120.00, GETDATE(), N'Transferencia rápida', 39, 40);
