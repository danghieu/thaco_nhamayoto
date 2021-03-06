USE [master]
GO
/****** Object:  Database [QTSXNHIP]    Script Date: 18/10/2016 3:18:58 PM ******/
CREATE DATABASE [QTSXNHIP]

GO
ALTER DATABASE [QTSXNHIP] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QTSXNHIP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QTSXNHIP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QTSXNHIP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QTSXNHIP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QTSXNHIP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QTSXNHIP] SET ARITHABORT OFF 
GO
ALTER DATABASE [QTSXNHIP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QTSXNHIP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QTSXNHIP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QTSXNHIP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QTSXNHIP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QTSXNHIP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QTSXNHIP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QTSXNHIP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QTSXNHIP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QTSXNHIP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QTSXNHIP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QTSXNHIP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QTSXNHIP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QTSXNHIP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QTSXNHIP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QTSXNHIP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QTSXNHIP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QTSXNHIP] SET RECOVERY FULL 
GO
ALTER DATABASE [QTSXNHIP] SET  MULTI_USER 
GO
ALTER DATABASE [QTSXNHIP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QTSXNHIP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QTSXNHIP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QTSXNHIP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QTSXNHIP] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QTSXNHIP', N'ON'
GO
USE [QTSXNHIP]
GO
/****** Object:  Table [dbo].[tblBaoCaoSX]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBaoCaoSX](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SanPhamID] [int] NULL,
	[Ngay] [datetime] NULL,
	[ThucHien] [nvarchar](200) NULL,
	[KeHoach] [nvarchar](200) NULL,
	[TiLe] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblBaoCaoSX] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChuyen]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChuyen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyen] [nvarchar](100) NULL,
	[TenChuyen] [nvarchar](200) NULL,
	[DonViID] [int] NULL,
	[TenTiengAnh] [nvarchar](200) NULL,
	[ThuTu] [int] NULL,
 CONSTRAINT [PK_tblChuyen] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDonVi]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDonVi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaDV] [nvarchar](100) NULL,
	[DonVi] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblDonVi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKeHoachSX]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKeHoachSX](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SanPhamID] [int] NULL,
	[Ngay] [datetime] NULL,
	[SoLuong] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[LastUpdateBy] [int] NULL,
 CONSTRAINT [PK_tblKeHoachSX] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKetQuaSX]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKetQuaSX](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SanPhamID] [int] NULL,
	[NgaySX] [datetime] NULL,
	[MaBarcode] [nvarchar](14) NULL,
	[ThoiGian] [datetime] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_tblKetQuaSX] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLoaiSP]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiSP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiSP] [nvarchar](100) NULL,
	[TenLoaiSP] [nvarchar](200) NULL,
	[DonViID] [int] NULL,
 CONSTRAINT [PK_tblLoaiSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSanPham]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [nvarchar](100) NULL,
	[TenSanPham] [nvarchar](200) NULL,
	[LoaiSPID] [int] NULL,
	[KyHieuNhan] [nchar](10) NULL,
	[QuyCach] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblSanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTaoMa]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaoMa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SanPhamID] [int] NULL,
	[KyHieuNhan] [nvarchar](100) NULL,
	[NamSX] [nvarchar](10) NULL,
	[ThangSX] [nvarchar](50) NULL,
	[Ngay] [datetime] NULL,
	[SoLuong] [nvarchar](200) NULL,
	[MaBarcode] [nvarchar](14) NULL,
 CONSTRAINT [PK_tblTaoMa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblThamSo]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThamSo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kyhieu] [nchar](10) NULL,
	[GiaTri] [nchar](10) NULL,
 CONSTRAINT [PK_tblThamSo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](max) NULL,
	[DislayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tblChuyen] ON 

GO
INSERT [dbo].[tblChuyen] ([ID], [MaChuyen], [TenChuyen], [DonViID], [TenTiengAnh], [ThuTu]) VALUES (1, N'Chuyen 1', N'Chuyen 1', 4, N'Shop 1', 1)
GO
INSERT [dbo].[tblChuyen] ([ID], [MaChuyen], [TenChuyen], [DonViID], [TenTiengAnh], [ThuTu]) VALUES (2, N'Chuyen 2', N'Chuyen 2', 7, N'Shop 1', 2)
GO
INSERT [dbo].[tblChuyen] ([ID], [MaChuyen], [TenChuyen], [DonViID], [TenTiengAnh], [ThuTu]) VALUES (3, N'HAN', N'HÀN', 5, N'SHOP', 0)
GO
SET IDENTITY_INSERT [dbo].[tblChuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDonVi] ON 

GO
INSERT [dbo].[tblDonVi] ([ID], [MaDV], [DonVi], [DiaChi]) VALUES (1, N'THACO-KIA', N'Thaco kia', N'aaaa')
GO
INSERT [dbo].[tblDonVi] ([ID], [MaDV], [DonVi], [DiaChi]) VALUES (2, N'THACO-BUS', N'THACO BUS', N'aaa')
GO
INSERT [dbo].[tblDonVi] ([ID], [MaDV], [DonVi], [DiaChi]) VALUES (3, N'THACO-TAI', N'THACO TẢI', N'aaa')
GO
INSERT [dbo].[tblDonVi] ([ID], [MaDV], [DonVi], [DiaChi]) VALUES (4, N'VINAMAZDA', N'VINAMAZDA', N'ccc')
GO
INSERT [dbo].[tblDonVi] ([ID], [MaDV], [DonVi], [DiaChi]) VALUES (5, N'NHIPOTO', N'NHÍP Ô TÔ', N'aaaaa')
GO
INSERT [dbo].[tblDonVi] ([ID], [MaDV], [DonVi], [DiaChi]) VALUES (6, N'AUTOCOM', N'NHÀ MÁY GHẾ Ô TÔ', N'')
GO
INSERT [dbo].[tblDonVi] ([ID], [MaDV], [DonVi], [DiaChi]) VALUES (7, N'COMPOSITE', N'NHÀ MÁY NHỰA', N'')
GO
INSERT [dbo].[tblDonVi] ([ID], [MaDV], [DonVi], [DiaChi]) VALUES (8, N'aaa', N'aaa', N'aaa')
GO
INSERT [dbo].[tblDonVi] ([ID], [MaDV], [DonVi], [DiaChi]) VALUES (9, N'bbbb', N'bbb', N'bbb')
GO
INSERT [dbo].[tblDonVi] ([ID], [MaDV], [DonVi], [DiaChi]) VALUES (10, N'ccc', N'cccc', N'ccc')
GO
SET IDENTITY_INSERT [dbo].[tblDonVi] OFF
GO
SET IDENTITY_INSERT [dbo].[tblKeHoachSX] ON 

GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (31, 2, CAST(N'2015-11-01 00:00:00.000' AS DateTime), 10, CAST(N'2015-11-19 08:11:30.607' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (32, 2, CAST(N'2015-11-02 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.610' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (33, 2, CAST(N'2015-11-03 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.610' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (34, 2, CAST(N'2015-11-04 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.610' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (35, 2, CAST(N'2015-11-05 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.610' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (36, 2, CAST(N'2015-11-06 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.613' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (37, 2, CAST(N'2015-11-07 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.613' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (38, 2, CAST(N'2015-11-08 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.613' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (39, 2, CAST(N'2015-11-09 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.613' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (40, 2, CAST(N'2015-11-10 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.617' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (41, 2, CAST(N'2015-11-11 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.617' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (42, 2, CAST(N'2015-11-12 00:00:00.000' AS DateTime), 3, CAST(N'2015-11-19 08:11:30.640' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (43, 2, CAST(N'2015-11-13 00:00:00.000' AS DateTime), 4, CAST(N'2015-11-19 08:11:30.640' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (44, 2, CAST(N'2015-11-14 00:00:00.000' AS DateTime), 5, CAST(N'2015-11-19 08:11:30.640' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (45, 2, CAST(N'2015-11-15 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.640' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (46, 2, CAST(N'2015-11-16 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.640' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (47, 2, CAST(N'2015-11-17 00:00:00.000' AS DateTime), 2, CAST(N'2015-11-19 08:11:30.640' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (48, 2, CAST(N'2015-11-18 00:00:00.000' AS DateTime), 20, CAST(N'2015-11-19 08:11:30.640' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (49, 2, CAST(N'2015-11-19 00:00:00.000' AS DateTime), 210, CAST(N'2015-11-19 08:11:30.643' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (50, 2, CAST(N'2015-11-20 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.643' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (51, 2, CAST(N'2015-11-21 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.643' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (52, 2, CAST(N'2015-11-22 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.643' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (53, 2, CAST(N'2015-11-23 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.643' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (54, 2, CAST(N'2015-11-24 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.647' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (55, 2, CAST(N'2015-11-25 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.647' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (56, 2, CAST(N'2015-11-26 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.647' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (57, 2, CAST(N'2015-11-27 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.650' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (58, 2, CAST(N'2015-11-28 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.650' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (59, 2, CAST(N'2015-11-29 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.650' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (60, 2, CAST(N'2015-11-30 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.653' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (61, 3, CAST(N'2015-11-01 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.657' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (62, 3, CAST(N'2015-11-02 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.657' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (63, 3, CAST(N'2015-11-03 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.660' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (64, 3, CAST(N'2015-11-04 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.660' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (65, 3, CAST(N'2015-11-05 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.660' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (66, 3, CAST(N'2015-11-06 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.663' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (67, 3, CAST(N'2015-11-07 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.663' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (68, 3, CAST(N'2015-11-08 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.663' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (69, 3, CAST(N'2015-11-09 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.663' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (70, 3, CAST(N'2015-11-10 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.663' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (71, 3, CAST(N'2015-11-11 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.667' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (72, 3, CAST(N'2015-11-12 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.667' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (73, 3, CAST(N'2015-11-13 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.667' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (74, 3, CAST(N'2015-11-14 00:00:00.000' AS DateTime), 45, CAST(N'2015-11-19 08:11:30.667' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (75, 3, CAST(N'2015-11-15 00:00:00.000' AS DateTime), 4, CAST(N'2015-11-19 08:11:30.670' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (76, 3, CAST(N'2015-11-16 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.670' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (77, 3, CAST(N'2015-11-17 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.670' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (78, 3, CAST(N'2015-11-18 00:00:00.000' AS DateTime), 10, CAST(N'2015-11-19 08:11:30.670' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (79, 3, CAST(N'2015-11-19 00:00:00.000' AS DateTime), 220, CAST(N'2015-11-19 08:11:30.670' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (80, 3, CAST(N'2015-11-20 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.673' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (81, 3, CAST(N'2015-11-21 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.673' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (82, 3, CAST(N'2015-11-22 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.673' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (83, 3, CAST(N'2015-11-23 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.673' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (84, 3, CAST(N'2015-11-24 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.677' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (85, 3, CAST(N'2015-11-25 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.690' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (86, 3, CAST(N'2015-11-26 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.690' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (87, 3, CAST(N'2015-11-27 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.690' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (88, 3, CAST(N'2015-11-28 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.690' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (89, 3, CAST(N'2015-11-29 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.693' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (90, 3, CAST(N'2015-11-30 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.693' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (91, 4, CAST(N'2015-11-01 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.693' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (92, 4, CAST(N'2015-11-02 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.693' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (93, 4, CAST(N'2015-11-03 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.693' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (94, 4, CAST(N'2015-11-04 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.697' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (95, 4, CAST(N'2015-11-05 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.697' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (96, 4, CAST(N'2015-11-06 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.697' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (97, 4, CAST(N'2015-11-07 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.697' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (98, 4, CAST(N'2015-11-08 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.697' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (99, 4, CAST(N'2015-11-09 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.700' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (100, 4, CAST(N'2015-11-10 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.700' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (101, 4, CAST(N'2015-11-11 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.700' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (102, 4, CAST(N'2015-11-12 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.700' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (103, 4, CAST(N'2015-11-13 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.700' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (104, 4, CAST(N'2015-11-14 00:00:00.000' AS DateTime), 33, CAST(N'2015-11-19 08:11:30.700' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (105, 4, CAST(N'2015-11-15 00:00:00.000' AS DateTime), 43, CAST(N'2015-11-19 08:11:30.700' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (106, 4, CAST(N'2015-11-16 00:00:00.000' AS DateTime), 11, CAST(N'2015-11-19 08:11:30.703' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (107, 4, CAST(N'2015-11-17 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.703' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (108, 4, CAST(N'2015-11-18 00:00:00.000' AS DateTime), 15, CAST(N'2015-11-19 08:11:30.703' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (109, 4, CAST(N'2015-11-19 00:00:00.000' AS DateTime), 100, CAST(N'2015-11-19 08:11:30.703' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (110, 4, CAST(N'2015-11-20 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.703' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (111, 4, CAST(N'2015-11-21 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.707' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (112, 4, CAST(N'2015-11-22 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.707' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (113, 4, CAST(N'2015-11-23 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.707' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (114, 4, CAST(N'2015-11-24 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.710' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (115, 4, CAST(N'2015-11-25 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.710' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (116, 4, CAST(N'2015-11-26 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.710' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (117, 4, CAST(N'2015-11-27 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.710' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (118, 4, CAST(N'2015-11-28 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.713' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (119, 4, CAST(N'2015-11-29 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.713' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (120, 4, CAST(N'2015-11-30 00:00:00.000' AS DateTime), 0, CAST(N'2015-11-19 08:11:30.713' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (121, 3, CAST(N'2015-12-01 00:00:00.000' AS DateTime), 10, CAST(N'2015-12-10 13:57:56.037' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (122, 3, CAST(N'2015-12-02 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.040' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (123, 3, CAST(N'2015-12-03 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.040' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (124, 3, CAST(N'2015-12-04 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.040' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (125, 3, CAST(N'2015-12-05 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.040' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (126, 3, CAST(N'2015-12-06 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.043' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (127, 3, CAST(N'2015-12-07 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.043' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (128, 3, CAST(N'2015-12-08 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.043' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (129, 3, CAST(N'2015-12-09 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.043' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (130, 3, CAST(N'2015-12-10 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.043' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (131, 3, CAST(N'2015-12-11 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.047' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (132, 3, CAST(N'2015-12-12 00:00:00.000' AS DateTime), 1, CAST(N'2015-12-10 13:57:56.047' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (133, 3, CAST(N'2015-12-13 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.047' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (134, 3, CAST(N'2015-12-14 00:00:00.000' AS DateTime), 5, CAST(N'2015-12-10 13:57:56.047' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (135, 3, CAST(N'2015-12-15 00:00:00.000' AS DateTime), 3, CAST(N'2015-12-10 13:57:56.047' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (136, 3, CAST(N'2015-12-16 00:00:00.000' AS DateTime), 100, CAST(N'2015-12-16 15:05:13.230' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (137, 3, CAST(N'2015-12-17 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.050' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (138, 3, CAST(N'2015-12-18 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.050' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (139, 3, CAST(N'2015-12-19 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.050' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (140, 3, CAST(N'2015-12-20 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.050' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (141, 3, CAST(N'2015-12-21 00:00:00.000' AS DateTime), 8, CAST(N'2015-12-10 13:57:56.050' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (142, 3, CAST(N'2015-12-22 00:00:00.000' AS DateTime), 7, CAST(N'2015-12-10 13:57:56.050' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (143, 3, CAST(N'2015-12-23 00:00:00.000' AS DateTime), 4, CAST(N'2015-12-10 13:57:56.050' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (144, 3, CAST(N'2015-12-24 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.050' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (145, 3, CAST(N'2015-12-25 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.053' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (146, 3, CAST(N'2015-12-26 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.053' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (147, 3, CAST(N'2015-12-27 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.053' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (148, 3, CAST(N'2015-12-28 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.053' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (149, 3, CAST(N'2015-12-29 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.053' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (150, 3, CAST(N'2015-12-30 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.057' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (151, 3, CAST(N'2015-12-31 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.060' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (152, 4, CAST(N'2015-12-01 00:00:00.000' AS DateTime), 20, CAST(N'2015-12-10 13:57:56.060' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (153, 4, CAST(N'2015-12-02 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.060' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (154, 4, CAST(N'2015-12-03 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.060' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (155, 4, CAST(N'2015-12-04 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.063' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (156, 4, CAST(N'2015-12-05 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.063' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (157, 4, CAST(N'2015-12-06 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.063' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (158, 4, CAST(N'2015-12-07 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.063' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (159, 4, CAST(N'2015-12-08 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.067' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (160, 4, CAST(N'2015-12-09 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.067' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (161, 4, CAST(N'2015-12-10 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.067' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (162, 4, CAST(N'2015-12-11 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.100' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (163, 4, CAST(N'2015-12-12 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.103' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (164, 4, CAST(N'2015-12-13 00:00:00.000' AS DateTime), 20, CAST(N'2015-12-10 13:57:56.103' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (165, 4, CAST(N'2015-12-14 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.103' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (166, 4, CAST(N'2015-12-15 00:00:00.000' AS DateTime), 4, CAST(N'2015-12-10 13:57:56.103' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (167, 4, CAST(N'2015-12-16 00:00:00.000' AS DateTime), 90, CAST(N'2015-12-16 15:05:16.433' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (168, 4, CAST(N'2015-12-17 00:00:00.000' AS DateTime), 8, CAST(N'2015-12-10 13:57:56.103' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (169, 4, CAST(N'2015-12-18 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.107' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (170, 4, CAST(N'2015-12-19 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.107' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (171, 4, CAST(N'2015-12-20 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.107' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (172, 4, CAST(N'2015-12-21 00:00:00.000' AS DateTime), 8, CAST(N'2015-12-10 13:57:56.110' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (173, 4, CAST(N'2015-12-22 00:00:00.000' AS DateTime), 9, CAST(N'2015-12-10 13:57:56.110' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (174, 4, CAST(N'2015-12-23 00:00:00.000' AS DateTime), 10, CAST(N'2015-12-10 13:57:56.110' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (175, 4, CAST(N'2015-12-24 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.110' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (176, 4, CAST(N'2015-12-25 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.110' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (177, 4, CAST(N'2015-12-26 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.110' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (178, 4, CAST(N'2015-12-27 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.113' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (179, 4, CAST(N'2015-12-28 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.113' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (180, 4, CAST(N'2015-12-29 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.113' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (181, 4, CAST(N'2015-12-30 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.117' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (182, 4, CAST(N'2015-12-31 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.117' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (183, 2, CAST(N'2015-12-01 00:00:00.000' AS DateTime), 25, CAST(N'2015-12-10 13:57:56.117' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (184, 2, CAST(N'2015-12-02 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.117' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (185, 2, CAST(N'2015-12-03 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.117' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (186, 2, CAST(N'2015-12-04 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.120' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (187, 2, CAST(N'2015-12-05 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.120' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (188, 2, CAST(N'2015-12-06 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.120' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (189, 2, CAST(N'2015-12-07 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.120' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (190, 2, CAST(N'2015-12-08 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.120' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (191, 2, CAST(N'2015-12-09 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.120' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (192, 2, CAST(N'2015-12-10 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.120' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (193, 2, CAST(N'2015-12-11 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.123' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (194, 2, CAST(N'2015-12-12 00:00:00.000' AS DateTime), 8, CAST(N'2015-12-10 13:57:56.123' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (195, 2, CAST(N'2015-12-13 00:00:00.000' AS DateTime), 8, CAST(N'2015-12-10 13:57:56.123' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (196, 2, CAST(N'2015-12-14 00:00:00.000' AS DateTime), 7, CAST(N'2015-12-10 13:57:56.123' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (197, 2, CAST(N'2015-12-15 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.123' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (198, 2, CAST(N'2015-12-16 00:00:00.000' AS DateTime), 30, CAST(N'2015-12-16 15:05:21.627' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (199, 2, CAST(N'2015-12-17 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.127' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (200, 2, CAST(N'2015-12-18 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.127' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (201, 2, CAST(N'2015-12-19 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.127' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (202, 2, CAST(N'2015-12-20 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.127' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (203, 2, CAST(N'2015-12-21 00:00:00.000' AS DateTime), 1, CAST(N'2015-12-10 13:57:56.127' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (204, 2, CAST(N'2015-12-22 00:00:00.000' AS DateTime), 2, CAST(N'2015-12-10 13:57:56.130' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (205, 2, CAST(N'2015-12-23 00:00:00.000' AS DateTime), 8, CAST(N'2015-12-10 13:57:56.130' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (206, 2, CAST(N'2015-12-24 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.130' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (207, 2, CAST(N'2015-12-25 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.130' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (208, 2, CAST(N'2015-12-26 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.130' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (209, 2, CAST(N'2015-12-27 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.133' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (210, 2, CAST(N'2015-12-28 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.133' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (211, 2, CAST(N'2015-12-29 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.133' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (212, 2, CAST(N'2015-12-30 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.137' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (213, 2, CAST(N'2015-12-31 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.137' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (214, 5, CAST(N'2015-12-01 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.137' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (215, 5, CAST(N'2015-12-02 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.137' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (216, 5, CAST(N'2015-12-03 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.140' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (217, 5, CAST(N'2015-12-04 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.140' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (218, 5, CAST(N'2015-12-05 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.140' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (219, 5, CAST(N'2015-12-06 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.140' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (220, 5, CAST(N'2015-12-07 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.157' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (221, 5, CAST(N'2015-12-08 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.160' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (222, 5, CAST(N'2015-12-09 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.160' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (223, 5, CAST(N'2015-12-10 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.160' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (224, 5, CAST(N'2015-12-11 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.160' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (225, 5, CAST(N'2015-12-12 00:00:00.000' AS DateTime), 7, CAST(N'2015-12-10 13:57:56.160' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (226, 5, CAST(N'2015-12-13 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.160' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (227, 5, CAST(N'2015-12-14 00:00:00.000' AS DateTime), 4, CAST(N'2015-12-10 13:57:56.163' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (228, 5, CAST(N'2015-12-15 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.163' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (229, 5, CAST(N'2015-12-16 00:00:00.000' AS DateTime), 50, CAST(N'2015-12-16 15:05:23.443' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (230, 5, CAST(N'2015-12-17 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.163' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (231, 5, CAST(N'2015-12-18 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.167' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (232, 5, CAST(N'2015-12-19 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.167' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (233, 5, CAST(N'2015-12-20 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.167' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (234, 5, CAST(N'2015-12-21 00:00:00.000' AS DateTime), 1, CAST(N'2015-12-10 13:57:56.167' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (235, 5, CAST(N'2015-12-22 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.170' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (236, 5, CAST(N'2015-12-23 00:00:00.000' AS DateTime), 8, CAST(N'2015-12-10 13:57:56.170' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (237, 5, CAST(N'2015-12-24 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.170' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (238, 5, CAST(N'2015-12-25 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.173' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (239, 5, CAST(N'2015-12-26 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.173' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (240, 5, CAST(N'2015-12-27 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.173' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (241, 5, CAST(N'2015-12-28 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.173' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (242, 5, CAST(N'2015-12-29 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.173' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (243, 5, CAST(N'2015-12-30 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.173' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (244, 5, CAST(N'2015-12-31 00:00:00.000' AS DateTime), 0, CAST(N'2015-12-10 13:57:56.177' AS DateTime), 0)
GO
INSERT [dbo].[tblKeHoachSX] ([ID], [SanPhamID], [Ngay], [SoLuong], [LastUpdate], [LastUpdateBy]) VALUES (245, 2, CAST(N'2016-10-18 00:00:00.000' AS DateTime), 10, CAST(N'2016-10-18 14:28:40.693' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[tblKeHoachSX] OFF
GO
SET IDENTITY_INSERT [dbo].[tblKetQuaSX] ON 

GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (1, 3, CAST(N'2016-10-18 14:21:20.077' AS DateTime), N'1', CAST(N'2016-10-18 14:21:20.077' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (2, 3, CAST(N'2016-10-18 14:21:49.437' AS DateTime), N'2', CAST(N'2016-10-18 14:21:49.470' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (3, 3, CAST(N'2016-10-18 14:21:51.507' AS DateTime), N'3', CAST(N'2016-10-18 14:21:51.520' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (4, 3, CAST(N'2016-10-18 14:22:18.533' AS DateTime), N'4', CAST(N'2016-10-18 14:22:18.533' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (5, 3, CAST(N'2016-10-18 14:21:54.880' AS DateTime), N'5', CAST(N'2016-10-18 14:21:54.893' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (6, 3, CAST(N'2016-10-18 14:22:12.950' AS DateTime), N'6', CAST(N'2016-10-18 14:22:12.950' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (7, 3, CAST(N'2016-10-18 14:22:18.590' AS DateTime), N'49', CAST(N'2016-10-18 14:22:18.607' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (8, 3, CAST(N'2016-10-18 14:23:10.993' AS DateTime), N'7', CAST(N'2016-10-18 14:23:11.010' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (9, 3, CAST(N'2016-10-18 14:24:44.803' AS DateTime), N'8', CAST(N'2016-10-18 14:24:44.803' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (10, 3, CAST(N'2016-10-18 14:24:30.200' AS DateTime), N'9', CAST(N'2016-10-18 14:24:30.200' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (11, 3, CAST(N'2016-10-18 14:30:41.057' AS DateTime), N'10', CAST(N'2016-10-18 14:30:41.077' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (12, 3, CAST(N'2016-10-18 14:30:42.647' AS DateTime), N'11', CAST(N'2016-10-18 14:30:42.663' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (13, 3, CAST(N'2016-10-18 14:30:55.507' AS DateTime), N'12', CAST(N'2016-10-18 14:30:55.507' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (14, 3, CAST(N'2016-10-18 14:30:45.297' AS DateTime), N'13', CAST(N'2016-10-18 14:30:45.310' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (15, 3, CAST(N'2016-10-18 14:30:46.497' AS DateTime), N'14', CAST(N'2016-10-18 14:30:46.513' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (16, 3, CAST(N'2016-10-18 14:30:47.720' AS DateTime), N'15', CAST(N'2016-10-18 14:30:47.760' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (17, 3, CAST(N'2016-10-18 14:30:49.057' AS DateTime), N'16', CAST(N'2016-10-18 14:30:49.070' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (18, 2, CAST(N'2016-10-18 14:31:12.823' AS DateTime), N'20', CAST(N'2016-10-18 14:31:12.850' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (19, 2, CAST(N'2016-10-18 14:31:14.223' AS DateTime), N'21', CAST(N'2016-10-18 14:31:14.240' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (20, 2, CAST(N'2016-10-18 14:31:15.410' AS DateTime), N'22', CAST(N'2016-10-18 14:31:15.437' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (21, 2, CAST(N'2016-10-18 14:31:16.467' AS DateTime), N'23', CAST(N'2016-10-18 14:31:16.480' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (22, 2, CAST(N'2016-10-18 14:31:17.920' AS DateTime), N'24', CAST(N'2016-10-18 14:31:17.943' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (23, 2, CAST(N'2016-10-18 14:31:19.113' AS DateTime), N'25', CAST(N'2016-10-18 14:31:19.160' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (24, 2, CAST(N'2016-10-18 14:31:20.407' AS DateTime), N'26', CAST(N'2016-10-18 14:31:20.440' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (25, 2, CAST(N'2016-10-18 14:31:22.297' AS DateTime), N'27', CAST(N'2016-10-18 14:31:22.317' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (26, 2, CAST(N'2016-10-18 14:31:23.650' AS DateTime), N'28', CAST(N'2016-10-18 14:31:23.663' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (27, 2, CAST(N'2016-10-18 14:31:25.903' AS DateTime), N'29', CAST(N'2016-10-18 14:31:25.920' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (28, 5, CAST(N'2016-10-18 15:16:56.490' AS DateTime), N'30', CAST(N'2016-10-18 15:16:56.517' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (29, 5, CAST(N'2016-10-18 15:16:58.597' AS DateTime), N'31', CAST(N'2016-10-18 15:16:58.610' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (30, 5, CAST(N'2016-10-18 15:16:59.630' AS DateTime), N'32', CAST(N'2016-10-18 15:16:59.647' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (31, 5, CAST(N'2016-10-18 15:17:00.600' AS DateTime), N'33', CAST(N'2016-10-18 15:17:00.613' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (32, 5, CAST(N'2016-10-18 15:17:03.033' AS DateTime), N'34', CAST(N'2016-10-18 15:17:03.050' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (33, 5, CAST(N'2016-10-18 15:17:06.230' AS DateTime), N'35', CAST(N'2016-10-18 15:17:06.247' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (34, 5, CAST(N'2016-10-18 15:17:07.090' AS DateTime), N'36', CAST(N'2016-10-18 15:17:07.103' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (35, 5, CAST(N'2016-10-18 15:17:08.897' AS DateTime), N'37', CAST(N'2016-10-18 15:17:08.910' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (36, 5, CAST(N'2016-10-18 15:17:10.577' AS DateTime), N'38', CAST(N'2016-10-18 15:17:10.593' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (37, 5, CAST(N'2016-10-18 15:17:12.580' AS DateTime), N'39', CAST(N'2016-10-18 15:17:12.593' AS DateTime), 1)
GO
INSERT [dbo].[tblKetQuaSX] ([ID], [SanPhamID], [NgaySX], [MaBarcode], [ThoiGian], [SoLuong]) VALUES (38, 5, CAST(N'2016-10-18 15:17:14.863' AS DateTime), N'40', CAST(N'2016-10-18 15:17:14.887' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[tblKetQuaSX] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLoaiSP] ON 

GO
INSERT [dbo].[tblLoaiSP] ([ID], [MaLoaiSP], [TenLoaiSP], [DonViID]) VALUES (1, N'K3000', N'K3000', 5)
GO
INSERT [dbo].[tblLoaiSP] ([ID], [MaLoaiSP], [TenLoaiSP], [DonViID]) VALUES (2, N'K2700', N'K2700', 5)
GO
INSERT [dbo].[tblLoaiSP] ([ID], [MaLoaiSP], [TenLoaiSP], [DonViID]) VALUES (6, N'HD65', N'HD65', 5)
GO
INSERT [dbo].[tblLoaiSP] ([ID], [MaLoaiSP], [TenLoaiSP], [DonViID]) VALUES (7, N'HD72', N'HD72', 5)
GO
SET IDENTITY_INSERT [dbo].[tblLoaiSP] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSanPham] ON 

GO
INSERT [dbo].[tblSanPham] ([ID], [MaSanPham], [TenSanPham], [LoaiSPID], [KyHieuNhan], [QuyCach]) VALUES (2, N'55100-5K001', N'HD65 RR', 6, N'551005K001', N'')
GO
INSERT [dbo].[tblSanPham] ([ID], [MaSanPham], [TenSanPham], [LoaiSPID], [KyHieuNhan], [QuyCach]) VALUES (3, N'54100-5K001', N'HD65 FRT LH', 6, N'541005K001', N'')
GO
INSERT [dbo].[tblSanPham] ([ID], [MaSanPham], [TenSanPham], [LoaiSPID], [KyHieuNhan], [QuyCach]) VALUES (4, N'54110-5K001', N'HD65 FRT RH', 6, N'541105K001', N'')
GO
INSERT [dbo].[tblSanPham] ([ID], [MaSanPham], [TenSanPham], [LoaiSPID], [KyHieuNhan], [QuyCach]) VALUES (5, N'55100-5K501', N'HD72 RR', 7, N'551005K501', N'')
GO
INSERT [dbo].[tblSanPham] ([ID], [MaSanPham], [TenSanPham], [LoaiSPID], [KyHieuNhan], [QuyCach]) VALUES (7, N'54100-5K501', N'HD72 FRT LH', 7, N'541005K501', N'')
GO
INSERT [dbo].[tblSanPham] ([ID], [MaSanPham], [TenSanPham], [LoaiSPID], [KyHieuNhan], [QuyCach]) VALUES (9, N'54110-5K501', N'HD72 FRT RH', 7, N'541105K501', N'')
GO
INSERT [dbo].[tblSanPham] ([ID], [MaSanPham], [TenSanPham], [LoaiSPID], [KyHieuNhan], [QuyCach]) VALUES (10, N'0K63B-28010', N'K2700 RR', 2, N'0K63B28010', N'')
GO
INSERT [dbo].[tblSanPham] ([ID], [MaSanPham], [TenSanPham], [LoaiSPID], [KyHieuNhan], [QuyCach]) VALUES (11, N'0K42B-28010', N'K3000 RR', 1, N'0K42B28010', N'')
GO
INSERT [dbo].[tblSanPham] ([ID], [MaSanPham], [TenSanPham], [LoaiSPID], [KyHieuNhan], [QuyCach]) VALUES (12, N'0K42B-34010', N'K3000 FRT', 1, N'0K42B34010', N'')
GO
SET IDENTITY_INSERT [dbo].[tblSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[tblThamSo] ON 

GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (1, N'N2015     ', N'A         ')
GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (2, N'N2016     ', N'B         ')
GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (3, N'T01       ', N'A         ')
GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (4, N'T02       ', N'B         ')
GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (5, N'T03       ', N'C         ')
GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (6, N'T04       ', N'D         ')
GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (7, N'T05       ', N'E         ')
GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (8, N'T06       ', N'F         ')
GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (9, N'T07       ', N'G         ')
GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (10, N'T08       ', N'H         ')
GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (11, N'T09       ', N'I         ')
GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (12, N'T10       ', N'J         ')
GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (13, N'T11       ', N'K         ')
GO
INSERT [dbo].[tblThamSo] ([ID], [Kyhieu], [GiaTri]) VALUES (14, N'T12       ', N'L         ')
GO
SET IDENTITY_INSERT [dbo].[tblThamSo] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUsers] ON 

GO
INSERT [dbo].[tblUsers] ([ID], [UserName], [Password], [DislayName]) VALUES (1, N'admin', N'admin', N'ABC')
GO
SET IDENTITY_INSERT [dbo].[tblUsers] OFF
GO
ALTER TABLE [dbo].[tblBaoCaoSX]  WITH CHECK ADD  CONSTRAINT [FK_tblBaoCaoSX_tblSanPham] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[tblSanPham] ([ID])
GO
ALTER TABLE [dbo].[tblBaoCaoSX] CHECK CONSTRAINT [FK_tblBaoCaoSX_tblSanPham]
GO
ALTER TABLE [dbo].[tblChuyen]  WITH CHECK ADD  CONSTRAINT [FK_tblChuyen_tblDonVi] FOREIGN KEY([DonViID])
REFERENCES [dbo].[tblDonVi] ([ID])
GO
ALTER TABLE [dbo].[tblChuyen] CHECK CONSTRAINT [FK_tblChuyen_tblDonVi]
GO
ALTER TABLE [dbo].[tblKeHoachSX]  WITH CHECK ADD  CONSTRAINT [FK_tblKeHoachSX_tblSanPham] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[tblSanPham] ([ID])
GO
ALTER TABLE [dbo].[tblKeHoachSX] CHECK CONSTRAINT [FK_tblKeHoachSX_tblSanPham]
GO
ALTER TABLE [dbo].[tblKetQuaSX]  WITH CHECK ADD  CONSTRAINT [FK_tblKetQuaSX_tblSanPham] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[tblSanPham] ([ID])
GO
ALTER TABLE [dbo].[tblKetQuaSX] CHECK CONSTRAINT [FK_tblKetQuaSX_tblSanPham]
GO
ALTER TABLE [dbo].[tblLoaiSP]  WITH CHECK ADD  CONSTRAINT [FK_tblLoaiSP_tblDonVi] FOREIGN KEY([DonViID])
REFERENCES [dbo].[tblDonVi] ([ID])
GO
ALTER TABLE [dbo].[tblLoaiSP] CHECK CONSTRAINT [FK_tblLoaiSP_tblDonVi]
GO
ALTER TABLE [dbo].[tblSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tblSanPham_tblLoaiSP] FOREIGN KEY([LoaiSPID])
REFERENCES [dbo].[tblLoaiSP] ([ID])
GO
ALTER TABLE [dbo].[tblSanPham] CHECK CONSTRAINT [FK_tblSanPham_tblLoaiSP]
GO
ALTER TABLE [dbo].[tblTaoMa]  WITH CHECK ADD  CONSTRAINT [FK_tblTaoMa_tblSanPham] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[tblSanPham] ([ID])
GO
ALTER TABLE [dbo].[tblTaoMa] CHECK CONSTRAINT [FK_tblTaoMa_tblSanPham]
GO
/****** Object:  StoredProcedure [dbo].[CheckLogin]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CheckLogin] 
	-- Add the parameters for the stored procedure here
	@sUserName nvarchar(100)='',
	@sPassword nvarchar(max)=''
AS
BEGIN
	select * from tblUsers where UserName=@sUserName and Password=@sPassword
END

GO
/****** Object:  StoredProcedure [dbo].[ChiTietSanXuat_Ngay]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ChiTietSanXuat_Ngay]
	-- Add the parameters for the stored procedure here
	@sNgay Datetime,
	@sType int=0,
	@sSanPhamID int=0
AS
BEGIN
	if(@sType=0)
	begin
		select * from tblKetQuaSX k 
		left join tblSanPham s on k.SanPhamID=s.ID
		where  MONTH(NgaySX)=MONTH(@sNgay) AND  YEAR(NgaySX)=YEAR(@sNgay) and s.ID=@sSanPhamID
	end
	if(@sType=1)
	begin
		select * from tblKetQuaSX k 
		left join tblSanPham s on k.SanPhamID=s.ID
		where DAY(NgaySX)=DAY(@sNgay) AND MONTH(NgaySX)=MONTH(@sNgay) AND  YEAR(NgaySX)=YEAR(@sNgay) and s.ID=@sSanPhamID
	end
END

GO
/****** Object:  StoredProcedure [dbo].[Chuyen_Load]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Chuyen_Load]
AS
BEGIN
	select * from [tblChuyen] c
	left join tblDonVi D on c.DonViID=D.ID
END

GO
/****** Object:  StoredProcedure [dbo].[Chuyen_Luu]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Chuyen_Luu]
	-- Add the parameters for the stored procedure here
	@sID int=0
	,@sMaChuyen nvarchar(100)=''
           ,@sTenChuyen nvarchar(200)=''
           ,@sDonViID int
           ,@sTenTiengAnh nvarchar(200)=''
           ,@sThuTu int=0
AS
BEGIN

if not exists (select * from tblChuyen where ID =@sID)
begin
	INSERT INTO [dbo].[tblChuyen]
           ([MaChuyen]
           ,[TenChuyen]
           ,[DonViID]
           ,[TenTiengAnh]
           ,[ThuTu])
     VALUES
           (@sMaChuyen,
		   @sTenChuyen,
		   @sDonViID,
		   @sTenTiengAnh,
		   @sThuTu)
		end
		else
		begin
			UPDATE tblChuyen set MaChuyen=@sMaChuyen,TenChuyen=@sTenChuyen,TenTiengAnh=@sTenTiengAnh,DonViID=@sDonViID,ThuTu=@sThuTu where ID=@sID

		end
END

GO
/****** Object:  StoredProcedure [dbo].[DonVi_Load]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[DonVi_Load]

AS
BEGIN
	SELECT * FROM [tblDonVi]
			   
END

GO
/****** Object:  StoredProcedure [dbo].[DonVi_Luu]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DonVi_Luu]
	@sID int =0
	,@sMaDV nvarchar(100)=''
           ,@sDonVi nvarchar(200)=''
           ,@sDiaChi nvarchar(200)=''
AS
BEGIN
	if(@sID>0)
	begin
		update [tblDonVi] set [MaDV]=@sMaDV
           ,[DonVi]=@sDonVi
           ,[DiaChi]=@sDiaChi
		   where ID=@sID
	end
	else
	begin
		INSERT INTO [tblDonVi]
			   ([MaDV]
			   ,[DonVi]
			   ,[DiaChi])
		 VALUES
			   (@sMaDV
			   ,@sDonVi
			   ,@sDiaChi)
		   end
END

GO
/****** Object:  StoredProcedure [dbo].[KeHoach_InsertNgay]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KeHoach_InsertNgay]
	-- Add the parameters for the stored procedure here
	@sNgay datetime,
	@sSanPhamID int,
	@sSoLuong int
AS
BEGIN
	if not exists (select * from tblKeHoachSX where Ngay=@sNgay and SanPhamID=@sSanPhamID)
		begin
			Insert tblKeHoachSX(SanPhamID,Ngay,SoLuong,LastUpdate,LastUpdateBy)
			values (@sSanPhamID,@sNgay,@sSoLuong,GETDATE(),0)
		end
	else
		begin
			update tblKeHoachSX set SoLuong=@sSoLuong,LastUpdate=GETDATE() where Ngay=@sNgay and SanPhamID=@sSanPhamID
		end
END

GO
/****** Object:  StoredProcedure [dbo].[KeHoach_Load]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KeHoach_Load]
	-- Add the parameters for the stored procedure here
	@sNgay datetime,
	@sSanPhamID int
AS
BEGIN
	select * from tblKeHoachSX where Ngay=@sNgay and SanPhamID=@sSanPhamID
END

GO
/****** Object:  StoredProcedure [dbo].[KetQua_Ngay]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KetQua_Ngay]
	@sNgay datetime
AS
BEGIN
	select *
	 
	from(
			select c.ID,c.ID SanPhamID, MaSanPham,TenSanPham,
			c.LoaiSPID,D.MaLoaiSP,D.TenLoaiSP,
			case when KH.KeHoach >0 then kh.KeHoach else 0 end KeHoachNgay, 
			case when TH.KetQua >0 then TH.KetQua else 0 end ThucHienNgay ,
			(case when TH.KetQua >0 then TH.KetQua else 0 end) - (case when KH.KeHoach >0 then kh.KeHoach else 0 end) ChenhLech
			,KeHoachThang, KetQuaThang
			
			from  [tblSanPham] c
			left join [tblLoaiSP] D on c.LoaiSPID=D.ID
			left join 
					(select SanPhamID,SoLuong KeHoach 
					from tblKeHoachSX 
					where day(Ngay)=day(@sNgay) and month(Ngay)=month(@sNgay) and year(Ngay)=year(@sNgay)
					) KH on C.ID=KH.SanPhamID
			left join 
					(select SanPhamID, Sum(SoLuong) KetQua 
					from tblKetQuaSX 
					where day(NgaySX)=day(@sNgay) and month(NgaySX)=month(@sNgay) and year(NgaySX)=year(@sNgay)
					group by SanPhamID
					) TH on c.ID=TH.SanPhamID
			left join 
					(select SanPhamID,sum(SoLuong) KeHoachThang 
					from tblKeHoachSX 
					where  month(Ngay)=month(@sNgay) and year(Ngay)=year(@sNgay)
					group by SanPhamID
					) KHT on C.ID=KHT.SanPhamID

			left join 
					(select SanPhamID, Sum(SoLuong) KetQuaThang 
					from tblKetQuaSX 
					where  month(NgaySX)=month(@sNgay) and year(NgaySX)=year(@sNgay)
					group by SanPhamID
					) THT on c.ID=THT.SanPhamID
	)B 
	where B.KeHoachNgay>0 or B.ThucHienNgay>0 or B.KeHoachThang>0 or B.KetQuaThang>0
END

GO
/****** Object:  StoredProcedure [dbo].[KetQuaNgay_Get]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KetQuaNgay_Get]
	@sNgay datetime
AS
BEGIN
	select *
	 
	from(
			select c.ID,c.ID SanPhamID, MaSanPham,TenSanPham,
			c.LoaiSPID,D.MaLoaiSP,D.TenLoaiSP,
			case when KH.KeHoach >0 then kh.KeHoach else 0 end KeHoachNgay, 
			case when TH.KetQua >0 then TH.KetQua else 0 end ThucHienNgay ,
			(case when TH.KetQua >0 then TH.KetQua else 0 end) - (case when KH.KeHoach >0 then kh.KeHoach else 0 end) ChenhLech
			
			
			from  [tblSanPham] c
			left join [tblLoaiSP] D on c.LoaiSPID=D.ID
			left join 
					(select SanPhamID,SoLuong KeHoach 
					from tblKeHoachSX 
					where day(Ngay)=day(@sNgay) and month(Ngay)=month(@sNgay) and year(Ngay)=year(@sNgay)
					) KH on C.ID=KH.SanPhamID
			left join 
					(select SanPhamID, Sum(SoLuong) KetQua 
					from tblKetQuaSX 
					where day(NgaySX)=day(@sNgay) and month(NgaySX)=month(@sNgay) and year(NgaySX)=year(@sNgay)
					group by SanPhamID
					) TH on c.ID=TH.SanPhamID
			
	)B 
	where B.KeHoachNgay>0 or B.ThucHienNgay>0 
END

GO
/****** Object:  StoredProcedure [dbo].[KetQuaSanXuat_Insert]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KetQuaSanXuat_Insert]
	-- Add the parameters for the stored procedure here
	@sMaBarcode nvarchar(20)=''
	,@sSanPhamID int
	,@sSoLuong int=0
	,@sNgaySX Datetime
AS
BEGIN
	Insert into tblKetQuaSX (SanPhamID,NgaySX,MaBarcode,SoLuong,ThoiGian)
	values (@sSanPhamID,@sNgaySX,@sMaBarcode,@sSoLuong,GETDATE())
END

GO
/****** Object:  StoredProcedure [dbo].[KetQuaSanXuat_Ngay]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KetQuaSanXuat_Ngay]
	-- Add the parameters for the stored procedure here
	@sNgay Datetime
AS
BEGIN
	select * from tblKetQuaSX k 
	left join tblSanPham s on k.SanPhamID=s.ID
	left join tblLoaiSP l on s.LoaiSPID=l.ID
	where DAY(NgaySX)=DAY(@sNgay) AND  MONTH(NgaySX)=MONTH(@sNgay) AND  YEAR(NgaySX)=YEAR(@sNgay)
	order by NgaySX DESC
END

GO
/****** Object:  StoredProcedure [dbo].[KetQuaSanXuat_Update]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KetQuaSanXuat_Update]
	-- Add the parameters for the stored procedure here
	@sMaBarcode nvarchar(20)=''
	,@sSanPhamID int
	,@sSoLuong int=0
	,@sNgaySX Datetime
AS
BEGIN
	declare @sID int=0
	select @sID=k.ID from tblKetQuaSX k 
	left join tblSanPham s on k.SanPhamID=s.ID
	left join tblLoaiSP l on s.LoaiSPID=l.ID
	where MaBarcode=@sMaBarcode

	update tblKetQuaSX set SanPhamID=@sSanPhamID,NgaySX=GETDATE(),ThoiGian=GETDATE(),SoLuong=@sSoLuong
	where ID=@sID
END

GO
/****** Object:  StoredProcedure [dbo].[KiemTraTonTaiBarCode]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[KiemTraTonTaiBarCode]
	-- Add the parameters for the stored procedure here
	@sBarcode nvarchar(100)=''
AS
BEGIN
	select * from tblKetQuaSX k 
	left join tblSanPham s on k.SanPhamID=s.ID
	left join tblLoaiSP l on s.LoaiSPID=l.ID
	where MaBarcode=@sBarcode
	order by NgaySX DESC
END

GO
/****** Object:  StoredProcedure [dbo].[LoaiSP_Load]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[LoaiSP_Load]
AS
BEGIN
	select * from [tblLoaiSP] c
	left join tblDonVi D on c.DonViID=D.ID
END

GO
/****** Object:  StoredProcedure [dbo].[LoaiSp_Luu]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LoaiSp_Luu]
	-- Add the parameters for the stored procedure here
	@sID int=0
	,@sMaLoaiSP nvarchar(100)=''
           ,@sTenLoaiSP nvarchar(200)=''
           ,@sDonViID int

AS
BEGIN

if not exists (select * from tblLoaiSP where ID =@sID)
begin
	INSERT INTO [dbo].[tblLoaiSP]
           ([MaLoaiSP]
           ,[TenLoaiSP]
           ,[DonViID]
           )
     VALUES
           (@sMaLoaiSP,
		   @sTenLoaiSP,
		   @sDonViID
		   )
		end
		else
		begin
			UPDATE tblLoaiSP set MaLoaiSP=@sMaLoaiSP
			,TenLoaiSP=@sTenLoaiSP
			,DonViID=@sDonViID
			where ID=@sID

		end
END

GO
/****** Object:  StoredProcedure [dbo].[SanPham_Load]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[SanPham_Load]
AS
BEGIN
	select * from  [tblSanPham] c
	left join [tblLoaiSP] D on c.LoaiSPID=D.ID
END

GO
/****** Object:  StoredProcedure [dbo].[SanPham_LoadByID]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SanPham_LoadByID]
	@sID int=0
AS
BEGIN
	select * from  [tblSanPham] c
	left join [tblLoaiSP] D on c.LoaiSPID=D.ID
	where c.ID=@sID
END

GO
/****** Object:  StoredProcedure [dbo].[SanPham_LoadMaSP]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SanPham_LoadMaSP]
@sMabarcode nvarchar(100)=''
AS
BEGIN
	select * from  [tblSanPham] c
	left join [tblLoaiSP] D on c.LoaiSPID=D.ID
	where c.KyHieuNhan=@sMabarcode
END

GO
/****** Object:  StoredProcedure [dbo].[SanPham_LoadMaSP_getAll]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SanPham_LoadMaSP_getAll]

AS
BEGIN
	select * from  [tblSanPham] c
	left join [tblLoaiSP] D on c.LoaiSPID=D.ID
	
END

GO
/****** Object:  StoredProcedure [dbo].[SanPham_Luu]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SanPham_Luu]
	-- Add the parameters for the stored procedure here
	@sID int=0
	,@sMaSanPham nvarchar(100)=''
           ,@sTenSanPham nvarchar(200)=''
           ,@sLoaiSPID int
		   ,@sKyHieuNhan nchar(10)=''
           ,@sQuyCach nvarchar(200)=''

AS
BEGIN

if not exists (select * from [tblSanPham] where ID =@sID)
begin
	INSERT INTO [dbo].[tblSanPham]
           ([MaSanPham]
           ,[TenSanPham]
           ,[LoaiSPID]
           ,[KyHieuNhan]
           ,[QuyCach])
     VALUES
           (@sMaSanPham
           ,@sTenSanPham
           ,@sLoaiSPID
		   ,@sKyHieuNhan
           ,@sQuyCach)
		end
		else
		begin
			UPDATE [tblSanPham] set MaSanPham=@sMaSanPham
			,TenSanPham=@sTenSanPham
			,LoaiSPID=@sLoaiSPID
			,KyHieuNhan=@sKyHieuNhan
			,QuyCach=@sQuyCach
			where ID=@sID

		end
END

GO
/****** Object:  StoredProcedure [dbo].[ThamSo_Load]    Script Date: 18/10/2016 3:18:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ThamSo_Load]
	-- Add the parameters for the stored procedure here
	@sKyHieu nchar(10)=''
AS
BEGIN
	select * from tblThamSo where KyHieu=@sKyHieu
END

GO
USE [master]
GO
ALTER DATABASE [QTSXNHIP] SET  READ_WRITE 
GO
