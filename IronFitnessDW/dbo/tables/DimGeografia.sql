CREATE TABLE [dbo].[DimGeografia]
(
	[IdGeografia] UNIQUEIDENTIFIER NOT NULL DEFAULT NewId(), 
    [IdPais] UNIQUEIDENTIFIER NULL, 
    [IdDepartamento] UNIQUEIDENTIFIER NULL, 
    [IdCiudad] UNIQUEIDENTIFIER NULL, 
    [NombrePais] NVARCHAR(MAX) NULL, 
    [NombreDepartamento] NVARCHAR(MAX) NULL, 
    [NombreCiudad] NVARCHAR(MAX) NULL, 
    CONSTRAINT [PK_DimGeografia] PRIMARY KEY ([IdGeografia]) 
)
