USE [master]
GO
/****** Object:  Database [eexapp]    Script Date: 2/09/2021 18:12:24 ******/
CREATE DATABASE [eexapp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'eexapp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.DBPRO\MSSQL\DATA\eexapp.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'eexapp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.DBPRO\MSSQL\DATA\eexapp_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [eexapp] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eexapp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eexapp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eexapp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eexapp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eexapp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eexapp] SET ARITHABORT OFF 
GO
ALTER DATABASE [eexapp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eexapp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eexapp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eexapp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eexapp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eexapp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eexapp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eexapp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eexapp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eexapp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [eexapp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eexapp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eexapp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eexapp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eexapp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eexapp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eexapp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eexapp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [eexapp] SET  MULTI_USER 
GO
ALTER DATABASE [eexapp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eexapp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eexapp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eexapp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [eexapp] SET DELAYED_DURABILITY = DISABLED 
GO
USE [eexapp]
GO
/****** Object:  Table [dbo].[Operacion]    Script Date: 2/09/2021 18:12:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [int] NOT NULL,
	[fechayhora] [datetime] NOT NULL,
	[usuarioid] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipoOperacion]    Script Date: 2/09/2021 18:12:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipoOperacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_tipoOperacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 2/09/2021 18:12:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Usuario] [varchar](15) NULL,
	[Pass] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Operacion] ON 

INSERT [dbo].[Operacion] ([id], [tipo], [fechayhora], [usuarioid]) VALUES (2, 1, CAST(N'2021-08-31 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Operacion] ([id], [tipo], [fechayhora], [usuarioid]) VALUES (3, 2, CAST(N'2021-08-31 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Operacion] ([id], [tipo], [fechayhora], [usuarioid]) VALUES (5, 1, CAST(N'2021-09-02 20:59:26.890' AS DateTime), 1)
INSERT [dbo].[Operacion] ([id], [tipo], [fechayhora], [usuarioid]) VALUES (6, 1, CAST(N'2021-09-02 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Operacion] ([id], [tipo], [fechayhora], [usuarioid]) VALUES (7, 1, CAST(N'2021-09-02 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Operacion] ([id], [tipo], [fechayhora], [usuarioid]) VALUES (8, 1, CAST(N'2021-09-02 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Operacion] ([id], [tipo], [fechayhora], [usuarioid]) VALUES (9, 1, CAST(N'2021-09-02 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Operacion] ([id], [tipo], [fechayhora], [usuarioid]) VALUES (10, 1, CAST(N'2021-09-02 18:04:00.000' AS DateTime), 1)
INSERT [dbo].[Operacion] ([id], [tipo], [fechayhora], [usuarioid]) VALUES (11, 1, CAST(N'2021-09-02 18:04:00.000' AS DateTime), 1)
INSERT [dbo].[Operacion] ([id], [tipo], [fechayhora], [usuarioid]) VALUES (12, 1, CAST(N'2021-09-02 18:04:00.000' AS DateTime), 1)
INSERT [dbo].[Operacion] ([id], [tipo], [fechayhora], [usuarioid]) VALUES (13, 2, CAST(N'2021-09-02 18:11:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Operacion] OFF
SET IDENTITY_INSERT [dbo].[tipoOperacion] ON 

INSERT [dbo].[tipoOperacion] ([id], [tipo], [estado]) VALUES (1, N'Entrada', 1)
INSERT [dbo].[tipoOperacion] ([id], [tipo], [estado]) VALUES (2, N'Salida', 1)
SET IDENTITY_INSERT [dbo].[tipoOperacion] OFF
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (1, N'Alejandro Oliva', N'aoliva', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (2, N'Emanuel Oliva', N'eoliva', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (3, N'Alex', N'aoliva1986', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (4, N'Alex', N'aoliva1986', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (5, N'Alex', N'aoliva1986', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (6, N'Alex', N'aoliva1986', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (7, N'Alejandro Oliva', N'aoliva', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (8, N'abc', N'abc', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (13, N'Sofia', N'Oliva', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (14, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (15, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (16, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (17, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (18, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (19, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (20, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (21, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (22, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (23, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (24, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (25, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (26, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (27, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (28, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (29, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (30, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (31, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (32, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (33, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (34, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (35, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (36, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (37, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (38, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (39, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (40, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (41, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (42, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (43, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (44, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (45, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (46, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (47, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (48, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (49, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (50, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (51, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (52, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (53, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (54, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (55, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (56, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (57, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (58, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (59, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (60, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (61, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (62, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (63, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (64, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (65, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (66, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (67, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (68, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (69, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (70, N'Prueba', N'eoliva', N'321')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (71, N'Usuario1', N'usuario1', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (72, N'Usuario2', N'usuario2', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (73, N'Usuario2', N'usuario2', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (74, N'Usuario2', N'usuario2', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (75, N'Usuario2', N'usuario2', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (76, N'Usuario3', N'usuario3', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (77, N'Usuario3', N'usuario3', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (78, N'Usuario4', N'usuario4', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (9, N'abc', N'abc', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (10, N'abc', N'abc', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (11, N'Alejandro', N'Oliva', N'123')
INSERT [dbo].[usuario] ([id], [Nombre], [Usuario], [Pass]) VALUES (12, N'Emanuel', N'Olmos', N'123')
SET IDENTITY_INSERT [dbo].[usuario] OFF
ALTER TABLE [dbo].[Operacion]  WITH CHECK ADD  CONSTRAINT [FK__Operacion__tipo__24927208] FOREIGN KEY([tipo])
REFERENCES [dbo].[tipoOperacion] ([id])
GO
ALTER TABLE [dbo].[Operacion] CHECK CONSTRAINT [FK__Operacion__tipo__24927208]
GO
ALTER TABLE [dbo].[Operacion]  WITH CHECK ADD  CONSTRAINT [FK__Operacion__usuar__25869641] FOREIGN KEY([usuarioid])
REFERENCES [dbo].[tipoOperacion] ([id])
GO
ALTER TABLE [dbo].[Operacion] CHECK CONSTRAINT [FK__Operacion__usuar__25869641]
GO
USE [master]
GO
ALTER DATABASE [eexapp] SET  READ_WRITE 
GO
