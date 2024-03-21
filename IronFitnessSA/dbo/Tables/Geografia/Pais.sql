CREATE TABLE [dbo].[Pais] (
    [IdPais]    UNIQUEIDENTIFIER NOT NULL DEFAULT NewId(),
    [Nombre]    NVARCHAR(MAX)       NULL,
    [Activo]    BIT              NULL DEFAULT 1,
    [Actualiza] DATETIME         NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_tblPais] PRIMARY KEY ([IdPais])
)