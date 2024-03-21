CREATE TABLE [dbo].[Empleado]
(
	[IdEmpleado] UNIQUEIDENTIFIER NOT NULL DEFAULT NewId(), 
    [IdSede] UNIQUEIDENTIFIER NULL, 
    [NombreEmpleado] NVARCHAR(MAX) NULL, 
    [Edad] NVARCHAR(MAX) NULL, 
    [Correo] NVARCHAR(MAX) NULL,
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_Empleado] PRIMARY KEY ([IdEmpleado]), 
    CONSTRAINT [FK_Empleado_Sede] FOREIGN KEY ([IdSede]) REFERENCES [Sede]([IdSede])
)