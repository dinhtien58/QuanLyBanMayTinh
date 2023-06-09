USE [master]
GO
/****** Object:  Database [QuanLyBanHang2]    Script Date: 09/04/2023 10:59:09 CH ******/
CREATE DATABASE [QuanLyBanHang2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanHang2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\QuanLyBanHang2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyBanHang2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\QuanLyBanHang2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyBanHang2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanHang2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanHang2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanHang2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanHang2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanHang2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyBanHang2] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanHang2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanHang2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanHang2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanHang2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanHang2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanHang2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyBanHang2', N'ON'
GO
ALTER DATABASE [QuanLyBanHang2] SET QUERY_STORE = OFF
GO
USE [QuanLyBanHang2]
GO
/****** Object:  Table [dbo].[Anh]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anh](
	[maAnh] [nvarchar](10) NOT NULL,
	[tenAnh] [nvarchar](10) NULL,
	[maHang] [nvarchar](10) NULL,
 CONSTRAINT [pk_anh] PRIMARY KEY CLUSTERED 
(
	[maAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoHanh]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHanh](
	[MaBH] [nvarchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[NgayTra] [date] NULL,
	[MaKH] [nvarchar](10) NOT NULL,
	[TongTien] [int] NULL,
	[GhiChu] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietGH]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGH](
	[maGH] [nvarchar](10) NOT NULL,
	[maHang] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [pk_ctgh] PRIMARY KEY CLUSTERED 
(
	[maGH] ASC,
	[maHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDB]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDB](
	[MaHDB] [nvarchar](10) NOT NULL,
	[MaHang] [nvarchar](10) NOT NULL,
	[DonGia] [int] NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDN]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDN](
	[MaHDN] [nvarchar](10) NOT NULL,
	[MaHang] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[ThanhTien] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPNK]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPNK](
	[MaHang] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonViTinh] [nvarchar](255) NULL,
	[DonGia] [int] NULL,
	[MaPNK] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPXK]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPXK](
	[MaPXK] [nvarchar](10) NOT NULL,
	[MaHang] [nvarchar](10) NOT NULL,
	[DonViTinh] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [nvarchar](10) NOT NULL,
	[TenChucVu] [nvarchar](255) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [nvarchar](10) NOT NULL,
	[TenDanhMuc] [nvarchar](10) NULL,
 CONSTRAINT [pk_danhmuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[maGH] [nvarchar](10) NOT NULL,
	[TongTien] [int] NULL,
	[TenTaiKhoan] [nvarchar](10) NULL,
 CONSTRAINT [pk_giohang] PRIMARY KEY CLUSTERED 
(
	[maGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[MaHang] [nvarchar](10) NOT NULL,
	[TenHang] [nvarchar](255) NOT NULL,
	[DonGiaNhap] [int] NULL,
	[DonGiaBan] [int] NULL,
	[Ram] [nvarchar](255) NULL,
	[OCung] [nvarchar](255) NULL,
	[CardDoHoa] [nvarchar](255) NULL,
	[CPU] [nvarchar](255) NULL,
	[ManHinh] [nvarchar](255) NULL,
	[SLTon] [int] NULL,
	[ThoiGianBaoHanh] [int] NULL,
	[soLanMua] [int] NULL,
	[MoTa] [text] NULL,
	[MaDanhMuc] [nvarchar](10) NULL,
	[anhDaiDien] [nvarchar](10) NULL,
 CONSTRAINT [PK_tHang] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDBan]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDBan](
	[MaHDB] [nvarchar](10) NOT NULL,
	[NgayLap] [date] NOT NULL,
	[TongTien] [int] NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[MaKH] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_HDBan] PRIMARY KEY CLUSTERED 
(
	[MaHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDNhap]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDNhap](
	[MaHDN] [nvarchar](10) NOT NULL,
	[NgayNhap] [date] NULL,
	[TongTien] [int] NULL,
	[MaNCC] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_HDNhap] PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](255) NOT NULL,
	[SDT] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[TenTaiKhoan] [nvarchar](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [nvarchar](255) NULL,
 CONSTRAINT [PK_tNCC] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](255) NOT NULL,
	[SDT] [nvarchar](255) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL,
	[NgayBD] [date] NULL,
	[DiaChi] [nvarchar](255) NULL,
	[MaChucVu] [nvarchar](10) NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapKho]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapKho](
	[MaPNK] [nvarchar](10) NOT NULL,
	[NgayNhap] [date] NULL,
	[MaNV] [nvarchar](10) NULL,
 CONSTRAINT [PK_PhieuNhapKho_1] PRIMARY KEY CLUSTERED 
(
	[MaPNK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuatKho]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuatKho](
	[MaPXK] [nvarchar](10) NOT NULL,
	[NgayXuat] [date] NULL,
	[MaNV] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_PhieuXuatKho] PRIMARY KEY CLUSTERED 
(
	[MaPXK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTK] [nvarchar](20) NOT NULL,
	[MatKhau] [nvarchar](20) NOT NULL,
	[MaBaoMat] [nvarchar](20) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanUser]    Script Date: 09/04/2023 10:59:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanUser](
	[TenTaiKhoan] [nvarchar](10) NOT NULL,
	[MatKhau] [nvarchar](10) NULL,
 CONSTRAINT [pk_TaiKhoanUser] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A01', N'h01a.jpg', N'H01')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A02', N'h01b.jpg', N'H01')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A03', N'h01c.jpg', N'H01')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A04', N'h01d.jpg', N'H01')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A06', N'h02a.jpg', N'H02')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A07', N'h02b.jpg', N'H02')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A08', N'h02c.jpg', N'H02')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A09', N'h02d.jpg', N'H02')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A10', N'h03d.jpg', N'H03')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A11', N'h03d.jpg', N'H03')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A12', N'h03d.jpg', N'H03')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A13', N'h03d.jpg', N'H03')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A14', N'h04a.jpg', N'H04')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A15', N'h04b.jpg', N'H04')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A16', N'h04c.jpg', N'H04')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A17', N'h04d.jpg', N'H04')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A18', N'h05a.jpg', N'H05')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A19', N'h05b.jpg', N'H05')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A20', N'h05c.jpg', N'H05')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A21', N'h05d.jpg', N'H05')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A22', N'h06a.jpg', N'H06')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A23', N'h06b.jpg', N'H06')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A24', N'h06c.jpg', N'H06')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A25', N'h07a.jpg', N'H07')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A26', N'h07b.jpg', N'H07')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A27', N'h07c.jpg', N'H07')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A28', N'h07d.jpg', N'H07')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A29', N'h08a.jpg', N'H08')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A30', N'h08b.jpg', N'H08')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A31', N'h08c.jpg', N'H08')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A32', N'h08d.jpg', N'H08')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A33', N'h09a.jpg', N'H09')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A34', N'h09b.jpg', N'H09')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A35', N'h09c.jpg', N'H09')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A36', N'h09d.jpg', N'H09')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A37', N'h10a.jpg', N'H10')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A38', N'h10b.jpg', N'H10')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A39', N'h10c.jpg', N'H10')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A40', N'h10d.jpg', N'H10')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A41', N'h11a.jpg', N'H11')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A42', N'h11b.jpg', N'H11')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A43', N'h11c.jpg', N'H11')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A44', N'h11d.jpg', N'H11')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A45', N'h12a.jpg', N'H12')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A46', N'h12b.jpg', N'H12')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A47', N'h12c.jpg', N'H12')
INSERT [dbo].[Anh] ([maAnh], [tenAnh], [maHang]) VALUES (N'A48', N'h12d.jpg', N'H12')
GO
INSERT [dbo].[BaoHanh] ([MaBH], [NgayLap], [NgayTra], [MaKH], [TongTien], [GhiChu]) VALUES (N'BH01', CAST(N'2022-09-09' AS Date), CAST(N'2022-09-15' AS Date), N'KH01', 3700000, N'thay màn')
INSERT [dbo].[BaoHanh] ([MaBH], [NgayLap], [NgayTra], [MaKH], [TongTien], [GhiChu]) VALUES (N'BH02', CAST(N'2022-09-10' AS Date), CAST(N'2022-09-10' AS Date), N'KH01', 0, N'thay pin,con bao hanh')
INSERT [dbo].[BaoHanh] ([MaBH], [NgayLap], [NgayTra], [MaKH], [TongTien], [GhiChu]) VALUES (N'BH03', CAST(N'2022-09-30' AS Date), CAST(N'2022-10-01' AS Date), N'KH03', 0, N'con bao hanh')
INSERT [dbo].[BaoHanh] ([MaBH], [NgayLap], [NgayTra], [MaKH], [TongTien], [GhiChu]) VALUES (N'BH04', CAST(N'2022-10-15' AS Date), CAST(N'2022-10-16' AS Date), N'KH06', 900000, N'nang cap ram')
INSERT [dbo].[BaoHanh] ([MaBH], [NgayLap], [NgayTra], [MaKH], [TongTien], [GhiChu]) VALUES (N'BH05', CAST(N'2022-10-17' AS Date), CAST(N'2022-10-18' AS Date), N'KH02', 0, N'cai lai win')
INSERT [dbo].[BaoHanh] ([MaBH], [NgayLap], [NgayTra], [MaKH], [TongTien], [GhiChu]) VALUES (N'BH06', CAST(N'2022-10-18' AS Date), CAST(N'2022-10-21' AS Date), N'KH04', 500000, N'hong main')
INSERT [dbo].[BaoHanh] ([MaBH], [NgayLap], [NgayTra], [MaKH], [TongTien], [GhiChu]) VALUES (N'BH07', CAST(N'2022-10-20' AS Date), CAST(N'2022-10-20' AS Date), N'KH01', 0, N'con bao hanh')
INSERT [dbo].[BaoHanh] ([MaBH], [NgayLap], [NgayTra], [MaKH], [TongTien], [GhiChu]) VALUES (N'BH08', CAST(N'2022-10-24' AS Date), CAST(N'2022-10-25' AS Date), N'KH06', 0, N'con bao hanh')
GO
INSERT [dbo].[ChiTietGH] ([maGH], [maHang], [SoLuong], [DonGia]) VALUES (N'GH01', N'H01', 1, 55000000)
INSERT [dbo].[ChiTietGH] ([maGH], [maHang], [SoLuong], [DonGia]) VALUES (N'GH01', N'H02', 1, 1400000)
GO
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB01', N'H05', 22000000, 1, 22000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB01', N'H01', 59000000, 1, 59000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB02', N'H08', 18000000, 5, 90000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB02', N'H03', 14000000, 2, 28000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB02', N'H04', 19000000, 3, 57000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB03', N'H10', 25000000, 2, 50000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB03', N'H11', 32000000, 1, 32000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB04', N'H12', 69000000, 1, 69000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB05', N'H08', 18000000, 5, 90000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB05', N'H07', 21000000, 8, 168000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB10', N'H03', 14000000, 1, 14000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB10', N'H10', 25000000, 1, 50000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB06', N'H02', 75000000, 1, 75000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB06', N'H03', 14000000, 3, 42000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB07', N'H06', 29000000, 10, 290000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB08', N'H08', 18000000, 3, 54000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB08', N'H03', 14000000, 3, 42000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB08', N'H05', 22000000, 2, 44000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB09', N'H07', 21000000, 1, 21000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB11', N'H01', 59000000, 2, 118000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB10', N'H10', 25000000, 1, 25000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB15', N'H01', 55000000, 1, 55000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB15', N'H08', 18000000, 1, 18000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB16', N'H12', 69000000, 1, 69000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB17', N'H10', 25000000, 1, 25000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB19', N'H01', 55000000, 1, 55000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB19', N'H03', 14000000, 1, 14000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB20', N'H02', 75000000, 1, 75000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB20', N'H03', 14000000, 1, 14000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB22', N'H01', 55000000, 1, 55000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB22', N'H03', 14000000, 1, 14000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB23', N'H01', 55000000, 2, 110000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB23', N'H02', 75000000, 1, 75000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB12', N'H03', 14000000, 3, 42000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB13', N'H08', 18000000, 1, 18000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB14', N'H12', 69000000, 1, 69000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB18', N'H02', 75000000, 1, 75000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB18', N'H03', 14000000, 1, 14000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB21', N'H02', 75000000, 1, 75000000.0000)
INSERT [dbo].[ChiTietHDB] ([MaHDB], [MaHang], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HDB21', N'H03', 14000000, 1, 14000000.0000)
GO
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN01', N'H11', 3, 30000000, 90000000)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN02', N'H07', 4, 18000000, 72000000)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN03', N'H01', 3, 55000000, 165000000)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN04', N'H08', 4, 16000000, 64000000)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN05', N'H12', 2, 65000000, 130000000)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN06', N'H04', 2, 17000000, 34000000)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN06', N'H05', 1, 20000000, 20000000)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN06', N'H06', 1, 27000000, 27000000)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN07', N'H10', 2, 23000000, 46000000)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN08', N'H02', 1, 72000000, 72000000)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN08', N'H03', 2, 12000000, 24000000)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN11', N'H02', 1, 75000000, 75000000)
INSERT [dbo].[ChiTietHDN] ([MaHDN], [MaHang], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'HDN10', N'H01', 1, 5500000, 5500000)
GO
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H01', 6, N'Cái', 55000000, N'PNK01')
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H02', 7, N'Cái', 72000000, N'PNK01')
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H01', 6, N'Cái', 55000000, N'PNK02')
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H03', 3, N'Cái', 12000000, N'PNK03')
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H05', 7, N'Cái', 20000000, N'PNK04')
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H06', 4, N'Cái', 27000000, N'PNK04')
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H07', 7, N'Cái', 18000000, N'PNK05')
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H08', 6, N'Cái', 16000000, N'PNK06')
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H09', 4, N'Cái', 20000000, N'PNK06')
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H10', 4, N'Cái', 23000000, N'PNK06')
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H11', 6, N'Cái', 30000000, N'PNK07')
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H12', 4, N'Cái', 65000000, N'PNK07')
INSERT [dbo].[ChiTietPNK] ([MaHang], [SoLuong], [DonViTinh], [DonGia], [MaPNK]) VALUES (N'H04', 10, N'Cái', 17000000, N'PNK08')
GO
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK01', N'H01', N'Cái', 2, 55000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK02', N'H02', N'Cái', 3, 72000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK03', N'H03', N'Cái', 2, 12000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK03', N'H04', N'Cái', 2, 17000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK04', N'H01', N'Cái', 1, 55000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK04', N'H03', N'Cái', 2, 12000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK05', N'H05', N'Cái', 1, 20000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK05', N'H07', N'Cái', 2, 18000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK06', N'H02', N'Cái', 1, 72000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK06', N'H03', N'Cái', 1, 12000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK07', N'H08', N'Cái', 2, 16000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK08', N'H03', N'Cái', 1, 12000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK08', N'H06', N'Cái', 2, 27000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK08', N'H09', N'Cái', 1, 20000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK09', N'H07', N'Cái', 2, 18000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK09', N'H02', N'Cái', 2, 72000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK10', N'H04', N'Cái', 1, 17000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK11', N'H12', N'Cái', 3, 65000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK11', N'H11', N'Cái', 2, 30000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK12', N'H10', N'Cái', 2, 23000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK12', N'H12', N'Cái', 1, 65000000)
INSERT [dbo].[ChiTietPXK] ([MaPXK], [MaHang], [DonViTinh], [SoLuong], [DonGia]) VALUES (N'PXK13', N'H05', N'Cái', 2, 20000000)
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV01', N'Nhân Viên')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV02', N'Quản Lí')
GO
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM01', N'ASUS')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM02', N'DELL')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM03', N'HP')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM04', N'MSI')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM05', N'LG')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM06', N'MAC')
GO
INSERT [dbo].[GioHang] ([maGH], [TongTien], [TenTaiKhoan]) VALUES (N'GH01', 72000000, N'trung123')
GO
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [Ram], [OCung], [CardDoHoa], [CPU], [ManHinh], [SLTon], [ThoiGianBaoHanh], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H01', N'DELL XPS 13', 59000000, 55000000, N'16GB', N'SSD ', N'Intel', N'Core i7', N'13.4', 7, 12, 5, N'Dell XPS 13 is a Windows 10 laptop with a 13.30-inch display that has a resolution of 3200x1800 pixels. It is powered by a Core i5 processor and it comes with 8GB of RAM.', N'DM02', N'h01a.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [Ram], [OCung], [CardDoHoa], [CPU], [ManHinh], [SLTon], [ThoiGianBaoHanh], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H02', N'DELL XPS 15', 72000000, 75000000, N'16GB', N'SSD', N'NVIDIA', N'Core i5', N'15.6', 4, 12, 4, N'The Dell XPS 15 (2022) is back with new hardware and classic XPS style to defend its claim as the greatest 15-inch laptop around.', N'DM02', N'h02a.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [Ram], [OCung], [CardDoHoa], [CPU], [ManHinh], [SLTon], [ThoiGianBaoHanh], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H03', N'DELL IP N350', 12000000, 14000000, N'4GB', N'SSD', N'Intel', N'N5030', N'15.6', 14, 12, 1, N'Dell Inspiron N3501 is heavily upgraded in configuration with the latest 11th generation Intel Core i5 Tiger Lake processor with discrete graphics, giving you outstanding performance, getting the job done efficiently and quickly', N'DM02', N'h03a.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [Ram], [OCung], [CardDoHoa], [CPU], [ManHinh], [SLTon], [ThoiGianBaoHanh], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H04', N'ASUS ZENBOOK', 17000000, 19000000, N'8GB', N'SSD', N'Intel', N'Core i5', N'13.3', 20, 12, 10, N'The Asus Zenbook 14 (UX3402) is an excellent laptop, boasting a rich and colour-accurate OLED display, good keyboard, great overall performance, and a battery that’ll get you through the working day. Avoid if you’re workload needs a dedicated GPU, though.', N'DM01', N'h04a.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [Ram], [OCung], [CardDoHoa], [CPU], [ManHinh], [SLTon], [ThoiGianBaoHanh], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H05', N'ASUS ROG', 20000000, 22000000, N'8GB', N'SSD', N'NVIDIA', N'Ryzen 7', N'15.6', 11, 18, 10, N'Asus ROG Strix Gaming G15 G513IH R7 4800H (HN015T) laptop possesses outstanding configuration and unique design, attracting all eyes, especially gamers who are passionate about experiencing dramatic virtual battles, ready to go. with you anywhere.', N'DM01', N'h05a.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [Ram], [OCung], [CardDoHoa], [CPU], [ManHinh], [SLTon], [ThoiGianBaoHanh], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H06', N'ASUS GAMING', 27000000, 29000000, N'8GB', N'SSD', N'NVIDIA', N'Core i7', N'15.6', 23, 12, 10, N'Laptop gaming ASUS TUF Gaming F15 FX507ZV4-LP041W th? hi?n s?c m?nh qua con chip Intel Core i7 Gen12 d?y m?nh m?. Thi?t k? th?i thu?ng d?m ch?t gaming v?i m?t cách d?y tinh t?. Hoàn thi?n t? ngo?i hình d?n c?u hình bên trong nâng c?p tr?i nghi?m choi game c?a m?i game th?. H?a h?n ASUS TUF Gaming F15 s? làm mua làm gió trên th? tru?ng laptop gaming nam 2023 này', N'DM01', N'h06a.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [Ram], [OCung], [CardDoHoa], [CPU], [ManHinh], [SLTon], [ThoiGianBaoHanh], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H07', N' MSI GAMING', 18000000, 21000000, N'8GB', N'SSD', N'NVIDIA', N'Core i5', N'15.6', 15, 12, 12, N'Mang trong mình s?c m?nh hi?u nang c?a b? vi x? lý Intel Core i5 dòng H m?nh m? và card d? h?a r?i NVIDIA GeForce GTX, laptop MSI Gaming GF63 Thin 11SC i5 (664VN) có kh? nang chi?n game n?ng và thi?t k? d? h?a m?t cách mu?t mà.', N'DM04', N'h07a.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [Ram], [OCung], [CardDoHoa], [CPU], [ManHinh], [SLTon], [ThoiGianBaoHanh], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H08', N'MSI MODERN', 16000000, 18000000, N'8GB', N'SSD', N'Intel', N'Core i7', N'14', 8, 18, 10, N'Laptop MSI Modern 14 B11MOU-1032VN là m?t s?n ph?m thu?c thuong hi?u laptop MSI ch?t lu?ng. Laptop v?i thi?t k? m?ng nh? cùng hi?u nang vu?t tr?i thích h?p s? d?ng trong nhi?u nhu c?u s? d?ng khác nhau v?n d?m b?o s? mu?t mà.', N'DM04', N'h08a.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [Ram], [OCung], [CardDoHoa], [CPU], [ManHinh], [SLTon], [ThoiGianBaoHanh], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H09', N'HP ENVY', 20000000, 22000000, N'8GB', N'SSD', N'Intel', N'Core i5', N'13.3', 22, 12, 5, N'Laptop HP Envy X360 13-BD0063DX – Laptop nh? g?n h? tr? c?m ?ng
HP là m?t thuong hi?u laptop v?i nhi?u s?n ph?m ch?t lu?ng du?c ngu?i s? d?ng tin dùng. V?i s?n ph?m HP Envy X360 13-BD0063DX cung s? không làm ngu?i dùng th?t v?ng, laptop s? h?u m?t thi?t k? nh? g?n cùng c?u hình dáp ?ng t?t nhi?u nhu c?u s? d?ng.', N'DM03', N'h09a.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [Ram], [OCung], [CardDoHoa], [CPU], [ManHinh], [SLTon], [ThoiGianBaoHanh], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H10', N'LG GRAM', 23000000, 25000000, N'8GB', N'SSD', N'Intel', N'Core i3', N'14', 21, 12, 5, NULL, N'DM05', N'h10a.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [Ram], [OCung], [CardDoHoa], [CPU], [ManHinh], [SLTon], [ThoiGianBaoHanh], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H11', N'LENNOVO THINKPAD', 30000000, 32000000, N'16GB', N'SSD', N'NVIDIA', N'Core i7', N'15.6', 8, 24, 20, NULL, N'DM05', N'h11a.jpg')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [DonGiaNhap], [DonGiaBan], [Ram], [OCung], [CardDoHoa], [CPU], [ManHinh], [SLTon], [ThoiGianBaoHanh], [soLanMua], [MoTa], [MaDanhMuc], [anhDaiDien]) VALUES (N'H12', N'MACBOOK ', 69000000, 65000000, N'32GB', N'SSD', N'Apple ', N'M1', N'16.2', 5, 24, 18, NULL, N'DM06', N'h12a.jpg')
GO
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB01', CAST(N'2022-01-03' AS Date), 81000000, N'NV01', N'KH01')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB02', CAST(N'2022-02-05' AS Date), 175000000, N'NV01', N'KH01')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB03', CAST(N'2022-02-22' AS Date), 82000000, N'NV04', N'KH03')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB04', CAST(N'2022-04-24' AS Date), 69000000, N'NV04', N'KH02')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB05', CAST(N'2022-05-01' AS Date), 258000000, N'NV06', N'KH06')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB06', CAST(N'2022-05-03' AS Date), 117000000, N'NV05', N'KH04')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB07', CAST(N'2022-05-20' AS Date), 290000000, N'NV05', N'KH02')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB08', CAST(N'2022-06-01' AS Date), 140000000, N'NV05', N'KH05')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB09', CAST(N'2022-07-05' AS Date), 21000000, N'NV01', N'KH04')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB10', CAST(N'2022-08-10' AS Date), 89000000, N'NV01', N'KH06')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB11', CAST(N'2022-09-12' AS Date), 118000000, N'NV01', N'KH01')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB12', CAST(N'2022-10-13' AS Date), 42000000, N'NV01', N'KH01')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB13', CAST(N'2022-11-13' AS Date), 18000000, N'NV01', N'KH01')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB14', CAST(N'2022-12-15' AS Date), 69000000, N'NV05', N'KH04')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB15', CAST(N'2022-11-15' AS Date), 73000000, N'NV01', N'KH03')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB16', CAST(N'2021-08-13' AS Date), 69000000, N'NV03', N'KH05')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB17', CAST(N'2021-06-17' AS Date), 25000000, N'NV04', N'KH02')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB18', CAST(N'2022-11-17' AS Date), 89000000, N'NV01', N'KH03')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB19', CAST(N'2022-11-17' AS Date), 69000000, N'NV01', N'KH03')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB20', CAST(N'2022-11-17' AS Date), 89000000, N'NV01', N'KH03')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB21', CAST(N'2022-11-18' AS Date), 89000000, N'NV01', N'KH03')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB22', CAST(N'2022-11-18' AS Date), 69000000, N'NV01', N'KH03')
INSERT [dbo].[HDBan] ([MaHDB], [NgayLap], [TongTien], [MaNV], [MaKH]) VALUES (N'HDB23', CAST(N'2023-01-03' AS Date), 185000000, N'NV02', N'KH04')
GO
INSERT [dbo].[HDNhap] ([MaHDN], [NgayNhap], [TongTien], [MaNCC], [MaNV]) VALUES (N'HDN01', CAST(N'2022-06-15' AS Date), 90000000, N'NCC03', N'NV03')
INSERT [dbo].[HDNhap] ([MaHDN], [NgayNhap], [TongTien], [MaNCC], [MaNV]) VALUES (N'HDN02', CAST(N'2022-06-30' AS Date), 72000000, N'NCC02', N'NV02')
INSERT [dbo].[HDNhap] ([MaHDN], [NgayNhap], [TongTien], [MaNCC], [MaNV]) VALUES (N'HDN03', CAST(N'2022-07-05' AS Date), 165000000, N'NCC01', N'NV02')
INSERT [dbo].[HDNhap] ([MaHDN], [NgayNhap], [TongTien], [MaNCC], [MaNV]) VALUES (N'HDN04', CAST(N'2022-07-15' AS Date), 64000000, N'NCC02', N'NV05')
INSERT [dbo].[HDNhap] ([MaHDN], [NgayNhap], [TongTien], [MaNCC], [MaNV]) VALUES (N'HDN05', CAST(N'2022-08-01' AS Date), 130000000, N'NCC05', N'NV04')
INSERT [dbo].[HDNhap] ([MaHDN], [NgayNhap], [TongTien], [MaNCC], [MaNV]) VALUES (N'HDN06', CAST(N'2022-08-15' AS Date), 81000000, N'NCC04', N'NV05')
INSERT [dbo].[HDNhap] ([MaHDN], [NgayNhap], [TongTien], [MaNCC], [MaNV]) VALUES (N'HDN07', CAST(N'2022-09-10' AS Date), 46000000, N'NCC01', N'NV05')
INSERT [dbo].[HDNhap] ([MaHDN], [NgayNhap], [TongTien], [MaNCC], [MaNV]) VALUES (N'HDN08', CAST(N'2022-09-29' AS Date), 96000000, N'NCC01', N'NV01')
INSERT [dbo].[HDNhap] ([MaHDN], [NgayNhap], [TongTien], [MaNCC], [MaNV]) VALUES (N'HDN10', CAST(N'2022-11-17' AS Date), 5500000, N'NCC02', N'NV01')
INSERT [dbo].[HDNhap] ([MaHDN], [NgayNhap], [TongTien], [MaNCC], [MaNV]) VALUES (N'HDN11', CAST(N'2022-11-17' AS Date), 75000000, N'NCC04', N'NV01')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [TenTaiKhoan]) VALUES (N'KH01', N'Nguyễn Thị Hòa', N'0331284675', N'Hà Nam', N'kh01@gmail.com', N'trung123')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [TenTaiKhoan]) VALUES (N'KH02', N'Đào Duy Mạnh', N'0234567', N'Ninh Bình', N'kh02@gmail.com', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [TenTaiKhoan]) VALUES (N'KH03', N'Nguyễn Trung Đức', N'0345678', N'Hưng Yên', N'kh03@gmail.com', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [TenTaiKhoan]) VALUES (N'KH04', N'Lê Thị Linh', N'0467894', N'Hải Phòng ', N'kh04@gmail.com', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [TenTaiKhoan]) VALUES (N'KH05', N'Bùi Văn Nam', N'0897415', N'Hải Dương', N'kh05@gmail.com', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi], [Email], [TenTaiKhoan]) VALUES (N'KH06', N'Phạm Ngọc Tiến', N'0156483', N'Hồ Chí Minh', N'kh06@gmail.com', NULL)
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC01', N'FPT', N'Hà Nội', N'19001102')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC02', N'SILICOM', N'Hà Nội', N'0243732312')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC03', N'TECHNOLOGIES ', N'Hồ Chí Minh', N'02835512378')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC04', N'THÀNH NHÂN', N'Hồ Chí Minh', N'02839250295')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'NCC05', N'SMYOU', N' Hồ Chí Minh', N'0977977475')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [GioiTinh], [NgaySinh], [NgayBD], [DiaChi], [MaChucVu], [GhiChu]) VALUES (N'NV01', N'Hà Ngọc Mai', N'012345678', N'Nữ', CAST(N'1998-03-27' AS Date), CAST(N'2018-07-15' AS Date), N'Hải Dương', N'CV02', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [GioiTinh], [NgaySinh], [NgayBD], [DiaChi], [MaChucVu], [GhiChu]) VALUES (N'NV02', N'Nguyễn Văn Nam', N'023456781', N'Nam', CAST(N'1995-06-08' AS Date), CAST(N'2019-04-26' AS Date), N'Hà Nội', N'CV01', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [GioiTinh], [NgaySinh], [NgayBD], [DiaChi], [MaChucVu], [GhiChu]) VALUES (N'NV03', N'Lê Khánh Linh', N'034567892', N'Nữ', CAST(N'1992-04-21' AS Date), CAST(N'2019-04-17' AS Date), N'Nghệ An', N'CV02', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [GioiTinh], [NgaySinh], [NgayBD], [DiaChi], [MaChucVu], [GhiChu]) VALUES (N'NV04', N'Đinh Anh Tiến', N'0376125933', N'Nam', CAST(N'2002-08-05' AS Date), CAST(N'2021-10-26' AS Date), N'Quảng Ninh', N'CV01', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [GioiTinh], [NgaySinh], [NgayBD], [DiaChi], [MaChucVu], [GhiChu]) VALUES (N'NV05', N'Phạm Việt Trung', N'0912932808', N'Nam', CAST(N'2002-07-28' AS Date), CAST(N'2021-03-24' AS Date), N'Hà Nội', N'CV01', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SDT], [GioiTinh], [NgaySinh], [NgayBD], [DiaChi], [MaChucVu], [GhiChu]) VALUES (N'NV06', N'Bùi Tố Uyên', N'0778349274', N'Nữ', CAST(N'2002-02-12' AS Date), CAST(N'2020-12-31' AS Date), N'Hải Phòng', N'CV01', NULL)
GO
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [MaNV]) VALUES (N'PNK01', CAST(N'2022-06-15' AS Date), N'NV01')
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [MaNV]) VALUES (N'PNK02', CAST(N'2022-06-30' AS Date), N'NV04')
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [MaNV]) VALUES (N'PNK03', CAST(N'2022-07-05' AS Date), N'NV05')
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [MaNV]) VALUES (N'PNK04', CAST(N'2022-07-15' AS Date), N'NV01')
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [MaNV]) VALUES (N'PNK05', CAST(N'2022-08-01' AS Date), N'NV04')
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [MaNV]) VALUES (N'PNK06', CAST(N'2022-08-15' AS Date), N'NV04')
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [MaNV]) VALUES (N'PNK07', CAST(N'2022-09-10' AS Date), N'NV06')
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [NgayNhap], [MaNV]) VALUES (N'PNK08', CAST(N'2022-09-29' AS Date), N'NV06')
GO
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK01', CAST(N'2022-07-03' AS Date), N'NV01')
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK02', CAST(N'2022-07-05' AS Date), N'NV01')
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK03', CAST(N'2022-08-22' AS Date), N'NV04')
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK04', CAST(N'2022-08-25' AS Date), N'NV01')
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK05', CAST(N'2022-09-07' AS Date), N'NV01')
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK06', CAST(N'2022-09-10' AS Date), N'NV05')
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK07', CAST(N'2022-09-14' AS Date), N'NV06')
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK08', CAST(N'2022-09-21' AS Date), N'NV06')
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK09', CAST(N'2022-10-05' AS Date), N'NV04')
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK10', CAST(N'2022-10-14' AS Date), N'NV01')
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK11', CAST(N'2022-10-17' AS Date), N'NV04')
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK12', CAST(N'2022-10-22' AS Date), N'NV04')
INSERT [dbo].[PhieuXuatKho] ([MaPXK], [NgayXuat], [MaNV]) VALUES (N'PXK13', CAST(N'2022-10-25' AS Date), N'NV04')
GO
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [MaBaoMat], [MaNV]) VALUES (N'nv01x', N'123', N'123', N'NV01')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [MaBaoMat], [MaNV]) VALUES (N'nv02x', N'123', N'123', N'NV02')
GO
INSERT [dbo].[TaiKhoanUser] ([TenTaiKhoan], [MatKhau]) VALUES (N'trung123', N'123')
GO
ALTER TABLE [dbo].[Anh]  WITH CHECK ADD  CONSTRAINT [fk_anh_hang] FOREIGN KEY([maHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[Anh] CHECK CONSTRAINT [fk_anh_hang]
GO
ALTER TABLE [dbo].[BaoHanh]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ChiTietGH]  WITH CHECK ADD  CONSTRAINT [fk_ctgh_gh] FOREIGN KEY([maGH])
REFERENCES [dbo].[GioHang] ([maGH])
GO
ALTER TABLE [dbo].[ChiTietGH] CHECK CONSTRAINT [fk_ctgh_gh]
GO
ALTER TABLE [dbo].[ChiTietGH]  WITH CHECK ADD  CONSTRAINT [fk_ctgh_hang] FOREIGN KEY([maHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietGH] CHECK CONSTRAINT [fk_ctgh_hang]
GO
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD FOREIGN KEY([MaHDB])
REFERENCES [dbo].[HDBan] ([MaHDB])
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD FOREIGN KEY([MaHDN])
REFERENCES [dbo].[HDNhap] ([MaHDN])
GO
ALTER TABLE [dbo].[ChiTietPNK]  WITH CHECK ADD FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietPNK]  WITH CHECK ADD FOREIGN KEY([MaPNK])
REFERENCES [dbo].[PhieuNhapKho] ([MaPNK])
GO
ALTER TABLE [dbo].[ChiTietPXK]  WITH CHECK ADD FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
GO
ALTER TABLE [dbo].[ChiTietPXK]  WITH CHECK ADD FOREIGN KEY([MaPXK])
REFERENCES [dbo].[PhieuXuatKho] ([MaPXK])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoanUser] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[Hang]  WITH CHECK ADD  CONSTRAINT [FK_PersonOrder] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[Hang] CHECK CONSTRAINT [FK_PersonOrder]
GO
ALTER TABLE [dbo].[HDBan]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HDBan]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HDNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[HDNhap]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_TaiKhoanUser] FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoanUser] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_TaiKhoanUser]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [fk_taikhoan_nhanvien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [fk_taikhoan_nhanvien]
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanHang2] SET  READ_WRITE 
GO
