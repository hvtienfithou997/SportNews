USE [SportNews247]
GO
/****** Object:  Table [dbo].[User]    Script Date: 03/11/2020 17:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[per] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[User] ([id], [username], [password], [name], [per]) VALUES (N'hiii', N'admin', N'cuoicaigi', N'Tiến 2020', 5)
INSERT [dbo].[User] ([id], [username], [password], [name], [per]) VALUES (N'huuu', N'yeezy', N'123123', N'NV', 1)
GO
