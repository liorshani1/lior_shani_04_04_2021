USE [WWWeather]
GO
/****** Object:  Table [dbo].[Favorite]    Script Date: 06/04/2021 14:34:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorite](
	[LocationKey] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[IsFavorite] [bit] NOT NULL,
 CONSTRAINT [PK_Favorite] PRIMARY KEY CLUSTERED 
(
	[LocationKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 06/04/2021 14:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationKey] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[WeatherText] [nvarchar](250) NOT NULL,
	[Temperature] [float] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 06/04/2021 14:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (2093, 1, 0)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (56912, 1, 0)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (57919, 1, 1)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (59083, 1, 0)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (102138, 1, 1)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (102669, 1, 1)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (105568, 1, 0)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (113487, 1, 0)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (126831, 1, 0)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (126995, 1, 0)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (178087, 1, 1)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (178551, 1, 0)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (182536, 1, 1)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (202396, 1, 1)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (202438, 1, 0)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (206690, 1, 1)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (213225, 1, 1)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (224374, 1, 1)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (233934, 1, 1)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (246562, 1, 1)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (297442, 1, 1)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (316938, 1, 0)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (353412, 1, 1)
GO
INSERT [dbo].[Favorite] ([LocationKey], [UserId], [IsFavorite]) VALUES (1123655, 1, 1)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (2093, N'Algiers', N'Partly sunny', 22.7)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (28143, N'Dhaka', N'Mostly sunny', 33.2)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (56912, N'Anqing', N'Partly sunny', 22.7)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (57919, N'Xiamen', N'Cloudy', 19.4)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (58185, N'Dongguan', N'Sunny', 27.2)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (59083, N'Anyang', N'Partly sunny', 22.7)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (60971, N'Deyang', N'Overcast', 16.4)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (102133, N'Dalian', N'Cloudy', 15)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (102138, N'Anshan', N'Partly sunny', 22.7)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (102669, N'Harbin', N'Sunny', 8.9)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (105568, N'Hengyang', N'Overcast', 15.5)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (113487, N'Kinshasa', N'Mostly cloudy', 26.6)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (126831, N'Addis Ababa', N'Partly sunny', 22.7)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (126995, N'Alexandria', N'Partly sunny', 22.7)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (178087, N'Berlin', N'Mostly cloudy', 2.7)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (178551, N'Accra', N'Partly sunny', 22.7)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (182536, N'Athens', N'Partly sunny', 22.7)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (202396, N'Delhi', N'Mostly sunny', 36.9)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (202438, N'Ahmedabad', N'Partly sunny', 22.7)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (206690, N'Kolkata', N'Mostly sunny', 35.3)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (213225, N'Jerusalem', N'Sunny', 24.5)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (224374, N'Yokohama-shi', N'Cloudy', 12.5)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (233934, N'Ecatepec de Morelos', N'Partly cloudy', 15)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (246562, N'Yangon', N'Partly sunny', 27.8)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (297442, N'Dakar', N'Sunny', 22.2)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (316938, N'Ankara', N'Partly sunny', 22.7)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (353412, N'Hanoi', N'A shower', 26.5)
GO
INSERT [dbo].[Location] ([LocationKey], [Name], [WeatherText], [Temperature]) VALUES (1123655, N'Hong Kong', N'Sunny', 25.7)
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([UserId], [Username]) VALUES (1, N'lior')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Favorite] ADD  CONSTRAINT [DF_Favorite_IsFavorite]  DEFAULT ((0)) FOR [IsFavorite]
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_Location] FOREIGN KEY([LocationKey])
REFERENCES [dbo].[Location] ([LocationKey])
GO
ALTER TABLE [dbo].[Favorite] CHECK CONSTRAINT [FK_Favorite_Location]
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Favorite] CHECK CONSTRAINT [FK_Favorite_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Favorite] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Favorite]
GO
