USE GD1C2023
GO

--------DROP TABLAS-------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Pedido_Cupones'))
    DROP TABLE QUERY_SQUAD.Pedido_Cupones
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Envio_Mensajeria'))
    DROP TABLE QUERY_SQUAD.Envio_Mensajeria
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Horario_Local'))
    DROP TABLE QUERY_SQUAD.Horario_Local
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Cupon_Reclamo'))
    DROP TABLE QUERY_SQUAD.Cupon_Reclamo
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Reclamo'))
    DROP TABLE QUERY_SQUAD.Reclamo
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Usuario_Cupon'))
    DROP TABLE QUERY_SQUAD.Usuario_Cupon
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Cupon'))
    DROP TABLE QUERY_SQUAD.Cupon
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Pedido_Productos'))
    DROP TABLE QUERY_SQUAD.Pedido_Productos
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Pedido'))
    DROP TABLE QUERY_SQUAD.Pedido
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Medio_De_Pago'))
    DROP TABLE QUERY_SQUAD.Medio_De_Pago
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Direccion_Usuario'))
    DROP TABLE QUERY_SQUAD.Direccion_Usuario
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Repartidor'))
    DROP TABLE QUERY_SQUAD.Repartidor
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Producto_Local'))
    DROP TABLE QUERY_SQUAD.Producto_Local
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Local'))
    DROP TABLE QUERY_SQUAD.Local
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Categoria_Local'))
    DROP TABLE QUERY_SQUAD.Categoria_Local
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Paquete'))
    DROP TABLE QUERY_SQUAD.Paquete
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Dia'))
    DROP TABLE QUERY_SQUAD.Dia
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Tipo_Local'))
    DROP TABLE QUERY_SQUAD.Tipo_Local
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Operador_Reclamo'))
    DROP TABLE QUERY_SQUAD.Operador_Reclamo
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Estado_Reclamo'))
    DROP TABLE QUERY_SQUAD.Estado_Reclamo
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Tipo_Reclamo'))
    DROP TABLE QUERY_SQUAD.Tipo_Reclamo
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Estado_Envio_Mensajeria'))
    DROP TABLE QUERY_SQUAD.Estado_Envio_Mensajeria
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Localidad'))
    DROP TABLE QUERY_SQUAD.Localidad
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Tipo_Medio_De_Pago'))
    DROP TABLE QUERY_SQUAD.Tipo_Medio_De_Pago
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Tipo_Movilidad'))
    DROP TABLE QUERY_SQUAD.Tipo_Movilidad
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Datos_Tarjeta'))
    DROP TABLE QUERY_SQUAD.Datos_Tarjeta
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Usuario'))
    DROP TABLE QUERY_SQUAD.Usuario
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Estado_Pedido'))
    DROP TABLE QUERY_SQUAD.Estado_Pedido
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'U' AND object_id = OBJECT_ID('QUERY_SQUAD.Tipo_Cupon'))
    DROP TABLE QUERY_SQUAD.Tipo_Cupon
GO

------------DROP SP--------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Tipo_Cupon'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Tipo_Cupon
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Estado_Pedido'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Estado_Pedido
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Usuario'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Usuario
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Datos_Tarjeta'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Datos_Tarjeta
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Tipo_Movilidad'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Tipo_Movilidad
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Tipo_Medio_De_Pago'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Tipo_Medio_De_Pago
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Localidad'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Localidad
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Estado_Envio_Mensajeria'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Estado_Envio_Mensajeria
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Tipo_Reclamo'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Tipo_Reclamo
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Estado_Reclamo'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Estado_Reclamo
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Operador_Reclamo'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Operador_Reclamo
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Tipo_Local'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Tipo_Local
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Dia'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Dia
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Paquete'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Paquete
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Local'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Local
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Producto_Local'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Producto_Local
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Repartidor'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Repartidor
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Direccion_Usuario'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Direccion_Usuario
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Medio_De_Pago'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Medio_De_Pago
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Pedido'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Pedido
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Pedido_Productos'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Pedido_Productos
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Cupon'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Cupon
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Usuario_Cupon'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Usuario_Cupon
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Reclamo'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Reclamo
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Cupon_Reclamo'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Cupon_Reclamo
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Horario_Local'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Horario_Local
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Envio_Mensajeria'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Envio_Mensajeria
GO
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND object_id = OBJECT_ID('QUERY_SQUAD.Migracion_Pedido_Cupones'))
    DROP PROCEDURE QUERY_SQUAD.Migracion_Pedido_Cupones
GO
------------DROP SCHEMA-------------------
IF EXISTS (SELECT * FROM sys.schemas WHERE name = 'QUERY_SQUAD')
    DROP SCHEMA QUERY_SQUAD
GO

------------ CREACION SCHEMA Y TABLAS----------------
CREATE SCHEMA QUERY_SQUAD;
GO

CREATE TABLE QUERY_SQUAD.Tipo_Cupon
(
    tipo_cupon_id INT PRIMARY KEY IDENTITY,
    tipo_cupon_tipo NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Estado_Pedido
(
    estado_pedido_id INT PRIMARY KEY IDENTITY,
    estado_pedido_estado NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Usuario
(
    usuario_id INT PRIMARY KEY IDENTITY,
    usuario_nombre NVARCHAR(255),
    usuario_apellido NVARCHAR(255),
    usuario_dni DECIMAL(18,0),
    usuario_fecha_registro DATETIME2(3),
    usuario_telefono DECIMAL(18,0),
    usuario_email NVARCHAR(255),
    usuario_fecha_nac DATE
)
GO

CREATE TABLE QUERY_SQUAD.Datos_Tarjeta
(
    datos_tarjeta_id INT PRIMARY KEY IDENTITY,
    datos_tarjeta_marca NVARCHAR(100),
    datos_tarjeta_numero NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Tipo_Movilidad
(
    tipo_movilidad_id INT PRIMARY KEY IDENTITY,
    tipo_movilidad_tipo NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Tipo_Medio_De_Pago
(
    tipo_medio_de_pago_id INT PRIMARY KEY IDENTITY,
    tipo_medio_de_pago_tipo NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Localidad
(
    localidad_id INT PRIMARY KEY IDENTITY,
    localidad_nombre NVARCHAR(255)
)
GO

CREATE TABLE QUERY_SQUAD.Estado_Envio_Mensajeria
(
    estado_envio_mensajeria_id INT PRIMARY KEY IDENTITY,
    estado_envio_mensajeria_estado NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Tipo_Reclamo
(
    tipo_reclamo_id INT PRIMARY KEY IDENTITY,
    tipo_reclamo_tipo NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Estado_Reclamo
(
    estado_reclamo_id INT PRIMARY KEY IDENTITY,
    estado_reclamo_estado NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Operador_Reclamo
(
    operador_reclamo_id INT PRIMARY KEY IDENTITY,
    operador_reclamo_nombre NVARCHAR(255),
    operador_reclamo_apellido NVARCHAR(255),
    operador_reclamo_dni DECIMAL(18,0),
    operador_reclamo_telefono DECIMAL(18,0),
    operador_reclamo_direccion NVARCHAR(255),
    operador_reclamo_mail NVARCHAR(255),
    operador_reclamo_fecha_nac DATE
)
GO

CREATE TABLE QUERY_SQUAD.Tipo_Local
(
    tipo_local_id INT PRIMARY KEY IDENTITY,
    tipo_local_tipo NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Dia
(
    dia_id INT PRIMARY KEY IDENTITY,
    dia_nombre NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Paquete
(
    paquete_id INT PRIMARY KEY IDENTITY,
    paquete_tipo NVARCHAR(50),
    paquete_alto_max DECIMAL(18,2),
    paquete_ancho_max DECIMAL(18,2),
    paquete_largo_max DECIMAL(18,2),
    paquete_peso_max DECIMAL(18,2),
    paquete_tipo_precio DECIMAL(18,2)
)
GO

CREATE TABLE QUERY_SQUAD.Categoria_Local
(
    categoria_local_id INT PRIMARY KEY IDENTITY,
    categoria_local_tipo_local_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Local NOT NULL,
    categoria_local_categoria NVARCHAR(50),
)
GO

CREATE TABLE QUERY_SQUAD.Local
(
    local_id INT PRIMARY KEY IDENTITY,
    local_tipo_local_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Local NOT NULL,
    local_categoria_local_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Categoria_Local,
    local_localidad_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Localidad NOT NULL,
    local_nombre NVARCHAR(100),
    local_descripcion NVARCHAR(255),
    local_direccion NVARCHAR(255),
    local_provincia NVARCHAR(255)
)
GO

CREATE TABLE QUERY_SQUAD.Producto_Local
(
	producto_local_local_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Local NOT NULL,
	producto_local_codigo NVARCHAR(50),
    producto_local_nombre NVARCHAR(50),
    producto_local_descripcion NVARCHAR(255),
    producto_local_precio DECIMAL(18,2),
	PRIMARY KEY (producto_local_codigo, producto_local_local_id)
)
GO

CREATE TABLE QUERY_SQUAD.Repartidor
(
    repartidor_id INT PRIMARY KEY IDENTITY,
    repartidor_localidad_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Localidad NOT NULL,
    repartidor_tipo_movilidad_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Movilidad NOT NULL,
    repartidor_nombre NVARCHAR(255),
    repartidor_apellido NVARCHAR(255),
    repartidor_dni DECIMAL(18,0),
    repartidor_telefono DECIMAL(18,0),
    repartidor_direccion NVARCHAR(255),
    repartidor_email NVARCHAR(255),
    repartidor_fecha_nac DATE
)
GO

CREATE TABLE QUERY_SQUAD.Direccion_Usuario
(
    direccion_usuario_id INT PRIMARY KEY IDENTITY,
    direccion_usuario_usuario_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Usuario NOT NULL,
    direccion_usuario_localidad_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Localidad NOT NULL,
    direccion_usuario_nombre NVARCHAR(50),
    direccion_usuario_direccion NVARCHAR(255),
    direccion_usuario_provincia NVARCHAR(255)
)
GO

CREATE TABLE QUERY_SQUAD.Medio_De_Pago
(
    medio_de_pago_id INT PRIMARY KEY IDENTITY,
    medio_de_pago_usuario_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Usuario NOT NULL,
    medio_de_pago_datos_tarjeta_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Datos_Tarjeta,
    medio_de_pago_tipo_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Medio_De_Pago NOT NULL,
)
GO

CREATE TABLE QUERY_SQUAD.Pedido
(
    pedido_nro DECIMAL(18,0) PRIMARY KEY,
    pedido_usuario_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Usuario NOT NULL,
    pedido_local_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Local NOT NULL,
    pedido_direccion_usuario_id INT REFERENCES QUERY_SQUAD.Direccion_Usuario NOT NULL,
    pedido_medio_pago_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Medio_De_Pago NOT NULL,
    pedido_repartidor_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Repartidor NOT NULL,
    pedido_estado_pedido_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Estado_Pedido NOT NULL,
    pedido_precio_envio DECIMAL(18,2),
    pedido_total_productos DECIMAL(18,0),
    pedido_tarifa_servicio DECIMAL(18,2),
    pedido_propina DECIMAL(18,2),
    pedido_total_cupones DECIMAL(18,2),
    pedido_total_servicio DECIMAL(18,2),
    pedido_observ NVARCHAR(255),
    pedido_fecha DATETIME2(3),
    pedido_fecha_entrega DATETIME2(3),
    pedido_tiempo_estimado DECIMAL(18,2),
    pedido_calificacion DECIMAL(18,0) CHECK (pedido_calificacion BETWEEN 1 AND 5)
)
GO

CREATE TABLE QUERY_SQUAD.Pedido_Productos
(
	pedido_producto_id INT PRIMARY KEY IDENTITY,
    pedido_productos_local_id INT NOT NULL,
    pedido_productos_producto_local_codigo NVARCHAR(50) NOT NULL,
	pedido_productos_pedido_id DECIMAL(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Pedido NOT NULL,
    producto_cantidad DECIMAL(18,0),
    producto_precio DECIMAL(18,2),
	FOREIGN KEY(pedido_productos_producto_local_codigo, pedido_productos_local_id) REFERENCES QUERY_SQUAD.Producto_Local
)
GO

CREATE TABLE QUERY_SQUAD.Cupon
(
    cupon_nro DECIMAL(18,0) PRIMARY KEY,
    cupon_tipo_cupon_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Cupon NOT NULL,
    cupon_monto DECIMAL(18,2),
    cupon_fecha_alta DATETIME2(3),
    cupon_fecha_vencimiento DATETIME2(3)
)
GO

CREATE TABLE QUERY_SQUAD.Usuario_Cupon
(
    usuario_cupon_cupon_nro DECIMAL(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Cupon NOT NULL,
    usuario_cupon_usuario_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Usuario NOT NULL
)
GO

CREATE TABLE QUERY_SQUAD.Reclamo
(
    reclamo_nro DECIMAL(18,0) PRIMARY KEY,
    reclamo_usuario_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Usuario NOT NULL,
    reclamo_pedido_nro DECIMAL(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Pedido NOT NULL,
    reclamo_operador_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Operador_Reclamo NOT NULL,
    reclamo_tipo_reclamo_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Reclamo NOT NULL,
    reclamo_estado_reclamo_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Estado_Reclamo NOT NULL,
    reclamo_fecha DATETIME2(3),
    reclamo_descripcion NVARCHAR(255),
    reclamo_fecha_solucion DATETIME2(3),
    reclamo_solucion NVARCHAR(255),
    reclamo_calificacion DECIMAL(18,0) CHECK (reclamo_calificacion BETWEEN 1 AND 5)
)
GO

CREATE TABLE QUERY_SQUAD.Cupon_Reclamo
(
    cupon_reclamo_reclamo_id DECIMAL(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Reclamo,
    cupon_reclamo_cupon_nro DECIMAL(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Cupon
)
GO

CREATE TABLE QUERY_SQUAD.Horario_Local
(
    horario_local_id INT PRIMARY KEY IDENTITY,
    horario_local_local_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Local NOT NULL,
    horario_local_dia INT FOREIGN KEY REFERENCES QUERY_SQUAD.Dia NOT NULL,
    horario_local_hora_apertura DECIMAL(18,0),
    horario_local_hora_cierre DECIMAL(18,0)
)
GO

CREATE TABLE QUERY_SQUAD.Envio_Mensajeria
(
    envio_mensajeria_nro DECIMAL(18,0) PRIMARY KEY,
    envio_mensajeria_usuario_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Usuario NOT NULL,
    envio_mensajeria_medio_de_pago_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Medio_De_Pago NOT NULL,
    envio_mensajeria_repartidor_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Repartidor NOT NULL,
    envio_mensajeria_localidad_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Localidad NOT NULL,
    envio_mensajeria_paquete_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Paquete NOT NULL,
    envio_mensajeria_estado_envio_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Estado_Envio_Mensajeria NOT NULL,
    envio_mensajeria_dir_orig NVARCHAR(255),
    envio_mensajeria_dir_dest NVARCHAR(255),
    envio_mensajeria_provincia NVARCHAR(255),
    envio_mensajeria_km DECIMAL(18,2),
    envio_mensajeria_valor_asegurado DECIMAL(18,2),
    envio_mensajeria_precio_envio DECIMAL(18,2),
    envio_mensajeria_precio_seguro DECIMAL(18,2),
    envio_mensajeria_propina DECIMAL(18,2),
    envio_mensajeria_total DECIMAL(18,2),
    envio_mensajeria_observ NVARCHAR(255),
    envio_mensajeria_fecha DATETIME2(3),
    envio_mensajeria_fecha_entrega DATETIME2(3),
    envio_mensajeria_tiempo_estimado DECIMAL(18,2),
    envio_mensajeria_calificacion DECIMAL(18,0) CHECK (envio_mensajeria_calificacion BETWEEN 1 AND 5)
)
GO

CREATE TABLE QUERY_SQUAD.Pedido_Cupones
(
    pedido_cupones_cupon_id DECIMAL(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Cupon NOT NULL,
    pedido_cupones_pedido_nro DECIMAL(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Pedido NOT NULL
)
GO
----------CREACION PROCEDURES-------------------
USE [GD1C2023]
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Cupon
AS
INSERT INTO QUERY_SQUAD.Tipo_Cupon
    (tipo_cupon_tipo)
SELECT DISTINCT Cupon_Tipo
FROM gd_esquema.Maestra
WHERE CUPON_TIPO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Estado_Pedido
AS
INSERT INTO QUERY_SQUAD.Estado_Pedido
    (estado_pedido_estado)
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
    (datos_tarjeta_marca, datos_tarjeta_numero)
SELECT DISTINCT MARCA_TARJETA, MEDIO_PAGO_NRO_TARJETA
FROM gd_esquema.Maestra
--WHERE MARCA_TARJETA IS NOT NULL AND MEDIO_PAGO_NRO_TARJETA IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Movilidad
AS
INSERT INTO QUERY_SQUAD.Tipo_Movilidad
    (tipo_movilidad_tipo)
SELECT DISTINCT REPARTIDOR_TIPO_MOVILIDAD
FROM gd_esquema.Maestra
--WHERE REPARTIDOR_TIPO_MOVILIDAD IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Medio_De_Pago
AS
INSERT INTO QUERY_SQUAD.Tipo_Medio_De_Pago
    (tipo_medio_de_pago_tipo)
SELECT DISTINCT MEDIO_PAGO_TIPO
FROM gd_esquema.Maestra
--WHERE MEDIO_PAGO_TIPO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Localidad
AS
INSERT INTO QUERY_SQUAD.Localidad
    (localidad_nombre)
SELECT LOCAL_LOCALIDAD FROM gd_esquema.Maestra WHERE LOCAL_LOCALIDAD is not null UNION 
SELECT ENVIO_MENSAJERIA_LOCALIDAD FROM gd_esquema.Maestra WHERE ENVIO_MENSAJERIA_LOCALIDAD is not null
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Estado_Envio_Mensajeria
AS
INSERT INTO QUERY_SQUAD.Estado_Envio_Mensajeria
    (estado_envio_mensajeria_estado)
SELECT DISTINCT ENVIO_MENSAJERIA_ESTADO
FROM gd_esquema.Maestra
WHERE ENVIO_MENSAJERIA_ESTADO IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Reclamo
AS
INSERT INTO QUERY_SQUAD.Tipo_Reclamo
    (tipo_reclamo_tipo)
SELECT DISTINCT RECLAMO_TIPO
FROM gd_esquema.Maestra
WHERE RECLAMO_TIPO IS NOT NULL
GO


CREATE PROCEDURE QUERY_SQUAD.Migracion_Estado_Reclamo
AS
INSERT INTO QUERY_SQUAD.Estado_Reclamo
    (estado_reclamo_estado)
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
    (local_tipo_local_id, local_localidad_id, local_nombre, local_descripcion, local_direccion, local_provincia)
SELECT DISTINCT
    tipo.tipo_local_id,
    localid.localidad_id,
    esquema.LOCAL_NOMBRE,
    esquema.LOCAL_DESCRIPCION,
    esquema.LOCAL_DIRECCION,
    esquema.LOCAL_PROVINCIA
FROM gd_esquema.Maestra esquema
    JOIN QUERY_SQUAD.Tipo_Local tipo ON esquema.LOCAL_TIPO = tipo.tipo_local_tipo
    JOIN QUERY_SQUAD.Localidad localid ON esquema.LOCAL_LOCALIDAD = localid.localidad_nombre
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Producto_Local
AS
INSERT INTO QUERY_SQUAD.Producto_Local
    (producto_local_local_id, producto_local_codigo ,producto_local_nombre, producto_local_descripcion, producto_local_precio)
SELECT DISTINCT
    localq.local_id,
	esquema.PRODUCTO_LOCAL_CODIGO,
    esquema.PRODUCTO_LOCAL_NOMBRE,
    esquema.PRODUCTO_LOCAL_DESCRIPCION,
    esquema.PRODUCTO_LOCAL_PRECIO
FROM gd_esquema.Maestra esquema
    JOIN QUERY_SQUAD.Local localq ON esquema.LOCAL_NOMBRE = localq.local_nombre
WHERE esquema.PRODUCTO_LOCAL_NOMBRE IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Repartidor
AS
DECLARE @Repartidor_DNI decimal(18,0)
DECLARE @Repartidor_Nombre NVARCHAR(255)
DECLARE @Repartidor_Apellido NVARCHAR(255)
DECLARE @REPARTIDOR_TIPO_MOVILIDAD NVARCHAR(50)
DECLARE @REPARTIDOR_DIRECCION NVARCHAR(255)
DECLARE @REPARTIDOR_EMAIL NVARCHAR(255)
DECLARE @REPARTIDOR_TELEFONO decimal(18,0)
DECLARE @REPARTIDOR_FECHA_NAC date
DECLARE @LOCAL_LOCALIDAD NVARCHAR(255)
DECLARE @PEDIDO_FECHA_ENTREGA DATETIME
DECLARE @ENVIO_MENSAJERIA_LOCALIDAD NVARCHAR(255)
DECLARE @ENVIO_MENSAJERIA_FECHA_ENTREGA DATETIME
DECLARE @Localidad_ID INT
DECLARE @Tipo_Movilidad_ID INT

DECLARE cursor_repartidor CURSOR FOR
SELECT t3.Repartidor_DNI, t3.Repartidor_Nombre, t3.Repartidor_Apellido, t3.REPARTIDOR_TIPO_MOVILIDAD, t3.REPARTIDOR_DIRECION, t3.REPARTIDOR_EMAIL, t3.REPARTIDOR_TELEFONO, t3.REPARTIDOR_FECHA_NAC ,t3.LOCAL_LOCALIDAD, t3.PEDIDO_FECHA_ENTREGA, t4.ENVIO_MENSAJERIA_LOCALIDAD, t4.ENVIO_MENSAJERIA_FECHA_ENTREGA 
FROM(
	SELECT DISTINCT m.Repartidor_DNI, m.Repartidor_Nombre, m.Repartidor_Apellido, m.REPARTIDOR_TIPO_MOVILIDAD, m.REPARTIDOR_DIRECION,m.REPARTIDOR_EMAIL, m.REPARTIDOR_TELEFONO, m.REPARTIDOR_FECHA_NAC, m.LOCAL_LOCALIDAD, m.PEDIDO_FECHA_ENTREGA --SELECT DATOS DEL REPARTIDOR Y SU ULTIMO PEDIDO
	FROM gd_esquema.Maestra m
	JOIN (
		SELECT Repartidor_DNI, MAX(PEDIDO_FECHA_ENTREGA) Max_Pedido_Fecha
		FROM gd_esquema.Maestra
		GROUP BY Repartidor_DNI
	) t1 ON m.Repartidor_DNI = t1.Repartidor_DNI AND m.PEDIDO_FECHA_ENTREGA = t1.Max_Pedido_Fecha) t3
JOIN
	(
	SELECT DISTINCT m.Repartidor_DNI, m.ENVIO_MENSAJERIA_LOCALIDAD, m.ENVIO_MENSAJERIA_FECHA_ENTREGA ---SELECT DEL ULTIMO ENVIO DE MENSAJERIA DEL REPARTIDOR
	FROM gd_esquema.Maestra m
	JOIN (
		SELECT Repartidor_DNI, MAX(ENVIO_MENSAJERIA_FECHA_ENTREGA) Max_Envio_Fecha
		FROM gd_esquema.Maestra
		GROUP BY Repartidor_DNI
	) t2 ON m.Repartidor_DNI = t2.Repartidor_DNI AND m.ENVIO_MENSAJERIA_FECHA_ENTREGA = t2.Max_Envio_Fecha) t4
ON t3.REPARTIDOR_DNI = t4.REPARTIDOR_DNI  --JOINEO DATOS DEL REPARTIDOR y SU ULTIMO PEDIDO CON SU ULTIMO ENVIO MENSAJERIA

OPEN cursor_repartidor
FETCH NEXT FROM cursor_repartidor INTO @Repartidor_DNI, @Repartidor_Nombre, @Repartidor_Apellido, @REPARTIDOR_TIPO_MOVILIDAD, @REPARTIDOR_DIRECCION, 
									   @REPARTIDOR_EMAIL,@REPARTIDOR_TELEFONO, @REPARTIDOR_FECHA_NAC, @LOCAL_LOCALIDAD, @PEDIDO_FECHA_ENTREGA, @ENVIO_MENSAJERIA_LOCALIDAD, @ENVIO_MENSAJERIA_FECHA_ENTREGA
WHILE @@FETCH_STATUS = 0  
    BEGIN
		SET @Tipo_Movilidad_ID = (SELECT t.tipo_movilidad_id FROM QUERY_SQUAD.Tipo_Movilidad t WHERE t.tipo_movilidad_tipo = @REPARTIDOR_TIPO_MOVILIDAD)
		IF (@PEDIDO_FECHA_ENTREGA >= @ENVIO_MENSAJERIA_FECHA_ENTREGA)
			SET @Localidad_ID = (SELECT l.localidad_id FROM QUERY_SQUAD.Localidad l WHERE l.localidad_nombre = @LOCAL_LOCALIDAD)
		ELSE
			SET @Localidad_ID = (SELECT l.localidad_id FROM QUERY_SQUAD.Localidad l WHERE l.localidad_nombre = @ENVIO_MENSAJERIA_LOCALIDAD)

		INSERT INTO QUERY_SQUAD.Repartidor VALUES( 
			   @Localidad_ID, @Tipo_Movilidad_ID, @Repartidor_Nombre, @Repartidor_Apellido, @Repartidor_DNI, @REPARTIDOR_TELEFONO, 
			   @REPARTIDOR_DIRECCION, @REPARTIDOR_EMAIL, @REPARTIDOR_FECHA_NAC )
									    	 		
        FETCH NEXT FROM cursor_repartidor INTO @Repartidor_DNI, @Repartidor_Nombre, @Repartidor_Apellido, @REPARTIDOR_TIPO_MOVILIDAD, @REPARTIDOR_DIRECCION, 
											   @REPARTIDOR_EMAIL,@REPARTIDOR_TELEFONO,@REPARTIDOR_FECHA_NAC,@LOCAL_LOCALIDAD, @PEDIDO_FECHA_ENTREGA, @ENVIO_MENSAJERIA_LOCALIDAD, @ENVIO_MENSAJERIA_FECHA_ENTREGA;  
    END;
CLOSE cursor_repartidor
DEALLOCATE cursor_repartidor
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Direccion_Usuario
AS
INSERT INTO QUERY_SQUAD.Direccion_Usuario
    (direccion_usuario_usuario_id, direccion_usuario_direccion, direccion_usuario_localidad_id,direccion_usuario_nombre, direccion_usuario_provincia)
SELECT DISTINCT u.usuario_id, m.DIRECCION_USUARIO_DIRECCION, loc.localidad_id, m.DIRECCION_USUARIO_NOMBRE, m.DIRECCION_USUARIO_PROVINCIA
FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Usuario u ON (u.usuario_dni = m.USUARIO_DNI)
    JOIN QUERY_SQUAD.Localidad loc ON (m.DIRECCION_USUARIO_LOCALIDAD = loc.localidad_nombre)
Where DIRECCION_USUARIO_DIRECCION IS NOT NULL
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Medio_De_Pago
AS
INSERT INTO QUERY_SQUAD.Medio_De_Pago
    (medio_de_pago_usuario_id, medio_de_pago_datos_tarjeta_id, medio_de_pago_tipo_id)
SELECT DISTINCT u.usuario_id, datos.datos_tarjeta_id, tipo.tipo_medio_de_pago_id
FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Usuario u ON (u.usuario_dni = m.USUARIO_DNI)
    JOIN QUERY_SQUAD.Datos_Tarjeta datos ON (datos.datos_tarjeta_marca= m.MARCA_TARJETA and datos.datos_tarjeta_numero = m.MEDIO_PAGO_NRO_TARJETA)
    JOIN QUERY_SQUAD.Tipo_Medio_De_Pago tipo ON (tipo.tipo_medio_de_pago_tipo = m.MEDIO_PAGO_TIPO)
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
    JOIN QUERY_SQUAD.Usuario u ON (u.usuario_dni = m.USUARIO_DNI)
	JOIN QUERY_SQUAD.Direccion_Usuario d ON (d.direccion_usuario_usuario_id = u.usuario_id AND d.direccion_usuario_nombre = m.DIRECCION_USUARIO_NOMBRE)
    JOIN QUERY_SQUAD.Repartidor r ON (m.REPARTIDOR_DNI = r.repartidor_dni)
    JOIN QUERY_SQUAD.Datos_Tarjeta datos ON (datos.datos_tarjeta_marca= m.MARCA_TARJETA and datos.datos_tarjeta_numero = m.MEDIO_PAGO_NRO_TARJETA)
	JOIN QUERY_SQUAD.Medio_De_Pago mp ON (datos.datos_tarjeta_id = mp.medio_de_pago_datos_tarjeta_id AND mp.medio_de_pago_usuario_id = u.usuario_id)
	JOIN QUERY_SQUAD.Local l ON (l.local_nombre = m.LOCAL_NOMBRE)
    JOIN QUERY_SQUAD.Estado_Pedido ep on (ep.estado_pedido_estado = m.PEDIDO_ESTADO)
	WHERE PEDIDO_NRO is not null
	order by PEDIDO_NRO
	
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Pedido_Productos
AS
	INSERT INTO QUERY_SQUAD.Pedido_Productos (pedido_productos_local_id, pedido_productos_producto_local_codigo, pedido_productos_pedido_id, producto_cantidad, producto_precio)
    SELECT l.local_id, m.PRODUCTO_LOCAL_CODIGO, m.PEDIDO_NRO, m.PRODUCTO_CANTIDAD, m.PRODUCTO_LOCAL_PRECIO FROM gd_esquema.Maestra m
	JOIN QUERY_SQUAD.Local l ON (m.LOCAL_NOMBRE = l.local_nombre)
	WHERE PEDIDO_NRO is not null AND PRODUCTO_LOCAL_CODIGO is not null
	
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Cupon
AS
    INSERT INTO QUERY_SQUAD.Cupon (cupon_nro, cupon_tipo_cupon_id, cupon_monto, cupon_fecha_alta, cupon_fecha_vencimiento)
    SELECT DISTINCT 
			m.CUPON_NRO,
            t.tipo_cupon_id,
            m.CUPON_MONTO,
            m.CUPON_FECHA_ALTA,
            m.CUPON_FECHA_VENCIMIENTO
    FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Tipo_Cupon t ON (m.CUPON_TIPO = t.tipo_cupon_tipo)  
    WHERE m.CUPON_NRO IS NOT NULL

    INSERT INTO QUERY_SQUAD.Cupon (cupon_nro, cupon_tipo_cupon_id, cupon_monto, cupon_fecha_alta, cupon_fecha_vencimiento) --INSERTA LOS CUPONES RECLAMO QUE NO ESTAN CARGADOS COMO CUPON (98212298 y 40124215)
    SELECT DISTINCT 
			m.CUPON_RECLAMO_NRO,
			t.tipo_cupon_id,
            m.CUPON_RECLAMO_MONTO,
            m.CUPON_RECLAMO_FECHA_ALTA,
            m.CUPON_RECLAMO_FECHA_VENCIMIENTO
	FROM gd_esquema.Maestra m
	JOIN QUERY_SQUAD.Tipo_Cupon t ON (m.CUPON_RECLAMO_TIPO = t.tipo_cupon_tipo)
	WHERE NOT EXISTS (
    SELECT *
    FROM QUERY_SQUAD.Cupon
    WHERE m.CUPON_RECLAMO_NRO is not null AND m.CUPON_RECLAMO_NRO = cupon_nro);
    --Migracion_Cupon
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Usuario_Cupon --MIGRA TANTO LOS CUPONES Usados en pedidos, como los cupones dado por reclamo
AS
	INSERT INTO QUERY_SQUAD.Usuario_Cupon (usuario_cupon_cupon_nro, usuario_cupon_usuario_id)
    SELECT t1.cupon_nro, u.usuario_id
    FROM  
	(SELECT USUARIO_DNI, CUPON_NRO from gd_esquema.Maestra where CUPON_NRO is not null
	UNION
	SELECT USUARIO_DNI,CUPON_RECLAMO_NRO from gd_esquema.Maestra where CUPON_RECLAMO_NRO is not null) t1
    JOIN QUERY_SQUAD.Usuario u ON (u.usuario_dni = t1.USUARIO_DNI)	
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Reclamo
AS
    INSERT INTO QUERY_SQUAD.Reclamo
    SELECT DISTINCT m.RECLAMO_NRO, u.usuario_id, m.pedido_nro, o.operador_reclamo_id, 
                    tr.tipo_reclamo_id, er.estado_reclamo_id, m.RECLAMO_FECHA, m.RECLAMO_DESCRIPCION,
                    m.RECLAMO_FECHA_SOLUCION, m.RECLAMO_SOLUCION, m.RECLAMO_CALIFICACION
    FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Usuario u ON (u.usuario_dni = m.USUARIO_DNI)
    JOIN QUERY_SQUAD.Operador_Reclamo o ON(o.operador_reclamo_dni = m.OPERADOR_RECLAMO_DNI AND o.operador_reclamo_apellido = m.OPERADOR_RECLAMO_APELLIDO AND o.operador_reclamo_nombre = m.OPERADOR_RECLAMO_NOMBRE)  
    JOIN QUERY_SQUAD.Tipo_Reclamo tr ON (tr.tipo_reclamo_tipo = m.RECLAMO_TIPO)
    JOIN QUERY_SQUAD.Estado_Reclamo er ON(er.estado_reclamo_estado = m.RECLAMO_ESTADO)
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
    WHERE m.RECLAMO_NRO is not null AND CUPON_RECLAMO_NRO is not null
GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Horario_Local
AS
    INSERT INTO QUERY_SQUAD.Horario_Local (horario_local_local_id, horario_local_dia, horario_local_hora_apertura, horario_local_hora_cierre)
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
    envio_mensajeria_repartidor_id, envio_mensajeria_localidad_id, envio_mensajeria_paquete_id, envio_mensajeria_estado_envio_id, envio_mensajeria_dir_orig,
    envio_mensajeria_dir_dest, envio_mensajeria_provincia, envio_mensajeria_km, envio_mensajeria_valor_asegurado, envio_mensajeria_precio_envio, 
    envio_mensajeria_precio_seguro, envio_mensajeria_propina, envio_mensajeria_total, envio_mensajeria_observ, envio_mensajeria_fecha, 
    envio_mensajeria_fecha_entrega, envio_mensajeria_tiempo_estimado, envio_mensajeria_calificacion)
    SELECT DISTINCT m.ENVIO_MENSAJERIA_NRO, u.usuario_id, mp.medio_de_pago_id, r.repartidor_id, l.localidad_id, p.paquete_id, estado.estado_envio_mensajeria_id,
                    m.ENVIO_MENSAJERIA_DIR_ORIG, m.ENVIO_MENSAJERIA_DIR_DEST, m.ENVIO_MENSAJERIA_PROVINCIA,
                    m.ENVIO_MENSAJERIA_KM, m.ENVIO_MENSAJERIA_VALOR_ASEGURADO, m.ENVIO_MENSAJERIA_PRECIO_ENVIO,
                    m.ENVIO_MENSAJERIA_PRECIO_SEGURO,  m.ENVIO_MENSAJERIA_PROPINA, m.ENVIO_MENSAJERIA_TOTAL, m.ENVIO_MENSAJERIA_OBSERV,
                    m.ENVIO_MENSAJERIA_FECHA, m.ENVIO_MENSAJERIA_FECHA_ENTREGA, m.ENVIO_MENSAJERIA_TIEMPO_ESTIMADO, m.ENVIO_MENSAJERIA_CALIFICACION 
    
    FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.Usuario u ON (u.usuario_dni = m.USUARIO_DNI)
    JOIN QUERY_SQUAD.Datos_Tarjeta datos ON (datos.datos_tarjeta_marca= m.MARCA_TARJETA AND datos.datos_tarjeta_numero = m.MEDIO_PAGO_NRO_TARJETA)
    JOIN QUERY_SQUAD.Medio_De_Pago mp ON (datos.datos_tarjeta_id = mp.medio_de_pago_datos_tarjeta_id AND mp.medio_de_pago_usuario_id = u.usuario_id)
    JOIN QUERY_SQUAD.Repartidor r ON (m.REPARTIDOR_DNI = r.repartidor_dni)
    JOIN QUERY_SQUAD.Localidad l ON (m.ENVIO_MENSAJERIA_LOCALIDAD = l.localidad_nombre)
    JOIN QUERY_SQUAD.Paquete p ON (m.PAQUETE_TIPO = p.paquete_tipo)
    JOIN QUERY_SQUAD.Estado_Envio_Mensajeria estado ON (m.ENVIO_MENSAJERIA_ESTADO = estado.estado_envio_mensajeria_estado)
    

GO

CREATE PROCEDURE QUERY_SQUAD.Migracion_Pedido_Cupones
AS
    INSERT INTO QUERY_SQUAD.Pedido_Cupones (pedido_cupones_cupon_id, pedido_cupones_pedido_nro)
    SELECT DISTINCT
    c.cupon_nro,
    p.pedido_nro
    FROM gd_esquema.Maestra m
    JOIN QUERY_SQUAD.pedido p ON (m.PEDIDO_NRO = p.pedido_nro)
    JOIN QUERY_SQUAD.Cupon c ON (m.CUPON_NRO = c.cupon_nro)
    --Migracion_Pedido_Cupones
GO

---------EXEC PROCEDURES ----------------
PRINT('MIGRANDO TIPOS DE CUPON')
Exec QUERY_SQUAD.Migracion_Tipo_Cupon

PRINT('MIGRANDO ESTADOS DE PEDIDO')
Exec QUERY_SQUAD.Migracion_Estado_Pedido

PRINT('MIGRANDO USUARIOS')
Exec QUERY_SQUAD.Migracion_Usuario
CREATE INDEX idx_usuario_dni
ON QUERY_SQUAD.Usuario (usuario_dni)
GO

PRINT('MIGRANDO DATOS TARJETA')
Exec QUERY_SQUAD.Migracion_Datos_Tarjeta

CREATE INDEX idx_medio_de_pago_marca_tarjeta_tarjeta
ON QUERY_SQUAD.Datos_Tarjeta (datos_tarjeta_marca, datos_tarjeta_numero)

PRINT('MIGRANDO TIPOS DE MOVILIDAD')
Exec QUERY_SQUAD.Migracion_Tipo_Movilidad
PRINT('MIGRANDO TIPOS DE MEDIO DE PAGO')
Exec QUERY_SQUAD.Migracion_Tipo_Medio_De_Pago
PRINT('MIGRANDO LOCALIDADES')
Exec QUERY_SQUAD.Migracion_Localidad
PRINT('MIGRANDO ESTADOS DE ENVIO DE MENSAJERIA')
Exec QUERY_SQUAD.Migracion_Estado_Envio_Mensajeria
PRINT('MIGRANDO TIPOS DE RECLAMO')
Exec QUERY_SQUAD.Migracion_Tipo_Reclamo
PRINT('MIGRANDO ESTADOS DE RECLAMO')
Exec QUERY_SQUAD.Migracion_Estado_Reclamo
PRINT('MIGRANDO OPERADORES')
Exec QUERY_SQUAD.Migracion_Operador_Reclamo
PRINT('MIGRANDO TIPOS DE LOCAL')
Exec QUERY_SQUAD.Migracion_Tipo_Local
PRINT('MIGRANDO DIAS')
Exec QUERY_SQUAD.Migracion_Dia
PRINT('MIGRANDO PAQUETES')
Exec QUERY_SQUAD.Migracion_Paquete
PRINT('MIGRANDO LOCALES')
Exec QUERY_SQUAD.Migracion_Local
PRINT('MIGRANDO PRODUCTO LOCAL')
Exec QUERY_SQUAD.Migracion_Producto_Local
PRINT('MIGRANDO REPARTIDORES')
Exec QUERY_SQUAD.Migracion_Repartidor

CREATE INDEX idx_repartidor_dni
ON QUERY_SQUAD.Repartidor (repartidor_dni)

PRINT('MIGRANDO DIRECCIONES DE USUARIO')
Exec QUERY_SQUAD.Migracion_Direccion_Usuario

CREATE INDEX idx_direccion_usuario_usuario_id_nombre
ON QUERY_SQUAD.Direccion_Usuario (direccion_usuario_usuario_id, direccion_usuario_nombre)

PRINT('MIGRANDO MEDIOS DE PAGO')
Exec QUERY_SQUAD.Migracion_Medio_De_Pago

CREATE INDEX idx_medio_de_pago_datos_tarjeta_usuario_id
ON QUERY_SQUAD.Medio_De_Pago (medio_de_pago_datos_tarjeta_id, medio_de_pago_usuario_id)

PRINT('MIGRANDO PEDIDOS')
Exec QUERY_SQUAD.Migracion_Pedido
PRINT('MIGRANDO PRODUCTOS POR PEDIDO')
Exec QUERY_SQUAD.Migracion_Pedido_Productos
PRINT('MIGRANDO CUPONES')
Exec QUERY_SQUAD.Migracion_Cupon
PRINT('MIGRANDO USUARIO_CUPONES')
Exec QUERY_SQUAD.Migracion_Usuario_Cupon
PRINT('MIGRANDO RECLAMOS')
Exec QUERY_SQUAD.Migracion_Reclamo
PRINT('MIGRANDO CUPONES_RECLAMOS')
Exec QUERY_SQUAD.Migracion_Cupon_Reclamo
PRINT('MIGRANDO HORARIOS DE LOCAL')
Exec QUERY_SQUAD.Migracion_Horario_Local
PRINT('MIGRANDO ENVIOS DE MENSAJERIA')
Exec QUERY_SQUAD.Migracion_Envio_Mensajeria
PRINT('MIGRANDO CUPONES POR PEDIDO')
Exec QUERY_SQUAD.Migracion_Pedido_Cupones

PRINT('CARGANDO CATEGORIAS DE LOCAL')
INSERT INTO QUERY_SQUAD.Categoria_Local (categoria_local_tipo_local_id, categoria_local_categoria)
VALUES 
 (1, 'parrilla'),
 (1, 'heladeria'),
 (1, 'comida rapida'),
 (2, 'minimercado'),
 (2, 'supermercado')

UPDATE QUERY_SQUAD.Local
SET local_categoria_local_id = 1
WHERE local_tipo_local_id = 1 AND local_id < 60

UPDATE QUERY_SQUAD.Local
SET local_categoria_local_id = 2
WHERE local_tipo_local_id = 1 AND local_id BETWEEN 60 AND 120

UPDATE QUERY_SQUAD.Local
SET local_categoria_local_id = 3
WHERE local_tipo_local_id = 1 AND local_id > 120

UPDATE QUERY_SQUAD.Local
SET local_categoria_local_id = 4
WHERE local_tipo_local_id = 2 AND local_id < 350

UPDATE QUERY_SQUAD.Local
SET local_categoria_local_id = 5
WHERE local_tipo_local_id = 2 AND local_id >= 350
