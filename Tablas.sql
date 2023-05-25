USE [GD1C2023]
GO

CREATE SCHEMA QUERY_SQUAD;
GO

CREATE TABLE QUERY_SQUAD.Tipo_Cupon
(
    tipo_cupon_id INT PRIMARY KEY IDENTITY,
    tipo_cupon_descripcion NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Estado_Pedido
(
    estado_pedido_id INT PRIMARY KEY IDENTITY,
    estado_pedido_descripcion NVARCHAR(50)
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
    medio_de_pago_marca_tarjeta NVARCHAR(100),
    medio_de_pago_tarjeta NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Tipo_Movilidad
(
    tipo_movilidad_id INT PRIMARY KEY IDENTITY,
    tipo_movilidad_descripcion NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Tipo_Medio_De_Pago
(
    tipo_medio_de_pago INT PRIMARY KEY IDENTITY,
    tipo_medio_de_pago_descripcion NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Localidad
(
    localidad_id INT PRIMARY KEY IDENTITY,
    localidad_localidad NVARCHAR(255)
)
GO

CREATE TABLE QUERY_SQUAD.Estado_Envio_Mensajeria
(
    estado_envio_mensajeria_id INT PRIMARY KEY IDENTITY,
    estado_envio_mensajeria_descripcion NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Tipo_Reclamo
(
    tipo_reclamo_id INT PRIMARY KEY IDENTITY,
    tipo_reclamo_descripcion NVARCHAR(50)
)
GO

CREATE TABLE QUERY_SQUAD.Estado_Reclamo
(
    estado_reclamo_id INT PRIMARY KEY IDENTITY,
    estado_reclamo_descripcion NVARCHAR(50)
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
    categoria_local_tipo INT FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Local NOT NULL,
    categoria_local_categoria NVARCHAR(50),
)
GO

CREATE TABLE QUERY_SQUAD.Local
(
    local_id INT PRIMARY KEY IDENTITY,
    local_tipo INT FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Local NOT NULL,
    local_categoria INT FOREIGN KEY REFERENCES QUERY_SQUAD.Categoria_Local,
    local_localidad INT FOREIGN KEY REFERENCES QUERY_SQUAD.Localidad NOT NULL,
    local_nombre NVARCHAR(100),
    local_descripcion NVARCHAR(255),
    local_direccion NVARCHAR(255),
    local_provincia NVARCHAR(255)
)
GO

CREATE TABLE QUERY_SQUAD.Producto_Local
(
	producto_local_codigo NVARCHAR(50),
	producto_local_local_id INT FOREIGN KEY REFERENCES QUERY_SQUAD.Local NOT NULL,
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
    repartidor_tipo_movilidad INT FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Movilidad NOT NULL,
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
    medio_de_pago_datos_tarjeta INT FOREIGN KEY REFERENCES QUERY_SQUAD.Datos_Tarjeta,
    medio_de_pago_tipo INT FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Medio_De_Pago NOT NULL,
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
	pedido_productos_pedido_id DECIMAL(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Pedido NOT NULL,
    pedido_productos_producto_local_codigo NVARCHAR(50) NOT NULL,
    pedido_productos_local_id INT NOT NULL,
    producto_cantidad DECIMAL(18,0),
    producto_precio DECIMAL(18,2),

	FOREIGN KEY(pedido_productos_producto_local_codigo, pedido_productos_local_id) REFERENCES QUERY_SQUAD.Producto_Local
)
GO

CREATE TABLE QUERY_SQUAD.Cupon
(
    cupon_nro DECIMAL(18,0) PRIMARY KEY,
    cupon_tipo INT FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Cupon NOT NULL,
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
    horario_local_id_local INT FOREIGN KEY REFERENCES QUERY_SQUAD.Local NOT NULL,
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
    envio_mensajeria_estado INT FOREIGN KEY REFERENCES QUERY_SQUAD.Estado_Envio_Mensajeria NOT NULL,
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
    pedido_cupones_pedido DECIMAL(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Pedido NOT NULL
)