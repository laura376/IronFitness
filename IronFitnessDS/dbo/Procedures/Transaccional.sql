/*
	SELECT	F.IdFactura AS IdFactura,
			F.NumFactura AS NumeroFactura,
			DF.IdDetalleFactura AS IdDetalleFactura,
			DF.Direccion AS Direccion,
			DF.Fecha AS Fecha,
			DF.CondicionPago AS CondicionPago,
			DF.Total AS Total
			
FROM Factura F
			INNER JOIN DetalleFactura DF
				ON F.IdFactura = DF.IdFactura
FOR JSON PATH*/