CREATE TABLE [dbo].[TipoDocumento] (
    [IdTipoDocumento] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    [IdUsuario]       UNIQUEIDENTIFIER NULL,
	[Documento]       NVARCHAR(MAX) NULL,
    [Activo]          BIT              DEFAULT ((1)) NULL,
    [Actualiza]       DATETIME         DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED ([IdTipoDocumento] ASC),
    CONSTRAINT [FK_TipoDocumento_Usuario] FOREIGN KEY ([IdUsuario]) REFERENCES [dbo].[Usuario] ([IdUsuario])
)