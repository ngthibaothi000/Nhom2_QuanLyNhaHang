USE [master]
GO

CREATE DATABASE [QL_NhaHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_NhaHang', FILENAME = N'D:\CSDL\QL_NhaHang.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_NhaHang_log', FILENAME = N'D:\CSDL\QL_NhaHang_log.ldf' , SIZE = 2368KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QL_NhaHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_NhaHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_NhaHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_NhaHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_NhaHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_NhaHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_NhaHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_NhaHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_NhaHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_NhaHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_NhaHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_NhaHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_NhaHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_NhaHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_NhaHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_NhaHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_NhaHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_NhaHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_NhaHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_NhaHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_NhaHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_NhaHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_NhaHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_NhaHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_NhaHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_NhaHang] SET  MULTI_USER 
GO
ALTER DATABASE [QL_NhaHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_NhaHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_NhaHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_NhaHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QL_NhaHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_NhaHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_NhaHang', N'ON'
GO
ALTER DATABASE [QL_NhaHang] SET QUERY_STORE = OFF
GO
USE [QL_NhaHang]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAN](
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[TenBan] [nvarchar](100) NOT NULL,
	[TrangThai] [nvarchar](20) NOT NULL,
	[TongCong] [float] NOT NULL,
	[ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[ID] [int] IDENTITY(0,1) NOT NULL,
	[TenDanhMuc] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenMonAn] [nvarchar](100) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL,
	[STT] [int] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUVUC](
	[ID] [int] IDENTITY(0,1) NOT NULL,
	[TenKhuVuc] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LICHSU](
	[KhuVuc] [nvarchar](100) NOT NULL,
	[TenBan] [nvarchar](100) NOT NULL,
	[Ngay] [date] NOT NULL,
	[ThoiGian] [time](7) NOT NULL,
	[TongCong] [float] NOT NULL,
	[NguoiThanhToan] [nvarchar](100) NOT NULL,
	[GhiChu] [nvarchar](1000) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITAIKHOAN](
	[ID] [int] IDENTITY(0,1) NOT NULL,
	[TenLoai] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUUTAIKHOAN](
	[TenDangNhap] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](1000) NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [varchar](100) NOT NULL,
	[HoNV] [nvarchar](100) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[NGAYSINH] [date] NOT NULL,
	[SDT] [varchar](20) NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TenDangNhap] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](1000) NOT NULL,
	[ID] [int] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUCDON](
	[TenMonAn] [nvarchar](500) NOT NULL,
	[DonGia] [float] NOT NULL,
	[DonVi] [nvarchar](100) NOT NULL,
	[ID] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BAN] ON 

INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (1, N'Bàn 01', N'CÓ NGƯỜI', 25000, 1)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (2, N'Bàn 02', N'CÓ NGƯỜI', 9000, 1)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (3, N'Bàn 03', N'TRỐNG', 0, 1)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (4, N'Bàn 04', N'TRỐNG', 0, 1)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (5, N'Bàn 05', N'TRỐNG', 0, 1)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (6, N'Bàn 06', N'TRỐNG', 0, 1)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (7, N'Bàn 07', N'TRỐNG', 0, 1)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (8, N'Bàn 08', N'TRỐNG', 0, 2)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (9, N'Bàn 09', N'TRỐNG', 0, 2)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (10, N'Bàn 10', N'TRỐNG', 0, 2)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (11, N'Bàn 11', N'TRỐNG', 0, 2)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (12, N'Bàn 12', N'TRỐNG', 0, 2)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (13, N'Bàn 13', N'TRỐNG', 0, 2)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (14, N'Bàn 14', N'TRỐNG', 0, 2)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (15, N'Bàn 15', N'TRỐNG', 0, 2)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (16, N'Bàn 16', N'TRỐNG', 0, 2)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (17, N'Bàn 17', N'TRỐNG', 0, 3)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (18, N'Bàn 18', N'TRỐNG', 0, 3)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (19, N'Bàn 19', N'TRỐNG', 0, 3)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (20, N'Bàn 20', N'TRỐNG', 0, 3)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (21, N'Bàn 21', N'TRỐNG', 0, 3)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (22, N'Bàn 22', N'TRỐNG', 0, 3)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (23, N'Bàn 23', N'TRỐNG', 0, 3)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (24, N'Bàn 24', N'TRỐNG', 0, 3)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (25, N'Bàn VIP 1', N'TRỐNG', 0, 4)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (26, N'Bàn VIP 2', N'TRỐNG', 0, 4)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (27, N'Bàn VIP 3', N'TRỐNG', 0, 4)
INSERT [dbo].[BAN] ([STT], [TenBan], [TrangThai], [TongCong], [ID]) VALUES (28, N'Bàn VIP 4', N'TRỐNG', 0, 4)
SET IDENTITY_INSERT [dbo].[BAN] OFF
GO
SET IDENTITY_INSERT [dbo].[DANHMUC] ON 

INSERT [dbo].[DANHMUC] ([ID], [TenDanhMuc]) VALUES (0, N'Tất cả')
INSERT [dbo].[DANHMUC] ([ID], [TenDanhMuc]) VALUES (1, N'Hải sản')
INSERT [dbo].[DANHMUC] ([ID], [TenDanhMuc]) VALUES (2, N'Nông sản')
INSERT [dbo].[DANHMUC] ([ID], [TenDanhMuc]) VALUES (3, N'Giải khát')
INSERT [dbo].[DANHMUC] ([ID], [TenDanhMuc]) VALUES (4, N'Tráng miệng')
SET IDENTITY_INSERT [dbo].[DANHMUC] OFF
GO
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([ID], [TenMonAn], [SoLuong], [DonGia], [ThanhTien], [STT]) VALUES (33, N'Lựu', 1, 9000, 9000, 2)
INSERT [dbo].[HOADON] ([ID], [TenMonAn], [SoLuong], [DonGia], [ThanhTien], [STT]) VALUES (32, N'Xườn xào chưa ngọt', 1, 25000, 25000, 1)
SET IDENTITY_INSERT [dbo].[HOADON] OFF
GO
SET IDENTITY_INSERT [dbo].[KHUVUC] ON 

INSERT [dbo].[KHUVUC] ([ID], [TenKhuVuc]) VALUES (0, N'Tất cả')
INSERT [dbo].[KHUVUC] ([ID], [TenKhuVuc]) VALUES (1, N'Tầng 1')
INSERT [dbo].[KHUVUC] ([ID], [TenKhuVuc]) VALUES (2, N'Tầng 2')
INSERT [dbo].[KHUVUC] ([ID], [TenKhuVuc]) VALUES (3, N'Tầng 3')
INSERT [dbo].[KHUVUC] ([ID], [TenKhuVuc]) VALUES (4, N'VIP')
SET IDENTITY_INSERT [dbo].[KHUVUC] OFF
GO
INSERT [dbo].[LICHSU] ([KhuVuc], [TenBan], [Ngay], [ThoiGian], [TongCong], [NguoiThanhToan], [GhiChu]) VALUES (N'Tầng 1', N'Bàn 03', CAST(N'2023-10-03' AS Date), CAST(N'12:00:00' AS Time), 207000, N'Thanh Danh', N'')
INSERT [dbo].[LICHSU] ([KhuVuc], [TenBan], [Ngay], [ThoiGian], [TongCong], [NguoiThanhToan], [GhiChu]) VALUES (N'Tầng 1', N'Bàn 01', CAST(N'2023-10-17' AS Date), CAST(N'12:00:00' AS Time), 90000, N'Thanh Danh', N'')
INSERT [dbo].[LICHSU] ([KhuVuc], [TenBan], [Ngay], [ThoiGian], [TongCong], [NguoiThanhToan], [GhiChu]) VALUES (N'Tầng 1', N'Bàn 01', CAST(N'2023-10-17' AS Date), CAST(N'12:00:00' AS Time), 15000, N'Thanh Danh', N'')
INSERT [dbo].[LICHSU] ([KhuVuc], [TenBan], [Ngay], [ThoiGian], [TongCong], [NguoiThanhToan], [GhiChu]) VALUES (N'Tầng 1', N'Bàn 05', CAST(N'2023-10-17' AS Date), CAST(N'12:00:00' AS Time), 53000, N'Thanh Danh', N'')
INSERT [dbo].[LICHSU] ([KhuVuc], [TenBan], [Ngay], [ThoiGian], [TongCong], [NguoiThanhToan], [GhiChu]) VALUES (N'Tầng 1', N'Bàn 01', CAST(N'2023-10-17' AS Date), CAST(N'12:00:00' AS Time), 80000, N'Thanh Danh', N'')
INSERT [dbo].[LICHSU] ([KhuVuc], [TenBan], [Ngay], [ThoiGian], [TongCong], [NguoiThanhToan], [GhiChu]) VALUES (N'Tầng 1', N'Bàn 05', CAST(N'2023-10-17' AS Date), CAST(N'12:00:00' AS Time), 20000, N'Thanh Danh', N'')
GO
SET IDENTITY_INSERT [dbo].[LOAITAIKHOAN] ON 

INSERT [dbo].[LOAITAIKHOAN] ([ID], [TenLoai]) VALUES (0, N'Quản lý')
INSERT [dbo].[LOAITAIKHOAN] ([ID], [TenLoai]) VALUES (1, N'Thu Ngân')
SET IDENTITY_INSERT [dbo].[LOAITAIKHOAN] OFF
GO
INSERT [dbo].[LUUTAIKHOAN] ([TenDangNhap], [MatKhau]) VALUES (N'admin', N'admin')
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NGAYSINH], [SDT], [DiaChi]) VALUES (N'NV0001', N'Nguyễn Thị Bảo ', N'Thi', N'Nữ', CAST(N'2003-12-15' AS Date), N'0386543471', N'Vĩnh Long')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NGAYSINH], [SDT], [DiaChi]) VALUES (N'NV0002', N'Nguyễn Lê Thanh ', N'Danh', N'Nam', CAST(N'2003-12-12' AS Date), N'0817657804', N'Cần Thơ')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NGAYSINH], [SDT], [DiaChi]) VALUES (N'NV0003', N'Lê Trần Bảo', N'Anh', N'Nữ', CAST(N'2003-09-07' AS Date), N'0386543471', N'Đắk Nông')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NGAYSINH], [SDT], [DiaChi]) VALUES (N'NV0004', N'Huỳnh Hữu ', N'Bình', N'Nam', CAST(N'2003-05-01' AS Date), N'0326489524', N'Kon Tom')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NGAYSINH], [SDT], [DiaChi]) VALUES (N'NV0005', N'Lê Quang ', N'Hà', N'Nam', CAST(N'2003-08-26' AS Date), N'0961478965', N'Nghệ An')
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenNV], [GioiTinh], [NGAYSINH], [SDT], [DiaChi]) VALUES (N'NV0006', N'Nguyễn Duy', N'Khoa', N'Nam', CAST(N'1998-10-30' AS Date), N'0324785162', N'Quảng Bình')
GO
INSERT [dbo].[TAIKHOAN] ([TenDangNhap], [HoTen], [MatKhau], [ID]) VALUES (N'admin', N'Nguyen Thi Bao Thi', N'admin', 1)
INSERT [dbo].[TAIKHOAN] ([TenDangNhap], [HoTen], [MatKhau], [ID]) VALUES (N'admin', N'Nguyen Le Thanh Danh', N'admin', 1)
INSERT [dbo].[TAIKHOAN] ([TenDangNhap], [HoTen], [MatKhau], [ID]) VALUES (N'admin', N'Le Tran Bao Anh', N'admin', 1)
INSERT [dbo].[TAIKHOAN] ([TenDangNhap], [HoTen], [MatKhau], [ID]) VALUES (N'admin', N'Huynh Huu Binh', N'admin', 1)
INSERT [dbo].[TAIKHOAN] ([TenDangNhap], [HoTen], [MatKhau], [ID]) VALUES (N'admin', N'Le Quang Ha', N'admin', 1)
INSERT [dbo].[TAIKHOAN] ([TenDangNhap], [HoTen], [MatKhau], [ID]) VALUES (N'admin', N'Nguyen Duy Khoa', N'admin', 1)
GO
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Nghêu hấp xả', 20000, N'Đĩa', 1)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Ốc xào me', 30000, N'Đĩa', 1)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Mực xào trứng', 50000, N'Đĩa', 1)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Sò điệp hấp lá dứa', 57000, N'Đĩa', 1)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Lươn xào lăn', 45000, N'Đĩa', 1)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Rau muống luộc', 10000, N'Đĩa', 2)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Thịt gà xả ớt', 15000, N'Đĩa', 2)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Xườn xào chưa ngọt', 25000, N'Đĩa', 2)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Thịt kho tàu', 35000, N'Đĩa', 2)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Thịt nướng', 40000, N'Đĩa', 2)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Pepsi', 5000, N'Chai', 3)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Cocacola', 15000, N'Lon', 3)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Cafe', 15000, N'Ly', 3)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Sting', 10000, N'Chai', 3)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Wake up 247', 10000, N'Chai', 3)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Xoài', 15000, N'Đĩa', 4)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Táo', 10000, N'Đĩa', 4)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Lê', 15000, N'Đĩa', 4)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Dưa hấu', 8000, N'Đĩa', 4)
INSERT [dbo].[THUCDON] ([TenMonAn], [DonGia], [DonVi], [ID]) VALUES (N'Lựu', 9000, N'Đĩa', 4)
GO
ALTER TABLE [dbo].[BAN]  WITH CHECK ADD  CONSTRAINT [fk_KV] FOREIGN KEY([ID])
REFERENCES [dbo].[KHUVUC] ([ID])
GO
ALTER TABLE [dbo].[BAN] CHECK CONSTRAINT [fk_KV]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [fk_HD] FOREIGN KEY([STT])
REFERENCES [dbo].[BAN] ([STT])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [fk_HD]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [fk_TK] FOREIGN KEY([ID])
REFERENCES [dbo].[LOAITAIKHOAN] ([ID])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [fk_TK]
GO
ALTER TABLE [dbo].[THUCDON]  WITH CHECK ADD  CONSTRAINT [fk_DM] FOREIGN KEY([ID])
REFERENCES [dbo].[DANHMUC] ([ID])
GO
ALTER TABLE [dbo].[THUCDON] CHECK CONSTRAINT [fk_DM]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CapNhatTrangThaiBan]
@TrangThai nvarchar(20),
@TongCong float,
@TenBan nvarchar(100)
AS
BEGIN
	UPDATE [dbo].[BAN] 
	SET TrangThai = @TrangThai,TongCong=@TongCong
	WHERE TenBan = @TenBan
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Thủ tục--
CREATE PROC [dbo].[sp_InsertNhanVien]
	@MaNV VARCHAR(100),
	@HoNV NVARCHAR(100),
	@TenNV NVARCHAR(100),
	@GioiTinh NVARCHAR(5),
	@NGAYSINH DATE,
	@SDT VARCHAR(20),
	@DiaChi NVARCHAR(200)
AS
BEGIN
	INSERT [dbo].[NHANVIEN]
	VALUES (@MaNV,@HoNV,@TenNV,@GioiTinh,@NGAYSINH,@SDT,@DiaChi)
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemBan]
@TenBan nvarchar(100),
@ID INT
AS
BEGIN
	INSERT INTO [BAN]
	VALUES (@TenBan,N'TRỐNG',0,@ID)
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Thực đơn
CREATE PROC [dbo].[sp_ThemDanhMuc]
@TenDanhMuc nvarchar(100)
AS
BEGIN
	INSERT INTO [DANHMUC](TenDanhMuc)
	VALUES (@TenDanhMuc)
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemHoaDon]
	@TenMonAn [nvarchar](100),
	@SoLuong INT,
	@DonGia float,
	@ThanhTien FLOAT,
	@STT int
AS
BEGIN
	INSERT [dbo].[HOADON] (TenMonAn,SoLuong,DonGia,ThanhTien,STT)
	VALUES (@TenMonAn,@SoLuong,@DonGia,@ThanhTien,@STT)
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemKhuVuc]
@TenKhuVuc nvarchar(100)
AS
BEGIN
	INSERT INTO [KHUVUC](TenKhuVuc)
	VALUES (@TenKhuVuc)
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemLichSu]
	@KhuVuc nvarchar(100),
	@TenBan nvarchar(100),
	@Ngay date,
	@ThoiGian time,
	@TongCong float,
	@NguoiThanhToan nvarchar(100),
	@GhiChu nvarchar(1000)
AS
BEGIN
	INSERT INTO [LICHSU]
	VALUES(@KhuVuc,@TenBan,@Ngay,@ThoiGian,@TongCong,@NguoiThanhToan,@GhiChu)
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThemThucDon]
@TenMonAn nvarchar(500),
@DonGia float,
@DonVi nvarchar(100),
@ID INT
AS
BEGIN
	INSERT INTO [THUCDON]
	VALUES (@TenMonAn,@DonGia,@DonVi,@ID)
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThongKeTheoKhoangNgay]
@TuNgay date,
@DenNgay date
AS
BEGIN
	SELECT DISTINCT * FROM LICHSU
	WHERE Ngay >= @TuNgay AND Ngay <= @DenNgay
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThongKeTheoNgay]
@Ngay date
AS
BEGIN
	SELECT DISTINCT * FROM LICHSU
	WHERE Ngay LIKE @Ngay
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThongKeTheoThang]
@Thang varchar(10),
@Nam varchar(10)
AS
BEGIN
	SELECT DISTINCT * FROM LICHSU
	WHERE MONTH(Ngay) = @Thang AND YEAR(Ngay) = @Nam
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[sp_TimKiemMonAn]
@TenMonAn nvarchar(500)
AS
BEGIN
	select DISTINCT TenMonAn,DonGia,DonVi
	From [THUCDON]
	where TenMonAn LIKE '%'+@TenMonAn+'%'
END	
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[sp_TimKiemTheoMaNV]
@MaNV varchar(100)
AS
BEGIN
	select DISTINCT *
	From [NHANVIEN]
	where MaNV LIKE '%'+@MaNV+'%'
END	
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[sp_TimKiemTheoTenNV]
@TenNV nvarchar(100)
AS
BEGIN
	select DISTINCT *
	From [NHANVIEN]
	where TenNV LIKE '%'+@TenNV+'%'
END	
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateBan]
@TenBan nvarchar(100),
@DieuKien nvarchar(100)
AS
BEGIN
	UPDATE [BAN]
	SET TenBan = @TenBan
	WHERE TenBan = @DieuKien
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateDanhMuc]
@TenDanhMuc nvarchar(100),
@ID INT
AS
BEGIN
	UPDATE [DANHMUC]
	SET TenDanhMuc=@TenDanhMuc
	WHERE ID = @ID
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateHoaDon]
@TenMonAn nvarchar(100),
@STT int,
@SoLuong INT,
@ThanhTien float
AS
BEGIN
	UPDATE HOADON
	SET SoLuong = @SoLuong,ThanhTien=@ThanhTien
	WHERE TenMonAn = @TenMonAn AND STT = @STT
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateKhuVuc]
@TenKhuVuc nvarchar(100),
@ID INT
AS
BEGIN
	UPDATE [KHUVUC]
	SET TenKhuVuc=@TenKhuVuc
	WHERE ID = @ID
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateNhanVien]
	@MaNV VARCHAR(100),
	@HoNV NVARCHAR(100),
	@TenNV NVARCHAR(100),
	@GioiTinh NVARCHAR(5),
	@NGAYSINH DATE,
	@SDT VARCHAR(20),
	@DiaChi NVARCHAR(200),
	@DieuKien NVARCHAR(100)
AS
BEGIN
	update [dbo].[NHANVIEN]
	set MaNV=@MaNV,HoNV=@HoNV,TenNV=@TenNV,GioiTinh=@GioiTinh,NGAYSINH=@NGAYSINH,SDT=@SDT,DiaChi=@DiaChi
	where MaNV = @DieuKien
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateThucDon]
@TenMonAn nvarchar(500),
@DonGia float,
@DonVi nvarchar(100),
@DieuKien nvarchar(500)
AS
BEGIN
	UPDATE [THUCDON]
	SET TenMonAn = @TenMonAn,DonGia=@DonGia,DonVi=@DonVi
	WHERE TenMonAn = @DieuKien
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaBan]
@TenBan nvarchar(100)
AS
BEGIN
	Delete from [BAN]
	WHERE TenBan = @TenBan
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaDanhMuc]
@ID INT
AS
BEGIN
	Delete from [DANHMUC]
	WHERE ID = @ID
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaHoaDon]
@STT INT
AS
BEGIN
	DELETE FROM [HOADON] WHERE STT like @STT
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaHoaDonTheoTen]
@TenMonAn nvarchar(100),
@STT INT
AS
BEGIN
	DELETE FROM [HOADON] 
	WHERE STT like @STT and TenMonAn like @TenMonAn
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaKhuVuc]
@ID INT
AS
BEGIN
	Delete from [KHUVUC]
	WHERE ID = @ID
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaNhanVien]
@MaNV nvarchar(100)
AS
BEGIN
	DELETE FROM NHANVIEN 
	WHERE MaNV LIKE @MaNV
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_XoaThucDon]
@TenMonAn nvarchar(500),
@ID int
AS
BEGIN
	Delete from [THUCDON]
	WHERE TenMonAn = @TenMonAn and ID = @ID
END
GO
USE [master]
GO
ALTER DATABASE [QL_NhaHang] SET  READ_WRITE 
GO
