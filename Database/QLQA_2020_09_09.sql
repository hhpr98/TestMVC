USE [master]
GO
/****** Object:  Database [QuanLiQuanAn]    Script Date: 9/9/2020 7:39:40 PM ******/
CREATE DATABASE [QuanLiQuanAn]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLiQuanAn', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLiQuanAn.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLiQuanAn_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLiQuanAn_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLiQuanAn] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLiQuanAn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLiQuanAn] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLiQuanAn] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLiQuanAn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLiQuanAn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLiQuanAn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLiQuanAn] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLiQuanAn] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLiQuanAn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLiQuanAn] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLiQuanAn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLiQuanAn] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLiQuanAn] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLiQuanAn]
GO
/****** Object:  Table [dbo].[ChuoiCuaHang]    Script Date: 9/9/2020 7:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuoiCuaHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenChuoi] [ntext] NOT NULL,
 CONSTRAINT [PK_ChuoiCuaHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 9/9/2020 7:39:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenCuaHang] [ntext] NOT NULL,
	[DiaChi] [ntext] NULL,
	[DoanhThu] [float] NOT NULL,
	[SoKhach] [int] NOT NULL,
	[ChuoiCuaHang] [int] NOT NULL,
	[isDeleted] [int] NOT NULL,
 CONSTRAINT [PK_CuaHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChuoiCuaHang] ON 

INSERT [dbo].[ChuoiCuaHang] ([ID], [TenChuoi]) VALUES (1, N'HMART Nguyễn Văn Cừ')
INSERT [dbo].[ChuoiCuaHang] ([ID], [TenChuoi]) VALUES (2, N'HMART Đinh Bộ Lĩnh')
INSERT [dbo].[ChuoiCuaHang] ([ID], [TenChuoi]) VALUES (3, N'HMART Hai Bà Trưng')
SET IDENTITY_INSERT [dbo].[ChuoiCuaHang] OFF
SET IDENTITY_INSERT [dbo].[CuaHang] ON 

INSERT [dbo].[CuaHang] ([ID], [TenCuaHang], [DiaChi], [DoanhThu], [SoKhach], [ChuoiCuaHang], [isDeleted]) VALUES (1, N'HMART 127 Nguyễn Văn Cừ', N'127 Nguyễn Văn Cừ, Q.5, HCM', 1200000, 16, 1, 0)
INSERT [dbo].[CuaHang] ([ID], [TenCuaHang], [DiaChi], [DoanhThu], [SoKhach], [ChuoiCuaHang], [isDeleted]) VALUES (2, N'HMART 03 Nguyễn Văn Cừ', N'03 Nguyễn Văn Cừ, Q.5, HCM', 6000000, 45, 1, 0)
INSERT [dbo].[CuaHang] ([ID], [TenCuaHang], [DiaChi], [DoanhThu], [SoKhach], [ChuoiCuaHang], [isDeleted]) VALUES (3, N'HMART CS3', N'15 Hai Bà Trưng', 2000000, 15, 3, 0)
INSERT [dbo].[CuaHang] ([ID], [TenCuaHang], [DiaChi], [DoanhThu], [SoKhach], [ChuoiCuaHang], [isDeleted]) VALUES (5, N'HMART Miền Đông', N'18 Đinh Bộ Lĩnh, P.22, Bình Thạnh, HCM', 2500000, 20, 2, 0)
INSERT [dbo].[CuaHang] ([ID], [TenCuaHang], [DiaChi], [DoanhThu], [SoKhach], [ChuoiCuaHang], [isDeleted]) VALUES (7, N'HMART Miền Đông 2', N'18/5/3A Đinh Bộ Lĩnh', 1500000, 2, 2, 0)
INSERT [dbo].[CuaHang] ([ID], [TenCuaHang], [DiaChi], [DoanhThu], [SoKhach], [ChuoiCuaHang], [isDeleted]) VALUES (8, N'HMART new SVH1', N'02 Hai Bà Trưng', 10000000, 55, 1, 0)
INSERT [dbo].[CuaHang] ([ID], [TenCuaHang], [DiaChi], [DoanhThu], [SoKhach], [ChuoiCuaHang], [isDeleted]) VALUES (10, N'HMART ADD VN', N'01 Nguyễn Văn Cừ', 20000000, 35, 1, 0)
INSERT [dbo].[CuaHang] ([ID], [TenCuaHang], [DiaChi], [DoanhThu], [SoKhach], [ChuoiCuaHang], [isDeleted]) VALUES (12, N'HMART CS5', N'06 Đinh Bộ Lĩnh, HCM', 1200000, 1, 2, 0)
INSERT [dbo].[CuaHang] ([ID], [TenCuaHang], [DiaChi], [DoanhThu], [SoKhach], [ChuoiCuaHang], [isDeleted]) VALUES (14, N'HMART 2', N'122 Nguyễn Văn Cừ', 1000000, 5, 1, 0)
INSERT [dbo].[CuaHang] ([ID], [TenCuaHang], [DiaChi], [DoanhThu], [SoKhach], [ChuoiCuaHang], [isDeleted]) VALUES (18, N'HMART 33', N'123 Nguyễn Văn Cừ', 1000000, 4, 1, 0)
INSERT [dbo].[CuaHang] ([ID], [TenCuaHang], [DiaChi], [DoanhThu], [SoKhach], [ChuoiCuaHang], [isDeleted]) VALUES (19, N'HMART 4', N'124 Nguyễn Văn Cừ', 1000000, 6, 1, 0)
INSERT [dbo].[CuaHang] ([ID], [TenCuaHang], [DiaChi], [DoanhThu], [SoKhach], [ChuoiCuaHang], [isDeleted]) VALUES (20, N'Chi nhánh Nguyễn Hữu Hòa', N'191 Đồng Đen', 20000000, 50, 2, 0)
INSERT [dbo].[CuaHang] ([ID], [TenCuaHang], [DiaChi], [DoanhThu], [SoKhach], [ChuoiCuaHang], [isDeleted]) VALUES (21, N'HMART OD1', N'1/3D Sư Vạn Hạnh', 4000000, 20, 2, 0)
SET IDENTITY_INSERT [dbo].[CuaHang] OFF
USE [master]
GO
ALTER DATABASE [QuanLiQuanAn] SET  READ_WRITE 
GO
