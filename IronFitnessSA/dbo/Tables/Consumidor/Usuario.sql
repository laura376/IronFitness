CREATE TABLE [dbo].[Usuario]
(
	[IdUsuario] UNIQUEIDENTIFIER NOT NULL  DEFAULT NewId(), 
    [IdFactura] UNIQUEIDENTIFIER NULL, 
    [NombreUsuario] NVARCHAR(MAX) NULL, 
    [Celular] NVARCHAR(MAX) NULL,
    [Correo] NVARCHAR(MAX) NULL, 
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_Usuario] PRIMARY KEY ([IdUsuario]), 
    CONSTRAINT [FK_Usuario_tblFactura] FOREIGN KEY ([IdFactura]) REFERENCES [Factura]([IdFactura])
)