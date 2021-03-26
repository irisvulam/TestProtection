USE [SVI_TRN]
GO
/****** Object:  Table [dbo].[Approve_Diem_Training_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Approve_Diem_Training_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NOT NULL,
	[TenNV] [nvarchar](255) NULL,
	[Position] [nvarchar](255) NULL,
	[Diem_Training] [decimal](18, 0) NOT NULL,
	[TrangThai] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Ngay_CapNhat] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC,
	[MaNV] ASC,
	[Ngay_CapNhat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Approve_Level_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Approve_Level_Tbl](
	[MaNV] [nvarchar](255) NOT NULL,
	[Nam] [int] NOT NULL,
	[Level_Job] [nvarchar](255) NULL,
	[Diem_TR] [nvarchar](255) NULL,
	[Diem_TRLC] [nvarchar](255) NULL,
	[Diem_Plan] [nvarchar](255) NULL,
	[Diem_PlanLC] [nvarchar](255) NULL,
	[LyDo] [nvarchar](255) NULL,
	[NguoiDuyet] [nvarchar](255) NULL,
	[NgayDuyet] [datetimeoffset](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[Nam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApprovedReportGeneral]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApprovedReportGeneral](
	[report_general_id] [int] IDENTITY(1,1) NOT NULL,
	[staff_id] [nvarchar](50) NULL,
	[course_id] [nvarchar](50) NULL,
	[staff_name] [nvarchar](128) NULL,
	[position] [nvarchar](128) NULL,
	[gender] [bit] NULL,
	[department_id_1] [nvarchar](128) NULL,
	[department_id_2] [nvarchar](128) NULL,
	[working_time] [int] NULL,
	[training_point_1] [float] NULL,
	[training_point_2] [float] NULL,
	[profession_point_1] [nvarchar](50) NULL,
	[profession_point_2] [nvarchar](50) NULL,
	[nscl_point_minus] [nvarchar](50) NULL,
	[nscl_point] [float] NULL,
	[curent_rank] [nvarchar](50) NULL,
	[expected_rank] [nvarchar](50) NULL,
	[note] [nvarchar](512) NULL,
	[status] [bit] NULL,
	[year] [int] NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_report_general_id] PRIMARY KEY CLUSTERED 
(
	[report_general_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[assignment_id] [bigint] IDENTITY(1,1) NOT NULL,
	[assignment_name] [nvarchar](50) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[assignment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AttitudeRating]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttitudeRating](
	[attitude_rating_id] [bigint] IDENTITY(1,1) NOT NULL,
	[employee_course_id] [int] NOT NULL,
	[rating_item_id] [nvarchar](128) NOT NULL,
	[prd] [bit] NULL,
	[pd] [bit] NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK__Attitude__140C54FCF66E2A5B] PRIMARY KEY CLUSTERED 
(
	[attitude_rating_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [nvarchar](128) NOT NULL,
	[information] [nvarchar](300) NULL,
	[training_code_id] [nvarchar](128) NOT NULL,
	[object_id] [nvarchar](128) NOT NULL,
	[department_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[training_code_version] [smallint] NOT NULL,
	[request_department] [nvarchar](200) NULL,
	[request_date] [datetime] NULL,
	[skill_percent] [float] NULL,
	[attitude_percent] [float] NULL,
	[ng_from] [smallint] NULL,
	[ng_to] [smallint] NULL,
	[ok_from] [smallint] NULL,
	[ok_to] [smallint] NULL,
	[good_from] [smallint] NULL,
	[good_to] [smallint] NULL,
	[is_rating_attitude] [bit] NULL,
 CONSTRAINT [PK__Course__8F1EF7AE8EA303FA] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course_Phase]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Phase](
	[course_phase_id] [bigint] IDENTITY(1,1) NOT NULL,
	[course_id] [nvarchar](128) NOT NULL,
	[phase_id] [nvarchar](128) NOT NULL,
	[object_id] [nvarchar](128) NOT NULL,
	[rating_form_id] [nvarchar](128) NOT NULL,
	[number_of_days] [smallint] NULL,
	[coefficient] [smallint] NOT NULL,
	[target] [smallint] NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[percent_require] [int] NULL,
 CONSTRAINT [PK__Course_P__BCC5A9C5A0BE6D58] PRIMARY KEY CLUSTERED 
(
	[course_phase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhGia_ThaiDo_40Per_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia_ThaiDo_40Per_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NOT NULL,
	[MaHangMucDanhGia] [nvarchar](255) NOT NULL,
	[NoiDungHangMuc] [nvarchar](255) NULL,
	[Diem] [decimal](18, 0) NULL,
	[Ngay_DanhGia] [date] NULL,
	[Note] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Ngay_Tao] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC,
	[MaNV] ASC,
	[MaHangMucDanhGia] ASC,
	[Ngay_Tao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhGia_ThucTap_23Days_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia_ThucTap_23Days_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NOT NULL,
	[MaHangMucDanhGia] [nvarchar](255) NOT NULL,
	[NoiDungHangMuc] [nvarchar](255) NULL,
	[Diem_ThucTap] [int] NULL,
	[Ngay_DanhGia] [date] NULL,
	[Note] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Ngay_Tao] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC,
	[MaNV] ASC,
	[MaHangMucDanhGia] ASC,
	[Ngay_Tao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[department_id] [nvarchar](128) NOT NULL,
	[department_name] [nvarchar](128) NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[note] [nvarchar](512) NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Diem_LyThuyet_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem_LyThuyet_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NOT NULL,
	[Diem_LyThuyet] [int] NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
	[Nguoi_Nhap] [nchar](1) NULL,
	[Ngay_Nhap] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC,
	[MaNV] ASC,
	[Ngay_Nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Diem_ThaiDo_New_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem_ThaiDo_New_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NOT NULL,
	[Diem_ThaiDo] [int] NULL,
	[KetQua_Dat] [bit] NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
	[Nguoi_Nhap] [nchar](1) NULL,
	[Ngay_Nhap] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC,
	[MaNV] ASC,
	[Ngay_Nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Diem_TongQuat_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem_TongQuat_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NOT NULL,
	[TenNV] [nvarchar](255) NULL,
	[DoiTuong_DG] [nvarchar](255) NULL,
	[LyThuyet] [nchar](1) NULL,
	[ThucHanh] [nchar](1) NULL,
	[LuyenTap] [nchar](1) NULL,
	[ThucTap] [nchar](1) NULL,
	[Tong] [nchar](1) NULL,
	[KetquaChung] [nvarchar](255) NULL,
	[ThaiDo] [nvarchar](255) NULL,
	[Final_Mark] [nvarchar](255) NULL,
	[Note_ThaiDo] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Document]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Document](
	[document_id] [nvarchar](128) NOT NULL,
	[document_name] [nvarchar](200) NOT NULL,
	[object_id] [nvarchar](128) NOT NULL,
	[group_id] [varchar](50) NOT NULL,
	[assignment_id] [nvarchar](50) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[version] [smallint] NOT NULL,
	[path] [nvarchar](500) NULL,
	[note] [nvarchar](512) NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[document_id] ASC,
	[version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee_Course]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Course](
	[employee_course_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [nvarchar](128) NOT NULL,
	[course_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feature]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[feature_id] [bigint] IDENTITY(1,1) NOT NULL,
	[feature_name] [nvarchar](128) NOT NULL,
	[created] [date] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [date] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[feature_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feature_Permission]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature_Permission](
	[feature_permission_id] [int] IDENTITY(1,1) NOT NULL,
	[permission_id] [nvarchar](50) NOT NULL,
	[feature_id] [bigint] NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[feature_permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Final_Report_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Final_Report_Tbl](
	[MaNV] [nchar](1) NOT NULL,
	[TenNV] [nvarchar](255) NULL,
	[ChucVu] [nvarchar](255) NULL,
	[Thoigian_LV] [nvarchar](255) NULL,
	[Diem_Training] [nvarchar](255) NULL,
	[Diem_TR_LC] [nvarchar](255) NULL,
	[Diem_Plan_NT] [nvarchar](255) NULL,
	[Diem_LC_NT] [nvarchar](255) NULL,
	[Diem_Plan] [nvarchar](255) NULL,
	[Diem_LC] [nvarchar](255) NULL,
	[Diem_NS_Last_Year] [nvarchar](255) NULL,
	[Loi_vipham] [nvarchar](255) NULL,
	[Cur_Diem_NS] [nvarchar](255) NULL,
	[Level_NamTrc] [nvarchar](255) NULL,
	[Cur_Level] [nvarchar](255) NULL,
	[Xet_DK] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[group_id] [bigint] IDENTITY(1,1) NOT NULL,
	[group_name] [nvarchar](50) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangMuc_DanhGia_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangMuc_DanhGia_Tbl](
	[MaHangMucDanhGia] [nvarchar](255) NOT NULL,
	[NoiDungHangMuc] [nvarchar](255) NULL,
	[LoaiHangMuc] [nvarchar](255) NULL,
	[DoiTuong_DG] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Ngay_Tao] [datetimeoffset](7) NULL,
	[Stt] [int] NULL,
	[Dang_Active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangMucDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangMuc_DaoTao_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangMuc_DaoTao_Tbl](
	[MaHangMuc] [nvarchar](255) NOT NULL,
	[TenHangMuc] [nvarchar](255) NULL,
	[MaTeam] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Ngay_Tao] [datetimeoffset](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[History_Log_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[History_Log_Tbl](
	[Staff_code] [char](255) NOT NULL,
	[Staff_name] [nchar](1) NULL,
	[LogOn_time] [datetimeoffset](7) NOT NULL,
	[LogOff_Time] [datetimeoffset](7) NULL,
	[PC_Name] [nchar](1) NULL,
	[IP] [nchar](1) NULL,
	[UserName] [nchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_code] ASC,
	[LogOn_time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Level]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[level_id] [int] NOT NULL,
	[level_name] [nvarchar](128) NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LichSuLogin]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuLogin](
	[tentaikhoan] [nvarchar](255) NOT NULL,
	[ngaygio] [datetimeoffset](7) NULL,
	[tennv] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[tentaikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_ChungTuDT_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_ChungTuDT_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[ThongTin_CT] [nvarchar](255) NULL,
	[Ma_DaoTao] [nchar](1) NOT NULL,
	[Ma_DanhSachHL] [nchar](1) NOT NULL,
	[DoiTuong_DG] [nvarchar](255) NULL,
	[Ngay_BatDau] [date] NULL,
	[Ngay_KetThuc] [date] NULL,
	[Ngay_YeuCau] [date] NULL,
	[Nguoi_tao] [nchar](1) NOT NULL,
	[Ngay_Tao] [datetimeoffset](7) NULL,
	[Trang_thai] [nchar](1) NOT NULL,
	[Ma_Edit] [nchar](1) NULL,
	[Note] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_CongDoan_New_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_CongDoan_New_Tbl](
	[MaCongDoanDT] [nchar](1) NOT NULL,
	[TenCongDoanDT] [nvarchar](255) NULL,
	[BoPhan] [nvarchar](255) NULL,
	[Level_CD] [int] NULL,
	[Phai_Nu] [bit] NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[TrangThai] [nchar](1) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCongDoanDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_CongDoan_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_CongDoan_Tbl](
	[MaCongDoanDT] [nvarchar](255) NOT NULL,
	[TenCongDoanDT] [nvarchar](255) NULL,
	[ID_CongDoan] [nchar](1) NULL,
	[MaSP] [nvarchar](255) NOT NULL,
	[TenSP] [nvarchar](255) NULL,
	[TocDo] [decimal](18, 0) NULL,
	[YeuCau] [decimal](18, 0) NULL,
	[DoiTuong] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[TrangThai] [nchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCongDoanDT] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_Ma_DaoTao_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_Ma_DaoTao_Tbl](
	[Ma_DaoTao] [nvarchar](255) NOT NULL,
	[ThongTin_Ma_DT] [nvarchar](255) NULL,
	[DoiTuong_DG] [nvarchar](255) NULL,
	[PhongBan] [nvarchar](255) NULL,
	[Ma_LyThuyet] [nvarchar](255) NOT NULL,
	[Ma_ThucHanh] [nvarchar](255) NULL,
	[Nguoi_tao] [nvarchar](255) NOT NULL,
	[Ngay_Tao] [datetimeoffset](7) NOT NULL,
	[Trang_thai] [nvarchar](255) NOT NULL,
	[Ma_Edit] [nchar](1) NULL,
	[Note] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_DaoTao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_Ma_LyThuyet_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_Ma_LyThuyet_Tbl](
	[Ma_LyThuyet] [nchar](1) NOT NULL,
	[MaTaiLieu] [nvarchar](255) NOT NULL,
	[Ngay_Tao] [datetimeoffset](7) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Trang_Thai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_LyThuyet] ASC,
	[MaTaiLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_Ma_ThucHanh_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_Ma_ThucHanh_Tbl](
	[Ma_ThucHanh] [nchar](1) NOT NULL,
	[MaCongDoanDT] [nvarchar](255) NOT NULL,
	[Ngay_Tao] [datetimeoffset](7) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Trang_Thai] [nvarchar](255) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ThucHanh] ASC,
	[MaCongDoanDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_NVHL_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_NVHL_Tbl](
	[Ma_ChungTu] [nchar](1) NOT NULL,
	[MaNV] [nchar](1) NULL,
	[TrangThai] [nchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_ChungTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[List_TaiLieu_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[List_TaiLieu_Tbl](
	[MaTaiLieu] [nvarchar](255) NOT NULL,
	[TenTaiLieu] [nvarchar](255) NOT NULL,
	[DoiTuong] [nvarchar](255) NULL,
	[MaTeam] [nvarchar](255) NULL,
	[NguoiPhuTrach] [nvarchar](255) NULL,
	[Mota] [nvarchar](255) NULL,
	[NoiDungCapNhat] [nvarchar](255) NULL,
	[DuongDan] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[TrangThai] [nchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ListFile_QuiTrinh_DT_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListFile_QuiTrinh_DT_Tbl](
	[CodePhienBan] [nvarchar](255) NOT NULL,
	[Ngay_Update] [datetimeoffset](7) NOT NULL,
	[TenPhienBan] [nvarchar](255) NULL,
	[Nguoi_Update] [nvarchar](255) NOT NULL,
	[Ngay_ApDung] [date] NULL,
	[NoiDung_Update] [nvarchar](255) NULL,
	[DuongDanFile] [nvarchar](255) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[TrangThai] [nchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodePhienBan] ASC,
	[Ngay_Update] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [nvarchar](128) NOT NULL,
	[screen] [nvarchar](512) NOT NULL,
	[action] [nvarchar](512) NOT NULL,
	[information] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NULL,
	[created_by] [varchar](20) NULL,
	[updated_by] [varchar](20) NULL,
	[ip] [varchar](60) NULL,
 CONSTRAINT [PK_Log_1] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log_Training_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log_Training_Tbl](
	[Ma_Edit] [nchar](1) NOT NULL,
	[Ngay_Edit] [datetimeoffset](7) NULL,
	[ThongTin_Edit] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_Edit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ma_List_DSNV_Tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ma_List_DSNV_Tbl](
	[Ma_DanhSachHL] [nchar](1) NOT NULL,
	[MaNV] [nvarchar](255) NOT NULL,
	[Ngay_Tao] [datetimeoffset](7) NULL,
	[Nguoi_Tao] [nchar](1) NULL,
	[Trang_Thai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma_DanhSachHL] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ngach_tbl]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ngach_tbl](
	[MaNV] [nvarchar](255) NOT NULL,
	[Nam] [nvarchar](255) NOT NULL,
	[Ngach] [nvarchar](255) NULL,
	[Nguoi_Duyet] [nvarchar](255) NULL,
	[Ngay_Duyet] [datetimeoffset](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[Nam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Object]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Object](
	[object_id] [nvarchar](128) NOT NULL,
	[object_name] [nvarchar](200) NOT NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[is_object_training] [bit] NULL,
	[linked_object] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[object_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permission]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[permission_id] [nvarchar](50) NOT NULL,
	[permission_name] [nvarchar](128) NULL,
	[created] [date] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [date] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phase]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phase](
	[phase_id] [nvarchar](128) NOT NULL,
	[phase_name] [nvarchar](128) NOT NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[phase_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PointNSCL]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointNSCL](
	[point_NSCL_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [nvarchar](50) NOT NULL,
	[nscl_point] [float] NULL,
	[year] [int] NOT NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_point_NSCL_id] PRIMARY KEY CLUSTERED 
(
	[point_NSCL_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Process]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process](
	[process_id] [nvarchar](128) NOT NULL,
	[process_name] [nvarchar](200) NOT NULL,
	[version] [int] NOT NULL,
	[content_update] [nvarchar](512) NULL,
	[path] [nvarchar](500) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[process_id] ASC,
	[version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProfessionRating]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProfessionRating](
	[profession_rating_id] [bigint] IDENTITY(1,1) NOT NULL,
	[course_phase_id] [bigint] NOT NULL,
	[employee_course_id] [int] NOT NULL,
	[rating_item_id] [nvarchar](128) NOT NULL,
	[score] [smallint] NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK__Professi__8DD7B237668A1F82] PRIMARY KEY CLUSTERED 
(
	[profession_rating_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rank]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rank](
	[rank_id] [nvarchar](128) NOT NULL,
	[rank_name] [nvarchar](128) NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_Rank] PRIMARY KEY CLUSTERED 
(
	[rank_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RatingForm]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingForm](
	[rating_form_id] [nvarchar](128) NOT NULL,
	[rating_form_name] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rating_form_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RatingGroup]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingGroup](
	[rating_group_id] [nvarchar](128) NOT NULL,
	[rating_group_name] [nvarchar](200) NOT NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[rating_group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RatingItem]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RatingItem](
	[rating_item_id] [nvarchar](128) NOT NULL,
	[rating_item_name] [nvarchar](500) NOT NULL,
	[rating_group_id] [nvarchar](128) NULL,
	[rating_type_id] [varchar](10) NULL,
	[status] [bit] NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[object_id] [nvarchar](128) NULL,
 CONSTRAINT [PK__RatingIt__606B6C892522E102] PRIMARY KEY CLUSTERED 
(
	[rating_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RatingType]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RatingType](
	[rating_type_id] [varchar](10) NOT NULL,
	[rating_type_name] [nvarchar](200) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK__RatingTy__9784BFC68AE2C991] PRIMARY KEY CLUSTERED 
(
	[rating_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [nvarchar](128) NOT NULL,
	[role_name] [nvarchar](128) NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role_Feature_Permission]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature_Permission](
	[role_feature_permission_id] [bigint] IDENTITY(1,1) NOT NULL,
	[feature_permission_id] [int] NOT NULL,
	[role_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_feature_permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[schema_version]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schema_version](
	[installed_rank] [int] NOT NULL,
	[version] [nvarchar](50) NULL,
	[description] [nvarchar](200) NULL,
	[type] [nvarchar](20) NOT NULL,
	[script] [nvarchar](1000) NOT NULL,
	[checksum] [int] NULL,
	[installed_by] [nvarchar](100) NOT NULL,
	[installed_on] [datetime] NOT NULL,
	[execution_time] [int] NOT NULL,
	[success] [bit] NOT NULL,
 CONSTRAINT [schema_version_pk] PRIMARY KEY CLUSTERED 
(
	[installed_rank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stage]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage](
	[stage_id] [nvarchar](128) NOT NULL,
	[stage_name] [nvarchar](200) NOT NULL,
	[rank] [int] NULL,
	[gender] [bit] NOT NULL,
	[status] [bit] NULL,
	[department_id] [nvarchar](128) NULL,
	[object_id] [nvarchar](128) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[note] [nvarchar](512) NULL,
 CONSTRAINT [PK__Stage__CFC78760E4B4487B] PRIMARY KEY CLUSTERED 
(
	[stage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StageRating]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StageRating](
	[stage_rating_id] [bigint] IDENTITY(1,1) NOT NULL,
	[course_phase_id] [bigint] NOT NULL,
	[employee_course_id] [int] NOT NULL,
	[stage_id] [nvarchar](128) NOT NULL,
	[product_id] [nvarchar](20) NULL,
	[xx_hsl] [float] NOT NULL,
	[number_of_employee] [smallint] NOT NULL,
	[first] [float] NULL,
	[second] [float] NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK__StageRat__92EA3DB831FF7E33] PRIMARY KEY CLUSTERED 
(
	[stage_rating_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TheoryRating]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheoryRating](
	[theory_rating_id] [bigint] IDENTITY(1,1) NOT NULL,
	[course_phase_id] [bigint] NOT NULL,
	[employee_course_id] [int] NOT NULL,
	[score] [smallint] NULL,
	[note] [nvarchar](512) NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK__TheoryRa__302D92D279E292B7] PRIMARY KEY CLUSTERED 
(
	[theory_rating_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrainingCode]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingCode](
	[training_code_id] [nvarchar](128) NOT NULL,
	[version] [smallint] NOT NULL,
	[information] [nvarchar](512) NULL,
	[department_id] [nvarchar](128) NOT NULL,
	[object_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_TrainingCode] PRIMARY KEY CLUSTERED 
(
	[training_code_id] ASC,
	[version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrainingCode_Document]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingCode_Document](
	[training_code_document_id] [int] IDENTITY(1,1) NOT NULL,
	[training_code_id] [nvarchar](128) NOT NULL,
	[document_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[training_code_version] [smallint] NOT NULL,
	[document_version] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[training_code_document_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrainingCode_Stage]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingCode_Stage](
	[training_code_stage_id] [bigint] IDENTITY(1,1) NOT NULL,
	[training_code_id] [nvarchar](128) NOT NULL,
	[stage_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NOT NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
	[training_code_version] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[training_code_stage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Role](
	[user_role_id] [int] IDENTITY(1,1) NOT NULL,
	[user_login] [nvarchar](128) NOT NULL,
	[role_id] [nvarchar](128) NOT NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK__User_Rol__B8D9ABA28CBAF040] PRIMARY KEY CLUSTERED 
(
	[user_role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_login] [nvarchar](128) NOT NULL,
	[user_id] [nvarchar](128) NULL,
	[full_name] [nvarchar](128) NOT NULL,
	[password] [nvarchar](128) NOT NULL,
	[force_change_pw] [bit] NULL,
	[email] [nvarchar](128) NULL,
	[department] [nvarchar](128) NOT NULL,
	[note] [nvarchar](512) NULL,
	[status] [bit] NULL,
	[created] [datetime] NULL,
	[created_by] [nvarchar](128) NULL,
	[updated] [datetime] NULL,
	[updated_by] [nvarchar](128) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[Get_All_Staff]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Get_All_Staff] AS

	SELECT * FROM NhanVien






GO
/****** Object:  View [dbo].[Product_View_Get_List_Product]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Product_View_Get_List_Product] AS

	SELECT DISTINCT MaSP, TenSP FROM SWP






GO
/****** Object:  View [dbo].[Raw_Count_Report_Staff_Data]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================      
-- Author: ThinhDH    
-- Create date: 2019-04-22
-- Description: Raw View to count for report staff data
-- =============================================
CREATE VIEW [dbo].[Raw_Count_Report_Staff_Data] AS

	SELECT TT.course_id, TT.object_id, TT.staffId, TT.TenNV AS staffName, TT.NghiViec AS isQuit, TT.PhaiNu AS gender, TT.ChucVu AS position, 
		   TT.department_id_1 AS departmentId1, TT.department_id_2 AS departmentId2, TT.workingTime, TT.curentRank as currentRank, TT.currentDepartment
	FROM (

		SELECT DISTINCT T0.course_id, T0.object_id, T0.staffId, T0.TenNV, T0.PhaiNu, T0.ChucVu, T0.currentDepartment,
								   CASE   
    									WHEN T0.oldDepartment IS NOT NULL AND T0.oldDepartment <> T0.departmentLC THEN T0.oldDepartment   
    									WHEN (T0.oldDepartment IS NULL or T0.oldDepartment = '') AND (T0.departmentLC IS NULL or T0.departmentLC = '') THEN T0.currentDepartment  
    									ELSE T0.departmentLC END AS department_id_1,  
    								CASE WHEN T0.oldDepartment IS NOT NULL AND T0.oldDepartment <> T0.departmentLC THEN T0.departmentLC ELSE '' END AS department_id_2,
									T0.workingTime, ISNULL(ISNULL(C2.curent_rank, T0.curentRank),'A1') AS curentRank,
									C2.training_point_1, C2.training_point_2, T0.NghiViec, T0.Ngay_DoiPhong
		FROM (
						SELECT DISTINCT c.course_id, c.end_date, c.object_id, nv.MaNV AS staffId, nv.TenNV, nv.PhaiNu, nv.ChucVu, nv.NghiViec, nv.Ngay_DoiPhong,
										dbo.Get_Before_PhongSX_Of_Staff(nv.MaNV, CONVERT(nvarchar(4), YEAR(GETDATE())) + '/08/31', dbo.Get_PhongSX_Of_Staff(nv.MaNV, CONVERT(nvarchar(4), YEAR(GETDATE())) + '/08/31')) AS oldDepartment,
										ISNULL(dbo.Get_PhongSX_Of_Staff(nv.MaNV, CONVERT(nvarchar(4), YEAR(GETDATE())) + '/08/31'),'') AS departmentLC,  
										ROUND(CAST(DATEDIFF(DAY, nv.NgayVaoCTy, GETDATE()) AS FLOAT) / CAST(30 AS FLOAT), 2) AS workingTime,
										CASE WHEN DATEDIFF(MONTH, nv.NgayVaoCTy, GETDATE()) < 12 THEN 'A1' ELSE NULL END AS curentRank,
										nv.PhongSX AS currentDepartment 
						FROM NhanVien nv			 WITH(NOLOCK)
						LEFT JOIN Employee_Course ec WITH(NOLOCK) ON nv.MaNV = ec.employee_id
						LEFT JOIN Course C			 WITH(NOLOCK) ON C.course_id = ec.course_id
						WHERE nv.NghiViec = 0 
		) AS T0
					LEFT JOIN (SELECT ARG1.* FROM ApprovedReportGeneral ARG1
							   INNER JOIN (SELECT ARG2.staff_id, MAX(ARG2.report_general_id) AS maxId FROM ApprovedReportGeneral ARG2
											GROUP BY ARG2.staff_id) C1 ON C1.maxId = ARG1.report_general_id) C2 ON C2.staff_id = T0.staffId
											WHERE T0.currentDepartment IN (SELECT D.department_id FROM Department D)
	) AS TT









GO
/****** Object:  View [dbo].[Raw_Report_Staff_Data]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================      
-- Author: Phat Dat     
-- Create date: 2019-03-06
-- Description: Raw View for report staff data
-- =============================================
CREATE VIEW [dbo].[Raw_Report_Staff_Data] AS

	SELECT TT.course_id, TT.object_id, TT.staffId, TT.TenNV AS staffName, TT.NghiViec AS isQuit, TT.PhaiNu AS gender, TT.ChucVu AS position, 
		   TT.department_id_1 AS departmentId1, TT.department_id_2 AS departmentId2, TT.workingTime, TT.trainingPoint1, TT.trainingPoint2,
		   CASE WHEN TT.curentRank = 'A1' THEN TT.professionPoint1 ELSE '100% (7/7 CÐ)' END AS professionPoint1, TT.professionPoint2, TT.currentDepartment,
		   TT.curentRank as currentRank
	FROM (
		SELECT T.course_id, T.object_id, T.staffId, T.TenNV, T.PhaiNu, T.ChucVu, T.department_id_1, T.department_id_2, T.workingTime, T.currentDepartment,
			   CASE 
    				WHEN T.department_id_2 = '' AND lower(T.course_id) like '%w4%' THEN ROUND(dbo.Calculate_Final_Score(T.staffId, dbo.Get_Before_Course_Of_Staff_By_Course(T.staffId, T.course_id)), 2)  
    				WHEN T.department_id_2 = '' THEN ROUND(dbo.Calculate_Final_Score(T.staffId, dbo.Get_Course_Of_Staff(T.staffId)), 2)  
    				WHEN T.department_id_2 != '' THEN ROUND(dbo.Calculate_Final_Score(T.staffId, dbo.Get_Before_Course_Of_Staff_By_Course(T.staffId, dbo.Get_Course_Of_Staff_LC(T.staffId))), 2)   
    			END AS trainingPoint1,   
    		   CASE WHEN T.department_id_2 = '' AND T.department_id_2 IS NULL THEN NULL   
    				WHEN T.department_id_2 != '' AND T.department_id_2 IS NOT NULL THEN ROUND(dbo.Calculate_Final_Score(T.staffId, dbo.Get_Course_Of_Staff_LC(T.staffId)), 2)   
    			END AS trainingPoint2,  			 
			   CASE WHEN T.department_id_1 = '' THEN NULL 
			   		WHEN LOWER(dbo.Get_Course_Of_Staff(T.staffId)) LIKE '%w4%' AND T.lastestEndDate > CONVERT(nvarchar(4), (YEAR(T.lastestEndDate))) + '/08/31' AND YEAR(T.lastestEndDate) < YEAR(GETDATE()) 
						THEN dbo.Get_Profession_Point(T.staffId, dbo.Get_PhongSX_Of_Staff_By_Course(dbo.Get_Course_Of_Staff(T.staffId)), T.PhaiNu, YEAR(T.lastestEndDate) + 1)
					WHEN LOWER(dbo.Get_Course_Of_Staff(T.staffId)) LIKE '%w4%' AND T.lastestEndDate < CONVERT(nvarchar(4), (YEAR(T.lastestEndDate))) + '/08/31' AND YEAR(T.lastestEndDate) < YEAR(GETDATE()) 
						THEN dbo.Get_Profession_Point(T.staffId, dbo.Get_PhongSX_Of_Staff_By_Course(dbo.Get_Course_Of_Staff(T.staffId)), T.PhaiNu, YEAR(T.lastestEndDate))
					ELSE CASE WHEN T.lastestEndDate > CONVERT(nvarchar(4), (YEAR(T.lastestEndDate))) + '/08/31' AND YEAR(T.lastestEndDate) < YEAR(GETDATE()) 
					THEN dbo.Get_Profession_Point(T.staffId, T.department_id_1, T.PhaiNu, YEAR(T.lastestEndDate) + 1)
					ELSE dbo.Get_Profession_Point(T.staffId, T.department_id_1, T.PhaiNu, YEAR(T.lastestEndDate)) END
					END AS professionPoint1,
				CASE 
					WHEN T.department_id_2 = '' THEN NULL
				ELSE 
					CASE 
						WHEN T.lastestEndDate > CONVERT(nvarchar(4), (YEAR(T.lastestEndDate))) + '/08/31' AND YEAR(T.lastestEndDate) < YEAR(GETDATE())
						THEN dbo.Get_Profession_Point(T.staffId, dbo.Get_PhongSX_Of_Staff_By_Course(dbo.Get_Course_Of_Staff(T.staffId)), T.PhaiNu, YEAR(T.lastestEndDate) + 1)
						ELSE dbo.Get_Profession_Point(T.staffId, dbo.Get_PhongSX_Of_Staff_By_Course(dbo.Get_Course_Of_Staff(T.staffId)), T.PhaiNu, YEAR(T.lastestEndDate)) 
						END
					END AS professionPoint2,
					 T.curentRank, T.NghiViec
		FROM (
			SELECT TH.course_id, TH.object_id, TH.staffId, TH.TenNV, TH.PhaiNu, TH.ChucVu, TH.department_id_1, TH.department_id_2, TH.currentDepartment,
				   TH.workingTime, TH.curentRank, TH.training_point_1, TH.training_point_2, TH.NghiViec,
				   (SELECT TOP 1 C.end_date -- Get the lastest course's start date of this staff
					FROM Course C JOIN Employee_Course EC
								ON C.course_id = EC.course_id
								AND EC.employee_id = TH.staffId
								ORDER BY C.end_date DESC) AS lastestEndDate
			FROM (
					SELECT DISTINCT T0.course_id, T0.end_date, T0.object_id, T0.staffId, T0.TenNV, T0.PhaiNu, T0.ChucVu, 
								    CASE   
    									WHEN T0.oldDepartment IS NOT NULL AND T0.departmentLC = '' AND LOWER(T0.course_id) like '%w4%' THEN dbo.Get_PhongSX_Of_Staff_CBP(T0.staffId) 
    									WHEN T0.oldDepartment IS NOT NULL AND T0.oldDepartment <> T0.departmentLC THEN T0.oldDepartment   
    									WHEN (T0.oldDepartment IS NULL or T0.oldDepartment = '') AND T0.departmentLC = '' THEN T0.currentDepartment  
    								ELSE T0.departmentLC END AS department_id_1,  
    									CASE 
    									WHEN T0.oldDepartment IS NOT NULL AND T0.oldDepartment <> T0.departmentLC THEN T0.departmentLC  
    								ELSE '' END AS department_id_2,
									T0.workingTime, ISNULL(ISNULL(C2.curent_rank, T0.curentRank), 'A1') AS curentRank,
									C2.training_point_1, C2.training_point_2, T0.currentDepartment, T0.NghiViec, T0.Ngay_DoiPhong
					FROM (
						SELECT DISTINCT (SELECT TOP 1 C.course_id
										FROM Course C JOIN Employee_Course EC  
										ON C.course_id = EC.course_id  
    										AND EC.employee_id = nv.MaNV 
										ORDER BY C.end_date DESC) AS course_id, c.end_date, c.object_id, nv.MaNV AS staffId, nv.TenNV, nv.PhaiNu, nv.ChucVu, nv.NghiViec, nv.Ngay_DoiPhong,
										dbo.Get_Before_PhongSX_Of_Staff_By_Course(nv.MaNV, dbo.Get_PhongSX_Of_Staff_LC_By_Course(nv.MaNV)) AS oldDepartment,
										ISNULL(dbo.Get_PhongSX_Of_Staff_LC_By_Course(nv.MaNV),'') AS departmentLC, 
										ROUND(CAST(DATEDIFF(DAY, nv.NgayVaoCTy, GETDATE()) AS FLOAT) / CAST(30 AS FLOAT), 2) AS workingTime,
										CASE WHEN DATEDIFF(MONTH, nv.NgayVaoCTy, GETDATE()) < 12 THEN 'A1' ELSE NULL END AS curentRank,
										nv.PhongSX AS currentDepartment
						FROM NhanVien nv			 WITH(NOLOCK)
						LEFT JOIN Employee_Course ec WITH(NOLOCK) ON nv.MaNV = ec.employee_id
						LEFT JOIN Course C			 WITH(NOLOCK) ON C.course_id = ec.course_id
						WHERE nv.NghiViec = 0 
					) AS T0
					LEFT JOIN (SELECT ARG1.* FROM ApprovedReportGeneral ARG1
							   INNER JOIN (SELECT ARG2.staff_id, MAX(ARG2.report_general_id) AS maxId FROM ApprovedReportGeneral ARG2
											GROUP BY ARG2.staff_id) C1 ON C1.maxId = ARG1.report_general_id) C2 ON C2.staff_id = T0.staffId
					WHERE T0.currentDepartment IN (SELECT D.department_id FROM Department D)
			) AS TH
		) AS T
	) AS TT 







GO
/****** Object:  View [dbo].[Staff_View]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================      
-- Author: Thinh Do     
-- Create date: 2019-03-14
-- Description: Get rank infomation for Staff
-- =============================================
CREATE VIEW [dbo].[Staff_View] AS

	SELECT D.* FROM (
		SELECT NV.*, 
			   CASE WHEN ISNULL(ISNULL(A.curent_rank, NV.Ngach), '') = 'NULL' THEN ''
			   ELSE ISNULL(ISNULL(A.curent_rank, NV.Ngach), '') END AS curent_rank
		FROM NhanVien NV
		INNER JOIN Department DT ON DT.department_id = NV.PhongSX
		LEFT JOIN (SELECT ARG1.* FROM ApprovedReportGeneral ARG1
					INNER JOIN (SELECT ARG2.staff_id, MAX(ARG2.report_general_id) AS maxId FROM ApprovedReportGeneral ARG2
					GROUP BY ARG2.staff_id) C1 ON C1.maxId = ARG1.report_general_id) A ON A.staff_id = NV.MaNV
	) AS D






GO
/****** Object:  View [dbo].[Staff_Without_Department_View]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================      
-- Author: Thinh Do     
-- Create date: 2019-03-27
-- Description: Get rank infomation for Staff without Department
-- =============================================
CREATE VIEW [dbo].[Staff_Without_Department_View] AS

	SELECT D.* FROM (
		SELECT NV.*,
			   CASE WHEN ISNULL(ISNULL(A.curent_rank, NV.Ngach), '') = 'NULL' THEN ''
			   ELSE ISNULL(ISNULL(A.curent_rank, NV.Ngach), '') END AS curent_rank
		FROM NhanVien NV
		LEFT JOIN (SELECT ARG1.* FROM ApprovedReportGeneral ARG1
					INNER JOIN (SELECT ARG2.staff_id, MAX(ARG2.report_general_id) AS maxId FROM ApprovedReportGeneral ARG2
					GROUP BY ARG2.staff_id) C1 ON C1.maxId = ARG1.report_general_id) A ON A.staff_id = NV.MaNV
	) AS D






GO
/****** Object:  View [dbo].[Total_Point]    Script Date: 3/26/2021 10:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Total_Point] AS

  SELECT D.* FROM (
	 SELECT C.course_id,
			C.start_date,
			C.end_date,
			C.object_id,
			O.object_name,
			O.linked_object,
			dbo.Get_Current_PhongSX_Of_Staff(ec.employee_id, CONVERT(nvarchar(4), (YEAR(C.start_date) + 1)) + '/08/31') AS department_id,
			EC.employee_id
	  FROM Course C					WITH(NOLOCK)
	  INNER JOIN Employee_Course EC WITH(NOLOCK) ON C.course_id = EC.course_id
	  INNER JOIN NhanVien NV		WITH(NOLOCK) ON NV.MaNV = EC.employee_id
	  INNER JOIN Object O			WITH(NOLOCK) ON C.object_id = O.object_id
  ) AS D WHERE D.department_id IN (SELECT D.department_id FROM Department D)


GO
ALTER TABLE [dbo].[Course] ADD  CONSTRAINT [DF__Course__is_ratin__30C33EC3]  DEFAULT ((0)) FOR [is_rating_attitude]
GO
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF__Document__versio__7A672E12]  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[Process] ADD  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[schema_version] ADD  DEFAULT (getdate()) FOR [installed_on]
GO
ALTER TABLE [dbo].[Stage] ADD  CONSTRAINT [DF__Stage__level__16CE6296]  DEFAULT ((1)) FOR [rank]
GO
ALTER TABLE [dbo].[TrainingCode] ADD  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[TrainingCode_Document] ADD  DEFAULT ((1)) FOR [document_version]
GO
ALTER TABLE [dbo].[AttitudeRating]  WITH CHECK ADD  CONSTRAINT [FK__AttitudeR__emplo__40058253] FOREIGN KEY([employee_course_id])
REFERENCES [dbo].[Employee_Course] ([employee_course_id])
GO
ALTER TABLE [dbo].[AttitudeRating] CHECK CONSTRAINT [FK__AttitudeR__emplo__40058253]
GO
ALTER TABLE [dbo].[AttitudeRating]  WITH CHECK ADD  CONSTRAINT [FK__AttitudeR__ratin__40F9A68C] FOREIGN KEY([rating_item_id])
REFERENCES [dbo].[RatingItem] ([rating_item_id])
GO
ALTER TABLE [dbo].[AttitudeRating] CHECK CONSTRAINT [FK__AttitudeR__ratin__40F9A68C]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK__Course__departme__619B8048] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK__Course__departme__619B8048]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK__Course__object_i__628FA481] FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK__Course__object_i__628FA481]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_TrainingCode] FOREIGN KEY([training_code_id], [training_code_version])
REFERENCES [dbo].[TrainingCode] ([training_code_id], [version])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_TrainingCode]
GO
ALTER TABLE [dbo].[Course_Phase]  WITH CHECK ADD  CONSTRAINT [FK__Course_Ph__cours__395884C4] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Course_Phase] CHECK CONSTRAINT [FK__Course_Ph__cours__395884C4]
GO
ALTER TABLE [dbo].[Course_Phase]  WITH CHECK ADD  CONSTRAINT [FK__Course_Ph__objec__3B40CD36] FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[Course_Phase] CHECK CONSTRAINT [FK__Course_Ph__objec__3B40CD36]
GO
ALTER TABLE [dbo].[Course_Phase]  WITH CHECK ADD  CONSTRAINT [FK__Course_Ph__phase__3A4CA8FD] FOREIGN KEY([phase_id])
REFERENCES [dbo].[Phase] ([phase_id])
GO
ALTER TABLE [dbo].[Course_Phase] CHECK CONSTRAINT [FK__Course_Ph__phase__3A4CA8FD]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK__Document__object__66603565] FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK__Document__object__66603565]
GO
ALTER TABLE [dbo].[Employee_Course]  WITH CHECK ADD  CONSTRAINT [FK__Employee___cours__6754599E] FOREIGN KEY([course_id])
REFERENCES [dbo].[Course] ([course_id])
GO
ALTER TABLE [dbo].[Employee_Course] CHECK CONSTRAINT [FK__Employee___cours__6754599E]
GO
ALTER TABLE [dbo].[Feature_Permission]  WITH CHECK ADD FOREIGN KEY([feature_id])
REFERENCES [dbo].[Feature] ([feature_id])
GO
ALTER TABLE [dbo].[Feature_Permission]  WITH CHECK ADD FOREIGN KEY([feature_id])
REFERENCES [dbo].[Feature] ([feature_id])
GO
ALTER TABLE [dbo].[Feature_Permission]  WITH CHECK ADD FOREIGN KEY([feature_id])
REFERENCES [dbo].[Feature] ([feature_id])
GO
ALTER TABLE [dbo].[Feature_Permission]  WITH CHECK ADD FOREIGN KEY([permission_id])
REFERENCES [dbo].[Permission] ([permission_id])
GO
ALTER TABLE [dbo].[Feature_Permission]  WITH CHECK ADD FOREIGN KEY([permission_id])
REFERENCES [dbo].[Permission] ([permission_id])
GO
ALTER TABLE [dbo].[Feature_Permission]  WITH CHECK ADD FOREIGN KEY([permission_id])
REFERENCES [dbo].[Permission] ([permission_id])
GO
ALTER TABLE [dbo].[ProfessionRating]  WITH CHECK ADD  CONSTRAINT [FK__Professio__cours__43D61337] FOREIGN KEY([course_phase_id])
REFERENCES [dbo].[Course_Phase] ([course_phase_id])
GO
ALTER TABLE [dbo].[ProfessionRating] CHECK CONSTRAINT [FK__Professio__cours__43D61337]
GO
ALTER TABLE [dbo].[ProfessionRating]  WITH CHECK ADD  CONSTRAINT [FK__Professio__emplo__44CA3770] FOREIGN KEY([employee_course_id])
REFERENCES [dbo].[Employee_Course] ([employee_course_id])
GO
ALTER TABLE [dbo].[ProfessionRating] CHECK CONSTRAINT [FK__Professio__emplo__44CA3770]
GO
ALTER TABLE [dbo].[ProfessionRating]  WITH CHECK ADD  CONSTRAINT [FK__Professio__ratin__45BE5BA9] FOREIGN KEY([rating_item_id])
REFERENCES [dbo].[RatingItem] ([rating_item_id])
GO
ALTER TABLE [dbo].[ProfessionRating] CHECK CONSTRAINT [FK__Professio__ratin__45BE5BA9]
GO
ALTER TABLE [dbo].[RatingItem]  WITH CHECK ADD  CONSTRAINT [FK__RatingIte__objec__797309D9] FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[RatingItem] CHECK CONSTRAINT [FK__RatingIte__objec__797309D9]
GO
ALTER TABLE [dbo].[RatingItem]  WITH CHECK ADD  CONSTRAINT [FK__RatingIte__ratin__6B24EA82] FOREIGN KEY([rating_group_id])
REFERENCES [dbo].[RatingGroup] ([rating_group_id])
GO
ALTER TABLE [dbo].[RatingItem] CHECK CONSTRAINT [FK__RatingIte__ratin__6B24EA82]
GO
ALTER TABLE [dbo].[RatingItem]  WITH CHECK ADD  CONSTRAINT [FK__RatingIte__ratin__6C190EBB] FOREIGN KEY([rating_type_id])
REFERENCES [dbo].[RatingType] ([rating_type_id])
GO
ALTER TABLE [dbo].[RatingItem] CHECK CONSTRAINT [FK__RatingIte__ratin__6C190EBB]
GO
ALTER TABLE [dbo].[Role_Feature_Permission]  WITH CHECK ADD FOREIGN KEY([feature_permission_id])
REFERENCES [dbo].[Feature_Permission] ([feature_permission_id])
GO
ALTER TABLE [dbo].[Role_Feature_Permission]  WITH CHECK ADD FOREIGN KEY([feature_permission_id])
REFERENCES [dbo].[Feature_Permission] ([feature_permission_id])
GO
ALTER TABLE [dbo].[Role_Feature_Permission]  WITH CHECK ADD FOREIGN KEY([feature_permission_id])
REFERENCES [dbo].[Feature_Permission] ([feature_permission_id])
GO
ALTER TABLE [dbo].[Role_Feature_Permission]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Role_Feature_Permission]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Role_Feature_Permission]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Stage]  WITH NOCHECK ADD  CONSTRAINT [FK__Stage__departmen__17C286CF] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Stage] CHECK CONSTRAINT [FK__Stage__departmen__17C286CF]
GO
ALTER TABLE [dbo].[Stage]  WITH CHECK ADD  CONSTRAINT [FK__Stage__object_id__18B6AB08] FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[Stage] CHECK CONSTRAINT [FK__Stage__object_id__18B6AB08]
GO
ALTER TABLE [dbo].[StageRating]  WITH CHECK ADD  CONSTRAINT [FK__StageRati__cours__489AC854] FOREIGN KEY([course_phase_id])
REFERENCES [dbo].[Course_Phase] ([course_phase_id])
GO
ALTER TABLE [dbo].[StageRating] CHECK CONSTRAINT [FK__StageRati__cours__489AC854]
GO
ALTER TABLE [dbo].[StageRating]  WITH CHECK ADD  CONSTRAINT [FK__StageRati__emplo__498EEC8D] FOREIGN KEY([employee_course_id])
REFERENCES [dbo].[Employee_Course] ([employee_course_id])
GO
ALTER TABLE [dbo].[StageRating] CHECK CONSTRAINT [FK__StageRati__emplo__498EEC8D]
GO
ALTER TABLE [dbo].[StageRating]  WITH CHECK ADD  CONSTRAINT [FK__StageRati__stage__4A8310C6] FOREIGN KEY([stage_id])
REFERENCES [dbo].[Stage] ([stage_id])
GO
ALTER TABLE [dbo].[StageRating] CHECK CONSTRAINT [FK__StageRati__stage__4A8310C6]
GO
ALTER TABLE [dbo].[TheoryRating]  WITH CHECK ADD  CONSTRAINT [FK__TheoryRat__cours__4D5F7D71] FOREIGN KEY([course_phase_id])
REFERENCES [dbo].[Course_Phase] ([course_phase_id])
GO
ALTER TABLE [dbo].[TheoryRating] CHECK CONSTRAINT [FK__TheoryRat__cours__4D5F7D71]
GO
ALTER TABLE [dbo].[TheoryRating]  WITH CHECK ADD  CONSTRAINT [FK__TheoryRat__emplo__4E53A1AA] FOREIGN KEY([employee_course_id])
REFERENCES [dbo].[Employee_Course] ([employee_course_id])
GO
ALTER TABLE [dbo].[TheoryRating] CHECK CONSTRAINT [FK__TheoryRat__emplo__4E53A1AA]
GO
ALTER TABLE [dbo].[TrainingCode]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[TrainingCode]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[TrainingCode]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[TrainingCode]  WITH CHECK ADD FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[TrainingCode]  WITH CHECK ADD FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[TrainingCode]  WITH CHECK ADD FOREIGN KEY([object_id])
REFERENCES [dbo].[Object] ([object_id])
GO
ALTER TABLE [dbo].[TrainingCode_Document]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainingCode_Document] FOREIGN KEY([document_id], [document_version])
REFERENCES [dbo].[Document] ([document_id], [version])
GO
ALTER TABLE [dbo].[TrainingCode_Document] CHECK CONSTRAINT [FK_TrainingCode_Document]
GO
ALTER TABLE [dbo].[TrainingCode_Document]  WITH CHECK ADD  CONSTRAINT [FK_TrainingCodeDocument_TrainingCode] FOREIGN KEY([training_code_id], [training_code_version])
REFERENCES [dbo].[TrainingCode] ([training_code_id], [version])
GO
ALTER TABLE [dbo].[TrainingCode_Document] CHECK CONSTRAINT [FK_TrainingCodeDocument_TrainingCode]
GO
ALTER TABLE [dbo].[TrainingCode_Stage]  WITH CHECK ADD  CONSTRAINT [FK__TrainingC__stage__1C873BEC] FOREIGN KEY([stage_id])
REFERENCES [dbo].[Stage] ([stage_id])
GO
ALTER TABLE [dbo].[TrainingCode_Stage] CHECK CONSTRAINT [FK__TrainingC__stage__1C873BEC]
GO
ALTER TABLE [dbo].[TrainingCode_Stage]  WITH CHECK ADD  CONSTRAINT [FK_TrainingStage_TrainingCode] FOREIGN KEY([training_code_id], [training_code_version])
REFERENCES [dbo].[TrainingCode] ([training_code_id], [version])
GO
ALTER TABLE [dbo].[TrainingCode_Stage] CHECK CONSTRAINT [FK_TrainingStage_TrainingCode]
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([user_login])
REFERENCES [dbo].[Users] ([user_login])
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([user_login])
REFERENCES [dbo].[Users] ([user_login])
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([user_login])
REFERENCES [dbo].[Users] ([user_login])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_users_deparment] FOREIGN KEY([department])
REFERENCES [dbo].[Department] ([department_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_users_deparment]
GO
ALTER TABLE [dbo].[PointNSCL]  WITH CHECK ADD CHECK  (([employee_id]<>'0' AND [employee_id]<>''))
GO
ALTER TABLE [dbo].[PointNSCL]  WITH CHECK ADD CHECK  (([nscl_point]>=(0)))
GO
ALTER TABLE [dbo].[PointNSCL]  WITH CHECK ADD CHECK  (([year]>(0) AND [year]<>''))
GO
