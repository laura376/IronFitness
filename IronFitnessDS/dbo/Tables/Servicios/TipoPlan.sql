CREATE TABLE [dbo].[TipoPlan]
(
	[IdTipoTarifa] UNIQUEIDENTIFIER NOT NULL DEFAULT NewId(), 
    [IdPlan] UNIQUEIDENTIFIER NULL, 
    [Tarifa] NVARCHAR(MAX) NULL, 
    [Activo] BIT NULL DEFAULT 1, 
    [Actualiza] DATETIME NULL DEFAULT GetDate(),
    CONSTRAINT [PK_TipoPlan] PRIMARY KEY ([IdTipoTarifa]), 
    CONSTRAINT [FK_TipoPlan_Plan] FOREIGN KEY ([IdPlan]) REFERENCES [tblPlan]([IdPlan])
)