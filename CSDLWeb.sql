CREATE DATABASE CSDLWeb
go
USE [CSDLWeb]
GO
/****** Object:  Table [dbo].[BanAn]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanAn](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SLGhe] [int] NOT NULL,
	[ID_Tang] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChitietHDB]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietHDB](
	[SL] [int] NOT NULL,
	[GiaTien] [int] NOT NULL,
	[KhuyenMai] [float] NOT NULL,
	[ID_Menu] [int] NOT NULL,
	[ID_HDB] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Menu] ASC,
	[ID_HDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChitietHDN]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietHDN](
	[SL] [int] NOT NULL,
	[ID_HH] [int] NOT NULL,
	[ID_HDN] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_HH] ASC,
	[ID_HDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChitietHDX]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietHDX](
	[SL] [int] NOT NULL,
	[ID_HH] [int] NOT NULL,
	[ID_HDX] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_HH] ASC,
	[ID_HDX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChitietTTB]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietTTB](
	[ID_Ban] [int] NOT NULL,
	[ID_TT] [int] NOT NULL,
	[ThoiGian] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Ban] ASC,
	[ID_TT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenCV] [nvarchar](50) NOT NULL,
	[HSL] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatBan]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatBan](
	[ThoiGian] [datetime] NOT NULL,
	[SL] [int] NOT NULL,
	[ID_Ban] [int] NOT NULL,
	[ID_KH] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Ban] ASC,
	[ID_KH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenHH] [nvarchar](50) NOT NULL,
	[SL] [int] NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[ID_NhaCC] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SoHD] [nvarchar](50) NOT NULL,
	[NgayXuat] [datetime] NOT NULL,
	[ID_NV] [int] NOT NULL,
	[ID_KH] [int] NULL,
	[ID_Ban] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[ID_NV] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonXuat]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonXuat](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NgayXuat] [datetime] NOT NULL,
	[ID_NV] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiMonAn]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMonAn](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[Gia] [int] NOT NULL,
	[Anh] [nvarchar](50) NOT NULL,
	[ID_Loai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[LuongCB] [int] NOT NULL,
	[ID_Phong] [int] NOT NULL,
	[ID_CV] [int] NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongQL]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongQL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tang]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenTang] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrang]    Script Date: 3/30/2023 9:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BanAn]  WITH CHECK ADD FOREIGN KEY([ID_Tang])
REFERENCES [dbo].[Tang] ([ID])
GO
ALTER TABLE [dbo].[ChitietHDB]  WITH CHECK ADD FOREIGN KEY([ID_HDB])
REFERENCES [dbo].[HoaDonBan] ([ID])
GO
ALTER TABLE [dbo].[ChitietHDB]  WITH CHECK ADD FOREIGN KEY([ID_Menu])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[ChitietHDN]  WITH CHECK ADD FOREIGN KEY([ID_HDN])
REFERENCES [dbo].[HoaDonNhap] ([ID])
GO
ALTER TABLE [dbo].[ChitietHDN]  WITH CHECK ADD FOREIGN KEY([ID_HH])
REFERENCES [dbo].[HangHoa] ([ID])
GO
ALTER TABLE [dbo].[ChitietHDX]  WITH CHECK ADD FOREIGN KEY([ID_HDX])
REFERENCES [dbo].[HoaDonXuat] ([ID])
GO
ALTER TABLE [dbo].[ChitietHDX]  WITH CHECK ADD FOREIGN KEY([ID_HH])
REFERENCES [dbo].[HangHoa] ([ID])
GO
ALTER TABLE [dbo].[ChitietTTB]  WITH CHECK ADD FOREIGN KEY([ID_Ban])
REFERENCES [dbo].[BanAn] ([ID])
GO
ALTER TABLE [dbo].[ChitietTTB]  WITH CHECK ADD FOREIGN KEY([ID_TT])
REFERENCES [dbo].[TinhTrang] ([ID])
GO
ALTER TABLE [dbo].[DatBan]  WITH CHECK ADD FOREIGN KEY([ID_Ban])
REFERENCES [dbo].[BanAn] ([ID])
GO
ALTER TABLE [dbo].[DatBan]  WITH CHECK ADD FOREIGN KEY([ID_KH])
REFERENCES [dbo].[KhachHang] ([ID])
GO
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD FOREIGN KEY([ID_NhaCC])
REFERENCES [dbo].[NhaCungCap] ([ID])
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD FOREIGN KEY([ID_Ban])
REFERENCES [dbo].[BanAn] ([ID])
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD FOREIGN KEY([ID_KH])
REFERENCES [dbo].[KhachHang] ([ID])
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD FOREIGN KEY([ID_NV])
REFERENCES [dbo].[NhanVien] ([ID])
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD FOREIGN KEY([ID_NV])
REFERENCES [dbo].[NhanVien] ([ID])
GO
ALTER TABLE [dbo].[HoaDonXuat]  WITH CHECK ADD FOREIGN KEY([ID_NV])
REFERENCES [dbo].[NhanVien] ([ID])
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD FOREIGN KEY([ID_Loai])
REFERENCES [dbo].[LoaiMonAn] ([ID])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([ID_CV])
REFERENCES [dbo].[ChucVu] ([ID])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([ID_Phong])
REFERENCES [dbo].[PhongQL] ([ID])
GO
GO
INSERT [dbo].[NhaCungCap] ( [TenNCC]) VALUES ( N'Thực phẩm sạch')
INSERT [dbo].[NhaCungCap] ( [TenNCC]) VALUES ( N'SuperMeat')
INSERT [dbo].[NhaCungCap] ( [TenNCC]) VALUES ( N'CleanFruit')
INSERT [dbo].[NhaCungCap] ( [TenNCC]) VALUES ( N'Rau Quả Thảo Nguyên')
INSERT [dbo].[NhaCungCap] ( [TenNCC]) VALUES ( N'VinMart')
INSERT [dbo].[NhaCungCap] ( [TenNCC]) VALUES ( N'Bách Hoá Xanh')
GO
INSERT [dbo].[KhachHang] ([HoTen],[SDT],[Email]) VALUES ( N'Nguyễn Đắc Thắng',0365485585,N'thangnd@gmailcom')
INSERT [dbo].[KhachHang] ([HoTen],[SDT],[Email]) VALUES ( N'Nguyễn Vương Quốc',0361555584,N'quocnv@gmailcom')
INSERT [dbo].[KhachHang] ([HoTen],[SDT],[Email]) VALUES ( N'Vũ Hoàng Anh',0384555745,N'anhvh@gmailcom')
INSERT [dbo].[KhachHang] ([HoTen],[SDT],[Email]) VALUES ( N'Nguyễn Quốc Trung',0365877941,N'trungnq@gmailcom')
INSERT [dbo].[KhachHang] ([HoTen],[SDT],[Email]) VALUES ( N'Ngô Đức Hải',0369984552,N'haind@gmailcom')
INSERT [dbo].[KhachHang] ([HoTen],[SDT],[Email]) VALUES ( N'Hoàng Anh Dũng',0351157455,N'dungha@gmailcom')
GO
INSERT [dbo].[Tang] ( [TenTang]) VALUES ( N'Tầng 1')
INSERT [dbo].[Tang] ( [TenTang]) VALUES ( N'Tầng 2')
INSERT [dbo].[Tang] ( [TenTang]) VALUES ( N'Tầng 3')
INSERT [dbo].[Tang] ( [TenTang]) VALUES ( N'Tầng 4')
GO
INSERT [dbo].[TinhTrang] ( [TrangThai]) VALUES ( N'Đang sử dụng')
INSERT [dbo].[TinhTrang] ( [TrangThai]) VALUES ( N'Còn trống')
INSERT [dbo].[TinhTrang] ( [TrangThai]) VALUES ( N'Đã đặt trước')
GO
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (3,1)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (3,1)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (3,1)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (3,1)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (3,1)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (4,2)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (4,2)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (4,2)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (4,2)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (4,2)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (4,2)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (2,3)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (2,3)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (2,3)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (2,3)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (2,3)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (5,4)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (5,4)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (5,4)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (5,4)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (5,4)
INSERT [dbo].[BanAn] ( [SLGhe],[ID_Tang]) VALUES (5,4)
GO
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (1,2,CAST(N'2023-03-29T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (2,2,CAST(N'2023-03-29T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (3,3,CAST(N'2023-03-29T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (4,1,CAST(N'2023-03-29T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (5,1,CAST(N'2023-03-29T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (6,1,CAST(N'2023-03-28T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (7,1,CAST(N'2023-03-28T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (8,1,CAST(N'2023-03-28T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (9,2,CAST(N'2023-03-28T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (10,3,CAST(N'2023-03-27T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (11,3,CAST(N'2023-03-27T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (12,2,CAST(N'2023-03-27T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (13,2,CAST(N'2023-03-27T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (14,3,CAST(N'2023-03-27T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (15,1,CAST(N'2023-03-26T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (16,1,CAST(N'2023-03-26T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (17,1,CAST(N'2023-03-26T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (18,1,CAST(N'2023-03-26T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (19,1,CAST(N'2023-03-26T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (20,2,CAST(N'2023-03-26T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (21,3,CAST(N'2023-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[ChitietTTB] ([ID_Ban], [ID_TT],[ThoiGian]) VALUES (22,3,CAST(N'2023-03-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[LoaiMonAn] ( [TenLoai]) VALUES (N'Khai vị')
INSERT [dbo].[LoaiMonAn] ( [TenLoai]) VALUES (N'Món chính')
INSERT [dbo].[LoaiMonAn] ( [TenLoai]) VALUES (N'Nước uống')
INSERT [dbo].[LoaiMonAn] ( [TenLoai]) VALUES (N'Tráng miệng')
GO
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Vịt kho sấu',250.000,'Vit-kho-sau.jpg',2)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Nghêu hấp xả',100.000,'Ngheu-hap-xa.jpg',2)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Hàu sốt vang',160.000,'Hau-sot-vang.jpg',2)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Tiramisu',150.000,'Tiramisu.jpg',4)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Cơm chiên dương châu',50.000,'Com-chien-duong-chau.jpg',1)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Gà hấp',150.000,'Ga-hap.jpg',2)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Gà bó xôi',150.000,'Ga-bo-xoi.jpg',2)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Gà đông tảo',220.000,'Ga-dong-tao.jpg',2)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Thịt đà điểu',150.000,'Thit-da-dieu.jpg',2)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Gà chiên xù',150.000,'Ga-chien-xu.jpg',2)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Vịt quay',150.000,'Vit-quay.jpg',2)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Vịt quay gừng',150.000,'Vit-quay-gung.jpg',2)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Hàu nướng',150.000,'Hau-nuong.jpg',2)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Canh chua',150.000,'Canh-chua.jpg',1)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Canh mặn',150.000,'Canh-man.jpg',1)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Vịt xào',150.000,'Vit-xao.jpg',2)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Cơm trắng',150.000,'Com-trang.jpg',1)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Gỏi đu đủ',150.000,'Goi-du-du.jpg',1)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Nộm tai heo',150.000,'Nom-tai-heo.jpg',1)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Bò xào măng',150.000,'Bo-xao-mang.jpg',1)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Bò xào rau cần',150.000,'Bo-xao-rau-can.jpg',1)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Nộm bò',150.000,'Nom-bo',1)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Vịt chiên xù',150.000,'Vit-chien-xu.jpg',2)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Hoa quả',150.000,'Hoa-qua.jpg',4)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Thịt ba chỉ',150.000,'Thit-ba-chi.jpg',1)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Socola',15.000,'Socola.jpg',4)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Coca-cola',15.000,'Coca.jpg',3)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Pepsi',15.000,'Pepsi.jpg',3)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Trà chanh',15.000,'Tra-chanh.jpg',3)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Rượu trắng',15.000,'Ruou-trang.jpg',3)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Rượu vang',15.000,'Ruou-vang.jpg',3)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Bia Việt',15.000,'Bia.jpg',3)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Bánh Plan',15.000,'Plan.jpg',4)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Bánh ngọt',15.000,'Banh-ngot.jpg',4)
INSERT [dbo].[Menu] ( [Tenmon],[Gia],[Anh],[ID_Loai]) VALUES (N'Đông sương',15.000,'Dong-suong.jpg',4)
GO
INSERT [dbo].[ChucVu] ( [TenCV], [HSL]) VALUES ( N'Giám đốc', 3)
INSERT [dbo].[ChucVu] ( [TenCV], [HSL]) VALUES ( N'Quản Lý', 2)
INSERT [dbo].[ChucVu] ( [TenCV], [HSL]) VALUES ( N'Nhân Viên', 1)
GO
INSERT [dbo].[PhongQL] ( [TenPhong]) VALUES (N'Phòng nhân sự')
INSERT [dbo].[PhongQL] ( [TenPhong]) VALUES (N'Phòng tài chính')
INSERT [dbo].[PhongQL] ( [TenPhong]) VALUES (N'Phòng vật chất')
GO
INSERT [dbo].[Nhanvien] ( [NgaySinh],[GioiTinh],[LuongCB],[ID_Phong],[ID_CV],[HoTen]) VALUES (CAST(N'2002-01-02' AS DateTime),0,250.000,1,1,N'Hồ Việt Hưng')
INSERT [dbo].[Nhanvien] ( [NgaySinh],[GioiTinh],[LuongCB],[ID_Phong],[ID_CV],[HoTen]) VALUES (CAST(N'2002-01-01' AS DateTime),0,250.000,2,1,N'Trần Chí Khang')
INSERT [dbo].[Nhanvien] ( [NgaySinh],[GioiTinh],[LuongCB],[ID_Phong],[ID_CV],[HoTen]) VALUES (CAST(N'2003-02-02' AS DateTime),0,250.000,3,1,N'Nguyễn Quang Minh')
INSERT [dbo].[Nhanvien] ( [NgaySinh],[GioiTinh],[LuongCB],[ID_Phong],[ID_CV],[HoTen]) VALUES (CAST(N'2004-03-03' AS DateTime),1,250.000,1,2,N'Trần Tuệ Lâm')
INSERT [dbo].[Nhanvien] ( [NgaySinh],[GioiTinh],[LuongCB],[ID_Phong],[ID_CV],[HoTen]) VALUES (CAST(N'2005-04-04' AS DateTime),1,250.000,2,2,N'Nguyễn Tuyết Thanh')
INSERT [dbo].[Nhanvien] ( [NgaySinh],[GioiTinh],[LuongCB],[ID_Phong],[ID_CV],[HoTen]) VALUES (CAST(N'2001-05-02' AS DateTime),1,250.000,3,2,N'Trần Phương Thảo')
INSERT [dbo].[Nhanvien] ( [NgaySinh],[GioiTinh],[LuongCB],[ID_Phong],[ID_CV],[HoTen]) VALUES (CAST(N'1999-06-05' AS DateTime),1,250.000,1,3,N'Nguyễn Như Quỳnh')
INSERT [dbo].[Nhanvien] ( [NgaySinh],[GioiTinh],[LuongCB],[ID_Phong],[ID_CV],[HoTen]) VALUES (CAST(N'1998-07-06' AS DateTime),1,250.000,1,3,N'Trần Diệu Quỳnh')
INSERT [dbo].[Nhanvien] ( [NgaySinh],[GioiTinh],[LuongCB],[ID_Phong],[ID_CV],[HoTen]) VALUES (CAST(N'1997-08-09' AS DateTime),0,250.000,2,3,N'Ngô Thiên Nhiên')
INSERT [dbo].[Nhanvien] ( [NgaySinh],[GioiTinh],[LuongCB],[ID_Phong],[ID_CV],[HoTen]) VALUES (CAST(N'2000-09-10' AS DateTime),0,250.000,2,3,N'Huỳnh Thanh Quang')
INSERT [dbo].[Nhanvien] ( [NgaySinh],[GioiTinh],[LuongCB],[ID_Phong],[ID_CV],[HoTen]) VALUES (CAST(N'2001-10-11' AS DateTime),0,250.000,3,3,N'Phùng Thế Cường')
INSERT [dbo].[Nhanvien] ( [NgaySinh],[GioiTinh],[LuongCB],[ID_Phong],[ID_CV],[HoTen]) VALUES (CAST(N'2002-11-02' AS DateTime),0,250.000,3,3,N'Hoàng Phúc Minh')
GO
INSERT [dbo].[DatBan] ([ThoiGian], [SL],[ID_Ban],[ID_KH]) VALUES (CAST(N'19:30:00.000' AS DateTime),2,12,1)
INSERT [dbo].[DatBan] ([ThoiGian], [SL],[ID_Ban],[ID_KH]) VALUES (CAST(N'13:30:00.000' AS DateTime),2,16,2)
INSERT [dbo].[DatBan] ([ThoiGian], [SL],[ID_Ban],[ID_KH]) VALUES (CAST(N'20:30:00.000' AS DateTime),2,14,3)
INSERT [dbo].[DatBan] ([ThoiGian], [SL],[ID_Ban],[ID_KH]) VALUES (CAST(N'1:30:00.000' AS DateTime),4,8,4)
INSERT [dbo].[DatBan] ([ThoiGian], [SL],[ID_Ban],[ID_KH]) VALUES (CAST(N'9:30:00.000' AS DateTime),3,9,5)
INSERT [dbo].[DatBan] ([ThoiGian], [SL],[ID_Ban],[ID_KH]) VALUES (CAST(N'12:30:00.000' AS DateTime),4,7,6)
INSERT [dbo].[DatBan] ([ThoiGian], [SL],[ID_Ban],[ID_KH]) VALUES (CAST(N'11:30:00.000' AS DateTime),3,10,1)
INSERT [dbo].[DatBan] ([ThoiGian], [SL],[ID_Ban],[ID_KH]) VALUES (CAST(N'16:30:00.000' AS DateTime),4,17,2)
INSERT [dbo].[DatBan] ([ThoiGian], [SL],[ID_Ban],[ID_KH]) VALUES (CAST(N'11:30:00.000' AS DateTime),5,21,3)
INSERT [dbo].[DatBan] ([ThoiGian], [SL],[ID_Ban],[ID_KH]) VALUES (CAST(N'17:30:00.000' AS DateTime),3,20,4)
INSERT [dbo].[DatBan] ([ThoiGian], [SL],[ID_Ban],[ID_KH]) VALUES (CAST(N'21:30:00.000' AS DateTime),5,22,5)
GO
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'11101',CAST(N'2023-03-26T00:00:00.000' AS DateTime),4,1,1)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'11102',CAST(N'2023-03-21T00:00:00.000' AS DateTime),5,2,12)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'11103',CAST(N'2023-03-22T00:00:00.000' AS DateTime),6,3,4)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'11104',CAST(N'2023-03-25T00:00:00.000' AS DateTime),4,4,22)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'11105',CAST(N'2023-03-21T00:00:00.000' AS DateTime),5,5,21)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'11106',CAST(N'2023-03-22T00:00:00.000' AS DateTime),6,6,15)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'11107',CAST(N'2023-03-27T00:00:00.000' AS DateTime),4,5,18)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'11108',CAST(N'2023-03-28T00:00:00.000' AS DateTime),5,6,17)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'11109',CAST(N'2023-03-28T00:00:00.000' AS DateTime),6,3,14)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'111010',CAST(N'2023-03-29T00:00:00.000' AS DateTime),4,2,13)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'111011',CAST(N'2023-03-21T00:00:00.000' AS DateTime),5,5,15)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'111012',CAST(N'2023-03-12T00:00:00.000' AS DateTime),6,6,17)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'111013',CAST(N'2023-03-22T00:00:00.000' AS DateTime),4,2,19)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'111014',CAST(N'2023-03-21T00:00:00.000' AS DateTime),5,3,3)
INSERT [dbo].[HoaDonBan] ( [SoHD],[NgayXuat],[ID_NV],[ID_KH],[ID_Ban]) VALUES (N'111015',CAST(N'2023-03-26T00:00:00.000' AS DateTime),6,1,2)
GO
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,1,1)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,2,2)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,3,3)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,4,4)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,5,5)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,6,6)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,7,7)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,8,8)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,11,9)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,12,10)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,13,11)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,21,12)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,20,13)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,17,14)
INSERT [dbo].[ChitietHDB] ([SL], [GiaTien],[KhuyenMai],[ID_Menu],[ID_HDB]) VALUES (3,350.000,0.1,18,15)
GO
INSERT [dbo].[HangHoa] ( [TenHH],[SL],[NgayNhap],[ID_NhaCC]) VALUES (N'Thịt heo',20,CAST(N'2023-02-26T00:00:00.000' AS DateTime),1)
INSERT [dbo].[HangHoa] ( [TenHH],[SL],[NgayNhap],[ID_NhaCC]) VALUES (N'Rau sống',20,CAST(N'2023-02-22T00:00:00.000' AS DateTime),2)
INSERT [dbo].[HangHoa] ( [TenHH],[SL],[NgayNhap],[ID_NhaCC]) VALUES (N'Cá',22,CAST(N'2023-02-21T00:00:00.000' AS DateTime),3)
INSERT [dbo].[HangHoa] ( [TenHH],[SL],[NgayNhap],[ID_NhaCC]) VALUES (N'Thịt bò',22,CAST(N'2023-02-10T00:00:00.000' AS DateTime),4)
INSERT [dbo].[HangHoa] ( [TenHH],[SL],[NgayNhap],[ID_NhaCC]) VALUES (N'Gia vị',23,CAST(N'2023-02-19T00:00:00.000' AS DateTime),5)
INSERT [dbo].[HangHoa] ( [TenHH],[SL],[NgayNhap],[ID_NhaCC]) VALUES (N'Thịt trâu',32,CAST(N'2023-02-18T00:00:00.000' AS DateTime),6)
INSERT [dbo].[HangHoa] ( [TenHH],[SL],[NgayNhap],[ID_NhaCC]) VALUES (N'Thịt rắn',19,CAST(N'2023-02-21T00:00:00.000' AS DateTime),1)
INSERT [dbo].[HangHoa] ( [TenHH],[SL],[NgayNhap],[ID_NhaCC]) VALUES (N'Trái cây',14,CAST(N'2023-02-26T00:00:00.000' AS DateTime),2)
INSERT [dbo].[HangHoa] ( [TenHH],[SL],[NgayNhap],[ID_NhaCC]) VALUES (N'Hải sản',24,CAST(N'2023-02-26T00:00:00.000' AS DateTime),3)
INSERT [dbo].[HangHoa] ( [TenHH],[SL],[NgayNhap],[ID_NhaCC]) VALUES (N'Thịt gà',21,CAST(N'2023-02-26T00:00:00.000' AS DateTime),4)
GO
INSERT [dbo].[HoaDonXuat] ( [NgayXuat],[ID_NV]) VALUES (CAST(N'2023-03-14T00:00:00.000' AS DateTime),11)
INSERT [dbo].[HoaDonXuat] ( [NgayXuat],[ID_NV]) VALUES (CAST(N'2023-03-17T00:00:00.000' AS DateTime),11)
INSERT [dbo].[HoaDonXuat] ( [NgayXuat],[ID_NV]) VALUES (CAST(N'2023-03-18T00:00:00.000' AS DateTime),12)
INSERT [dbo].[HoaDonXuat] ( [NgayXuat],[ID_NV]) VALUES (CAST(N'2023-02-19T00:00:00.000' AS DateTime),11)
INSERT [dbo].[HoaDonXuat] ( [NgayXuat],[ID_NV]) VALUES (CAST(N'2023-02-20T00:00:00.000' AS DateTime),6)
INSERT [dbo].[HoaDonXuat] ( [NgayXuat],[ID_NV]) VALUES (CAST(N'2023-03-21T00:00:00.000' AS DateTime),6)
INSERT [dbo].[HoaDonXuat] ( [NgayXuat],[ID_NV]) VALUES (CAST(N'2023-03-25T00:00:00.000' AS DateTime),11)
INSERT [dbo].[HoaDonXuat] ( [NgayXuat],[ID_NV]) VALUES (CAST(N'2023-03-27T00:00:00.000' AS DateTime),12)
GO
INSERT [dbo].[HoaDonNhap] ( [NgayNhap],[ID_NV]) VALUES (CAST(N'2023-02-26T00:00:00.000' AS DateTime),11)
INSERT [dbo].[HoaDonNhap] ( [NgayNhap],[ID_NV]) VALUES (CAST(N'2023-02-21T00:00:00.000' AS DateTime),12)
INSERT [dbo].[HoaDonNhap] ( [NgayNhap],[ID_NV]) VALUES (CAST(N'2023-02-20T00:00:00.000' AS DateTime),6)
INSERT [dbo].[HoaDonNhap] ( [NgayNhap],[ID_NV]) VALUES (CAST(N'2023-01-26T00:00:00.000' AS DateTime),6)
INSERT [dbo].[HoaDonNhap] ( [NgayNhap],[ID_NV]) VALUES (CAST(N'2023-01-17T00:00:00.000' AS DateTime),12)
INSERT [dbo].[HoaDonNhap] ( [NgayNhap],[ID_NV]) VALUES (CAST(N'2023-02-15T00:00:00.000' AS DateTime),11)
INSERT [dbo].[HoaDonNhap] ( [NgayNhap],[ID_NV]) VALUES (CAST(N'2023-02-14T00:00:00.000' AS DateTime),6)
INSERT [dbo].[HoaDonNhap] ( [NgayNhap],[ID_NV]) VALUES (CAST(N'2023-02-11T00:00:00.000' AS DateTime),12)
GO
INSERT [dbo].[ChitietHDN] ([ID_HDN], [ID_HH],[SL]) VALUES (1,1,11)
INSERT [dbo].[ChitietHDN] ([ID_HDN], [ID_HH],[SL]) VALUES (2,2,12)
INSERT [dbo].[ChitietHDN] ([ID_HDN], [ID_HH],[SL]) VALUES (3,3,19)
INSERT [dbo].[ChitietHDN] ([ID_HDN], [ID_HH],[SL]) VALUES (4,4,14)
INSERT [dbo].[ChitietHDN] ([ID_HDN], [ID_HH],[SL]) VALUES (5,5,11)
INSERT [dbo].[ChitietHDN] ([ID_HDN], [ID_HH],[SL]) VALUES (6,6,19)
INSERT [dbo].[ChitietHDN] ([ID_HDN], [ID_HH],[SL]) VALUES (7,7,18)
INSERT [dbo].[ChitietHDN] ([ID_HDN], [ID_HH],[SL]) VALUES (8,8,12)
GO
INSERT [dbo].[ChiTietHDX] ([ID_HDX], [ID_HH],[SL]) VALUES (1,1,12)
INSERT [dbo].[ChiTietHDX] ([ID_HDX], [ID_HH],[SL]) VALUES (2,2,11)
INSERT [dbo].[ChiTietHDX] ([ID_HDX], [ID_HH],[SL]) VALUES (3,3,14)
INSERT [dbo].[ChiTietHDX] ([ID_HDX], [ID_HH],[SL]) VALUES (4,4,09)
INSERT [dbo].[ChiTietHDX] ([ID_HDX], [ID_HH],[SL]) VALUES (5,5,06)
INSERT [dbo].[ChiTietHDX] ([ID_HDX], [ID_HH],[SL]) VALUES (6,6,05)
INSERT [dbo].[ChiTietHDX] ([ID_HDX], [ID_HH],[SL]) VALUES (7,7,12)
INSERT [dbo].[ChiTietHDX] ([ID_HDX], [ID_HH],[SL]) VALUES (8,8,18)