/*SELECT	E.IdEmpresa AS IdEmpresa,
			E.Nombre AS NombreEmpresa,
			E.Direccion AS DireccionEmpresa,
			S.IdSede AS IdSede,
			S.Nombre AS NombreSede,
			S.Ubicacion AS UbicacionSede,
			S.Celular AS CelularSede,
			M.IdEmpleado AS IdEmpleado,
			M.NombreEmpleado AS NombreEmpleado,
			M.Edad AS EdadEmpleado,
			M.Correo AS CorreoEmpleado,
			TE.IdTipoEmpleado AS IdTipoEmpleado,
			TE.Cargo AS CargoEmpleado,
			TE.Horario AS HorarioEmpleado
FROM Empresa E
	INNER JOIN Sede S
		ON E.IdEmpresa = S.IdEmpresa
	INNER JOIN Empleado M
		ON S.IdSede = M.IdSede
	INNER JOIN TipoEmpleado TE
		ON M.IdEmpleado = TE.IdEmpleado
FOR JSON PATH*/