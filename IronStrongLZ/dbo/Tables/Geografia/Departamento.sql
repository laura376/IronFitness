CREATE TABLE [dbo].[tblDepartamento] (
    [IdDepartamento] UNIQUEIDENTIFIER NOT NULL DEFAULT NewId(),
    [IdPais]         UNIQUEIDENTIFIER NULL,
    [Nombre] NVARCHAR(MAX) NULL, 
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_tblDepartamento] PRIMARY KEY CLUSTERED ([IdDepartamento] ASC), 
    CONSTRAINT [FK_tblDepartamento_Pais] FOREIGN KEY ([IdPais]) REFERENCES [Pais]([IdPais])
)