USE [sistema de servicio de inventarios empresa DELL]
GO
/****** Object:  Table [dbo].[bodega]    Script Date: 27/07/2016 9:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bodega](
	[idBodega] [int] NOT NULL,
	[piezasDefectuaosas] [int] NULL,
	[piezasTerminadas] [int] NULL,
	[materiaPrimaEntrante] [int] NULL,
	[idCodigoBarras] [int] NULL,
	[idProducto] [int] NULL,
	[idRepartidor] [int] NULL,
	[idDevolucion] [int] NULL,
	[idVentas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idBodega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cliente]    Script Date: 27/07/2016 9:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[idCliente] [int] NOT NULL,
	[nombre] [varchar](60) NULL,
	[correo] [varchar](40) NULL,
	[direccion] [varchar](70) NULL,
	[telefono] [varchar](20) NULL,
	[ciudad] [varchar](20) NULL,
	[codigoPostal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[codigoBarras]    Script Date: 27/07/2016 9:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[codigoBarras](
	[idCodigoBarras] [int] NOT NULL,
	[noCodigoBarras] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCodigoBarras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[compra]    Script Date: 27/07/2016 9:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compra](
	[idCompra] [int] NOT NULL,
	[noCompra] [int] NULL,
	[fechaCompra] [date] NULL,
	[precioTotal] [float] NULL,
	[idCliente] [int] NULL,
	[idVendedor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[devolucion]    Script Date: 27/07/2016 9:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[devolucion](
	[idDEvolucion] [int] NOT NULL,
	[caracteristicaDev] [varchar](50) NULL,
	[fechaDev] [date] NULL,
	[idCodigoBarras] [int] NULL,
	[idProducto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDEvolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[producto]    Script Date: 27/07/2016 9:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[producto](
	[idProducto] [int] NOT NULL,
	[nombreProducto] [varchar](20) NULL,
	[precio] [float] NULL,
	[modelo] [varchar](30) NULL,
	[color] [varchar](15) NULL,
	[idCodigoBarras] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[repartidor]    Script Date: 27/07/2016 9:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[repartidor](
	[idRepartidor] [int] NOT NULL,
	[nombreRepartidor] [varchar](60) NULL,
	[vehiculo] [varchar](20) NULL,
	[matricula] [varchar](15) NULL,
	[noLicencia] [int] NULL,
	[noPedidos] [int] NULL,
	[ruta] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[idRepartidor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[vendedor]    Script Date: 27/07/2016 9:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[vendedor](
	[idVendedor] [int] NOT NULL,
	[nombre] [varchar](60) NULL,
	[noVendedor] [int] NULL,
	[telefono] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[idVendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 27/07/2016 9:41:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[idVentas] [int] NOT NULL,
	[noVenta] [int] NULL,
	[precioTotal] [float] NULL,
	[noPiezas] [int] NULL,
	[idCodigoBarras] [int] NULL,
	[idProducto] [int] NULL,
	[idVendedor] [int] NULL,
	[idCliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idVentas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (1, 28, 42857, 52, 12376, 1, 3, 4, 6)
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (2, 2856, 42857, 62, 18762, 4, 5, 9, 6)
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (3, 2856, 42857, 232, 28763, 2, 5, 7, 8)
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (4, 3647, 42857, 1761, 36, 1, 3, 9, 1)
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (5, 3647, 42857, 1223, 94, 8, 4, 3, 7)
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (6, 3647, 42857, 874, 273, 7, 4, 8, 4)
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (7, 3647, 42857, 234, 135, 5, 7, 2, 8)
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (8, 2856, 42857, 64, 634, 2377, 1, 3, 5)
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (9, 3647, 42857, 363, 135, 1, 2, 6, 8)
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (10, 3647, 42857, 356, 123, 1, 4, 6, 8)
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (11, 3647, 42857, 3425, 154, 1, 2, 4, 9)
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (12, 2856, 42857, 6223, 223, 3, 5, 8, 9)
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (13, 3647, 42857, 9334, 346, 8, 4, 2, 1)
INSERT [dbo].[bodega] ([idBodega], [piezasDefectuaosas], [piezasTerminadas], [materiaPrimaEntrante], [idCodigoBarras], [idProducto], [idRepartidor], [idDevolucion], [idVentas]) VALUES (14, 3647, 42857, 1623, 123, 1, 2, 7, 8)
INSERT [dbo].[cliente] ([idCliente], [nombre], [correo], [direccion], [telefono], [ciudad], [codigoPostal]) VALUES (1, N'Cahterine Acosta Olivares', N'cathita_acosta@hotmail.com', N'CALLE AGUSTIN LARA NO. 69-B	COL. EX-NORMAL TUXTEPEC', N'91-(287)-50605', N'Aguascalientes', 68310)
INSERT [dbo].[cliente] ([idCliente], [nombre], [correo], [direccion], [telefono], [ciudad], [codigoPostal]) VALUES (2, N'Camilo Aros Verdugo', N'ambrosio82@gmail.com', N'AV. INDEPENDENCIA NO. 241	COL. CENTRO TUXTEPEC', N'91-(287)-5-25-6', N'Saltillo', 68300)
INSERT [dbo].[cliente] ([idCliente], [nombre], [correo], [direccion], [telefono], [ciudad], [codigoPostal]) VALUES (3, N'Carola Avendaño San Martín', N'carolaasm@hotmail.com', N'AV DANIEL SOTO 738	COL. EL REPOSO', N'91-(287)-5-18-75', N'Saltillo', 68300)
INSERT [dbo].[cliente] ([idCliente], [nombre], [correo], [direccion], [telefono], [ciudad], [codigoPostal]) VALUES (4, N'Daniel Castillo Vega', N'danycast98@hotmail.com', N'AV. 20 DE NOVIEMBRE 795	CENTRO', N'91-(287)-5-14-63', N'Tapachula', 68444)
INSERT [dbo].[cliente] ([idCliente], [nombre], [correo], [direccion], [telefono], [ciudad], [codigoPostal]) VALUES (5, N'Marjorie Castro Castro', N'marjobio@hotmail.com', N'MATAMOROS NO. 327	CENTRO', N'01(287) 5-39-841', N'Tepic', 68365)
INSERT [dbo].[cliente] ([idCliente], [nombre], [correo], [direccion], [telefono], [ciudad], [codigoPostal]) VALUES (6, N'María Liliana Delgadillo Vera', N'mldelgadillo.v@hotmail.com', N'AV. 5 DE MAYO NO. 1108	COL.CENTRO TUXTEPEC', N'91-(287)-5-37-04', N'San Juan del Río', 68430)
INSERT [dbo].[cliente] ([idCliente], [nombre], [correo], [direccion], [telefono], [ciudad], [codigoPostal]) VALUES (7, N'Lorena Fernández del Rio Donoso', N'Lorena_firu@yahoo.es', N'BOULEVAR BENITO JUAREZ NO. 197 -A	COL LA PIRAGUA', N'55-07-22 - 04 96', N'Xalapa', 68365)
INSERT [dbo].[cliente] ([idCliente], [nombre], [correo], [direccion], [telefono], [ciudad], [codigoPostal]) VALUES (8, N'Claudio Hinojosa Torres', N'claudiohinojosa@hotmail.com', N'BOULEVAR BGENITO JUAREZ 1291	FRAC. LOS ANGELES', N'91 287 5 09 34', N'Orizaba', 68300)
INSERT [dbo].[cliente] ([idCliente], [nombre], [correo], [direccion], [telefono], [ciudad], [codigoPostal]) VALUES (9, N'Nelson Naranjo Mayorga', N'neilorange2952@yahoo.com', N'V. INDEPENDENCIA N0.677	COL. LA PIRAGUA TUXTEPEC', N'01 287 5 15 20', N'Aguascalientes', 68321)
INSERT [dbo].[cliente] ([idCliente], [nombre], [correo], [direccion], [telefono], [ciudad], [codigoPostal]) VALUES (10, N'Karina Orrego Ebertoldi', N'orregoldi@hotmail.com', N'AVENIDA 5 DE MAYO NO. 1226	CENTRO', N'01 287 5 17 91', N'Uruapan', 68300)
INSERT [dbo].[cliente] ([idCliente], [nombre], [correo], [direccion], [telefono], [ciudad], [codigoPostal]) VALUES (11, N'Carlos Verdugo Campos', N'carlos_verdugo@yahoo.es', N'PROL.5 DE MAYO NO.786	COL.5 DE MAYO TUXTEPEC', N'71-(287)-5-32-90', N'Tapachula', 68444)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (1, 312364839)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (2, 123974983)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (3, 182362372)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (4, 123927832)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (5, 126738168)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (6, 1298379179)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (7, 812632274)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (8, 348268273)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (9, 923483264)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (10, 82634783)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (11, 32486322)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (12, 23462627)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (13, 19872981)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (14, 49819640)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (15, 345377155)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (16, 1239187238)
INSERT [dbo].[codigoBarras] ([idCodigoBarras], [noCodigoBarras]) VALUES (17, 238126387)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (1, 4758, CAST(0x363A0B00 AS Date), 16273.6, 4, 1)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (2, 2348, CAST(0x9A3B0B00 AS Date), 11386.8, 2, 7)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (3, 439, CAST(0x00350B00 AS Date), 349874.1, 3, 9)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (4, 23947, CAST(0xD6310B00 AS Date), 2139838.4, 6, 2)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (5, 13948, CAST(0xA5250B00 AS Date), 194148, 5, 8)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (6, 4987, CAST(0x543A0B00 AS Date), 234879.2, 4, 3)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (7, 2497, CAST(0x5E290B00 AS Date), 29847.2, 2, 1)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (8, 42346, CAST(0x5E3C0B00 AS Date), 347295.5, 4, 9)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (9, 92, CAST(0xC7350B00 AS Date), 2040.5, 3, 8)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (10, 23, CAST(0x84240B00 AS Date), 3249874.2, 6, 2)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (11, 9734, CAST(0x80360B00 AS Date), 3974.6, 8, 7)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (12, 394, CAST(0xBF2E0B00 AS Date), 49174.5, 2, 5)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (13, 18263, CAST(0xF3340B00 AS Date), 23971.1, 5, 4)
INSERT [dbo].[compra] ([idCompra], [noCompra], [fechaCompra], [precioTotal], [idCliente], [idVendedor]) VALUES (14, 2389, CAST(0x4D300B00 AS Date), 213789.9, 9, 6)
INSERT [dbo].[devolucion] ([idDEvolucion], [caracteristicaDev], [fechaDev], [idCodigoBarras], [idProducto]) VALUES (1, N'no servia el sierre', CAST(0x363A0B00 AS Date), 2, 6)
INSERT [dbo].[devolucion] ([idDEvolucion], [caracteristicaDev], [fechaDev], [idCodigoBarras], [idProducto]) VALUES (2, N'se congelaba en la pantalla de inicio', CAST(0xE43B0B00 AS Date), 2, 1)
INSERT [dbo].[devolucion] ([idDEvolucion], [caracteristicaDev], [fechaDev], [idCodigoBarras], [idProducto]) VALUES (3, N'no tiene una tecla', CAST(0x06360B00 AS Date), 5, 8)
INSERT [dbo].[devolucion] ([idDEvolucion], [caracteristicaDev], [fechaDev], [idCodigoBarras], [idProducto]) VALUES (4, N'la pantalla esta descolorida', CAST(0xA6360B00 AS Date), 4, 9)
INSERT [dbo].[devolucion] ([idDEvolucion], [caracteristicaDev], [fechaDev], [idCodigoBarras], [idProducto]) VALUES (5, N'no sirve la pantalla touch', CAST(0x68360B00 AS Date), 1, 4)
INSERT [dbo].[devolucion] ([idDEvolucion], [caracteristicaDev], [fechaDev], [idCodigoBarras], [idProducto]) VALUES (6, N'no prendia', CAST(0x90320B00 AS Date), 1, 4)
INSERT [dbo].[devolucion] ([idDEvolucion], [caracteristicaDev], [fechaDev], [idCodigoBarras], [idProducto]) VALUES (7, N'presento rota una esquina', CAST(0x363A0B00 AS Date), 4, 1)
INSERT [dbo].[devolucion] ([idDEvolucion], [caracteristicaDev], [fechaDev], [idCodigoBarras], [idProducto]) VALUES (8, N'no sirve el teclado', CAST(0x31390B00 AS Date), 6, 2)
INSERT [dbo].[devolucion] ([idDEvolucion], [caracteristicaDev], [fechaDev], [idCodigoBarras], [idProducto]) VALUES (9, N'la correa se rompio a el dia de uso', CAST(0xF6310B00 AS Date), 1, 5)
INSERT [dbo].[devolucion] ([idDEvolucion], [caracteristicaDev], [fechaDev], [idCodigoBarras], [idProducto]) VALUES (10, N'presento una rotura', CAST(0xAD260B00 AS Date), 2, 7)
INSERT [dbo].[devolucion] ([idDEvolucion], [caracteristicaDev], [fechaDev], [idCodigoBarras], [idProducto]) VALUES (11, N'el equipo estaba incompleto', CAST(0x2F3A0B00 AS Date), 3, 4)
INSERT [dbo].[devolucion] ([idDEvolucion], [caracteristicaDev], [fechaDev], [idCodigoBarras], [idProducto]) VALUES (12, N'faltaba el cargador', CAST(0x0D360B00 AS Date), 5, 7)
INSERT [dbo].[devolucion] ([idDEvolucion], [caracteristicaDev], [fechaDev], [idCodigoBarras], [idProducto]) VALUES (13, N'no tenia touchpad', CAST(0x41340B00 AS Date), 6, 8)
INSERT [dbo].[vendedor] ([idVendedor], [nombre], [noVendedor], [telefono]) VALUES (1, N'juan hernandez', 1, N'55467812')
INSERT [dbo].[vendedor] ([idVendedor], [nombre], [noVendedor], [telefono]) VALUES (2, N'jorge suarez', 9, N'5501928374')
INSERT [dbo].[vendedor] ([idVendedor], [nombre], [noVendedor], [telefono]) VALUES (3, N'luis lopez', 2, N'5517364859')
INSERT [dbo].[vendedor] ([idVendedor], [nombre], [noVendedor], [telefono]) VALUES (4, N'andres gutierrez', 3, N'5546859611')
INSERT [dbo].[vendedor] ([idVendedor], [nombre], [noVendedor], [telefono]) VALUES (5, N'mariano sanchez', 6, N'5516478321')
INSERT [dbo].[vendedor] ([idVendedor], [nombre], [noVendedor], [telefono]) VALUES (6, N'luisa flores', 4, N'5545471341')
INSERT [dbo].[vendedor] ([idVendedor], [nombre], [noVendedor], [telefono]) VALUES (7, N'luis hernandez', 7, N'5546972131')
INSERT [dbo].[vendedor] ([idVendedor], [nombre], [noVendedor], [telefono]) VALUES (8, N'angel arce', 8, N'5509684712')
INSERT [dbo].[vendedor] ([idVendedor], [nombre], [noVendedor], [telefono]) VALUES (9, N'perla buendia', 10, N'5503948576')
INSERT [dbo].[vendedor] ([idVendedor], [nombre], [noVendedor], [telefono]) VALUES (10, N'juan belarde', 11, N'47530182')
INSERT [dbo].[vendedor] ([idVendedor], [nombre], [noVendedor], [telefono]) VALUES (11, N'maribel bernal', 5, N'5567863242')
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (1, 7364, 230192.5, 50, 1, 7, 6, 1)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (2, 87162, 1238371.6, 145, 2, 9, 2, 1)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (3, 8273, 3536.9, 87, 4, 9, 6, 2)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (4, 2736, 1256, 97, 6, 5, 1, 4)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (5, 7263, 94587, 99, 9, 4, 7, 2)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (6, 2756, 84778.3, 100, 10, 1, 9, 8)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (7, 19265, 23404.7, 10, 13, 3, 9, 10)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (8, 12355, 2139874.8, 150, 12, 6, 3, 8)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (9, 1234, 39874.8, 20, 11, 6, 5, 8)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (10, 31512, 21397.7, 9, 2, 7, 1, 3)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (11, 63643, 23083.5, 7, 1, 8, 5, 4)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (12, 15413, 239837.1, 270, 5, 9, 1, 6)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (13, 1233, 27039.2, 10, 3, 1, 8, 7)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (14, 2134, 28732.4, 15, 3, 1, 9, 10)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (15, 1521, 23971238.4, 200, 5, 2, 7, 8)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (16, 2532, 39404.2, 20, 76, 4, 6, 7)
INSERT [dbo].[ventas] ([idVentas], [noVenta], [precioTotal], [noPiezas], [idCodigoBarras], [idProducto], [idVendedor], [idCliente]) VALUES (17, 12354, 98283.1, 70, 27, 5, 3, 9)
ALTER TABLE [dbo].[bodega]  WITH CHECK ADD  CONSTRAINT [fk_codigoBarras_bodega] FOREIGN KEY([idBodega])
REFERENCES [dbo].[bodega] ([idBodega])
GO
ALTER TABLE [dbo].[bodega] CHECK CONSTRAINT [fk_codigoBarras_bodega]
GO
ALTER TABLE [dbo].[bodega]  WITH CHECK ADD  CONSTRAINT [fk_devolucion_bodega] FOREIGN KEY([idBodega])
REFERENCES [dbo].[bodega] ([idBodega])
GO
ALTER TABLE [dbo].[bodega] CHECK CONSTRAINT [fk_devolucion_bodega]
GO
ALTER TABLE [dbo].[bodega]  WITH CHECK ADD  CONSTRAINT [fk_producto_bodega] FOREIGN KEY([idBodega])
REFERENCES [dbo].[bodega] ([idBodega])
GO
ALTER TABLE [dbo].[bodega] CHECK CONSTRAINT [fk_producto_bodega]
GO
ALTER TABLE [dbo].[bodega]  WITH CHECK ADD  CONSTRAINT [fk_repartidor_bodega] FOREIGN KEY([idBodega])
REFERENCES [dbo].[bodega] ([idBodega])
GO
ALTER TABLE [dbo].[bodega] CHECK CONSTRAINT [fk_repartidor_bodega]
GO
ALTER TABLE [dbo].[bodega]  WITH CHECK ADD  CONSTRAINT [fk_ventas_bodega] FOREIGN KEY([idBodega])
REFERENCES [dbo].[bodega] ([idBodega])
GO
ALTER TABLE [dbo].[bodega] CHECK CONSTRAINT [fk_ventas_bodega]
GO
ALTER TABLE [dbo].[compra]  WITH CHECK ADD  CONSTRAINT [fk__vendedor_compra] FOREIGN KEY([idCompra])
REFERENCES [dbo].[compra] ([idCompra])
GO
ALTER TABLE [dbo].[compra] CHECK CONSTRAINT [fk__vendedor_compra]
GO
ALTER TABLE [dbo].[compra]  WITH CHECK ADD  CONSTRAINT [fk_cliente_compra] FOREIGN KEY([idCompra])
REFERENCES [dbo].[compra] ([idCompra])
GO
ALTER TABLE [dbo].[compra] CHECK CONSTRAINT [fk_cliente_compra]
GO
ALTER TABLE [dbo].[devolucion]  WITH CHECK ADD  CONSTRAINT [fk_codigoBarras_devolucion] FOREIGN KEY([idDEvolucion])
REFERENCES [dbo].[devolucion] ([idDEvolucion])
GO
ALTER TABLE [dbo].[devolucion] CHECK CONSTRAINT [fk_codigoBarras_devolucion]
GO
ALTER TABLE [dbo].[devolucion]  WITH CHECK ADD  CONSTRAINT [fk_producto_devolucion] FOREIGN KEY([idDEvolucion])
REFERENCES [dbo].[devolucion] ([idDEvolucion])
GO
ALTER TABLE [dbo].[devolucion] CHECK CONSTRAINT [fk_producto_devolucion]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [fk_codigoBarras_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[producto] ([idProducto])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [fk_codigoBarras_producto]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [fk_cliente_ventas] FOREIGN KEY([idVentas])
REFERENCES [dbo].[ventas] ([idVentas])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [fk_cliente_ventas]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [fk_codigoBarras_ventas] FOREIGN KEY([idVentas])
REFERENCES [dbo].[ventas] ([idVentas])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [fk_codigoBarras_ventas]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [fk_idProducto_ventas] FOREIGN KEY([idVentas])
REFERENCES [dbo].[ventas] ([idVentas])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [fk_idProducto_ventas]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [fk_vendedor_ventas] FOREIGN KEY([idVentas])
REFERENCES [dbo].[ventas] ([idVentas])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [fk_vendedor_ventas]
GO
