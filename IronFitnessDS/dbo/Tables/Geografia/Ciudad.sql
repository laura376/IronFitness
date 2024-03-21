CREATE TABLE [dbo].[Ciudad]
(
	[IdCiudad] UNIQUEIDENTIFIER NOT NULL DEFAULT NewId(), 
    [IdDepartamento] UNIQUEIDENTIFIER NULL, 
    [Nombre] NVARCHAR(MAX) NULL, 
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_Ciudad] PRIMARY KEY ([IdCiudad]), 
    CONSTRAINT [FK_Ciudad_Departamento] FOREIGN KEY ([IdDepartamento]) REFERENCES [tblDepartamento]([IdDepartamento]) 
)