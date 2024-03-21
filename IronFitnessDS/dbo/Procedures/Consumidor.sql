/*SELECT		U.IdUsuario AS IdUsuario,
				U.NombreUsuario AS NombreUsuario,
				U.Celular AS Celular,
				U.Correo AS Correo,
				G.IdGenero AS IdGenero,
				G.Genero AS Genero,
				TD.IdTipoDocumento AS IdTipoDocumento,
				TD.Documento AS Documento

FROM Usuario U
	INNER JOIN Genero G
	ON U.IdUsuario = G.IdUsuario
	INNER JOIN TipoDocumento TD
		ON U.IdUsuario = TD.IdUsuario
FOR JSON PATH*/