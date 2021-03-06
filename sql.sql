USE [Base1Ventas]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 11/03/2017 09:09:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[idcliente] [int] NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[apellido] [varchar](30) NOT NULL,
	[fecha_nac] [date] NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[tel] [varchar](9) NOT NULL,
	[dni] [varchar](8) NOT NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[compra]    Script Date: 11/03/2017 09:09:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[compra](
	[idcompra] [int] NOT NULL,
	[idproducto] [int] NOT NULL,
	[idcliente] [int] NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[puesto] [varchar](20) NOT NULL,
 CONSTRAINT [PK_compra] PRIMARY KEY CLUSTERED 
(
	[idcompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[producto]    Script Date: 11/03/2017 09:09:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[producto](
	[idproducto] [int] NOT NULL,
	[idsuminista] [int] NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[detalle_producto] [varchar](50) NOT NULL,
	[codigo] [varchar](30) NOT NULL,
	[presio] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[idproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[provedor]    Script Date: 11/03/2017 09:09:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[provedor](
	[idprovedo] [int] NOT NULL,
	[idsumistra] [int] NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[apellido] [varchar](30) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [varchar](9) NOT NULL,
	[nif] [varchar](8) NOT NULL,
 CONSTRAINT [PK_provedor] PRIMARY KEY CLUSTERED 
(
	[idprovedo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[suministra]    Script Date: 11/03/2017 09:09:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suministra](
	[idsuministra] [int] NOT NULL,
	[idprovedor] [int] NOT NULL,
	[nombre] [varchar](20) NOT NULL,
 CONSTRAINT [PK_suministra] PRIMARY KEY CLUSTERED 
(
	[idsuministra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellido], [fecha_nac], [direccion], [tel], [dni]) VALUES (1, N'Raul', N'contreras', CAST(N'2016-06-25' AS Date), N'san pascual', N'362683569', N'23434453')
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellido], [fecha_nac], [direccion], [tel], [dni]) VALUES (2, N'Edgardo', N'germano', CAST(N'2017-06-03' AS Date), N'la paz', N'26449673', N'43454564')
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellido], [fecha_nac], [direccion], [tel], [dni]) VALUES (3, N'Edmundo', N'Hebre', CAST(N'2016-06-06' AS Date), N'zapata', N'32558894', N'56834592')
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellido], [fecha_nac], [direccion], [tel], [dni]) VALUES (4, N'Efrain', N'Morales', CAST(N'2016-06-12' AS Date), N'san luis', N'26796356', N'75623075')
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellido], [fecha_nac], [direccion], [tel], [dni]) VALUES (5, N'elsa', N'Rubio', CAST(N'2016-06-14' AS Date), N'esmeraldas', N'346782346', N'45573574')
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellido], [fecha_nac], [direccion], [tel], [dni]) VALUES (6, N'Elvira', N'Ramirez', CAST(N'2016-06-14' AS Date), N'tomas de arrollo', N'325782456', N'74625372')
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellido], [fecha_nac], [direccion], [tel], [dni]) VALUES (7, N'Emiliano', N'monger', CAST(N'2016-06-15' AS Date), N'san agustin', N'324345679', N'35692456')
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellido], [fecha_nac], [direccion], [tel], [dni]) VALUES (8, N'Daniel', N'Contreras', CAST(N'2016-06-23' AS Date), N'san agustin', N'447739674', N'86734593')
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellido], [fecha_nac], [direccion], [tel], [dni]) VALUES (9, N'Ivan', N'Trejo', CAST(N'2016-06-26' AS Date), N'estrella', N'764893678', N'87635628')
INSERT [dbo].[cliente] ([idcliente], [nombre], [apellido], [fecha_nac], [direccion], [tel], [dni]) VALUES (10, N'Alan', N'Cruz', CAST(N'2016-06-28' AS Date), N'villa de aragon', N'764563856', N'86473637')
ALTER TABLE [dbo].[compra]  WITH CHECK ADD  CONSTRAINT [FK_compra_cliente] FOREIGN KEY([idcliente])
REFERENCES [dbo].[cliente] ([idcliente])
GO
ALTER TABLE [dbo].[compra] CHECK CONSTRAINT [FK_compra_cliente]
GO
ALTER TABLE [dbo].[compra]  WITH CHECK ADD  CONSTRAINT [FK_compra_producto] FOREIGN KEY([idproducto])
REFERENCES [dbo].[producto] ([idproducto])
GO
ALTER TABLE [dbo].[compra] CHECK CONSTRAINT [FK_compra_producto]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [FK_producto_suministra] FOREIGN KEY([idsuminista])
REFERENCES [dbo].[suministra] ([idsuministra])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [FK_producto_suministra]
GO
ALTER TABLE [dbo].[suministra]  WITH CHECK ADD  CONSTRAINT [FK_suministra_provedor] FOREIGN KEY([idprovedor])
REFERENCES [dbo].[provedor] ([idprovedo])
GO
ALTER TABLE [dbo].[suministra] CHECK CONSTRAINT [FK_suministra_provedor]
GO
