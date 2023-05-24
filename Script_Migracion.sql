USE [GD1C2023]
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Cupon
AS
INSERT INTO QUERY_SQUAD.Tipo_Cupon
    (tipo_cupon_descripcion)
SELECT DISTINCT Cupon_Tipo
FROM gd_esquema.Maestra
WHERE CUPON_TIPO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Estado_Pedido
AS
INSERT INTO QUERY_SQUAD.Estado_Pedido
    (estado_pedido_descripcion)
SELECT DISTINCT PEDIDO_ESTADO
FROM gd_esquema.Maestra
WHERE PEDIDO_ESTADO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Usuario
AS
INSERT INTO QUERY_SQUAD.Usuario
    (usuario_nombre,usuario_apellido,usuario_dni,usuario_fecha_registro,usuario_telefono,usuario_email,usuario_fecha_nac)
SELECT DISTINCT USUARIO_NOMBRE, USUARIO_APELLIDO, USUARIO_DNI, USUARIO_FECHA_REGISTRO, USUARIO_TELEFONO, USUARIO_MAIL, USUARIO_FECHA_NAC
FROM gd_esquema.Maestra
--WHERE USUARIO_NOMBRE IS NOT NULL AND USUARIO_APELLIDO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Datos_Tarjeta
AS
INSERT INTO QUERY_SQUAD.Datos_Tarjeta
    (medio_de_pago_marca_tarjeta, medio_de_pago_tarjeta)
SELECT DISTINCT MARCA_TARJETA, MEDIO_PAGO_NRO_TARJETA
FROM gd_esquema.Maestra
--WHERE MARCA_TARJETA IS NOT NULL AND MEDIO_PAGO_NRO_TARJETA IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Movilidad
AS
INSERT INTO QUERY_SQUAD.Tipo_Movilidad
    (tipo_movilidad_descripcion)
SELECT DISTINCT REPARTIDOR_TIPO_MOVILIDAD
FROM gd_esquema.Maestra
--WHERE REPARTIDOR_TIPO_MOVILIDAD IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Medio_De_Pago
AS
INSERT INTO QUERY_SQUAD.Tipo_Medio_De_Pago
    (tipo_medio_de_pago_descripcion)
SELECT DISTINCT MEDIO_PAGO_TIPO
FROM gd_esquema.Maestra
--WHERE MEDIO_PAGO_TIPO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Localidad
AS
INSERT INTO QUERY_SQUAD.Localidad
    (localidad_localidad)
SELECT LOCAL_LOCALIDAD FROM gd_esquema.Maestra WHERE LOCAL_LOCALIDAD is not null UNION 
SELECT ENVIO_MENSAJERIA_LOCALIDAD FROM gd_esquema.Maestra WHERE ENVIO_MENSAJERIA_LOCALIDAD is not null
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Estado_Envio_Mensajeria
AS
INSERT INTO QUERY_SQUAD.Estado_Envio_Mensajeria
    (estado_envio_mensajeria_descripcion)
SELECT DISTINCT ENVIO_MENSAJERIA_ESTADO
FROM gd_esquema.Maestra
WHERE ENVIO_MENSAJERIA_ESTADO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Reclamo
AS
INSERT INTO QUERY_SQUAD.Tipo_Reclamo
    (tipo_reclamo_descripcion)
SELECT DISTINCT RECLAMO_DESCRIPCION
FROM gd_esquema.Maestra
WHERE RECLAMO_DESCRIPCION IS NOT NULL
GO


CREATE PROCEDURE QUERY_SQUAD.Migracion_Estado_Reclamo
AS
INSERT INTO QUERY_SQUAD.Estado_Reclamo
    (estado_reclamo_descripcion)
SELECT DISTINCT RECLAMO_ESTADO
FROM gd_esquema.Maestra
WHERE RECLAMO_ESTADO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Operador_Reclamo
AS
INSERT INTO QUERY_SQUAD.Operador_Reclamo
    (operador_reclamo_nombre, operador_reclamo_apellido, operador_reclamo_dni, operador_reclamo_telefono,
    operador_reclamo_direccion, operador_reclamo_mail, operador_reclamo_fecha_nac)
SELECT DISTINCT OPERADOR_RECLAMO_NOMBRE, OPERADOR_RECLAMO_APELLIDO, OPERADOR_RECLAMO_DNI, OPERADOR_RECLAMO_TELEFONO,
    OPERADOR_RECLAMO_DIRECCION, OPERADOR_RECLAMO_MAIL, OPERADOR_RECLAMO_FECHA_NAC
FROM gd_esquema.Maestra
WHERE OPERADOR_RECLAMO_DNI IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Local
AS
INSERT INTO QUERY_SQUAD.Tipo_Local
    (tipo_local_tipo)
SELECT DISTINCT LOCAL_TIPO
FROM gd_esquema.Maestra
WHERE LOCAL_TIPO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Dia
AS
INSERT INTO QUERY_SQUAD.Dia
    (dia_nombre)
SELECT DISTINCT HORARIO_LOCAL_DIA
FROM gd_esquema.Maestra
WHERE HORARIO_LOCAL_DIA IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Paquete
AS
INSERT INTO QUERY_SQUAD.Paquete
    (paquete_tipo, paquete_alto_max, paquete_ancho_max, paquete_largo_max, paquete_peso_max, paquete_tipo_precio)
SELECT DISTINCT PAQUETE_TIPO, PAQUETE_ALTO_MAX, PAQUETE_ANCHO_MAX, PAQUETE_LARGO_MAX, PAQUETE_PESO_MAX, PAQUETE_TIPO_PRECIO
FROM gd_esquema.Maestra
WHERE PAQUETE_TIPO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Local
AS
INSERT INTO QUERY_SQUAD.Local
    (local_tipo, local_localidad, local_nombre, local_descripcion, local_direccion, local_provincia)
SELECT DISTINCT
    tipo.tipo_local_id,
    localid.localidad_id,
    esquema.LOCAL_NOMBRE,
    esquema.LOCAL_DESCRIPCION,
    esquema.LOCAL_DIRECCION,
    esquema.LOCAL_PROVINCIA
FROM gd_esquema.Maestra esquema
    JOIN QUERY_SQUAD.Tipo_Local tipo ON esquema.LOCAL_TIPO = tipo.tipo_local_tipo
    JOIN QUERY_SQUAD.Localidad localid ON esquema.LOCAL_LOCALIDAD = localid.localidad_localidad
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Producto_Local
AS
INSERT INTO QUERY_SQUAD.Producto_Local
    (producto_local_local_id, producto_local_nombre, producto_local_descripcion, producto_local_precio)
SELECT DISTINCT
    localq.local_id,
    esquema.PRODUCTO_LOCAL_NOMBRE,
    esquema.PRODUCTO_LOCAL_DESCRIPCION,
    esquema.PRODUCTO_LOCAL_PRECIO
FROM gd_esquema.Maestra esquema
    JOIN QUERY_SQUAD.Local localq ON esquema.LOCAL_NOMBRE = localq.local_nombre
WHERE esquema.PRODUCTO_LOCAL_NOMBRE IS NOT NULL
GO

CREATE FUNCTION QUERY_SQUAD.Obtener_Ultima_Localidad (@REPARTIDOR_NOMBRE VARCHAR(255),@REPARTIDOR_APELLIDO VARCHAR(255),@REPARTIDOR_DNI DECIMAL(18,0))
RETURNS NVARCHAR(255)
AS BEGIN
	DECLARE @MAX_FECHA_ENVIO_MENSAJERIA datetime
	DECLARE @MAX_LOCALIDAD_ENVIO_MENSAJERIA NVARCHAR(255)
	DECLARE @MAX_FECHA_PEDIDO datetime
	DECLARE @MAX_LOCALIDAD_PEDIDO NVARCHAR(255)
    
	SELECT @MAX_FECHA_ENVIO_MENSAJERIA = MAX(ENVIO_MENSAJERIA_FECHA),@MAX_FECHA_PEDIDO = MAX(PEDIDO_FECHA)
	FROM gd_esquema.Maestra
	WHERE REPARTIDOR_NOMBRE= @REPARTIDOR_NOMBRE AND REPARTIDOR_APELLIDO = @REPARTIDOR_APELLIDO AND REPARTIDOR_DNI = @REPARTIDOR_DNI

	IF @MAX_FECHA_ENVIO_MENSAJERIA<@MAX_FECHA_PEDIDO
	BEGIN
		SELECT TOP(1) @MAX_LOCALIDAD_ENVIO_MENSAJERIA = ENVIO_MENSAJERIA_LOCALIDAD
		FROM gd_esquema.Maestra
		WHERE REPARTIDOR_NOMBRE= @REPARTIDOR_NOMBRE AND REPARTIDOR_APELLIDO = @REPARTIDOR_APELLIDO AND REPARTIDOR_DNI = @REPARTIDOR_DNI AND ENVIO_MENSAJERIA_FECHA= @MAX_FECHA_ENVIO_MENSAJERIA
		RETURN @MAX_LOCALIDAD_ENVIO_MENSAJERIA
	END
	SELECT TOP(1) @MAX_LOCALIDAD_PEDIDO = LOCAL_LOCALIDAD
	FROM gd_esquema.Maestra
	WHERE REPARTIDOR_NOMBRE= @REPARTIDOR_NOMBRE AND REPARTIDOR_APELLIDO = @REPARTIDOR_APELLIDO AND REPARTIDOR_DNI = @REPARTIDOR_DNI AND PEDIDO_FECHA=@MAX_FECHA_PEDIDO

	RETURN @MAX_LOCALIDAD_PEDIDO
END
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Repartidor
AS
INSERT INTO QUERY_SQUAD.Repartidor
    (repartidor_localidad_id, repartidor_tipo_movilidad, repartidor_nombre, repartidor_apellido, repartidor_dni,repartidor_telefono, repartidor_direccion, repartidor_email, repartidor_fecha_nac)
SELECT DISTINCT
	QUERY_SQUAD.Obtener_Ultima_Localidad(esquema.REPARTIDOR_NOMBRE,esquema.REPARTIDOR_APELLIDO,esquema.REPARTIDOR_DNI),
    movi.tipo_movilidad_id,
    esquema.REPARTIDOR_NOMBRE,
    esquema.REPARTIDOR_APELLIDO,
    esquema.REPARTIDOR_DNi,
    esquema.REPARTIDOR_TELEFONO,
    esquema.REPARTIDOR_DIRECION,
    esquema.REPARTIDOR_EMAIL,
    esquema.REPARTIDOR_FECHA_NAC
FROM gd_esquema.Maestra esquema
    --JOIN QUERY_SQUAD.Localidad localid ON esquema.LOCAL_LOCALIDAD = localid.localidad_localidad
    JOIN QUERY_SQUAD.Tipo_Movilidad movi ON esquema.REPARTIDOR_TIPO_MOVILIDAD = movi.tipo_movilidad_descripcion
WHERE esquema.REPARTIDOR_DNi IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Direccion_Usuario
AS
INSERT INTO QUERY_SQUAD.Direccion_Usuario
    (direccion_usuario_usuario_id, direccion_usuario_direccion, direccion_usuario_localidad_id,direccion_usuario_nombre, direccion_usuario_provincia)
SELECT DISTINCT u.usuario_id, m.DIRECCION_USUARIO_DIRECCION, loc.localidad_id, m.DIRECCION_USUARIO_NOMBRE, m.DIRECCION_USUARIO_PROVINCIA
FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Usuario u ON (u.usuario_dni = m.USUARIO_DNI AND u.usuario_nombre = m.USUARIO_NOMBRE AND u.USUARIO_APELLIDO = m.USUARIO_APELLIDO)
    JOIN QUERY_SQUAD.Localidad loc ON (m.DIRECCION_USUARIO_LOCALIDAD = loc.localidad_localidad)
Where DIRECCION_USUARIO_DIRECCION IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Medio_De_Pago
AS
INSERT INTO QUERY_SQUAD.Medio_De_Pago
    (medio_de_pago_usuario_id, medio_de_pago_datos_tarjeta, medio_de_pago_tipo)
SELECT DISTINCT u.usuario_id, datos.datos_tarjeta_id, tipo.tipo_medio_de_pago
FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Usuario u ON (u.usuario_dni = m.USUARIO_DNI AND u.usuario_nombre = m.USUARIO_NOMBRE AND u.USUARIO_APELLIDO = m.USUARIO_APELLIDO)
    JOIN QUERY_SQUAD.Datos_Tarjeta datos ON (datos.medio_de_pago_marca_tarjeta= m.MARCA_TARJETA and datos.medio_de_pago_tarjeta = m.MEDIO_PAGO_NRO_TARJETA)
    JOIN QUERY_SQUAD.Tipo_Medio_De_Pago tipo ON (tipo.tipo_medio_de_pago_descripcion = m.MEDIO_PAGO_TIPO)
Where m.PEDIDO_NRO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Pedido
AS
    --Migracion_Pedido
	INSERT INTO QUERY_SQUAD.PEDIDO (pedido_nro, pedido_usuario_id, pedido_local_id, pedido_direccion_usuario_id, pedido_medio_pago_id, 
	 pedido_repartidor_id, pedido_estado_pedido_id, pedido_precio_envio, pedido_total_productos, pedido_tarifa_servicio,
	 pedido_propina, pedido_total_cupones, pedido_total_servicio, pedido_observ, pedido_fecha,
	 pedido_fecha_entrega, pedido_tiempo_estimado, pedido_calificacion)
	SELECT DISTINCT m.PEDIDO_NRO,u.usuario_id,l.local_id, d.direccion_usuario_id, mp.medio_de_pago_id, r.repartidor_id,
                    ep.estado_pedido_id, m.PEDIDO_PRECIO_ENVIO, m.PEDIDO_TOTAL_PRODUCTOS, m.PEDIDO_TARIFA_SERVICIO,
                    m.PEDIDO_PROPINA, m.PEDIDO_TOTAL_CUPONES, m.PEDIDO_TOTAL_SERVICIO, m.PEDIDO_OBSERV, m.PEDIDO_FECHA,
                    m.PEDIDO_FECHA_ENTREGA, m.PEDIDO_TIEMPO_ESTIMADO_ENTREGA, m.PEDIDO_CALIFICACION
	FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Usuario u ON (u.usuario_dni = m.USUARIO_DNI AND u.usuario_nombre = m.USUARIO_NOMBRE AND u.USUARIO_APELLIDO = m.USUARIO_APELLIDO)
	JOIN QUERY_SQUAD.Direccion_Usuario d ON (d.direccion_usuario_usuario_id = u.usuario_id AND d.direccion_usuario_nombre = m.DIRECCION_USUARIO_NOMBRE)
    JOIN QUERY_SQUAD.Repartidor r ON (m.REPARTIDOR_DNI = r.repartidor_dni)
    JOIN QUERY_SQUAD.Datos_Tarjeta datos ON (datos.medio_de_pago_marca_tarjeta= m.MARCA_TARJETA and datos.medio_de_pago_tarjeta = m.MEDIO_PAGO_NRO_TARJETA)
	JOIN QUERY_SQUAD.Medio_De_Pago mp ON (datos.datos_tarjeta_id = mp.medio_de_pago_datos_tarjeta AND mp.medio_de_pago_usuario_id = u.usuario_id)
	JOIN QUERY_SQUAD.Local l ON (l.local_nombre = m.LOCAL_NOMBRE)
    JOIN QUERY_SQUAD.Estado_Pedido ep on (ep.estado_pedido_descripcion = m.PEDIDO_ESTADO)
	WHERE PEDIDO_NRO is not null
	order by PEDIDO_NRO
	
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Pedido_Productos
AS
    --Migracion_Pedido_Productos
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Cupon
AS
    INSERT INTO QUERY_SQUAD.Cupon (cupon_tipo, cupon_monto, cupon_fecha_alta, cupon_fecha_vencimiento)
    SELECT DISTINCT 
            t.tipo_cupon_id,
            m.CUPON_MONTO,
            m.CUPON_FECHA_ALTA,
            m.CUPON_FECHA_VENCIMIENTO
    FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Tipo_Cupon t ON (m.CUPON_TIPO = t.tipo_cupon_descripcion) 
    WHERE t.tipo_cupon_id IS NOT NULL
    --Migracion_Cupon
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Usuario_Cupon
AS
    INSERT INTO QUERY_SQUAD.Usuario_Cupon (usuario_cupon_cupon_nro, usuario_cupon_usuario_id)
    SELECT DISTINCT c.cupon_nro, u.usuario_id
    FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Cupon c ON (m.CUPON_NRO = c.cupon_nro)
    JOIN QUERY_SQUAD.Usuario u ON (u.usuario_dni = m.USUARIO_DNI AND u.usuario_nombre = m.USUARIO_NOMBRE AND u.usuario_apellido = m.USUARIO_APELLIDO)
    WHERE CUPON_NRO is not null
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Reclamo
AS
    INSERT INTO QUERY_SQUAD.Reclamo
    SELECT DISTINCT m.RECLAMO_NRO, u.usuario_id, m.pedido_nro, o.operador_reclamo_id, 
                    tr.tipo_reclamo_id, er.estado_reclamo_id, m.RECLAMO_FECHA, m.RECLAMO_DESCRIPCION,
                    m.RECLAMO_FECHA_SOLUCION, m.RECLAMO_SOLUCION, m.RECLAMO_CALIFICACION
    FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Usuario u ON (u.usuario_dni = m.USUARIO_DNI AND u.usuario_nombre = m.USUARIO_NOMBRE AND u.USUARIO_APELLIDO = m.USUARIO_APELLIDO)
    JOIN QUERY_SQUAD.Operador_Reclamo o ON(o.operador_reclamo_dni = m.OPERADOR_RECLAMO_DNI AND o.operador_reclamo_apellido = m.OPERADOR_RECLAMO_APELLIDO AND o.operador_reclamo_nombre = m.OPERADOR_RECLAMO_NOMBRE)  
    JOIN QUERY_SQUAD.Tipo_Reclamo tr ON (tr.tipo_reclamo_descripcion = m.RECLAMO_DESCRIPCION)
    JOIN QUERY_SQUAD.Estado_Reclamo er ON(er.estado_reclamo_descripcion = m.RECLAMO_ESTADO)
    WHERE RECLAMO_NRO is not null
    --Migracion_Reclamo
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Cupon_Reclamo
AS
    INSERT INTO QUERY_SQUAD.Cupon_Reclamo (cupon_reclamo_reclamo_id, cupon_reclamo_cupon_nro)
    SELECT DISTINCT r.reclamo_nro, c.cupon_nro
    FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Reclamo r ON (m.RECLAMO_NRO = r.reclamo_nro)
    JOIN QUERY_SQUAD.Cupon c ON (m.CUPON_RECLAMO_NRO = c.cupon_nro)
    WHERE RECLAMO_NRO is not null AND CUPON_RECLAMO_NRO is not null
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Horario_Local
AS
    INSERT INTO QUERY_SQUAD.Horario_Local (horario_local_id_local, horario_local_dia, horario_local_hora_apertura, horario_local_hora_cierre)
    SELECT DISTINCT
    l.local_id,
    d.dia_id,
    m.HORARIO_LOCAL_HORA_APERTURA,
    m.HORARIO_LOCAL_HORA_CIERRE    
    FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Local l ON (m.LOCAL_NOMBRE = l.local_nombre)
    JOIN QUERY_SQUAD.Dia d ON (m.HORARIO_LOCAL_DIA = d.dia_nombre)
    
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Envio_Mensajeria
AS
    INSERT INTO QUERY_SQUAD.Envio_Mensajeria (envio_mensajeria_nro, envio_mensajeria_usuario_id, envio_mensajeria_medio_de_pago_id, 
    envio_mensajeria_repartidor_id, envio_mensajeria_localidad_id, envio_mensajeria_paquete_id, envio_mensajeria_estado, envio_mensajeria_dir_orig,
    envio_mensajeria_dir_dest, envio_mensajeria_provincia, envio_mensajeria_km, envio_mensajeria_valor_asegurado, envio_mensajeria_precio_envio, 
    envio_mensajeria_precio_seguro, envio_mensajeria_propina, envio_mensajeria_total, envio_mensajeria_observ, envio_mensajeria_fecha, 
    envio_mensajeria_fecha_entrega, envio_mensajeria_tiempo_estimado, envio_mensajeria_calificacion)
    SELECT DISTINCT m.ENVIO_MENSAJERIA_NRO, u.usuario_id, mp.medio_de_pago_id, r.repartidor_id, l.localidad_id, p.paquete_id, estado.estado_envio_mensajeria_id,
                    m.ENVIO_MENSAJERIA_DIR_ORIG, m.ENVIO_MENSAJERIA_DIR_DEST, m.ENVIO_MENSAJERIA_PROVINCIA,
                    m.ENVIO_MENSAJERIA_KM, m.ENVIO_MENSAJERIA_VALOR_ASEGURADO, m.ENVIO_MENSAJERIA_PRECIO_ENVIO,
                    m.ENVIO_MENSAJERIA_PRECIO_SEGURO,  m.ENVIO_MENSAJERIA_PROPINA, m.ENVIO_MENSAJERIA_TOTAL, m.ENVIO_MENSAJERIA_OBSERV,
                    m.ENVIO_MENSAJERIA_FECHA, m.ENVIO_MENSAJERIA_FECHA_ENTREGA, m.ENVIO_MENSAJERIA_TIEMPO_ESTIMADO, m.ENVIO_MENSAJERIA_CALIFICACION 
    
    FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Usuario u ON (u.usuario_dni = m.USUARIO_DNI AND u.usuario_nombre = m.USUARIO_NOMBRE AND u.USUARIO_APELLIDO = m.USUARIO_APELLIDO)
    JOIN QUERY_SQUAD.Datos_Tarjeta datos ON (datos.medio_de_pago_marca_tarjeta= m.MARCA_TARJETA AND datos.medio_de_pago_tarjeta = m.MEDIO_PAGO_NRO_TARJETA)
    JOIN QUERY_SQUAD.Medio_De_Pago mp ON (datos.datos_tarjeta_id = mp.medio_de_pago_datos_tarjeta AND mp.medio_de_pago_usuario_id = u.usuario_id)
    JOIN QUERY_SQUAD.Repartidor r ON (m.REPARTIDOR_DNI = r.repartidor_dni)
    JOIN QUERY_SQUAD.Localidad l ON (m.ENVIO_MENSAJERIA_LOCALIDAD = l.localidad_localidad)
    JOIN QUERY_SQUAD.Paquete p ON (m.PAQUETE_TIPO = p.paquete_tipo)
    JOIN QUERY_SQUAD.Estado_Envio_Mensajeria estado ON (m.ENVIO_MENSAJERIA_ESTADO = estado.envio_mensajeria_estado)
    

GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Pedido_Cupones
AS
    INSERT INTO QUERY_SQUAD.Pedido_Cupones (pedido_cupones_cupon_id, pedido_cupones_pedido)
    SELECT DISTINCT
    c.cupon_nro,
    p.pedido_nro
    FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.pedido p ON (m.PEDIDO_NRO = p.pedido_nro)
    JOIN QUERY_SQUAD.Cupon c ON (m.CUPON_NRO = c.cupon_nro)
    --Migracion_Pedido_Cupones
GO

