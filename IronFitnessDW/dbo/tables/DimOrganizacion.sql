CREATE TABLE [dbo].[DimOrganizacion]
(
	[IdOrganizacion] UNIQUEIDENTIFIER NOT NULL DEFAULT NewId(), 
    [IdEmpresa] UNIQUEIDENTIFIER NULL, 
    [IdSede] UNIQUEIDENTIFIER NULL, 
    [IdEmpleado] UNIQUEIDENTIFIER NULL, 
    [IdTipoEmpleado] NCHAR(10) NULL, 
    CONSTRAINT [PK_DimOrganizacion] PRIMARY KEY ([IdOrganizacion]) 
)
