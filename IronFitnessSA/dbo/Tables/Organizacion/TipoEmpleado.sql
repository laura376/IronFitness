CREATE TABLE [dbo].[TipoEmpleado]
(
	[IdTipoEmpleado] UNIQUEIDENTIFIER NOT NULL DEFAULT NewId(), 
    [IdEmpleado] UNIQUEIDENTIFIER NULL, 
    [Cargo] NVARCHAR(MAX) NULL, 
    [Horario] NVARCHAR(MAX) NULL, 
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_TipoEmpleado] PRIMARY KEY ([IdTipoEmpleado]), 
    CONSTRAINT [FK_tblTipoEmpleado_Empleado] FOREIGN KEY ([IdEmpleado]) REFERENCES [Empleado]([IdEmpleado]) 
)