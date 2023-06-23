USE GD1C2023;

----- DROP VISTAS -----
IF EXISTS (
  SELECT *
FROM sys.views
WHERE object_id = OBJECT_ID('QUERY_SQUAD.v_BI_valor_promedio_mensual_envios')
) DROP VIEW QUERY_SQUAD.v_BI_valor_promedio_mensual_envios;

----- DROP PROCEDIMIENTOS -----
IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Dia')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Dia;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Tipo_Local')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Local;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Categoria_Local')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Categoria_Local;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Local')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Local;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Localidad')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Localidad;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_cargar_Rango_Etario')
) DROP PROCEDURE QUERY_SQUAD.BI_cargar_Rango_Etario;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Tipo_Paquete')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Paquete;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Tiempo')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Tiempo;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Rango_Horario')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Rango_Horario;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Tipo_Medio_De_Pago')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Medio_De_Pago;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Tipo_Movilidad')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Movilidad;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Estado_Envio_Mensajeria')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Estado_Envio_Mensajeria;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Estado_Pedido')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Estado_Pedido;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Hechos_Pedidos')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Hechos_Pedidos;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Estado_Reclamos')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Estado_Reclamos;

IF EXISTS (
  SELECT *
FROM sys.procedures
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Hechos_Cupones')
) DROP PROCEDURE QUERY_SQUAD.BI_migrar_Hechos_Cupones;

----- DROP FUNCIONES -----
IF EXISTS (
  SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID('QUERY_SQUAD.GetDimTiempoParaFecha')
) DROP FUNCTION QUERY_SQUAD.GetDimTiempoParaFecha;

IF EXISTS (
  SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID('QUERY_SQUAD.GetDimDiaParaFecha')
) DROP FUNCTION QUERY_SQUAD.GetDimDiaParaFecha;

IF EXISTS (
  SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID('QUERY_SQUAD.GetDiaDeDimDia')
) DROP FUNCTION QUERY_SQUAD.GetDiaDeDimDia;

IF EXISTS (
  SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID('QUERY_SQUAD.GetMesDeDimTiempo')
) DROP FUNCTION QUERY_SQUAD.GetMesDeDimTiempo;

IF EXISTS (
  SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID('QUERY_SQUAD.GetAnioDeDimTiempo')
) DROP FUNCTION QUERY_SQUAD.GetAnioDeDimTiempo;

IF EXISTS (
  SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID('QUERY_SQUAD.GetRangoEtario')
) DROP FUNCTION QUERY_SQUAD.GetRangoEtario;

IF EXISTS (
  SELECT *
FROM sys.objects
WHERE object_id = OBJECT_ID('QUERY_SQUAD.GetRangoHorario')
) DROP FUNCTION QUERY_SQUAD.GetRangoHorario;

----- DROP HECHOS -----
IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_Hechos_Pedidos')
) DROP TABLE QUERY_SQUAD.BI_Hechos_Pedidos;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_Hechos_Cupones')
) DROP TABLE QUERY_SQUAD.BI_Hechos_Cupones;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_Hechos_Local')
) DROP TABLE QUERY_SQUAD.BI_Hechos_Local;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_Hechos_Mensajeria')
) DROP TABLE QUERY_SQUAD.BI_Hechos_Mensajeria;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_Hechos_Reclamos')
) DROP TABLE QUERY_SQUAD.BI_Hechos_Reclamos;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_Hechos_Repartidores')
) DROP TABLE QUERY_SQUAD.BI_Hechos_Repartidores;


----- DROP DIMENSIONES -----
IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Dia')
) DROP TABLE QUERY_SQUAD.BI_dim_Dia;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Local')
) DROP TABLE QUERY_SQUAD.BI_dim_Local;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Categoria_Local')
) DROP TABLE QUERY_SQUAD.BI_dim_Categoria_Local;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Tipo_Local')
) DROP TABLE QUERY_SQUAD.BI_dim_Tipo_Local;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Localidad')
) DROP TABLE QUERY_SQUAD.BI_dim_Localidad;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Rango_Etario')
) DROP TABLE QUERY_SQUAD.BI_dim_Rango_Etario;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Tipo_Paquete')
) DROP TABLE QUERY_SQUAD.BI_dim_Tipo_Paquete;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Tiempo')
) DROP TABLE QUERY_SQUAD.BI_dim_Tiempo;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Rango_Horario')
) DROP TABLE QUERY_SQUAD.BI_dim_Rango_Horario;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Tipo_Medio_De_Pago')
) DROP TABLE QUERY_SQUAD.BI_dim_Tipo_Medio_De_Pago;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Tipo_Movilidad')
) DROP TABLE QUERY_SQUAD.BI_dim_Tipo_Movilidad;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Estado_Envio_Mensajeria')
) DROP TABLE QUERY_SQUAD.BI_dim_Estado_Envio_Mensajeria;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Estado_Pedido')
) DROP TABLE QUERY_SQUAD.BI_dim_Estado_Pedido;

IF EXISTS (
  SELECT *
FROM sys.tables
WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Estado_Reclamos')
) DROP TABLE QUERY_SQUAD.BI_dim_Estado_Reclamos;

----- CREACION DIMENSIONES -----
CREATE TABLE QUERY_SQUAD.BI_dim_Tiempo
(
  tiempo_id INT IDENTITY PRIMARY KEY
  ,tiempo_anio INT
  ,tiempo_mes INT
);

CREATE TABLE QUERY_SQUAD.BI_dim_Dia
(
  dia_id INT PRIMARY KEY
  ,dia_nombre NVARCHAR(255)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Rango_Horario
(
  rango_horario_id INT IDENTITY PRIMARY KEY
  ,rango_horario_hora_inicio TIME
  ,rango_horario_hora_fin TIME,
);

CREATE TABLE QUERY_SQUAD.BI_dim_Localidad
(
  localidad_id INT PRIMARY KEY
  ,localidad_nombre NVARCHAR(255) NOT NULL
);

CREATE TABLE QUERY_SQUAD.BI_dim_Rango_Etario
(
  rango_etario_id INT IDENTITY PRIMARY KEY
  ,rango_etario_minimo INT
  ,rango_etario_maximo INT
);

CREATE TABLE QUERY_SQUAD.BI_dim_Tipo_Medio_De_Pago
(
  tipo_medio_de_pago_id INT PRIMARY KEY
  ,tipo_medio_de_pago_tipo NVARCHAR(50)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Local
(
  local_id INT PRIMARY KEY
  ,local_nombre NVARCHAR(255) NOT NULL,
);

CREATE TABLE QUERY_SQUAD.BI_dim_Tipo_Local
(
  tipo_local_id INT PRIMARY KEY
  ,tipo_local_tipo NVARCHAR(50)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Categoria_Local
(
  categoria_local_id INT PRIMARY KEY
  ,categoria_local_categoria NVARCHAR(50),
);

CREATE TABLE QUERY_SQUAD.BI_dim_Tipo_Movilidad
(
  tipo_movilidad_id INT PRIMARY KEY
  ,tipo_movilidad_tipo NVARCHAR(50)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Tipo_Paquete
(
  tipo_paquete_id INT PRIMARY KEY
  ,tipo_paquete_tipo NVARCHAR(50)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Estado_Pedido
(
  estado_pedido_id INT PRIMARY KEY
  ,estado_pedido_estado NVARCHAR(50)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Estado_Envio_Mensajeria
(
  estado_envio_mensajeria_id INT PRIMARY KEY
  ,estado_envio_mensajeria_estado NVARCHAR(50)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Estado_Reclamos
(
  estado_reclamos_id INT PRIMARY KEY
  ,estado_reclamos_estado NVARCHAR(50)
);

----- CREACION HECHOS -----
CREATE TABLE QUERY_SQUAD.BI_Hechos_Pedidos
(
	hechos_pedidos_tiempo_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Tiempo,
	hechos_pedidos_dia_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Dia,
	hechos_pedidos_local_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Local,
	hechos_pedidos_rango_horario_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Rango_Horario,
	hechos_pedidos_rango_etario_repartidor_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Rango_Etario,
	hechos_pedidos_localidad_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Localidad,
	hechos_pedidos_categoria_local_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Categoria_Local,
	hechos_pedidos_tipo_movilidad_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Tipo_Movilidad,
	hechos_pedidos_tipo_medio_pago_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Tipo_Medio_De_Pago,
	hechos_pedidos_estado_pedido_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Estado_Pedido,
	hechos_pedidos_cantidad_pedidos INT,
	hechos_pedidos_costo_total DECIMAL(18, 2),
	hechos_pedidos_valor_promedio_envio DECIMAL(18, 2),
	hechos_pedidos_calificacion_promedio DECIMAL (18,2),
	hechos_desvio_promedio_entrega DECIMAL (18,2)
	
	CONSTRAINT PK_BI_Hechos_Pedidos PRIMARY KEY (
		hechos_pedidos_tiempo_id,
		hechos_pedidos_dia_id,
		hechos_pedidos_local_id,
		hechos_pedidos_rango_horario_id,
		hechos_pedidos_rango_etario_repartidor_id,
		hechos_pedidos_localidad_id,
		hechos_pedidos_categoria_local_id,
		hechos_pedidos_tipo_movilidad_id,
		hechos_pedidos_tipo_medio_pago_id,
		hechos_pedidos_estado_pedido_id
	)
);

CREATE TABLE QUERY_SQUAD.BI_Hechos_Cupones
(	
	hechos_cupones_tiempo_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Tiempo,
	hechos_cupones_rango_etario_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Rango_Etario,--ver si necesitamos agregar dim_Tipo_Cupon
	hechos_cupones_monto_total decimal(18,2),
	hechos_cupones_monto_reclamos decimal(18,2) CONSTRAINT PK_BI_Hechos_Cupones PRIMARY KEY(
		hechos_cupones_tiempo_id,
		hechos_cupones_rango_etario_id
	)
);

CREATE TABLE QUERY_SQUAD.BI_Hechos_Local
(	
	hechos_local_local_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Local,
	hechos_local_tiempo_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Tiempo,
	hechos_local_promedio_calificacion decimal(18,2) CONSTRAINT PK_BI_Hechos_Local PRIMARY KEY(
		hechos_local_local_id,
		hechos_local_tiempo_id
	)
);

CREATE TABLE QUERY_SQUAD.BI_Hechos_Mensajeria
(	
	hechos_mensajeria_tipo_paquete_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Tipo_Paquete,
	hechos_mensajeria_tiempo_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Tiempo,
	hechos_mensajeria_promedio_mensual_valor decimal(18,2) CONSTRAINT PK_BI_Hechos_Mensajeria PRIMARY KEY(
		hechos_mensajeria_tipo_paquete_id,
		hechos_mensajeria_tiempo_id
	)
);

CREATE TABLE QUERY_SQUAD.BI_Hechos_Reclamos
(	
	hechos_reclamos_tiempo_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Tiempo,
	hechos_reclamos_local_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Local,
	hechos_reclamos_dia_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Dia,
	hechos_reclamos_rango_horario_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Rango_Horario, --ver si necesitamos agregar dim_Tipo_Reclamo
	hechos_reclamos_rango_etario_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Rango_Etario,
	hechos_reclamos_cantidad decimal(18,2),
	hechos_reclamos_tiempo_promedio_resolucion decimal(18,2) CONSTRAINT PK_BI_Hechos_Reclamos PRIMARY KEY(
		hechos_reclamos_tiempo_id,
		hechos_reclamos_local_id,
		hechos_reclamos_dia_id,
		hechos_reclamos_rango_horario_id,
		hechos_reclamos_rango_etario_id
	)
);

CREATE TABLE QUERY_SQUAD.BI_Hechos_Repartidores
(	
	hechos_repartidores_rango_etario_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Rango_Etario,
	hechos_repartidores_localidad_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Localidad,
	hechos_repartidores_tiempo_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.BI_dim_Tiempo,
	hechos_repartidores_porcentaje_pedidos_y_mensajeria_entregados decimal(18,2) CONSTRAINT PK_BI_Hechos_Repartidores PRIMARY KEY(
		hechos_repartidores_rango_etario_id,
		hechos_repartidores_localidad_id,
		hechos_repartidores_tiempo_id
	)
);

GO

----- CREACION FUNCIONES -----
CREATE FUNCTION QUERY_SQUAD.GetDimTiempoParaFecha (@fecha DATE) RETURNS INT AS BEGIN
  RETURN (
    SELECT T.tiempo_id
  FROM QUERY_SQUAD.BI_Dim_Tiempo AS T
  WHERE T.tiempo_anio = YEAR(@fecha)
    AND T.tiempo_mes = MONTH(@fecha)
  )
END;
GO

CREATE FUNCTION QUERY_SQUAD.GetDimDiaParaFecha (@fecha DATE) RETURNS INT AS BEGIN
  RETURN (
    SELECT D.dia_id
  FROM QUERY_SQUAD.BI_Dim_Dia AS D
  WHERE D.dia_nombre LIKE FORMAT(@fecha, 'dddd', 'es-ES') COLLATE Latin1_General_CI_AI ---FORMAT da el nombre del dia, COLLATE hace que la comparacion ignore acentos 
  )
END;
GO

CREATE FUNCTION QUERY_SQUAD.GetDiaDeDimDia (@idDimDia INT) RETURNS INT AS BEGIN
  RETURN (
    SELECT D.dia_id
  FROM QUERY_SQUAD.BI_Dim_Dia AS D
  WHERE D.dia_id = @idDimDia
  )
END;
GO

CREATE FUNCTION QUERY_SQUAD.GetMesDeDimTiempo (@idDimTiempo INT) RETURNS INT AS BEGIN
  RETURN (
    SELECT T.tiempo_mes
  FROM QUERY_SQUAD.BI_Dim_Tiempo AS T
  WHERE T.tiempo_id = @idDimTiempo
  )
END;
GO

CREATE FUNCTION QUERY_SQUAD.GetAnioDeDimTiempo (@idDimTiempo INT) RETURNS INT AS BEGIN
  RETURN (
    SELECT T.tiempo_anio
  FROM QUERY_SQUAD.BI_Dim_Tiempo AS T
  WHERE T.tiempo_id = @idDimTiempo
  )
END;
GO

CREATE FUNCTION QUERY_SQUAD.GetRangoEtario (@fechaNacimiento DATETIME) RETURNS INT 
AS 
BEGIN
  RETURN (SELECT rango_etario_id 
		  FROM QUERY_SQUAD.BI_dim_Rango_Etario RE 
		  WHERE DATEDIFF(YEAR, @fechaNacimiento, GETDATE()) BETWEEN RE.rango_etario_minimo AND RE.rango_etario_maximo)
END;
GO

CREATE FUNCTION QUERY_SQUAD.GetRangoHorario(@hora TIME) RETURNS INT
AS
BEGIN
  RETURN (SELECT rango_horario_id
  FROM QUERY_SQUAD.BI_dim_Rango_Horario
  WHERE @hora >= rango_horario_hora_inicio AND @hora /*CONVERT(TIME, @fecha)*/ < rango_horario_hora_fin);
END;
GO


----- CREACION PROCEDIMIENTOS -----
CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Dia
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_dim_Dia
    (dia_id, dia_nombre)
  SELECT dia_id
    ,dia_nombre
  FROM QUERY_SQUAD.Dia
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Local
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_dim_Tipo_Local
    (tipo_local_id, tipo_local_tipo)
  SELECT tipo_local_id
    ,tipo_local_tipo
  FROM QUERY_SQUAD.Tipo_Local
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Categoria_Local
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_dim_Categoria_Local
    (categoria_local_id, categoria_local_categoria)
  SELECT categoria_local_id
    ,categoria_local_categoria
  FROM QUERY_SQUAD.Categoria_Local
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Local
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_dim_Local
    (local_id, local_nombre)
  SELECT local_id
    ,local_nombre
  FROM QUERY_SQUAD.Local
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Localidad
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_dim_Localidad
    (localidad_id, localidad_nombre)
  SELECT localidad_id
    ,localidad_nombre
  FROM QUERY_SQUAD.Localidad
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_cargar_Rango_Etario
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_dim_Rango_Etario
    (rango_etario_minimo, rango_etario_maximo)
  VALUES
    (0 ,24)
    ,(25 ,34)
    ,(35 ,54)
    ,(55 ,150)
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Paquete
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_dim_Tipo_Paquete
    (tipo_paquete_id, tipo_paquete_tipo)
  SELECT paquete_id
    ,paquete_tipo
  FROM QUERY_SQUAD.Paquete
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Tiempo
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_dim_Tiempo
    (tiempo_anio, tiempo_mes)
  SELECT DISTINCT YEAR(pedido_fecha)
    ,MONTH(pedido_fecha)
  --Alcanza con este 
  FROM QUERY_SQUAD.Pedido
  ORDER BY 1,
  2
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Rango_Horario
AS
BEGIN
  DECLARE @hora_inicio TIME = '08:00:00',
  @hora_fin TIME = '10:00:00'
  WHILE @hora_inicio < '22:00:00' BEGIN
    INSERT INTO BI_dim_Rango_Horario
      (
      rango_horario_hora_inicio,
      rango_horario_hora_fin
      )
    VALUES
      (@hora_inicio ,@hora_fin)
    SET @hora_inicio = DATEADD(HOUR, 2, @hora_inicio)
    SET @hora_fin = DATEADD(HOUR, 2, @hora_fin)
  END
  INSERT INTO BI_dim_Rango_Horario
    (
    rango_horario_hora_inicio,
    rango_horario_hora_fin
    )
  VALUES
    ('22:00:00' ,'00:00:00')
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Medio_De_Pago
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_dim_Tipo_Medio_De_Pago
    (tipo_medio_de_pago_id, tipo_medio_de_pago_tipo)
  SELECT tipo_medio_de_pago_id
    ,tipo_medio_de_pago_tipo
  FROM QUERY_SQUAD.Tipo_Medio_De_Pago
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Movilidad
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_dim_Tipo_Movilidad
    (tipo_movilidad_id, tipo_movilidad_tipo)
  SELECT tipo_movilidad_id
    ,tipo_movilidad_tipo
  FROM QUERY_SQUAD.Tipo_Movilidad
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Estado_Envio_Mensajeria
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_dim_Estado_Envio_Mensajeria
    (
    estado_envio_mensajeria_id,
    estado_envio_mensajeria_estado
    )
  SELECT estado_envio_mensajeria_id
    ,estado_envio_mensajeria_estado
  FROM QUERY_SQUAD.Estado_Envio_Mensajeria
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Estado_Pedido
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_dim_Estado_Pedido
    (estado_pedido_id, estado_pedido_estado)
  SELECT estado_pedido_id
    ,estado_pedido_estado
  FROM QUERY_SQUAD.Estado_Pedido
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Estado_Reclamos
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_dim_Estado_Reclamos
    (estado_reclamos_id, estado_reclamos_estado)
  SELECT estado_reclamo_id
    ,estado_reclamo_estado
  FROM QUERY_SQUAD.Estado_Reclamo
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Hechos_Pedidos
AS
BEGIN
  INSERT INTO QUERY_SQUAD.BI_Hechos_Pedidos
  (
    hechos_pedidos_tiempo_id,
    hechos_pedidos_dia_id,
    hechos_pedidos_local_id,
    hechos_pedidos_rango_horario_id,
	hechos_pedidos_rango_etario_repartidor_id,
    hechos_pedidos_localidad_id,
    hechos_pedidos_categoria_local_id,
    hechos_pedidos_tipo_movilidad_id,
	hechos_pedidos_tipo_medio_pago_id,
	hechos_pedidos_estado_pedido_id,
    hechos_pedidos_cantidad_pedidos,
    hechos_pedidos_costo_total,
    hechos_pedidos_valor_promedio_envio,
	hechos_pedidos_calificacion_promedio,
	hechos_desvio_promedio_entrega
    )
  SELECT QUERY_SQUAD.GetDimTiempoParaFecha(P.pedido_fecha),
    QUERY_SQUAD.GetDimDiaParaFecha(P.pedido_fecha),
    L.local_id,
    QUERY_SQUAD.GetRangoHorario(CONVERT(TIME,P.pedido_fecha)),
	QUERY_SQUAD.GetRangoEtario(R.repartidor_fecha_nac),
    Lo.localidad_id,
    C.categoria_local_id,
    R.repartidor_tipo_movilidad_id,
	M.medio_de_pago_tipo_id,
	P.pedido_estado_pedido_id,
    COUNT(DISTINCT P.pedido_nro),
    SUM(P.pedido_total_servicio),
    AVG(P.pedido_precio_envio),
	AVG(P.pedido_calificacion),
	AVG(DATEDIFF(minute,p.pedido_fecha, p.pedido_fecha_entrega) - p.pedido_tiempo_estimado)
  FROM QUERY_SQUAD.Pedido P
    INNER JOIN QUERY_SQUAD.Local L ON P.pedido_local_id = L.local_id
    INNER JOIN QUERY_SQUAD.Localidad Lo ON L.local_localidad_id = Lo.localidad_id
    INNER JOIN QUERY_SQUAD.Categoria_Local C ON L.local_categoria_local_id = C.categoria_local_id
    INNER JOIN QUERY_SQUAD.Repartidor R ON P.pedido_repartidor_id = R.repartidor_id
	INNER JOIN QUERY_SQUAD.Medio_De_Pago M On P.pedido_medio_pago_id = M.medio_de_pago_id
	GROUP BY QUERY_SQUAD.GetDimTiempoParaFecha(P.pedido_fecha), QUERY_SQUAD.GetDimDiaParaFecha(P.pedido_fecha), L.local_id,
			 QUERY_SQUAD.GetRangoHorario(CONVERT(TIME,P.pedido_fecha)), QUERY_SQUAD.GetRangoEtario(R.repartidor_fecha_nac),
			 Lo.localidad_id, C.categoria_local_id, R.repartidor_tipo_movilidad_id, M.medio_de_pago_tipo_id, P.pedido_estado_pedido_id
END;
GO


CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Hechos_Cupones
AS
BEGIN
	INSERT INTO QUERY_SQUAD.BI_Hechos_Cupones
	(
	 hechos_cupones_tiempo_id,
	 hechos_cupones_rango_etario_id,
	 hechos_cupones_monto_total,
	 hechos_cupones_monto_reclamos
	)
	SELECT QUERY_SQUAD.GetDimTiempoParaFecha(C.cupon_fecha_alta),
	NULL, --ver como sacar el rango etario
	P.pedido_total_cupones,
	ISNULL((
		SELECT sum(cupon_monto)
		FROM QUERY_SQUAD.Cupon_Reclamo INNER JOIN QUERY_SQUAD.Cupon ON cupon_reclamo_cupon_nro = cupon_nro
		WHERE cupon_nro = C.cupon_nro
	),0)
	FROM QUERY_SQUAD.Pedido_Cupones PC 
		INNER JOIN QUERY_SQUAD.Pedido P ON PC.pedido_cupones_pedido_nro = P.pedido_nro
		INNER JOIN  QUERY_SQUAD.Cupon C ON PC.pedido_cupones_cupon_id = C.cupon_nro
END;
GO

----- CREACION VISTAS -----
CREATE VIEW QUERY_SQUAD.v_BI_valor_promedio_mensual_envios
AS
  SELECT QUERY_SQUAD.GetMesDeDimTiempo(H_Pedidos.hechos_pedidos_tiempo_id) AS Mes
    ,AVG(H_Pedidos.hechos_pedidos_valor_promedio_envio) AS ValorPromedio
  FROM QUERY_SQUAD.BI_Hechos_Pedidos AS H_Pedidos
  GROUP BY H_Pedidos.hechos_pedidos_localidad_id,
  QUERY_SQUAD.GetMesDeDimTiempo(H_Pedidos.hechos_pedidos_tiempo_id)
GO