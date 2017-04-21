USE [gummi_bear_kingdom]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/21/2017 4:23:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/21/2017 4:23:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Cost] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Origin] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170421161647_Initial', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170421162053_MakeTableNamesPlural', N'1.0.0-rtm-21431')
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Cost], [Name], [Origin]) VALUES (1, 2, N'Blueberry', N'Mexico')
INSERT [dbo].[Products] ([ProductId], [Cost], [Name], [Origin]) VALUES (2, 3, N'Bon Bon', N'France')
INSERT [dbo].[Products] ([ProductId], [Cost], [Name], [Origin]) VALUES (3, 2, N'Rainbow', N'Ethiopia')
INSERT [dbo].[Products] ([ProductId], [Cost], [Name], [Origin]) VALUES (4, 4, N'Buddy Buddy', N'US')
SET IDENTITY_INSERT [dbo].[Products] OFF
