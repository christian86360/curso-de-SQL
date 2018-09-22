create database ejercicio2

CREATE TABLE [dbo].[camionero](
	[idcamionero] [int] IDENTITY(1,1) NOT NULL,
	[idcamion] [int] NULL,
	[idpaquete] [int] NULL,
	[nombre] [varchar](20) NULL,
	[telefono] [varchar](9) NULL,
	[direccion] [varchar](30) NULL,
	[salario] [decimal](18, 0) NULL,
	[dni] [varchar](8) NULL,
 CONSTRAINT [PK_camionero] PRIMARY KEY CLUSTERED 
(
	[idcamionero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[camiones](
	[idcamion] [int] IDENTITY(1,1) NOT NULL,
	[idprovincia] [int] NULL,
	[tipo] [varchar](20) NULL,
	[modelo] [varchar](20) NULL,
	[matricula] [varchar](20) NULL,
	[potencia] [varchar](20) NULL,
 CONSTRAINT [PK_camiones] PRIMARY KEY CLUSTERED 
(
	[idcamion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[paquete]    Script Date: 12/03/2017 07:11:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paquete](
	[idpaquete] [int] IDENTITY(1,1) NOT NULL,
	[idprovincia] [int] NULL,
	[descripcion] [varchar](30) NULL,
	[destinatario] [varchar](30) NULL,
	[direccion] [varchar](30) NULL,
 CONSTRAINT [PK_paquete] PRIMARY KEY CLUSTERED 
(
	[idpaquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[provincia]    Script Date: 12/03/2017 07:11:47 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[provincia](
	[idprovincia] [int] IDENTITY(1,1) NOT NULL,
	[idpaquete] [int] NULL,
	[nombre] [varchar](20) NULL,
	[codigo] [varchar](20) NULL,
 CONSTRAINT [PK_provincia] PRIMARY KEY CLUSTERED 
(
	[idprovincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[camionero] ON 

INSERT [dbo].[camionero] ([idcamionero], [idcamion], [idpaquete], [nombre], [telefono], [direccion], [salario], [dni]) VALUES (1, 1, 1, N'Luis Mendez', N'232424675', N'colonia rio', CAST(5000 AS Decimal(18, 0)), N'324324')
INSERT [dbo].[camionero] ([idcamionero], [idcamion], [idpaquete], [nombre], [telefono], [direccion], [salario], [dni]) VALUES (2, 2, 2, N'Lalo juarez', N'214324324', N'colonia zapata', CAST(5300 AS Decimal(18, 0)), N'234324')
SET IDENTITY_INSERT [dbo].[camionero] OFF
SET IDENTITY_INSERT [dbo].[camiones] ON 

INSERT [dbo].[camiones] ([idcamion], [idprovincia], [tipo], [modelo], [matricula], [potencia]) VALUES (1, 1, N'RABON (1 EJE)', N'2009', N'WLU-87-23', N'360CV')
INSERT [dbo].[camiones] ([idcamion], [idprovincia], [tipo], [modelo], [matricula], [potencia]) VALUES (2, 2, N'TORTON (2 EJES)', N'2006', N'ERF-35-24', N'489CV')
INSERT [dbo].[camiones] ([idcamion], [idprovincia], [tipo], [modelo], [matricula], [potencia]) VALUES (7, 3, N'TORTON(2 Ejes)', N'2010', N'WEF-34-57', N'478CV')
INSERT [dbo].[camiones] ([idcamion], [idprovincia], [tipo], [modelo], [matricula], [potencia]) VALUES (8, 4, N'DOBLE SEMIREMOLQUE', N'2010', N'RGS-34-34', N'560CV')
INSERT [dbo].[camiones] ([idcamion], [idprovincia], [tipo], [modelo], [matricula], [potencia]) VALUES (9, 5, N'TORTON (2 EJES)', N'2013', N'ERG-34-34', N'578-CV')
INSERT [dbo].[camiones] ([idcamion], [idprovincia], [tipo], [modelo], [matricula], [potencia]) VALUES (10, 6, N'TORTON (2 EJES)', N'2013', N'WEG-34-78', N'480-CV')
INSERT [dbo].[camiones] ([idcamion], [idprovincia], [tipo], [modelo], [matricula], [potencia]) VALUES (11, 7, N'TORTON (2 EJES)', N'2015', N'FRB-35-79', N'360-CV')
INSERT [dbo].[camiones] ([idcamion], [idprovincia], [tipo], [modelo], [matricula], [potencia]) VALUES (12, 8, N'TORTON (1 EJES)', N'2016', N'FRG-34-78', N'450-CV')
INSERT [dbo].[camiones] ([idcamion], [idprovincia], [tipo], [modelo], [matricula], [potencia]) VALUES (13, 9, N'TORTON (2 EJES)', N'2017', N'FRE-34-21', N'470-CV')
INSERT [dbo].[camiones] ([idcamion], [idprovincia], [tipo], [modelo], [matricula], [potencia]) VALUES (14, 10, N'TORTON (2 EJES)', N'2017', N'FBJ-21-56', N'550-CV')
SET IDENTITY_INSERT [dbo].[camiones] OFF
SET IDENTITY_INSERT [dbo].[paquete] ON 

INSERT [dbo].[paquete] ([idpaquete], [idprovincia], [descripcion], [destinatario], [direccion]) VALUES (1, 1, N'paquete color cafe', N'Luis mendez', N'colonia san luis de la paz')
INSERT [dbo].[paquete] ([idpaquete], [idprovincia], [descripcion], [destinatario], [direccion]) VALUES (2, 2, N'paquete de color blanco', N'Elvira ruis', N'colina estrella')
INSERT [dbo].[paquete] ([idpaquete], [idprovincia], [descripcion], [destinatario], [direccion]) VALUES (3, 3, N'paquete de color negreo', N'sara morales', N'colonia san agustin')
INSERT [dbo].[paquete] ([idpaquete], [idprovincia], [descripcion], [destinatario], [direccion]) VALUES (4, 4, N'paquete de color cafe', N'Esmeralda tiñon', N'colonia villa de aragon')
INSERT [dbo].[paquete] ([idpaquete], [idprovincia], [descripcion], [destinatario], [direccion]) VALUES (5, 5, N'paquete de color negro', N'Simon carso', N'colonia villa de la paz')
INSERT [dbo].[paquete] ([idpaquete], [idprovincia], [descripcion], [destinatario], [direccion]) VALUES (6, 6, N'paquete color azul', N'Fernanda', N'colonia zapotecas')
INSERT [dbo].[paquete] ([idpaquete], [idprovincia], [descripcion], [destinatario], [direccion]) VALUES (7, 7, N'paquete de color cafe', N'Lusero dias', N'colonia tributo')
INSERT [dbo].[paquete] ([idpaquete], [idprovincia], [descripcion], [destinatario], [direccion]) VALUES (8, 8, N'paquete de color rojo', N'Gloaria tellez', N'colonia tribunal')
INSERT [dbo].[paquete] ([idpaquete], [idprovincia], [descripcion], [destinatario], [direccion]) VALUES (9, 9, N'paquete color cafe', N'Trinidad paz', N'colonia lorezo')
INSERT [dbo].[paquete] ([idpaquete], [idprovincia], [descripcion], [destinatario], [direccion]) VALUES (10, 10, N'paquete color cafe', N'Paola glandon', N'colonia pinozuares')
SET IDENTITY_INSERT [dbo].[paquete] OFF
SET IDENTITY_INSERT [dbo].[provincia] ON 

INSERT [dbo].[provincia] ([idprovincia], [idpaquete], [nombre], [codigo]) VALUES (1, 1, N'veracruz', N'324324')
INSERT [dbo].[provincia] ([idprovincia], [idpaquete], [nombre], [codigo]) VALUES (2, 2, N'puebla', N'343244')
INSERT [dbo].[provincia] ([idprovincia], [idpaquete], [nombre], [codigo]) VALUES (3, 3, N'toluca', N'097983')
INSERT [dbo].[provincia] ([idprovincia], [idpaquete], [nombre], [codigo]) VALUES (4, 4, N'DF', N'978676')
INSERT [dbo].[provincia] ([idprovincia], [idpaquete], [nombre], [codigo]) VALUES (5, 5, N'hidalgo', N'324324')
INSERT [dbo].[provincia] ([idprovincia], [idpaquete], [nombre], [codigo]) VALUES (6, 6, N'acapulco', N'325354')
INSERT [dbo].[provincia] ([idprovincia], [idpaquete], [nombre], [codigo]) VALUES (7, 7, N'nuevoleon', N'324324')
INSERT [dbo].[provincia] ([idprovincia], [idpaquete], [nombre], [codigo]) VALUES (8, 8, N'torion', N'234234')
INSERT [dbo].[provincia] ([idprovincia], [idpaquete], [nombre], [codigo]) VALUES (9, 9, N'cancun', N'324421')
INSERT [dbo].[provincia] ([idprovincia], [idpaquete], [nombre], [codigo]) VALUES (10, 10, N'michoacan', N'234234')
SET IDENTITY_INSERT [dbo].[provincia] OFF
ALTER TABLE [dbo].[camionero]  WITH CHECK ADD  CONSTRAINT [FK_camionero_camiones] FOREIGN KEY([idcamion])
REFERENCES [dbo].[camiones] ([idcamion])
GO
ALTER TABLE [dbo].[camionero] CHECK CONSTRAINT [FK_camionero_camiones]
GO
ALTER TABLE [dbo].[camionero]  WITH CHECK ADD  CONSTRAINT [FK_camionero_paquete] FOREIGN KEY([idpaquete])
REFERENCES [dbo].[paquete] ([idpaquete])
GO
ALTER TABLE [dbo].[camionero] CHECK CONSTRAINT [FK_camionero_paquete]
GO
ALTER TABLE [dbo].[camiones]  WITH CHECK ADD  CONSTRAINT [FK_camiones_provincia] FOREIGN KEY([idprovincia])
REFERENCES [dbo].[provincia] ([idprovincia])
GO
ALTER TABLE [dbo].[camiones] CHECK CONSTRAINT [FK_camiones_provincia]
GO
ALTER TABLE [dbo].[paquete]  WITH CHECK ADD  CONSTRAINT [FK_paquete_provincia] FOREIGN KEY([idprovincia])
REFERENCES [dbo].[provincia] ([idprovincia])
GO
ALTER TABLE [dbo].[paquete] CHECK CONSTRAINT [FK_paquete_provincia]
GO
