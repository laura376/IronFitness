/*SELECT	P.IdPlan AS IdPlan,
		P.NombrePlan AS NombrePlan,
		TP.IdTipoPlan AS IdTipoPlan,
		TP.Tarifa AS Tarifa

FROM tblPlan P
     INNER JOIN TipoPlan TP
		   ON P.IdPlan = P.IdPlan
FOR JSON PATH*/