CREATE DATABASE [TazeBlog]
GO
USE [TazeBlog]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 8.03.2019 14:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Content] [nvarchar](500) NULL,
	[Permalink] [nvarchar](255) NULL,
	[CreatedOn] [datetime] NULL,
	[Status] [smallint] NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8.03.2019 14:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Permalink] [nvarchar](255) NULL,
	[CreatedOn] [datetime] NULL,
	[Status] [smallint] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8.03.2019 14:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](255) NULL,
	[SaltCode] [nvarchar](500) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articles] ON 
GO
INSERT [dbo].[Articles] ([Id], [Name], [Content], [Permalink], [CreatedOn], [Status], [CategoryId]) VALUES (1, N'Iphone Xs Max Fiyatları', N'<h6>Fiyatlar</h6> 
<ul>
<li>10.000 $</li>
<li>20.000 $</li>
<li>30.000 $</li>
</ul>
', N'iphone-xs-max-fiyatlari', CAST(N'2019-03-08T14:31:54.450' AS DateTime), 2, 3)
GO
INSERT [dbo].[Articles] ([Id], [Name], [Content], [Permalink], [CreatedOn], [Status], [CategoryId]) VALUES (2, N'Dünya Kadınlar Günü', N'Dünya kadınlar gününüz kutlu olsun.', N'dunya-kadinlar-gunu', CAST(N'2019-03-08T14:35:28.577' AS DateTime), 1, 2)
GO
INSERT [dbo].[Articles] ([Id], [Name], [Content], [Permalink], [CreatedOn], [Status], [CategoryId]) VALUES (3, N'Captain Marvel Sinemalarda', N'Uzun zamandır beklenen Marvel filmi Captain Marvel bugün itibari ile sinemalarda.', N'captain-marvel-sinemalarda', CAST(N'2019-03-08T14:36:12.913' AS DateTime), 1, 3)
GO
SET IDENTITY_INSERT [dbo].[Articles] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Permalink], [CreatedOn], [Status]) VALUES (1, N'Teknoloji', N'Teknoloji İçerikleri', N'teknoloji', CAST(N'2019-03-08T14:30:07.203' AS DateTime), 1)
GO
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Permalink], [CreatedOn], [Status]) VALUES (2, N'Kadın', N'Kadınlar hakkında içerikler', N'kadin', CAST(N'2019-03-08T14:30:20.063' AS DateTime), 1)
GO
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Permalink], [CreatedOn], [Status]) VALUES (3, N'Haberler', N'Gündem haberleri', N'haberler', CAST(N'2019-03-08T14:30:49.493' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [Username], [Email], [Password], [SaltCode]) VALUES (1, N'admin', N'admin@tazebt.com', N'5jlczyMBlL+BHPukaNUdm1rUhEst2S9wZfUsYUMp6b4=', N'tK9LD+2e72Es5w==')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_Articles_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Articles_Categories]
GO
