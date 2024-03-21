CREATE TABLE [dbo].[Genero]
(
	[IdGenero] UNIQUEIDENTIFIER NOT NULL  DEFAULT NewId(), 
    [IdUsuario] UNIQUEIDENTIFIER NULL, 
    [Nombre] UNIQUEIDENTIFIER NULL,  
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_Genero] PRIMARY KEY ([IdGenero]), 
    CONSTRAINT [FK_Genero_Usuario] FOREIGN KEY ([IdUsuario]) REFERENCES [Usuario]([IdUsuario])
)