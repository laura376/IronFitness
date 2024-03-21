CREATE TABLE [dbo].[Factura]
(
	[IdFactura] UNIQUEIDENTIFIER NOT NULL  DEFAULT NewId(), 
    [IdEmpleado] UNIQUEIDENTIFIER NULL, 
    [Nombre] NVARCHAR(MAX) NULL, 
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_Factura] PRIMARY KEY ([IdFactura]), 
    CONSTRAINT [FK_Factura_Empleado] FOREIGN KEY ([IdEmpleado]) REFERENCES [Empleado]([IdEmpleado])
    )