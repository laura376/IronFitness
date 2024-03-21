CREATE TABLE [dbo].[Sede]
(
	[IdSede] UNIQUEIDENTIFIER NOT NULL  DEFAULT NewId(), 
    [IdEmpresa] UNIQUEIDENTIFIER NULL, 
    [Nombre] NVARCHAR(MAX) NULL, 
    [Ubicacion] NVARCHAR(MAX) NULL,
    [Celular] NVARCHAR(MAX) NULL,
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_Sede] PRIMARY KEY ([IdSede]), 
    CONSTRAINT [FK_tblSede_Empresa] FOREIGN KEY ([IdEmpresa]) REFERENCES [Empresa]([IdEmpresa])
)