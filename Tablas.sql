USE [GD1C2023]
GO

CREATE SCHEMA QUERY_SQUAD;
GO

/* Tablas */

CREATE TABLE QUERY_SQUAD.Tipo_Cupon(
    tipo_cupon_id int PRIMARY KEY IDENTITY,
    tipo_cupon_descripcion nvarchar(50)
)
GO

CREATE TABLE QUERY_SQUAD.Estado_Pedido(
    estado_pedido_id int PRIMARY KEY IDENTITY,
    estado_pedido_descripcion nvarchar(50)
)
GO

CREATE TABLE QUERY_SQUAD.Usuario (
    usuario_id int PRIMARY KEY IDENTITY,
    usuario_nombre nvarchar(255),
    usuario_apellido nvarchar(255),
    usuario_dni decimal(18,0),
    usuario_fecha_registro datetime2(3),
    usuario_telefono decimal(18,0),
    usuario_email nvarchar(255),
    usuario_fecha_nac date
)
GO

CREATE TABLE QUERY_SQUAD.Datos_Tarjeta(
    datos_tarjeta_id int PRIMARY KEY IDENTITY,
    medio_de_pago_marca_tarjeta nvarchar(100),
    medio_de_pago_tarjeta nvarchar(50)
)
GO

CREATE TABLE QUERY_SQUAD.Tipo_Movilidad(
    tipo_movilidad_id int PRIMARY KEY IDENTITY,
    tipo_movilidad_descripcion nvarchar(50)
)
GO

CREATE TABLE QUERY_SQUAD.Tipo_Medio_De_Pago(
    tipo_medio_de_pago int PRIMARY KEY IDENTITY,
    tipo_medio_de_pago_descripcion nvarchar(50)
)
GO

CREATE TABLE QUERY_SQUAD.Localidad(
    localidad_id int PRIMARY KEY IDENTITY,
    localidad_localidad nvarchar(255) 
)
GO

CREATE TABLE QUERY_SQUAD.Estado_Envio_Mensajeria(
    estado_envio_mensajeria_id int PRIMARY KEY IDENTITY,
    estado_envio_mensajeria_descripcion nvarchar(50)
)
GO

CREATE TABLE QUERY_SQUAD.Tipo_Reclamo(
    tipo_reclamo_id int PRIMARY KEY IDENTITY,
    tipo_reclamo_descripcion nvarchar(50)
)
GO

CREATE TABLE QUERY_SQUAD.Estado_Reclamo(
    estado_reclamo_id int PRIMARY KEY IDENTITY,
    estado_reclamo_descripcion nvarchar(50)
)
GO

CREATE TABLE QUERY_SQUAD.Operador_Reclamo(
    operador_reclamo_id int PRIMARY KEY IDENTITY,
    operador_reclamo_nombre nvarchar(255),
	operador_reclamo_apellido nvarchar(255),
    operador_reclamo_dni decimal(18,0),
    operador_reclamo_telefono decimal(18,0),
    operador_reclamo_direccion nvarchar(255),
    operador_reclamo_mail nvarchar(255),
    operador_reclamo_fecha_nac date
)
GO

CREATE TABLE QUERY_SQUAD.Tipo_Local(
    tipo_local_id int PRIMARY KEY IDENTITY,
    tipo_local_tipo nvarchar(50)
)
GO

CREATE TABLE QUERY_SQUAD.Dia(
    dia_id int PRIMARY KEY IDENTITY,
    dia_nombre nvarchar(50)
)
GO

CREATE TABLE QUERY_SQUAD.Paquete(
    paquete_id int PRIMARY KEY IDENTITY,
    paquete_tipo nvarchar(50),
    paquete_alto_max decimal(18,2),
    paquete_ancho_max decimal(18,2),
    paquete_largo_max decimal(18,2),
    paquete_peso_max decimal(18,2),
    paquete_tipo_precio decimal(18,2)
)
GO

CREATE TABLE QUERY_SQUAD.Categoria_Local(
    categoria_local_id int PRIMARY KEY IDENTITY,
    categoria_local_tipo int FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Local NOT NULL,
    categoria_local_categoria nvarchar(50),
)
GO

CREATE TABLE QUERY_SQUAD.Local(
    local_id int PRIMARY KEY IDENTITY,
    local_tipo int FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Local NOT NULL,
    local_categoria int FOREIGN KEY REFERENCES QUERY_SQUAD.Categoria_Local,
    local_localidad int FOREIGN KEY REFERENCES QUERY_SQUAD.Localidad NOT NULL,
    local_nombre nvarchar(100),
    local_descripcion nvarchar(255),
    local_direccion nvarchar(255),
    local_provincia nvarchar(255)
)
GO

CREATE TABLE QUERY_SQUAD.Producto_Local(
    producto_local_codigo nvarchar(50) PRIMARY KEY,
    producto_local_local_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Local NOT NULL,
    producto_local_nombre nvarchar(50),
    producto_local_descripcion nvarchar(255),
    producto_local_precio decimal(18,2)
)
GO

CREATE TABLE QUERY_SQUAD.Repartidor(
    repartidor_id int PRIMARY KEY IDENTITY,
    repartidor_localidad_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Localidad NOT NULL,
    repartidor_tipo_movilidad int FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Movilidad NOT NULL,
    repartidor_nombre nvarchar(255),
    repartidor_apellido nvarchar(255),
    repartidor_dni decimal(18,0),
    repartidor_telefono decimal(18,0),
    repartidor_direccion nvarchar(255),
    repartidor_email nvarchar(255),
    repartidor_fecha_nac date
)
GO

CREATE TABLE QUERY_SQUAD.Direccion_Usuario(
    direccion_usuario_id int PRIMARY KEY,
    direccion_usuario_usuario_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Usuario NOT NULL,
    direccion_usuario_localidad_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Localidad NOT NULL,
    direccion_usuario_nombre nvarchar(50),
    direccion_usuario_direccion nvarchar(255),
    direccion_usuario_provincia nvarchar(255)
)
GO

CREATE TABLE QUERY_SQUAD.Medio_De_Pago(
    medio_de_pago_id int PRIMARY KEY,
    medio_de_pago_usuario_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Usuario NOT NULL,
    medio_de_pago_datos_tarjeta int FOREIGN KEY REFERENCES QUERY_SQUAD.Datos_Tarjeta,
    medio_de_pago_tipo int FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Medio_De_Pago NOT NULL,
)
GO

CREATE TABLE QUERY_SQUAD.Pedido(
    pedido_nro decimal(18,0) PRIMARY KEY,
    pedido_usuario_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Usuario NOT NULL,
    pedido_local_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Local NOT NULL,
    pedido_direccion_usuario_id int  REFERENCES QUERY_SQUAD.Direccion_Usuario NOT NULL,
    pedido_medio_pago_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Medio_De_Pago NOT NULL,
    pedido_repartidor_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Repartidor NOT NULL,
    pedido_estado_pedido_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Estado_Pedido NOT NULL,
    pedido_precio_envio decimal(18,2),
    pedido_total_productos decimal(18,0),
    pedido_tarifa_servicio decimal(18,2),
    pedido_propina decimal(18,2),
    pedido_total_cupones decimal(18,2),
    pedido_total_servicio decimal(18,2),
    pedido_observ nvarchar(255),
    pedido_fecha datetime2(3),
    pedido_fecha_entrega datetime2(3),
    pedido_tiempo_estimado decimal(18,2),
    pedido_calificacion decimal(18,0)
)
GO

CREATE TABLE QUERY_SQUAD.Pedido_Productos(
    pedido_productos_producto_local_id NVARCHAR (50) FOREIGN KEY REFERENCES QUERY_SQUAD.Producto_Local NOT NULL,
    pedido_productos_pedido_id decimal(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Pedido NOT NULL,
    producto_cantidad decimal(18,0),
    producto_precio decimal(18,2)
)
GO

CREATE TABLE QUERY_SQUAD.Cupon(
    cupon_nro decimal(18,0) PRIMARY KEY,
    cupon_tipo int FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Cupon NOT NULL,
    cupon_monto decimal(18,2), 
    cupon_fecha_alta datetime2(3),
    cupon_fecha_vencimiento datetime2(3)
)
GO

CREATE TABLE QUERY_SQUAD.Usuario_Cupon(
    usuario_cupon_cupon_nro decimal(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Cupon NOT NULL,
    usuario_cupon_usuario_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Usuario NOT NULL
)
GO

CREATE TABLE QUERY_SQUAD.Reclamo(
    reclamo_nro decimal(18,0) PRIMARY KEY,
    reclamo_usuario_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Usuario NOT NULL,
    reclamo_pedido_nro decimal(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Pedido NOT NULL,
    reclamo_operador_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Operador_Reclamo NOT NULL,
    reclamo_tipo_reclamo_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Tipo_Reclamo NOT NULL,
    reclamo_estado_reclamo_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Estado_Reclamo NOT NULL,
    reclamo_fecha datetime2(3),
    reclamo_descripcion nvarchar(255),
    reclamo_fecha_solucion datetime2(3),
    reclamo_solucion nvarchar(255),
    reclamo_calificacion decimal(18,0) 
)
GO

CREATE TABLE QUERY_SQUAD.Cupon_Reclamo(
    cupon_reclamo_reclamo_id decimal(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Reclamo,
    cupon_reclamo_cupon_nro decimal(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Cupon
)
GO

CREATE TABLE QUERY_SQUAD.Horario_Local(
    horario_local_id int PRIMARY KEY,
    horario_local_id_local int FOREIGN KEY REFERENCES QUERY_SQUAD.Local NOT NULL,
    horario_local_dia int FOREIGN KEY REFERENCES QUERY_SQUAD.Dia NOT NULL,
    horario_local_hora_apertura decimal(18,0),
    horario_local_hora_cierre decimal(18,0)
)
GO

CREATE TABLE QUERY_SQUAD.Envio_Mensajeria(
    envio_mensajeria_nro decimal(18,0) PRIMARY KEY,
    envio_mensajeria_usuario_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Usuario NOT NULL,
    envio_mensajeria_medio_de_pago_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Medio_De_Pago NOT NULL,
    envio_mensajeria_repartidor_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Repartidor NOT NULL,
    envio_mensajeria_localidad_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Localidad NOT NULL,
    envio_mensajeria_paquete_id int FOREIGN KEY REFERENCES QUERY_SQUAD.Paquete NOT NULL,
    envio_mensajeria_estado int FOREIGN KEY REFERENCES QUERY_SQUAD.Estado_Envio_Mensajeria NOT NULL,
    envio_mensajeria_dir_orig nvarchar(255),
    envio_mensajeria_dir_dest nvarchar(255),
    envio_mensajeria_provincia nvarchar(255),
    envio_mensajeria_km decimal(18,2),
    envio_mensajeria_valor_asegurado decimal(18,2),
    envio_mensajeria_precio_envio decimal(18,2),
    envio_mensajeria_precio_seguro decimal(18,2),
    envio_mensajeria_propina decimal(18,2),
    envio_mensajeria_total decimal(18,2),
    envio_mensajeria_observ nvarchar(255),
    envio_mensajeria_fecha datetime2(3),
    envio_mensajeria_fecha_entrega datetime2(3),
    envio_mensajeria_tiempo_estimado decimal(18,2),
    envio_mensajeria_calificacion decimal(18,0)
)
GO

CREATE TABLE QUERY_SQUAD.Pedido_Cupones(
    pedido_cupones_cupon_id decimal(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Cupon NOT NULL,
    pedido_cupones_pedido decimal(18,0) FOREIGN KEY REFERENCES QUERY_SQUAD.Pedido NOT NULL
)
GO
