CREATE TABLE [dbo].[TipoDocumento]
(
	[IdTipoDocumento] UNIQUEIDENTIFIER NOT NULL  DEFAULT NewId(), 
    [IdUsuario] UNIQUEIDENTIFIER NULL, 
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_TipoDocumento] PRIMARY KEY ([IdTipoDocumento]), 
    CONSTRAINT [FK_TipoDocumento_Usuario] FOREIGN KEY ([IdUsuario]) REFERENCES [Usuario]([IdUsuario])
    )