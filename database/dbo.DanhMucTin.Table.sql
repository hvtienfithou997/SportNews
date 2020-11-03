USE [SportNews247]
GO
/****** Object:  Table [dbo].[DanhMucTin]    Script Date: 03/11/2020 17:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucTin](
	[id] [varchar](50) NOT NULL,
	[tieu_de] [nvarchar](50) NOT NULL,
	[vi_tri_hien] [int] NULL,
 CONSTRAINT [PK_DanhMucTin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DanhMucTin] ([id], [tieu_de], [vi_tri_hien]) VALUES (N'111', N'Bóng chuyền', 5)
INSERT [dbo].[DanhMucTin] ([id], [tieu_de], [vi_tri_hien]) VALUES (N'123', N'Bóng đá', 2)
INSERT [dbo].[DanhMucTin] ([id], [tieu_de], [vi_tri_hien]) VALUES (N'456', N'Bơi lội', 4)
INSERT [dbo].[DanhMucTin] ([id], [tieu_de], [vi_tri_hien]) VALUES (N'789', N'Tennis', 3)
GO
