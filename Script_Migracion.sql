USE [GD1C2023]
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Cupon
AS
    INSERT INTO QUERY_SQUAD.Tipo_Cupon (tipo_cupon_descripcion)
    SELECT DISTINCT Cupon_Tipo
    FROM gd_esquema.Maestra
    WHERE CUPON_TIPO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Estado_Pedido
AS
    INSERT INTO QUERY_SQUAD.Estado_Pedido (estado_pedido_descripcion)
    SELECT DISTINCT PEDIDO_ESTADO
    FROM gd_esquema.Maestra
    WHERE PEDIDO_ESTADO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Usuario
AS
    INSERT INTO QUERY_SQUAD.Usuario (usuario_nombre,usuario_apellido,usuario_dni,usuario_fecha_registro,usuario_telefono,usuario_email,usuario_fecha_nac)
	SELECT DISTINCT USUARIO_NOMBRE, USUARIO_APELLIDO, USUARIO_DNI, USUARIO_FECHA_REGISTRO, USUARIO_TELEFONO, USUARIO_MAIL, USUARIO_FECHA_NAC
	FROM gd_esquema.Maestra 
	WHERE USUARIO_NOMBRE IS NOT NULL AND USUARIO_APELLIDO IS NOT NULL
Go

--SELECT * FROM QUERY_SQUAD.Usuario


CREATE PROCEDURE QUERY_SQUAD.Migracion_Datos_Tarjeta
AS
    INSERT INTO QUERY_SQUAD.Datos_Tarjeta (medio_de_pago_marca_tarjeta, medio_de_pago_tarjeta)
    SELECT DISTINCT MARCA_TARJETA, MEDIO_PAGO_NRO_TARJETA
    FROM gd_esquema.Maestra
    WHERE MARCA_TARJETA IS NOT NULL AND MEDIO_PAGO_NRO_TARJETA IS NOT NULL
    --Migracion_Datos_Tarjeta
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Movilidad
AS
    INSERT INTO QUERY_SQUAD.Tipo_Movilidad (tipo_movilidad_descripcion)
    SELECT DISTINCT REPARTIDOR_TIPO_MOVILIDAD
    FROM gd_esquema.Maestra
    WHERE REPARTIDOR_TIPO_MOVILIDAD IS NOT NULL
    --Migracion_Tipo_Movilidad
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Medio_De_Pago
AS
    INSERT INTO QUERY_SQUAD.Tipo_Medio_De_Pago (tipo_medio_de_pago_descripcion)
    SELECT DISTINCT MEDIO_PAGO_TIPO
    FROM gd_esquema.Maestra
    WHERE MEDIO_PAGO_TIPO IS NOT NULL
    --Migracion_Tipo_Medio_De_Pago
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Localidad
AS
    INSERT INTO QUERY_SQUAD.Localidad (localidad_localidad)
    SELECT DISTINCT LOCAL_LOCALIDAD
    FROM gd_esquema.Maestra
    WHERE LOCAL_LOCALIDAD IS NOT NULL
    --Migracion_Localidad
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Estado_Envio_Mensajeria
AS
    INSERT INTO QUERY_SQUAD.Estado_Envio_Mensajeria (estado_envio_mensajeria_descripcion)
    SELECT DISTINCT ENVIO_MENSAJERIA_ESTADO
    FROM gd_esquema.Maestra
    WHERE ENVIO_MENSAJERIA_ESTADO IS NOT NULL
    --Migracion_Estado_Envio_Mensajeria
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Reclamo
AS
    INSERT INTO QUERY_SQUAD.Tipo_Reclamo (tipo_reclamo_descripcion)
    SELECT DISTINCT RECLAMO_DESCRIPCION
    FROM gd_esquema.Maestra
    WHERE RECLAMO_DESCRIPCION IS NOT NULL
    --Migracion_Tipo_Reclamo
Go
 

CREATE PROCEDURE QUERY_SQUAD.Migracion_Estado_Reclamo
AS
    --Migracion_Estado_Reclamo
	INSERT INTO QUERY_SQUAD.Estado_Reclamo (estado_reclamo_descripcion)
    SELECT DISTINCT RECLAMO_ESTADO
    FROM gd_esquema.Maestra
    WHERE RECLAMO_ESTADO IS NOT NULL

Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Operador_Reclamo
AS
    --Migracion_Operador_Reclamo
	INSERT INTO QUERY_SQUAD.Operador_Reclamo(operador_reclamo_nombre, operador_reclamo_apellido, operador_reclamo_dni, operador_reclamo_telefono, 
											 operador_reclamo_direccion, operador_reclamo_mail, operador_reclamo_fecha_nac)
	SELECT DISTINCT OPERADOR_RECLAMO_NOMBRE, OPERADOR_RECLAMO_APELLIDO, OPERADOR_RECLAMO_DNI, OPERADOR_RECLAMO_TELEFONO, 
					 OPERADOR_RECLAMO_DIRECCION, OPERADOR_RECLAMO_MAIL, OPERADOR_RECLAMO_FECHA_NAC
	FROM gd_esquema.Maestra
	WHERE OPERADOR_RECLAMO_DNI is not null
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Local
AS
    --Migracion_Tipo_Local
	INSERT INTO QUERY_SQUAD.Tipo_Local (tipo_local_tipo)
	SELECT DISTINCT LOCAL_TIPO
	FROM gd_esquema.Maestra
	WHERE LOCAL_TIPO is not null

Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Dia
AS
	INSERT INTO QUERY_SQUAD.Dia (dia_nombre)
    SELECT DISTINCT HORARIO_LOCAL_DIA
    FROM gd_esquema.Maestra
    WHERE HORARIO_LOCAL_DIA IS NOT NULL
Go


CREATE PROCEDURE QUERY_SQUAD.Migracion_Paquete
AS
    INSERT INTO QUERY_SQUAD.Paquete (paquete_tipo, paquete_alto_max, paquete_ancho_max, paquete_largo_max, paquete_peso_max, paquete_tipo_precio)
    SELECT DISTINCT PAQUETE_TIPO, PAQUETE_ALTO_MAX, PAQUETE_ANCHO_MAX, PAQUETE_LARGO_MAX, PAQUETE_PESO_MAX, PAQUETE_TIPO_PRECIO
    FROM gd_esquema.Maestra
    WHERE PAQUETE_TIPO IS NOT NULL
Go

/*

CREATE FUNCTION QUERY_SQUAD.GetLocalTipo (@localTipo nvarchar(50))
RETURNS int
AS
BEGIN
	DECLARE @IdTipo int = (SELECT tipo_local_id FROM QUERY_SQUAD.Tipo_Local where tipo_local_tipo = @localTipo)
	RETURN @IdTipo
END


CREATE PROCEDURE QUERY_SQUAD.Migracion_Categoria_Local
AS
   INSERT INTO QUERY_SQUAD.Migracion_Categoria_Local (categoria_local_tipo, categoria_local_categoria)
    SELECT DISTINCT QUERY_SQUAD.GetLocalTipo(LOCAL_TIPO), NULL -- Hay que ver que hacer con las categorias
    FROM gd_esquema.Maestra
    WHERE HORARIO_LOCAL_DIA IS NOT NULL
Go
*/   -- Ver si hay que hacer el procedure o no por ser datos nuevos


CREATE PROCEDURE QUERY_SQUAD.Migracion_Local
AS
    INSERT INTO QUERY_SQUAD.Local (local_tipo, local_categoria, local_localidad, local_nombre, local_descripcion, local_direccion, local_provincia)
    SELECT DISTINCT
            tipo.tipo_local_id,
            2, /*ACA SE DEBE AGREGAR LA TABLA CATEGORIA LOCAL*/
            localid.localidad_id,
            esquema.LOCAL_NOMBRE,
            esquema.LOCAL_DESCRIPCION,
            esquema.LOCAL_DIRECCION,
            esquema.LOCAL_PROVINCIA
    FROM gd_esquema.Maestra esquema
    JOIN QUERY_SQUAD.Tipo_Local tipo ON esquema.LOCAL_TIPO = tipo.tipo_local_tipo
    JOIN QUERY_SQUAD.Localidad localid ON esquema.LOCAL_LOCALIDAD = localid.localidad_localidad
    
    --Migracion_Local
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Producto_Local
AS
    INSERT INTO QUERY_SQUAD.Producto_Local (producto_local_local_id, producto_local_nombre, producto_local_descripcion, producto_local_precio)
    SELECT DISTINCT
            localq.local_id,
            esquema.PRODUCTO_LOCAL_NOMBRE,
            esquema.PRODUCTO_LOCAL_DESCRIPCION,
            esquema.PRODUCTO_LOCAL_PRECIO
    FROM gd_esquema.Maestra esquema
    JOIN QUERY_SQUAD.Local localq ON esquema.LOCAL_NOMBRE = localq.local_nombre
    WHERE localq.local_id IS NOT NULL AND esquema.PRODUCTO_LOCAL_NOMBRE
    --Migracion_Producto_Local
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Repartidor
AS
    INSERT INTO QUERY_SQUAD.Repartidor (repartidor_localidad_id, repartidor_tipo_movilidad, repartidor_nombre, repartidor_apellido, repartidor_dni,repartidor_telefono, repartidor_direccion, repartidor_email, repartidor_fecha_nac)
    SELECT DISTINCT
            localid.localidad_id,
            movi.tipo_movilidad_id,
            esquema.REPARTIDOR_NOMBRE,
            esquema.REPARTIDOR_APELLIDO,
            esquema.REPARTIDOR_DNi,
            esquema.REPARTIDOR_TELEFONO,
            esquema.REPARTIDOR_DIRECCION,
            esquema.REPARTIDOR_EMAIL,
            esquema.REPARTIDOR_FECHA_NAC
    FROM gd_esquema.Maestra esquema
    JOIN QUERY_SQUAD.Localidad localid ON esquema.LOCAL_LOCALIDAD = localid.localidad_localidad
    JOIN QUERY_SQUAD.Tipo_Movilidad movi ON esquema.REPARTIDOR_TIPO_MOVILIDAD = movi.tipo_movilidad_descripcion
    WHERE localid.localidad_id IS NOT NULL AND movi.tipo_movilidad_id IS NOT NULL AND esquema.REPARTIDOR_DNi IS NOT NULL
    --Migracion_Repartidor
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Direccion_Usuario
AS
    --Migracion_Direccion_Usuario
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Medio_De_Pago
AS
    --Migracion_Medio_De_Pago
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Pedido
AS
    --Migracion_Pedido
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Pedido_Productos
AS
    --Migracion_Pedido_Productos
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Cupon
AS
    --Migracion_Cupon
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Usuario_Cupon
AS
    --Migracion_Usuario_Cupon
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Reclamo
AS
    --Migracion_Reclamo
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Cupon_Reclamo
AS
    --Migracion_Cupon_Reclamo
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Horario_Local
AS
    --Migracion_Horario_Local
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Envio_Mensajeria
AS
    --Migracion_Envio_Mensajeria
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Pedido_Cupones
AS
    --Migracion_Pedido_Cupones
Go
