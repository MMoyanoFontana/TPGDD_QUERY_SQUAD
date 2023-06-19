USE GD1C2023
-----------DROP TABLAS--------------
IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Dia'))
    DROP TABLE QUERY_SQUAD.BI_dim_Dia;

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Local'))
    DROP TABLE QUERY_SQUAD.BI_dim_Local;

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Categoria_Local'))
    DROP TABLE QUERY_SQUAD.BI_dim_Categoria_Local;

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Tipo_Local'))
    DROP TABLE QUERY_SQUAD.BI_dim_Tipo_Local;

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Localidad'))
    DROP TABLE QUERY_SQUAD.BI_dim_Localidad;

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Rango_Etario'))
    DROP TABLE QUERY_SQUAD.BI_dim_Rango_Etario;

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Tipo_Paquete'))
    DROP TABLE QUERY_SQUAD.BI_dim_Tipo_Paquete;

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Tiempo'))
    DROP TABLE QUERY_SQUAD.BI_dim_Tiempo;

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Rango_Horario'))
    DROP TABLE QUERY_SQUAD.BI_dim_Rango_Horario;

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Tipo_Medio_De_Pago'))
    DROP TABLE QUERY_SQUAD.BI_dim_Tipo_Medio_De_Pago;

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Tipo_Movilidad'))
    DROP TABLE QUERY_SQUAD.BI_dim_Tipo_Movilidad;

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Estado_Envio_Mensajeria'))
    DROP TABLE QUERY_SQUAD.BI_dim_Estado_Envio_Mensajeria;

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Estado_Pedido'))
    DROP TABLE QUERY_SQUAD.BI_dim_Estado_Pedido;

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_dim_Estado_Reclamos'))
    DROP TABLE QUERY_SQUAD.BI_dim_Estado_Reclamos;
-----------DROP SP------------------
IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Dia'))
    DROP PROCEDURE QUERY_SQUAD.BI_migrar_Dia;

IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Tipo_Local'))
    DROP PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Local;

IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Categoria_Local'))
    DROP PROCEDURE QUERY_SQUAD.BI_migrar_Categoria_Local;

IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Local'))
    DROP PROCEDURE QUERY_SQUAD.BI_migrar_Local;

IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Localidad'))
    DROP PROCEDURE QUERY_SQUAD.BI_migrar_Localidad;

IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_cargar_Rango_Etario'))
    DROP PROCEDURE QUERY_SQUAD.BI_cargar_Rango_Etario;

IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Tipo_Paquete'))
    DROP PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Paquete;

IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Tiempo'))
    DROP PROCEDURE QUERY_SQUAD.BI_migrar_Tiempo;

IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Rango_Horario'))
    DROP PROCEDURE QUERY_SQUAD.BI_migrar_Rango_Horario;

IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Tipo_Medio_De_Pago'))
    DROP PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Medio_De_Pago;

IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Tipo_Movilidad'))
    DROP PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Movilidad;

IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Estado_Envio_Mensajeria'))
    DROP PROCEDURE QUERY_SQUAD.BI_migrar_Estado_Envio_Mensajeria;

IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Estado_Pedido'))
    DROP PROCEDURE QUERY_SQUAD.BI_migrar_Estado_Pedido;

IF EXISTS (SELECT * FROM sys.procedures WHERE object_id = OBJECT_ID('QUERY_SQUAD.BI_migrar_Estado_Reclamos'))
    DROP PROCEDURE QUERY_SQUAD.BI_migrar_Estado_Reclamos;
------------------------------------------------------------------
CREATE TABLE QUERY_SQUAD.BI_dim_Dia(
dia_id int PRIMARY KEY,
dia_nombre nvarchar(255)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Tipo_Local(
tipo_local_id int PRIMARY KEY,
tipo_local_tipo nvarchar(50)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Categoria_Local(
categoria_local_id INT PRIMARY KEY,
categoria_local_categoria NVARCHAR(50),
);

CREATE TABLE QUERY_SQUAD.BI_dim_Local(
local_id int PRIMARY KEY,
local_nombre nvarchar(255) not null,
);

CREATE TABLE QUERY_SQUAD.BI_dim_Localidad(
localidad_id int PRIMARY KEY,
localidad_nombre nvarchar(255) not null
);

CREATE TABLE QUERY_SQUAD.BI_dim_Rango_Etario(
rango_etario_id int IDENTITY PRIMARY KEY,
rango_etario_minimo int,
rango_etario_maximo int
);

CREATE TABLE QUERY_SQUAD.BI_dim_Tipo_Paquete(
tipo_paquete_id int PRIMARY KEY,
tipo_paquete_tipo nvarchar(50)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Tiempo(
tiempo_anio INT,
tiempo_mes INT

PRIMARY KEY(tiempo_anio, tiempo_mes)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Rango_Horario(
rango_horario_id int IDENTITY PRIMARY KEY,
rango_horario_hora_inicio TIME,
rango_horario_hora_fin TIME,
);

CREATE TABLE QUERY_SQUAD.BI_dim_Tipo_Medio_De_Pago(
tipo_medio_de_pago_id INT PRIMARY KEY,
tipo_medio_de_pago_tipo NVARCHAR(50)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Tipo_Movilidad(
tipo_movilidad_id INT PRIMARY KEY,
tipo_movilidad_tipo NVARCHAR(50)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Estado_Envio_Mensajeria(
estado_envio_mensajeria_id INT PRIMARY KEY,
estado_envio_mensajeria_estado NVARCHAR(50)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Estado_Pedido(
estado_pedido_id INT PRIMARY KEY,
estado_pedido_estado NVARCHAR(50)
);

CREATE TABLE QUERY_SQUAD.BI_dim_Estado_Reclamos(
estado_reclamos_id int PRIMARY KEY,
estado_reclamos_estado nvarchar(50)
);

GO
-------------------------------------------------------------------------------------
CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Dia
AS
BEGIN
INSERT INTO QUERY_SQUAD.BI_dim_Dia (dia_id, dia_nombre)
SELECT dia_id, dia_nombre
FROM QUERY_SQUAD.Dia
END
GO


CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Local
AS
BEGIN
INSERT INTO QUERY_SQUAD.BI_dim_Tipo_Local(tipo_local_id, tipo_local_tipo)
SELECT tipo_local_id, tipo_local_tipo
FROM QUERY_SQUAD.Tipo_Local
END
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Categoria_Local
AS
BEGIN
INSERT INTO QUERY_SQUAD.BI_dim_Categoria_Local (categoria_local_id, categoria_local_categoria)
SELECT categoria_local_id, categoria_local_categoria
FROM QUERY_SQUAD.Categoria_Local
END
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Local
AS
BEGIN
INSERT INTO QUERY_SQUAD.BI_dim_Local (local_id, local_nombre)
SELECT local_id, local_nombre
FROM QUERY_SQUAD.Local
END
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Localidad
AS
BEGIN
INSERT INTO QUERY_SQUAD.BI_dim_Localidad (localidad_id, localidad_nombre)
SELECT localidad_id, localidad_localidad
FROM QUERY_SQUAD.Localidad
END
GO

CREATE PROCEDURE QUERY_SQUAD.BI_cargar_Rango_Etario
AS
BEGIN
INSERT INTO QUERY_SQUAD.BI_dim_Rango_Etario(rango_etario_minimo, rango_etario_maximo)
VALUES
(0,24),
(25,34),
(35,54),
(55,150)
END
GO


CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Paquete
AS
BEGIN
INSERT INTO QUERY_SQUAD.BI_dim_Tipo_Paquete(tipo_paquete_id, tipo_paquete_tipo)
SELECT paquete_id, paquete_tipo
FROM QUERY_SQUAD.Paquete
END
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Tiempo
AS
BEGIN
INSERT INTO QUERY_SQUAD.BI_dim_Tiempo(tiempo_anio, tiempo_mes)
SELECT DISTINCT YEAR(pedido_fecha), MONTH(pedido_fecha) --Alcanza con este 
FROM QUERY_SQUAD.Pedido
ORDER BY 1,2 
END
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Rango_Horario
AS
BEGIN
    DECLARE @HoraInicio TIME = '08:00:00';
    DECLARE @HoraFin TIME = '10:00:00';

    WHILE @HoraInicio < '22:00:00'
    BEGIN
        INSERT INTO BI_dim_Rango_Horario(rango_horario_hora_inicio,rango_horario_hora_fin)
        VALUES (@HoraInicio, @HoraFin);

        SET @HoraInicio = DATEADD(HOUR, 2, @HoraInicio);
        SET @HoraFin = DATEADD(HOUR, 2, @HoraFin);
    END;

    INSERT INTO BI_dim_Rango_Horario (rango_horario_hora_inicio, rango_horario_hora_fin)
    VALUES ('22:00:00', '00:00:00');
END;
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Medio_De_Pago
AS
BEGIN
INSERT INTO QUERY_SQUAD.BI_dim_Tipo_Medio_De_Pago(tipo_medio_de_pago_id, tipo_medio_de_pago_tipo)
SELECT tipo_medio_de_pago ,tipo_medio_de_pago_descripcion
FROM QUERY_SQUAD.Tipo_Medio_De_Pago
END
GO


CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Tipo_Movilidad
AS
BEGIN
INSERT INTO QUERY_SQUAD.BI_dim_Tipo_Movilidad(tipo_movilidad_id, tipo_movilidad_tipo)
SELECT tipo_movilidad_id, tipo_movilidad_descripcion
FROM QUERY_SQUAD.Tipo_Movilidad
END
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Estado_Envio_Mensajeria
AS
BEGIN
INSERT INTO QUERY_SQUAD.BI_dim_Estado_Envio_Mensajeria(estado_envio_mensajeria_id, estado_envio_mensajeria_estado)
SELECT estado_envio_mensajeria_id, estado_envio_mensajeria_descripcion
FROM QUERY_SQUAD.Estado_Envio_Mensajeria
END
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Estado_Pedido
AS
BEGIN
INSERT INTO QUERY_SQUAD.BI_dim_Estado_Pedido(estado_pedido_id, estado_pedido_estado)
SELECT estado_pedido_id, estado_pedido_descripcion
FROM QUERY_SQUAD.Estado_Pedido
END
GO

CREATE PROCEDURE QUERY_SQUAD.BI_migrar_Estado_Reclamos
AS
BEGIN
INSERT INTO QUERY_SQUAD.BI_dim_Estado_Reclamos(estado_reclamos_id,estado_reclamos_estado)
SELECT estado_reclamo_id, estado_reclamo_descripcion
FROM QUERY_SQUAD.Estado_Reclamo
END
GO