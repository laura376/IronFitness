CREATE TABLE [dbo].[Empresa]
(
	[IdEmpresa] UNIQUEIDENTIFIER NOT NULL DEFAULT NewId(), 
    [IdCiudad] UNIQUEIDENTIFIER NULL, 
    [Nombre] NVARCHAR(MAX) NULL, 
    [Direccion] NVARCHAR(MAX) NULL, 
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_Empresa] PRIMARY KEY ([IdEmpresa]), 
    CONSTRAINT [FK_tblEmpresa_Ciudad] FOREIGN KEY ([IdCiudad]) REFERENCES [Ciudad]([IdCiudad]) 
)