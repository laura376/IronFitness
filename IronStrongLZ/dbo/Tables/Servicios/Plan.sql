CREATE TABLE [dbo].[Plan]
(
	[IdPlan] UNIQUEIDENTIFIER NOT NULL DEFAULT NewId(), 
    [IdFactura] UNIQUEIDENTIFIER NULL, 
    [NombrePlan] NVARCHAR(MAX) NULL, 
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(), 
    CONSTRAINT [PK_Plan] PRIMARY KEY ([IdPlan]), 
    CONSTRAINT [FK_Plan_Factura] FOREIGN KEY ([IdFactura]) REFERENCES [Factura]([IdFactura]) 
)