CREATE TABLE [dbo].[Factura]
(
	[IdFactura] UNIQUEIDENTIFIER NOT NULL  DEFAULT NewId(), 
    [IdEmpleado] UNIQUEIDENTIFIER NULL, 
    [IdUsuario] UNIQUEIDENTIFIER NULL, 
    [NumFactura] NVARCHAR(MAX) NULL, 
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_Factura] PRIMARY KEY ([IdFactura]), 
    CONSTRAINT [FK_Factura_Empleado] FOREIGN KEY ([IdEmpleado]) REFERENCES [Empleado]([IdEmpleado]),
    CONSTRAINT [FK_Factura_Usuario] FOREIGN KEY ([IdUsuario]) REFERENCES [Usuario]([IdUsuario])
    )