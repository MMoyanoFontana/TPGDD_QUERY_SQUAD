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
    --Migracion_Estado_Pedido
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Usuario
AS
    --Migracion_Usuario
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Datos_Tarjeta
AS
    --Migracion_Datos_Tarjeta
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Movilidad
AS
    --Migracion_Tipo_Movilidad
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Medio_De_Pago
AS
    --Migracion_Tipo_Medio_De_Pago
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Localidad
AS
    --Migracion_Localidad
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Estado_Envio_Mensajeria
AS
    --Migracion_Estado_Envio_Mensajeria
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Reclamo
AS
    --Migracion_Tipo_Reclamo
Go
 
CREATE PROCEDURE QUERY_SQUAD.Migracion_Estado_Reclamo
AS
    --Migracion_Estado_Reclamo
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Operador_Reclamo
AS
    --Migracion_Operador_Reclamo
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Tipo_Local
AS
    --Migracion_Tipo_Local
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Dia
AS
    --Migracion_Dia
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Paquete
AS
    --Migracion_Paquete
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Categoria_Local
AS
    --Migracion_Categoria_Local
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Local
AS
    --Migracion_Local
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Producto_Local
AS
    --Migracion_Producto_Local
Go

CREATE PROCEDURE QUERY_SQUAD.Migracion_Repartidor
AS
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