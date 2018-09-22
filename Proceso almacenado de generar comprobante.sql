create proc generar_comprobante
@idventa int 
as
SELECT        dbo.ventas.idventa, dbo.cliente.nombre, dbo.cliente.apellidos, dbo.cliente.dni, dbo.ventas.fecha_venta, dbo.ventas.tipo_documento, dbo.ventas.num_documento, dbo.producto.nombre AS Descripcion, 
                         dbo.detalle_venta.cantidad, dbo.detalle_venta.precio_unitario, dbo.detalle_venta.cantidad * dbo.detalle_venta.precio_unitario AS Total_Parcial
FROM            dbo.ventas INNER JOIN
                         dbo.detalle_venta ON dbo.ventas.idventa = dbo.detalle_venta.idventa INNER JOIN
                         dbo.producto ON dbo.detalle_venta.idproducto = dbo.producto.idproducto INNER JOIN
                         dbo.cliente ON dbo.ventas.idcliente = dbo.cliente.idcliente
						 where dbo.ventas.idventa=@idventa