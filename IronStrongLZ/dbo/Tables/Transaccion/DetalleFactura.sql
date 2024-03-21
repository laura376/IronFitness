CREATE TABLE [dbo].[DetalleFactura]
(
	[IdDetalleFactura] UNIQUEIDENTIFIER NOT NULL DEFAULT NewId(), 
    [IdFactura] UNIQUEIDENTIFIER NULL, 
    [Direccion] NVARCHAR(MAX) NULL,
    [Empleado] NVARCHAR(MAX) NULL, 
    [Fecha] NVARCHAR(MAX) NULL, 
    [CondicionPago] NVARCHAR(MAX) NULL, 
    [NombrePlan] NVARCHAR(MAX) NULL, 
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_DetalleFactura] PRIMARY KEY ([IdDetalleFactura]), 
    CONSTRAINT [FK_DetalleFactura_Factura] FOREIGN KEY ([IdFactura]) REFERENCES [Factura]([IdFactura]) 
)