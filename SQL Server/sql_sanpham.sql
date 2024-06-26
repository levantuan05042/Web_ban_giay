USE [master]
GO
/****** Object:  Database [QL_web_banhang]    Script Date: 12/9/2023 11:12:12 AM ******/
CREATE DATABASE [QL_web_banhang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_web_banhang', FILENAME = N'D:\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QL_web_banhang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_web_banhang_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QL_web_banhang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QL_web_banhang] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_web_banhang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_web_banhang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_web_banhang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_web_banhang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_web_banhang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_web_banhang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_web_banhang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QL_web_banhang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_web_banhang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_web_banhang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_web_banhang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_web_banhang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_web_banhang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_web_banhang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_web_banhang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_web_banhang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_web_banhang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_web_banhang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_web_banhang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_web_banhang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_web_banhang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_web_banhang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_web_banhang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_web_banhang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_web_banhang] SET  MULTI_USER 
GO
ALTER DATABASE [QL_web_banhang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_web_banhang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_web_banhang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_web_banhang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_web_banhang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_web_banhang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QL_web_banhang] SET QUERY_STORE = ON
GO
ALTER DATABASE [QL_web_banhang] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QL_web_banhang]
GO
/****** Object:  Table [dbo].[ChitietDonHang]    Script Date: 12/9/2023 11:12:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietDonHang](
	[MaChitietDonHang] [nvarchar](50) NOT NULL,
	[MaDonHang] [nvarchar](50) NULL,
	[MaSanPham] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChitietDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/9/2023 11:12:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [nvarchar](50) NOT NULL,
	[MaKhachHang] [nvarchar](50) NULL,
	[NgayDatHang] [date] NULL,
	[TongTienDonHang] [decimal](10, 2) NULL,
	[Trangthai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 12/9/2023 11:12:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[Tendaydu] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](15) NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Mode] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/9/2023 11:12:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](50) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[HanSanPham] [nvarchar](50) NULL,
	[HinhAnh] [text] NULL,
	[Mota] [nvarchar](max) NULL,
	[Gia] [decimal](10, 2) NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChitietDonHang] ([MaChitietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [ThanhTien]) VALUES (N'CTDH001', N'DH001', N'001', 2, CAST(400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDatHang], [TongTienDonHang], [Trangthai]) VALUES (N'DH001', N'KH001', CAST(N'2023-12-06' AS Date), CAST(500.00 AS Decimal(10, 2)), 1)
GO
INSERT [dbo].[NguoiDung] ([Tendaydu], [DienThoai], [TenDangNhap], [MatKhau], [DiaChi], [Mode]) VALUES (N'admin', N'0987654321', N'Admin', N'123456', N'Hà Nội', N'Admin')
INSERT [dbo].[NguoiDung] ([Tendaydu], [DienThoai], [TenDangNhap], [MatKhau], [DiaChi], [Mode]) VALUES (N'Lê Văn Tuấn', N'0987654321', N'tuan', N'12345', N'Thanh Hóa', N'User')
INSERT [dbo].[NguoiDung] ([Tendaydu], [DienThoai], [TenDangNhap], [MatKhau], [DiaChi], [Mode]) VALUES (N'user', N'0123456789', N'User', N'123456', N'Hà Nội', N'User')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'10', N'SanPham10', N'VanS', N'../img/adidas4.jpeg', N'Mô tả cho sản phẩm 10', CAST(2000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'11', N'SanPham11', N'Jordan', N'../img/adidas1.jpeg', N'Mô tả cho sản phẩm 11', CAST(2200.00 AS Decimal(10, 2)), 11)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'12', N'SanPham12', N'Adidas', N'../img/adidas6.jpeg', N'Mô tả cho sản phẩm 12', CAST(2400.00 AS Decimal(10, 2)), 12)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'13', N'SanPham13', N'Jordan', N'../img/adidas1.jpeg', N'Mô tả cho sản phẩm 13', CAST(2600.00 AS Decimal(10, 2)), 13)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'14', N'SanPham14', N'Nike', N'../img/adidas7.jpeg', N'Mô tả cho sản phẩm 14', CAST(2800.00 AS Decimal(10, 2)), 14)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'15', N'SanPham15', N'VanS', N'../img/adidas5.jpeg', N'Mô tả cho sản phẩm 15', CAST(3000.00 AS Decimal(10, 2)), 15)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'16', N'SanPham16', N'Balenciaga', N'../img/adidas4.jpeg', N'Mô tả cho sản phẩm 16', CAST(3200.00 AS Decimal(10, 2)), 16)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'17', N'SanPham17', N'Jordan', N'../img/adidas1.jpeg', N'Mô tả cho sản phẩm 17', CAST(3400.00 AS Decimal(10, 2)), 17)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'18', N'SanPham18', N'Adidas', N'../img/adidas6.jpeg', N'Mô tả cho sản phẩm 18', CAST(3600.00 AS Decimal(10, 2)), 18)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'19', N'SanPham19', N'Jordan', N'../img/adidas1.jpeg', N'Mô tả cho sản phẩm 19', CAST(3800.00 AS Decimal(10, 2)), 19)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'20', N'SanPham20', N'VanS', N'../img/adidas5.jpeg', N'Mô tả cho sản phẩm 20', CAST(4000.00 AS Decimal(10, 2)), 20)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'21', N'SanPham21', N'Nike', N'../img/adidas7.jpeg', N'Mô tả cho sản phẩm 21', CAST(4200.00 AS Decimal(10, 2)), 21)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'22', N'SanPham22', N'Adidas', N'../img/adidas2.jpeg', N'Mô tả cho sản phẩm 22', CAST(4400.00 AS Decimal(10, 2)), 22)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'23', N'SanPham23', N'Jordan', N'../img/adidas1.jpeg', N'Mô tả cho sản phẩm 23', CAST(4600.00 AS Decimal(10, 2)), 23)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'24', N'SanPham24', N'Adidas', N'../img/adidas6.jpeg', N'Mô tả cho sản phẩm 24', CAST(4800.00 AS Decimal(10, 2)), 24)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'25', N'SanPham25', N'VanS', N'../img/adidas5.jpeg', N'Mô tả cho sản phẩm 25', CAST(5000.00 AS Decimal(10, 2)), 25)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'26', N'SanPham26', N'Adidas', N'../img/adidas2.jpeg', N'Mô tả cho sản phẩm 26', CAST(5200.00 AS Decimal(10, 2)), 26)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'27', N'SanPham27', N'Jordan', N'../img/adidas3.jpeg', N'Mô tả cho sản phẩm 27', CAST(5400.00 AS Decimal(10, 2)), 27)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'28', N'SanPham28', N'Nike', N'../img/adidas7.jpeg', N'Mô tả cho sản phẩm 28', CAST(5600.00 AS Decimal(10, 2)), 28)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'29', N'SanPham29', N'Jordan', N'../img/adidas1.jpeg', N'Mô tả cho sản phẩm 29', CAST(5800.00 AS Decimal(10, 2)), 29)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'3', N'SanPham3', N'Jordan', N'../img/adidas3.jpeg', N'Mô tả cho sản phẩm 3', CAST(600.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'30', N'SanPham30', N'Adidas', N'../img/adidas6.jpeg', N'Mô tả cho sản phẩm 30', CAST(6000.00 AS Decimal(10, 2)), 30)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'31', N'SanPham31', N'Jordan', N'../img/adidas1.jpeg', N'Mô tả cho sản phẩm 31', CAST(6200.00 AS Decimal(10, 2)), 31)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'32', N'SanPham32', N'Balenciaga', N'../img/adidas4.jpeg', N'Mô tả cho sản phẩm 32', CAST(6400.00 AS Decimal(10, 2)), 32)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'33', N'SanPham33', N'Jordan', N'../img/adidas3.jpeg', N'Mô tả cho sản phẩm 33', CAST(6600.00 AS Decimal(10, 2)), 33)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'34', N'SanPham34', N'Adidas', N'../img/adidas2.jpeg', N'Mô tả cho sản phẩm 34', CAST(6800.00 AS Decimal(10, 2)), 34)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'35', N'SanPham35', N'Nike', N'../img/adidas7.jpeg', N'Mô tả cho sản phẩm 35', CAST(7000.00 AS Decimal(10, 2)), 35)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'36', N'SanPham36', N'Adidas', N'../img/adidas6.jpeg', N'Mô tả cho sản phẩm 36', CAST(7200.00 AS Decimal(10, 2)), 36)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'37', N'SanPham37', N'Jordan', N'../img/adidas1.jpeg', N'Mô tả cho sản phẩm 37', CAST(7400.00 AS Decimal(10, 2)), 37)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'38', N'SanPham38', N'Adidas', N'../img/adidas2.jpeg', N'Mô tả cho sản phẩm 38', CAST(7600.00 AS Decimal(10, 2)), 38)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'39', N'SanPham39', N'Jordan', N'../img/adidas3.jpeg', N'Mô tả cho sản phẩm 39', CAST(7800.00 AS Decimal(10, 2)), 39)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'4', N'SanPham4', N'Balenciaga', N'../img/adidas4.jpeg', N'Mô tả cho sản phẩm 4', CAST(800.00 AS Decimal(10, 2)), 4)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'40', N'SanPham40', N'VanS', N'../img/adidas5.jpeg', N'Mô tả cho sản phẩm 40', CAST(8000.00 AS Decimal(10, 2)), 40)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'41', N'SanPham41', N'Jordan', N'../img/adidas1.jpeg', N'Mô tả cho sản phẩm 41', CAST(8200.00 AS Decimal(10, 2)), 41)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'42', N'SanPham42', N'Nike', N'../img/adidas7.jpeg', N'Mô tả cho sản phẩm 42', CAST(8400.00 AS Decimal(10, 2)), 42)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'43', N'SanPham43', N'Jordan', N'../img/adidas1.jpeg', N'Mô tả cho sản phẩm 43', CAST(8600.00 AS Decimal(10, 2)), 43)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'44', N'SanPham44', N'Balenciaga', N'../img/adidas4.jpeg', N'Mô tả cho sản phẩm 44', CAST(8800.00 AS Decimal(10, 2)), 44)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'45', N'SanPham45', N'VanS', N'../img/adidas5.jpeg', N'Mô tả cho sản phẩm 45', CAST(9000.00 AS Decimal(10, 2)), 45)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'46', N'SanPham46', N'Adidas', N'../img/adidas2.jpeg', N'Mô tả cho sản phẩm 46', CAST(9200.00 AS Decimal(10, 2)), 46)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'47', N'SanPham47', N'Jordan', N'../img/adidas1.jpeg', N'Mô tả cho sản phẩm 47', CAST(9400.00 AS Decimal(10, 2)), 47)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'48', N'SanPham48', N'Adidas', N'../img/adidas6.jpeg', N'Mô tả cho sản phẩm 48', CAST(9600.00 AS Decimal(10, 2)), 48)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'49', N'SanPham49', N'Nike', N'../img/adidas7.jpeg', N'Mô tả cho sản phẩm 49', CAST(9800.00 AS Decimal(10, 2)), 49)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'5', N'SanPham5', N'VanS', N'../img/adidas5.jpeg', N'Mô tả cho sản phẩm 5', CAST(1000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'50', N'SanPham50', N'VanS', N'../img/adidas5.jpeg', N'Mô tả cho sản phẩm 50', CAST(10000.00 AS Decimal(10, 2)), 50)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'51', N'SanPham51', N'Jordan', N'../img/adidas3.jpeg', N'Mô tả cho sản phẩm 51', CAST(10200.00 AS Decimal(10, 2)), 51)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'52', N'SanPham52', N'Balenciaga', N'../img/adidas4.jpeg', N'Mô tả cho sản phẩm 52', CAST(10400.00 AS Decimal(10, 2)), 52)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'6', N'SanPham6', N'Adidas', N'../img/adidas6.jpeg', N'Mô tả cho sản phẩm 6', CAST(1200.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'7', N'SanPham7', N'Nike', N'../img/adidas7.jpeg', N'Mô tả cho sản phẩm 7', CAST(1400.00 AS Decimal(10, 2)), 7)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'8', N'SanPham8', N'Balenciaga', N'../img/adidas4.jpeg', N'Mô tả cho sản phẩm 8', CAST(1600.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [HanSanPham], [HinhAnh], [Mota], [Gia], [SoLuong]) VALUES (N'9', N'SanPham9', N'Jordan', N'../img/adidas3.jpeg', N'Mô tả cho sản phẩm 9', CAST(1800.00 AS Decimal(10, 2)), 9)
GO
ALTER TABLE [dbo].[ChitietDonHang]  WITH NOCHECK ADD FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChitietDonHang]  WITH NOCHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[NguoiDung]  WITH NOCHECK ADD CHECK  (([Mode]=N'User' OR [Mode]=N'Admin'))
GO
ALTER TABLE [dbo].[NguoiDung]  WITH NOCHECK ADD CHECK  (([Mode]=N'User' OR [Mode]=N'Admin'))
GO
ALTER TABLE [dbo].[NguoiDung]  WITH NOCHECK ADD CHECK  (([Mode]=N'User' OR [Mode]=N'Admin'))
GO
USE [master]
GO
ALTER DATABASE [QL_web_banhang] SET  READ_WRITE 
GO
