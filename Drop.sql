USE [GD1C2023]
GO

DROP TABLE QUERY_SQUAD.Pedido_Cupones
GO

DROP TABLE QUERY_SQUAD.Envio_Mensajeria
GO

DROP TABLE QUERY_SQUAD.Horario_Local
GO

DROP TABLE QUERY_SQUAD.Cupon_Reclamo
GO

DROP TABLE QUERY_SQUAD.Reclamo
GO

DROP TABLE QUERY_SQUAD.Usuario_Cupon
GO

DROP TABLE QUERY_SQUAD.Cupon
GO

DROP TABLE QUERY_SQUAD.Pedido_Productos
GO

DROP TABLE QUERY_SQUAD.Pedido
GO

DROP TABLE QUERY_SQUAD.Medio_De_Pago
GO

DROP TABLE QUERY_SQUAD.Direccion_Usuario
GO

DROP TABLE QUERY_SQUAD.Repartidor
GO

DROP TABLE QUERY_SQUAD.Producto_Local
GO

DROP TABLE QUERY_SQUAD.Local
GO

DROP TABLE QUERY_SQUAD.Categoria_Local
GO

DROP TABLE QUERY_SQUAD.Paquete
GO

DROP TABLE QUERY_SQUAD.Dia
GO

DROP TABLE QUERY_SQUAD.Tipo_Local
GO

DROP TABLE QUERY_SQUAD.Operador_Reclamo
GO

DROP TABLE QUERY_SQUAD.Estado_Reclamo
GO

DROP TABLE QUERY_SQUAD.Tipo_Reclamo
GO

DROP TABLE QUERY_SQUAD.Estado_Envio_Mensajeria
GO

DROP TABLE QUERY_SQUAD.Localidad
GO

DROP TABLE QUERY_SQUAD.Tipo_Medio_De_Pago
GO

DROP TABLE QUERY_SQUAD.Tipo_Movilidad
GO

DROP TABLE QUERY_SQUAD.Datos_Tarjeta
GO

DROP TABLE QUERY_SQUAD.Usuario
GO

DROP TABLE QUERY_SQUAD.Estado_Pedido
GO

DROP TABLE QUERY_SQUAD.Tipo_Cupon
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Tipo_Cupon
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Estado_Pedido
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Usuario
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Datos_Tarjeta
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Tipo_Movilidad
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Tipo_Medio_De_Pago
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Localidad
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Estado_Envio_Mensajeria
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Tipo_Reclamo
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Estado_Reclamo
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Operador_Reclamo
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Tipo_Local
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Dia
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Paquete
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Categoria_Local
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Local
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Producto_Local
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Repartidor
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Direccion_Usuario
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Medio_De_Pago
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Pedido
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Pedido_Productos
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Cupon
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Usuario_Cupon
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Reclamo
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Cupon_Reclamo
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Horario_Local
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Envio_Mensajeria
GO

DROP PROCEDURE QUERY_SQUAD.Migracion_Pedido_Cupones
GO

DROP SCHEMA QUERY_SQUAD
GO