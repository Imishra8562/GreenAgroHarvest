USE [Green_Agro_Db]
GO
/****** Object:  Table [dbo].[tbl_About]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_About](
	[About_Id] [int] IDENTITY(1,1) NOT NULL,
	[About_Code] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[About_Us] [nvarchar](max) NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_About] PRIMARY KEY CLUSTERED 
(
	[About_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_AboutDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_AboutDetails](
	[AboutDetails_Id] [int] IDENTITY(1,1) NOT NULL,
	[AboutDetails_Code] [nvarchar](max) NULL,
	[Fk_About_Id] [int] NULL,
	[Fk_Banner_Id] [int] NULL,
	[About_Details] [nvarchar](max) NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_AboutDetails] PRIMARY KEY CLUSTERED 
(
	[AboutDetails_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Banner]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Banner](
	[Banner_Id] [int] IDENTITY(1,1) NOT NULL,
	[Banner_Code] [nvarchar](max) NULL,
	[Banner_heading] [nvarchar](max) NULL,
	[Banner_description] [nvarchar](max) NULL,
	[Banner_image] [nvarchar](max) NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Banner] PRIMARY KEY CLUSTERED 
(
	[Banner_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Blog]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Blog](
	[Blog_Id] [int] IDENTITY(1,1) NOT NULL,
	[Blog_Code] [nvarchar](max) NULL,
	[Blog_Name] [nvarchar](max) NULL,
	[Blog_Image] [nvarchar](max) NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Blog] PRIMARY KEY CLUSTERED 
(
	[Blog_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_BlogDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BlogDetails](
	[BlogDetails_Id] [int] IDENTITY(1,1) NOT NULL,
	[BlogDetails_Code] [nvarchar](max) NULL,
	[Fk_Blog_Id] [int] NULL,
	[BlogDetails_Description] [nvarchar](max) NULL,
	[BlogDetails_Description1] [nvarchar](max) NULL,
	[BlogDetails_Image] [nvarchar](max) NULL,
	[BlogDetails_ImageA] [nvarchar](max) NULL,
	[BlogDetails_ImageB] [nvarchar](max) NULL,
	[BlogDetails_Heading] [nvarchar](max) NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_BlogDetails] PRIMARY KEY CLUSTERED 
(
	[BlogDetails_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Contact]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Contact](
	[Contact_Id] [int] IDENTITY(1,1) NOT NULL,
	[Contact_Code] [nvarchar](max) NULL,
	[Contact_Name] [nvarchar](max) NULL,
	[Contact_Number] [nvarchar](max) NULL,
	[Contact_Email] [nvarchar](max) NULL,
	[Contact_Subject] [nvarchar](max) NULL,
	[Contact_Comment] [nvarchar](max) NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Contact] PRIMARY KEY CLUSTERED 
(
	[Contact_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CustomberFeedback]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CustomberFeedback](
	[CustomberFeedback_Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomberFeedback_Code] [nvarchar](max) NULL,
	[CustomberFeedback_Name] [nvarchar](max) NULL,
	[CustomberFeedback_Email] [nvarchar](max) NULL,
	[CustomberFeedback_Number] [nvarchar](max) NULL,
	[CustomberFeedback_Comment] [nvarchar](max) NULL,
	[Fk_Status_Id] [int] NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_CustomberFeedback] PRIMARY KEY CLUSTERED 
(
	[CustomberFeedback_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Gallery]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Gallery](
	[Gallery_Id] [int] IDENTITY(1,1) NOT NULL,
	[Gallery_Code] [nvarchar](max) NULL,
	[Gallery_Name] [nvarchar](max) NULL,
	[Gallery_Heading] [nvarchar](max) NULL,
	[Gallery_Image] [nvarchar](max) NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Gallery] PRIMARY KEY CLUSTERED 
(
	[Gallery_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Product]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Product](
	[Product_Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Code] [nvarchar](max) NULL,
	[Product_Name] [nvarchar](max) NULL,
	[Product_Image] [nvarchar](max) NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Product] PRIMARY KEY CLUSTERED 
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ProductDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ProductDetails](
	[ProductDetails_Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductDetails_Code] [nvarchar](max) NULL,
	[Fk_ProductDetails_Id] [int] NULL,
	[ProductDetails_Name] [nvarchar](max) NULL,
	[ProductDetails_Details] [nvarchar](max) NULL,
	[ProductDetails_Image] [nvarchar](max) NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_ProductDetails] PRIMARY KEY CLUSTERED 
(
	[ProductDetails_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Services]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Services](
	[Services_Id] [int] IDENTITY(1,1) NOT NULL,
	[Services_Code] [nvarchar](max) NULL,
	[Services_Heading] [nvarchar](max) NULL,
	[Services_Description] [nvarchar](max) NULL,
	[Services_Image] [nvarchar](max) NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Services] PRIMARY KEY CLUSTERED 
(
	[Services_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Status]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Status](
	[Status_Id] [int] IDENTITY(1,1) NOT NULL,
	[Status_Code] [nvarchar](max) NULL,
	[Status_Name] [nvarchar](max) NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_Status] PRIMARY KEY CLUSTERED 
(
	[Status_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[Registration_No] [nvarchar](max) NULL,
	[User_Name] [nvarchar](max) NULL,
	[Display_Name] [nvarchar](max) NULL,
	[Mobile_No] [nvarchar](max) NULL,
	[Email_Id] [nvarchar](max) NULL,
	[Password] [varbinary](max) NULL,
	[FK_User_Role_Id] [int] NULL,
	[Is_Locked] [bit] NOT NULL,
	[Last_Login] [datetime] NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User_Role]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User_Role](
	[User_Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Role_Name] [nvarchar](max) NOT NULL,
	[User_Role_Description] [nvarchar](max) NULL,
	[Created_On] [datetime] NOT NULL,
	[Created_By] [int] NOT NULL,
	[Created_IP] [nvarchar](max) NULL,
	[Modified_On] [datetime] NULL,
	[Modified_By] [int] NULL,
	[Modified_IP] [nvarchar](max) NULL,
	[Is_Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_User_Role] PRIMARY KEY CLUSTERED 
(
	[User_Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_About] ON 

INSERT [dbo].[tbl_About] ([About_Id], [About_Code], [Name], [Image], [About_Us], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (1, N'AboutCode4433569', N'Currently we are growing and selling organic food', N'~/Upload/About/img-01.png', N'Organic food promotes health, sustainability, eco-friendliness, chemical-free farming, biodiversity, better taste, soil health, and supports local communities and small farmers.', CAST(N'2025-02-18T15:25:21.030' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_About] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_AboutDetails] ON 

INSERT [dbo].[tbl_AboutDetails] ([AboutDetails_Id], [AboutDetails_Code], [Fk_About_Id], [Fk_Banner_Id], [About_Details], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (1, N'ADC8032073', 1, 1, N'Growing and selling organic food is a great way to support health and sustainability.', CAST(N'2025-02-18T15:48:55.510' AS DateTime), 1, N'::1', NULL, 1, N'::1', 1)
SET IDENTITY_INSERT [dbo].[tbl_AboutDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Banner] ON 

INSERT [dbo].[tbl_Banner] ([Banner_Id], [Banner_Code], [Banner_heading], [Banner_description], [Banner_image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (1, N'BannerCode2899097', N'Always greet farmers.', N'Always greet farmers for their hard work and dedication daily.', N'~/Upload/Banner/imresizer-1736837878871.png', CAST(N'2025-02-18T15:33:26.847' AS DateTime), 1, N'::1', NULL, 1, N'::1', 1)
INSERT [dbo].[tbl_Banner] ([Banner_Id], [Banner_Code], [Banner_heading], [Banner_description], [Banner_image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (2, N'BannerCode8236825', N'Quality trust: Directly ', N'Quality trust: Directly connect with the farm for fresh produce.', N'~/Upload/Banner/demo01-slide-02.jpg', CAST(N'2025-02-18T15:34:29.177' AS DateTime), 1, N'::1', NULL, 1, N'::1', 1)
INSERT [dbo].[tbl_Banner] ([Banner_Id], [Banner_Code], [Banner_heading], [Banner_description], [Banner_image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (3, N'BannerCode9442999', N'The Resilience Optimism', N'The resilience and optimism of farmers inspire growth through challenges.', N'~/Upload/Banner/demo01-slide-03.jpg', CAST(N'2025-02-18T15:35:25.280' AS DateTime), 1, N'::1', NULL, 1, N'::1', 1)
SET IDENTITY_INSERT [dbo].[tbl_Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Blog] ON 

INSERT [dbo].[tbl_Blog] ([Blog_Id], [Blog_Code], [Blog_Name], [Blog_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (1, N'BlogCode9359624', N'Green Fields & Growing Hands', N'~/Upload/Blog_Image_File/blog-image-02.jpg', CAST(N'2025-02-18T15:57:29.577' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Blog] ([Blog_Id], [Blog_Code], [Blog_Name], [Blog_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (2, N'BlogCode4932316', N'The Fresh Crop Chronicles', N'~/Upload/Blog_Image_File/blog-image-04.jpg', CAST(N'2025-02-18T15:58:04.227' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Blog] ([Blog_Id], [Blog_Code], [Blog_Name], [Blog_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (3, N'BlogCode9769284', N'The Fresh Crop Chronicles', N'~/Upload/Blog_Image_File/blog-image-06.jpg', CAST(N'2025-02-18T15:58:41.073' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Blog] ([Blog_Id], [Blog_Code], [Blog_Name], [Blog_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (4, N'BlogCode1776435', N'Sustainable Soil Stories', N'~/Upload/Blog_Image_File/blog-image-03.jpg', CAST(N'2025-02-18T15:58:55.143' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Blog] ([Blog_Id], [Blog_Code], [Blog_Name], [Blog_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (5, N'BlogCode1406715', N'The Farm to Table Journey', N'~/Upload/Blog_Image_File/blog-image-06.jpg', CAST(N'2025-02-18T15:59:19.783' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Blog] ([Blog_Id], [Blog_Code], [Blog_Name], [Blog_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (6, N'BlogCode2679471', N'Earth''s Bounty Blog', N'~/Upload/Blog_Image_File/blog-image-05.jpg', CAST(N'2025-02-18T16:00:19.517' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_BlogDetails] ON 

INSERT [dbo].[tbl_BlogDetails] ([BlogDetails_Id], [BlogDetails_Code], [Fk_Blog_Id], [BlogDetails_Description], [BlogDetails_Description1], [BlogDetails_Image], [BlogDetails_ImageA], [BlogDetails_ImageB], [BlogDetails_Heading], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (1, N'ADC5286475', 1, N'Green Fields & Growing Hands" is a beautiful and fitting name for your farming blog! It conveys a sense of nurturing and connection to the land. Are you planning to focus on tips for organic farming, share personal stories, or highlight products you''re selling', N'Where Nature and Nurture Thrive Together............', N'~/Upload/BlogDetails_Image/blog-single-01.jpg', N'~/Upload/BlogDetails_ImageA/imresizer-1736859767955.jpg', N'~/Upload/BlogDetails_ImageB/blog-single-02.jpg', N'"Cultivating Sustainability, One Seed at a Time".........', CAST(N'2025-02-18T16:03:51.667' AS DateTime), 1, N'::1', CAST(N'2025-02-18T17:45:52.730' AS DateTime), 1, N'::1', 0)
INSERT [dbo].[tbl_BlogDetails] ([BlogDetails_Id], [BlogDetails_Code], [Fk_Blog_Id], [BlogDetails_Description], [BlogDetails_Description1], [BlogDetails_Image], [BlogDetails_ImageA], [BlogDetails_ImageB], [BlogDetails_Heading], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (2, N'ADC2547908', 2, N'The Fresh Crop Chronicles is more than just a blog—it''s a journey through the fields, where each seed is a story waiting to unfold. Here, we dive into the art of growing fresh, organic crops with care and dedication. From planting season to harvest, we share the challenges and rewards of nurturing the land. Join us as we explore the beauty of sustainable farming, the passion behind every crop, and the joy of bringing nature''s bounty from the soil to your table. Every fresh crop tells a story, and we''re here to chronicle every step along the way.', N'The Fresh Crop Chronicles: Tales from the Heart of the Harvest takes you on a journey into the heart of the farm, where each harvest is a chapter in a story of dedication, patience, and growth. In these tales, we explore the life of crops from seed to table, celebrating the challenges and triumphs that come with sustainable farming. Join us as we share insights, experiences, and lessons learned in the fields, all while honoring the deep connection between the earth and the food we grow. Every crop has a story—this is where they come to life.', N'~/Upload/BlogDetails_Image/images (4).jpg', N'~/Upload/BlogDetails_ImageA/imresizer-1736859326386.jpg', NULL, N'Tales from the Heart of the Harvest', CAST(N'2025-02-18T16:05:24.103' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_BlogDetails] ([BlogDetails_Id], [BlogDetails_Code], [Fk_Blog_Id], [BlogDetails_Description], [BlogDetails_Description1], [BlogDetails_Image], [BlogDetails_ImageA], [BlogDetails_ImageB], [BlogDetails_Heading], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (3, N'ADC6927914', 4, N'he Fresh Crop Chronicles: Sustainable Soil Stories brings you closer to the roots of farming, where sustainability meets growth. These stories are about more than just crops—they’re about the soil, the foundation that nurtures every seed. We’ll share the practices, challenges, and triumphs of growing food in harmony with nature, all while preserving and enriching the earth for future generations. From organic farming techniques to the power of healthy soil, these tales celebrate the importance of sustainability in every harvest. Join us in the journey of cultivating both the land and a future of abundance.', N'Together, the phrase highlights the idea of nurturing not just the earth, but also the process and wisdom that come with it, making it a journey worth sharing with others. It''s an invitation to readers to join you on that journey and learn from the stories you tell.', N'~/Upload/BlogDetails_Image/imresizer-1736859326386.jpg', N'~/Upload/BlogDetails_ImageA/iStock-1330585339.jpg', N'~/Upload/BlogDetails_ImageB/blog-image-01.jpg', N'"Nurturing the Earth, One Story at a Time"', CAST(N'2025-02-18T16:08:03.007' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_BlogDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Contact] ON 

INSERT [dbo].[tbl_Contact] ([Contact_Id], [Contact_Code], [Contact_Name], [Contact_Number], [Contact_Email], [Contact_Subject], [Contact_Comment], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (1, N'ContactCode9566298', N'Rahul Saharma', N'9090875675', N'rahulsaharma25@gmail.com', N'regarding your product', N'we are proud to offer fresh, high-quality organic produce, grown with love and care. Our commitment to sustainability and health is at the heart of everything we do. Whether you''re looking for nutrient-rich vegetables or flavorful fruits, we ensure that each product is free from harmful chemicals and grown using environmentally-friendly practices. Taste the difference with our organic food—fresh, natural, and good for you!"', CAST(N'2025-02-18T15:52:33.460' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_CustomberFeedback] ON 

INSERT [dbo].[tbl_CustomberFeedback] ([CustomberFeedback_Id], [CustomberFeedback_Code], [CustomberFeedback_Name], [CustomberFeedback_Email], [CustomberFeedback_Number], [CustomberFeedback_Comment], [Fk_Status_Id], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (1, N'CFC8191174', N'saurav kumar', N'saurab205@gmail.com', N'7897978756', N'celebrating the challenges and triumphs that come with sustainable farming. Join us as we share insights, experiences, and lessons learned in the fields, ', 1, CAST(N'2025-02-18T17:54:04.040' AS DateTime), 1, N'::1', CAST(N'2025-02-18T17:59:53.560' AS DateTime), NULL, N'::1', 1)
SET IDENTITY_INSERT [dbo].[tbl_CustomberFeedback] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Gallery] ON 

INSERT [dbo].[tbl_Gallery] ([Gallery_Id], [Gallery_Code], [Gallery_Name], [Gallery_Heading], [Gallery_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (1, N'GalleryCode7380429', N'Production', N'Fresh and Natural', N'~/Upload/Gallery_Imageportfolio-01b.jpg', CAST(N'2025-02-18T16:16:53.037' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Gallery] ([Gallery_Id], [Gallery_Code], [Gallery_Name], [Gallery_Heading], [Gallery_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (2, N'GalleryCode3949374', N'production', N'Agriculture Farming', N'~/Upload/Gallery_Imageportfolio-02b.jpg', CAST(N'2025-02-18T16:17:30.980' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Gallery] ([Gallery_Id], [Gallery_Code], [Gallery_Name], [Gallery_Heading], [Gallery_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (3, N'GalleryCode8612234', N'production', N'Ecological Farming', N'~/Upload/Gallery_Imageportfolio-03b.jpg', CAST(N'2025-02-18T16:17:49.560' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Gallery] ([Gallery_Id], [Gallery_Code], [Gallery_Name], [Gallery_Heading], [Gallery_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (4, N'GalleryCode2735198', N'production', N'Eco and Agriculture', N'~/Upload/Gallery_Imageportfolio-04b.jpg', CAST(N'2025-02-18T16:18:33.710' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Gallery] ([Gallery_Id], [Gallery_Code], [Gallery_Name], [Gallery_Heading], [Gallery_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (5, N'GalleryCode5828916', N'production', N'Fertilizers & Pesticides', N'~/Upload/Gallery_Imageportfolio-05b.jpg', CAST(N'2025-02-18T16:19:32.163' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Gallery] ([Gallery_Id], [Gallery_Code], [Gallery_Name], [Gallery_Heading], [Gallery_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (6, N'GalleryCode8869275', N'production', N'Grocery Foods', N'~/Upload/Gallery_Imageportfolio-06b.jpg', CAST(N'2025-02-18T16:20:13.167' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Gallery] ([Gallery_Id], [Gallery_Code], [Gallery_Name], [Gallery_Heading], [Gallery_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (7, N'GalleryCode1268054', N'production', N'Organic Products', N'~/Upload/Gallery_Imageportfolio-07b.jpg', CAST(N'2025-02-18T16:20:42.887' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Gallery] ([Gallery_Id], [Gallery_Code], [Gallery_Name], [Gallery_Heading], [Gallery_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (8, N'GalleryCode3849156', N'production', N'Water Irrigation', N'~/Upload/Gallery_Imageportfolio-08b.jpg', CAST(N'2025-02-18T16:21:16.010' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Gallery] ([Gallery_Id], [Gallery_Code], [Gallery_Name], [Gallery_Heading], [Gallery_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (9, N'GalleryCode7218595', N'production', N'Leverage Fluid', N'~/Upload/Gallery_Imageportfolio-09b.jpg', CAST(N'2025-02-18T16:21:53.077' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_Gallery] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Product] ON 

INSERT [dbo].[tbl_Product] ([Product_Id], [Product_Code], [Product_Name], [Product_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (1, N'ProductCode7464191', N'Rice', N'~/Upload/Product/shop-img-01.png', CAST(N'2025-02-18T15:36:42.143' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Product] ([Product_Id], [Product_Code], [Product_Name], [Product_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (2, N'ProductCode7069749', N'Musted Oil', N'~/Upload/Product/shop-img-02.png', CAST(N'2025-02-18T15:37:02.540' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Product] ([Product_Id], [Product_Code], [Product_Name], [Product_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (3, N'ProductCode3904980', N'Microbeans', N'~/Upload/Product/shop-img-03.png', CAST(N'2025-02-18T15:37:29.083' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Product] ([Product_Id], [Product_Code], [Product_Name], [Product_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (4, N'ProductCode8335529', N'Avogadro', N'~/Upload/Product/shop-img-04.png', CAST(N'2025-02-18T15:37:44.260' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Product] ([Product_Id], [Product_Code], [Product_Name], [Product_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (5, N'ProductCode6018096', N'wheat', N'~/Upload/Product/shop-img-05.png', CAST(N'2025-02-18T15:38:01.030' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Product] ([Product_Id], [Product_Code], [Product_Name], [Product_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (6, N'ProductCode7653617', N'Alfalfa sprouts', N'~/Upload/Product/shop-img-06.png', CAST(N'2025-02-18T15:38:19.980' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Product] ([Product_Id], [Product_Code], [Product_Name], [Product_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (7, N'ProductCode3081315', N'Kiwi', N'~/Upload/Product/shop-img-07.png', CAST(N'2025-02-18T15:38:42.797' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Product] ([Product_Id], [Product_Code], [Product_Name], [Product_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (8, N'ProductCode8527718', N'Broccoli', N'~/Upload/Product/shop-img-08.png', CAST(N'2025-02-18T15:38:52.157' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ProductDetails] ON 

INSERT [dbo].[tbl_ProductDetails] ([ProductDetails_Id], [ProductDetails_Code], [Fk_ProductDetails_Id], [ProductDetails_Name], [ProductDetails_Details], [ProductDetails_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (1, N'ProductDetailsCode9993629', 1, N'Rice', N'Rice is one of the most important staple crops in the world, feeding billions of people every day. It plays a crucial role in global agriculture, particularly in Asia, where it is a major part of the culture and economy. Are you interested in rice farming, or do you just admire its significance', N'~/Upload/ProductDetails/shop-img-01.png', CAST(N'2025-02-18T15:40:08.137' AS DateTime), 1, N'::1', NULL, 1, N'::1', 1)
INSERT [dbo].[tbl_ProductDetails] ([ProductDetails_Id], [ProductDetails_Code], [Fk_ProductDetails_Id], [ProductDetails_Name], [ProductDetails_Details], [ProductDetails_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (2, N'ProductDetailsCode4562735', 2, N'Musted Oil', N'Mustard oil is another key agricultural product, especially in countries like India, Bangladesh, and parts of the Middle East. It’s a versatile oil, widely used for cooking due to its strong flavor, but also valued for its health benefits, such as promoting heart health and acting as an anti-inflammatory.  Are you involved in mustard oil production or its use in any way? It’s a fascinating industry with a rich history!', N'~/Upload/ProductDetails/shop-img-02.png', CAST(N'2025-02-18T15:41:03.097' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_ProductDetails] ([ProductDetails_Id], [ProductDetails_Code], [Fk_ProductDetails_Id], [ProductDetails_Name], [ProductDetails_Details], [ProductDetails_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (3, N'ProductDetailsCode9649655', 3, N'Microbeans', N'Microbeans, or microgreens, are young edible plants harvested at an early stage of growth, typically within 7-21 days after germination. While the term "microbeans" isn''t as common, it likely refers to small, young beans or legumes that are grown for their high nutritional value. Microgreens, in general, are packed with nutrients like vitamins, minerals, and antioxidants. They’re used in salads, sandwiches, and garnishes.', N'~/Upload/ProductDetails/shop-img-03.png', CAST(N'2025-02-18T15:41:52.977' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_ProductDetails] ([ProductDetails_Id], [ProductDetails_Code], [Fk_ProductDetails_Id], [ProductDetails_Name], [ProductDetails_Details], [ProductDetails_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (4, N'ProductDetailsCode9941619', 4, N'Avogadro', N'Avocados are a popular fruit known for their creamy texture and healthy fats. They''re great in salads, sandwiches, or made into guacamole.', N'~/Upload/ProductDetails/shop-img-04.png', CAST(N'2025-02-18T15:43:07.903' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_ProductDetails] ([ProductDetails_Id], [ProductDetails_Code], [Fk_ProductDetails_Id], [ProductDetails_Name], [ProductDetails_Details], [ProductDetails_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (5, N'ProductDetailsCode2954277', 5, N'wheat', N'Wheat is one of the most widely grown cereal grains globally and a staple in many diets. It’s a primary ingredient in products like bread, pasta, and pastries. There are different types of wheat, including hard and soft wheat, each suited for different uses. Hard wheat is often used for bread-making, while soft wheat is used for pastries and cakes.', N'~/Upload/ProductDetails/shop-img-05.png', CAST(N'2025-02-18T15:43:56.673' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_ProductDetails] ([ProductDetails_Id], [ProductDetails_Code], [Fk_ProductDetails_Id], [ProductDetails_Name], [ProductDetails_Details], [ProductDetails_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (6, N'ProductDetailsCode3172525', 6, N'Alfalfa sprouts', N'Alfalfa sprouts are young shoots of the alfalfa plant and are popular for their crisp texture and mild, nutty flavor. They''re commonly used in salads, sandwiches, and wraps. Alfalfa sprouts are rich in vitamins, minerals, and antioxidants, making them a healthy addition to various dishes.', N'~/Upload/ProductDetails/shop-img-06.png', CAST(N'2025-02-18T15:45:06.023' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_ProductDetails] ([ProductDetails_Id], [ProductDetails_Code], [Fk_ProductDetails_Id], [ProductDetails_Name], [ProductDetails_Details], [ProductDetails_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (7, N'ProductDetailsCode9411934', 7, N'Kiwi', N'Kiwi, also known as Chinese gooseberry, is a small, nutrient-dense fruit with a unique combination of sweet and tart flavors. It’s rich in vitamin C, fiber, and antioxidants, which can help boost the immune system and improve digestion. The vibrant green flesh and tiny black seeds make it visually striking as well!', N'~/Upload/ProductDetails/shop-img-07.png', CAST(N'2025-02-18T15:45:41.463' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_ProductDetails] ([ProductDetails_Id], [ProductDetails_Code], [Fk_ProductDetails_Id], [ProductDetails_Name], [ProductDetails_Details], [ProductDetails_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (8, N'ProductDetailsCode4581410', 8, N'Broccoli', N'Broccoli is a highly nutritious vegetable that belongs to the cruciferous family, along with cabbage, kale, and cauliflower. It''s packed with vitamins C and K, fiber, and a variety of antioxidants, making it great for supporting overall health. Broccoli can be enjoyed steamed, roasted, stir-fried, or even eaten raw in salads.', N'~/Upload/ProductDetails/shop-img-08.png', CAST(N'2025-02-18T15:46:51.447' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_ProductDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Services] ON 

INSERT [dbo].[tbl_Services] ([Services_Id], [Services_Code], [Services_Heading], [Services_Description], [Services_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (1, N'ServicesCode5139366', N'Fresh, Organic Produce Straight from Our Fields', N'we take pride in offering fresh, organic produce straight from our fields. ', N'~/Upload/Services_Image/service-img-02.jpg', CAST(N'2025-02-18T16:09:39.620' AS DateTime), 1, N'::1', CAST(N'2025-02-18T16:39:55.403' AS DateTime), 1, N'::1', 1)
INSERT [dbo].[tbl_Services] ([Services_Id], [Services_Code], [Services_Heading], [Services_Description], [Services_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (2, N'ServicesCode9964902', N'Nurturing Your Table with Sustainable Harvests', N'we are dedicated to nurturing your table with sustainable harvests that are as.', N'~/Upload/Services_Image/service-img-05.jpeg', CAST(N'2025-02-18T16:10:26.053' AS DateTime), 1, N'::1', CAST(N'2025-02-18T18:48:36.200' AS DateTime), 1, N'::1', 1)
INSERT [dbo].[tbl_Services] ([Services_Id], [Services_Code], [Services_Heading], [Services_Description], [Services_Image], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (3, N'ServicesCode2941671', N'Grown with Care, Delivered with Love', N'we believe that great food starts with great care. Our produce is grown with care.', N'~/Upload/Services_Image/service-img-03.jpg', CAST(N'2025-02-18T16:11:24.857' AS DateTime), 1, N'::1', CAST(N'2025-02-18T18:48:21.340' AS DateTime), 1, N'::1', 1)
SET IDENTITY_INSERT [dbo].[tbl_Services] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Status] ON 

INSERT [dbo].[tbl_Status] ([Status_Id], [Status_Code], [Status_Name], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (1, N'StatusCode9820752', N'Accepted', CAST(N'2025-02-18T15:50:26.990' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Status] ([Status_Id], [Status_Code], [Status_Name], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (2, N'StatusCode4515744', N'Rejected', CAST(N'2025-02-18T15:50:40.513' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_Status] ([Status_Id], [Status_Code], [Status_Name], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (3, N'StatusCode7189333', N'Pending', CAST(N'2025-02-18T15:50:57.473' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_User] ON 

INSERT [dbo].[tbl_User] ([User_Id], [Registration_No], [User_Name], [Display_Name], [Mobile_No], [Email_Id], [Password], [FK_User_Role_Id], [Is_Locked], [Last_Login], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (3, N'Reg123456', N'John Doe', N'JohnD', N'7479805535', N'johndoe@example.com', 0x31323334, 1, 0, CAST(N'2025-02-18T15:16:08.467' AS DateTime), CAST(N'2025-02-18T15:16:08.467' AS DateTime), 1, N'192.168.1.1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_User] ([User_Id], [Registration_No], [User_Name], [Display_Name], [Mobile_No], [Email_Id], [Password], [FK_User_Role_Id], [Is_Locked], [Last_Login], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (4, NULL, N'Ravi', N'user', N'7479805535', N'ravikr25@gmail.com', 0x31323334, 4, 0, CAST(N'2025-02-19T12:30:49.827' AS DateTime), CAST(N'2025-02-18T15:21:18.800' AS DateTime), 1, N'::1', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_User] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_User_Role] ON 

INSERT [dbo].[tbl_User_Role] ([User_Role_Id], [User_Role_Name], [User_Role_Description], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (2, N'Super Admin', N'Has full control over the system, including user management, settings, and permissions.', CAST(N'2025-02-18T14:29:12.933' AS DateTime), 1, N'192.168.1.1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_User_Role] ([User_Role_Id], [User_Role_Name], [User_Role_Description], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (3, N'Admin', N'Manages users and has control over most system settings but with limited permissions compared to Super Admin.', CAST(N'2025-02-18T14:29:12.933' AS DateTime), 1, N'192.168.1.1', NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_User_Role] ([User_Role_Id], [User_Role_Name], [User_Role_Description], [Created_On], [Created_By], [Created_IP], [Modified_On], [Modified_By], [Modified_IP], [Is_Active]) VALUES (4, N'User', N'Can access the system with restricted permissions, typically to view and interact with available features.', CAST(N'2025-02-18T14:29:12.933' AS DateTime), 1, N'192.168.1.1', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_User_Role] OFF
GO
ALTER TABLE [dbo].[tbl_About] ADD  CONSTRAINT [DF_tbl_About_Created_On]  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_About] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[tbl_AboutDetails] ADD  CONSTRAINT [DF_tbl_AboutDetails_Created_On]  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_AboutDetails] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[tbl_Banner] ADD  CONSTRAINT [DF_tbl_Banner_Created_On]  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_Banner] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[tbl_Blog] ADD  CONSTRAINT [DF_tbl_Blog1_Created_On]  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_Blog] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[tbl_BlogDetails] ADD  CONSTRAINT [DF_tbl_BlogDetails_Created_On]  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_BlogDetails] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[tbl_Contact] ADD  CONSTRAINT [DF_tbl_Contact_Created_On]  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_Contact] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[tbl_CustomberFeedback] ADD  CONSTRAINT [DF_tbl_CustomberFeedback_Created_On]  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_CustomberFeedback] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[tbl_Gallery] ADD  CONSTRAINT [DF_tbl_Gallery_Created_On]  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_Gallery] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[tbl_Product] ADD  CONSTRAINT [DF_tbl_Product_Created_On]  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_Product] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[tbl_ProductDetails] ADD  CONSTRAINT [DF_tbl_ProductDetails_Created_On]  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_ProductDetails] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[tbl_Services] ADD  CONSTRAINT [DF_tbl_Services_Created_On]  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_Services] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[tbl_Status] ADD  CONSTRAINT [DF_tbl_Status_Created_On]  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_Status] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[tbl_User] ADD  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_User] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
ALTER TABLE [dbo].[tbl_User_Role] ADD  DEFAULT (getdate()) FOR [Created_On]
GO
ALTER TABLE [dbo].[tbl_User_Role] ADD  DEFAULT ((1)) FOR [Is_Active]
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_About]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_About]
@About_Code NVARCHAR(MAX)=NULL,
@Name NVARCHAR(MAX)=NULL,
@Image NVARCHAR(MAX)=NULL,
@About_Us NVARCHAR(MAX)=NULL,



@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
	   
    DECLARE @AboutId INT
	SELECT @AboutId = About_Id 
    FROM tbl_About 
    WHERE About_Code = @About_Code AND Is_Active = 1;

	
   IF @AboutId IS NULL
      BEGIN
           SELECT @About_Code = ('AboutCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_About (About_Code, Name, Image, About_Us, Created_On, Created_By, Created_IP)
           VALUES (@About_Code, @Name, @Image, @About_Us, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD About  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_AboutDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_AboutDetails]
@AboutDetails_Code NVARCHAR(MAX)=NULL,
@Fk_About_Id Int=NULL,
@Fk_Banner_Id Int=Null,
@About_Details NVARCHAR(MAX)=NULL,

@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
	   
    DECLARE @AboutDetailsId INT
	SELECT @AboutDetailsId = AboutDetails_Id 
    FROM tbl_AboutDetails 
    WHERE AboutDetails_Code = @AboutDetails_Code AND Is_Active = 1;

	
   IF @AboutDetailsId IS NULL
      BEGIN
           SELECT @AboutDetails_Code = ('ADC') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_AboutDetails (AboutDetails_Code, Fk_About_Id ,Fk_Banner_Id, About_Details, Created_On, Created_By, Created_IP)
           VALUES (@AboutDetails_Code,@Fk_About_Id,@Fk_Banner_Id,@About_Details, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD AboutDetails  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_Banner]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_Banner]
@Banner_Code NVARCHAR(MAX)=NULL,
@Banner_heading NVARCHAR(MAX)=NULL,
@Banner_description NVARCHAR(MAX)=NULL,
@Banner_image NVARCHAR(MAX)=NULL,



@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
	   
    DECLARE @BannerId INT
	SELECT @BannerId = Banner_Id 
    FROM tbl_Banner 
    WHERE Banner_Code = @Banner_Code AND Is_Active = 1;

	
   IF @BannerId IS NULL
      BEGIN
           SELECT @Banner_Code = ('BannerCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_Banner (Banner_Code, Banner_heading, Banner_description, Banner_image, Created_On, Created_By, Created_IP)
           VALUES (@Banner_Code, @Banner_heading, @Banner_description, @Banner_image,             GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD BANNER  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_Blog]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_Blog]
	
@Blog_Code NVARCHAR(MAX)=NULL, 
@Blog_Name NVARCHAR(MAX)=NULL,
@Blog_Image NVARCHAR(MAX)=NULL,

@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
	   
    DECLARE @BlogId INT
	SELECT @BlogId = Blog_Id 
    FROM tbl_Blog 
    WHERE Blog_Code = @Blog_Code AND Is_Active = 1;

	
   IF @BlogId IS NULL
      BEGIN
           SELECT @Blog_Code = ('BlogCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_Blog (Blog_Code, Blog_Name,Blog_Image,Created_On, Created_By, Created_IP)
           VALUES (@Blog_Code, @Blog_Name,@Blog_Image, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD Blog  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_BlogDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_BlogDetails]
	 
 @BlogDetails_Code NVARCHAR(MAX)=NULL,  
 @Fk_Blog_Id       INT=NULL, 
 @BlogDetails_Description  NVARCHAR(max)=NULL, 
 @BlogDetails_Description1  NVARCHAR(max)=NULL,
 @BlogDetails_Image   NVARCHAR(max)=NULL, 
 @BlogDetails_ImageA NVARCHAR(max)=NULL, 
 @BlogDetails_ImageB NVARCHAR(max)=NULL, 
 @BlogDetails_Heading    NVARCHAR(MAX) NULL,

@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
	   
    DECLARE @BlogDetailsId INT
	SELECT @BlogDetailsId = BlogDetails_Id 
    FROM tbl_BlogDetails 
    WHERE BlogDetails_Code = @BlogDetails_Code AND Is_Active = 1;

	
   IF @BlogDetailsId IS NULL
      BEGIN
           SELECT @BlogDetails_Code = ('ADC') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_BlogDetails (
           BlogDetails_Code,     
           Fk_Blog_Id ,    
           BlogDetails_Description ,
           BlogDetails_Description1,
           BlogDetails_Image ,
           BlogDetails_ImageA ,
           BlogDetails_ImageB ,
           BlogDetails_Heading,
           Created_On, Created_By, Created_IP)
           VALUES (
           @BlogDetails_Code,     
           @Fk_Blog_Id ,    
           @BlogDetails_Description ,
           @BlogDetails_Description1,
           @BlogDetails_Image ,
           @BlogDetails_ImageA ,
           @BlogDetails_ImageB ,
           @BlogDetails_Heading,
           GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD BlogDetails  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_Contact]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_Contact]
    @Contact_Code NVARCHAR(MAX)= NULL,  
    @Contact_Name NVARCHAR(MAX)=NULL,
    @Contact_Number NVARCHAR(MAX)= NULL,
    @Contact_Email NVARCHAR(MAX) =NULL,
    @Contact_Subject NVARCHAR(MAX) =NULL,
    @Contact_Comment NVARCHAR(MAX) =NULL,
   
    @Created_On DATETIME=NULL,
   @Created_By INT=NULL,
   @Created_IP NVARCHAR(MAX)=NULL,
   @Modified_On DATETIME=NULL,
   @Modified_By INT=NULL,
   @Modified_IP NVARCHAR(MAX)=NULL,
   @Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
	   
    DECLARE @ContactId INT
	SELECT @ContactId = Contact_Id 
    FROM tbl_Contact 
    WHERE Contact_Code = @Contact_Code AND Is_Active = 1;

	
   IF @ContactId IS NULL
      BEGIN
           SELECT @Contact_Code = 'ContactCode' + CAST(CAST(CONVERT(NUMERIC(8,0), RAND() * 8999999) + 1000000 AS NVARCHAR) AS NVARCHAR)
           --SELECT @Contact_Code = ('CC') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_Contact (Contact_Code,Contact_Name, Contact_Number,Contact_Email, Contact_Subject,Contact_Comment, Created_On, Created_By, Created_IP)
           VALUES (@Contact_Code,@Contact_Name, @Contact_Number,@Contact_Email, @Contact_Subject,@Contact_Comment, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD Contact  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_CustomberFeedback]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_CustomberFeedback]
    @CustomberFeedback_Code NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Name NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Email NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Number NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Comment  NVARCHAR(MAX) = NULL, 
    @Fk_Status_Id INT = NULL,

    @Created_On DATETIME = NULL,
    @Created_By INT = NULL,
    @Created_IP NVARCHAR(MAX) = NULL,
    @Modified_On DATETIME = NULL,
    @Modified_By INT = NULL,
    @Modified_IP NVARCHAR(MAX) = NULL,
    @Is_Active BIT = NULL
AS
BEGIN
BEGIN TRY  
    DECLARE @CustomberFeedbackId INT;

    SELECT @CustomberFeedbackId = CustomberFeedback_Id
    FROM tbl_CustomberFeedback
    WHERE @CustomberFeedback_Code = CustomberFeedback_Code AND Is_Active = 1;

    IF @CustomberFeedbackId IS NULL
    BEGIN
        SELECT @CustomberFeedback_Code = ('CFC') + 
            CAST(CONVERT(NUMERIC(8, 0), RAND() * 8999999) + 1000000 AS NVARCHAR);

        INSERT INTO tbl_CustomberFeedback 
        (CustomberFeedback_Code, CustomberFeedback_Name, CustomberFeedback_Email, 
         CustomberFeedback_Number,CustomberFeedback_Comment, Fk_Status_Id, Created_On, Created_By, Created_IP)
        VALUES 
        (@CustomberFeedback_Code, @CustomberFeedback_Name, @CustomberFeedback_Email, 
         @CustomberFeedback_Number,@CustomberFeedback_Comment, @Fk_Status_Id, GETDATE(), @Created_By, @Created_IP);

        SELECT SCOPE_IDENTITY();
    END
END TRY   
BEGIN CATCH    
    DECLARE @ErrorMessage VARCHAR(MAX);    
    SELECT @ErrorMessage = 'SP ERROR: ADD CustomberFeedback FAILED' + CHAR(13) + CHAR(10) +
        'THE ERROR WAS: ' + CHAR(13) + CHAR(10) + ERROR_MESSAGE();
    RAISERROR (@ErrorMessage, 16, 1);
END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_Gallery]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_Gallery]

@Gallery_Code NVARCHAR(MAX)=NULL,
@Gallery_Name NVARCHAR(MAX)=NULL,
@Gallery_Heading NVARCHAR(MAX)=NULL,
@Gallery_Image NVARCHAR(MAX)=NULL,

@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
	   
    DECLARE @GalleryId INT
	SELECT @GalleryId = Gallery_Id 
    FROM tbl_Gallery 
    WHERE Gallery_Code = @Gallery_Code AND Is_Active = 1;

	
   IF @GalleryId IS NULL
      BEGIN
           SELECT @Gallery_Code = ('GalleryCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_Gallery (Gallery_Code, Gallery_Name, Gallery_Heading,  Gallery_Image,Created_On, Created_By, Created_IP)
           VALUES (@Gallery_Code, @Gallery_Name, @Gallery_Heading, @Gallery_Image, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD Gallery  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_Product]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_Product]
@Product_Code NVARCHAR(MAX)=NULL,
@Product_Name NVARCHAR(MAX)=NULL,
@Product_Image NVARCHAR(MAX)=NULL,

@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
	   
    DECLARE @ProductId INT
	SELECT @ProductId = Product_Id 
    FROM tbl_Product 
    WHERE Product_Code = @Product_Code AND Is_Active = 1;

	
   IF @ProductId IS NULL
      BEGIN
           SELECT @Product_Code = ('ProductCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_Product (Product_Code,Product_Name, Product_Image, Created_On, Created_By, Created_IP)
           VALUES (@Product_Code,@Product_Name, @Product_Image, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD Product  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_ProductDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_ProductDetails]

@ProductDetails_Code NVARCHAR(MAX)=NULL,
@Fk_ProductDetails_Id Int=NULL,
@ProductDetails_Name NVARCHAR(MAX)=NULL,
@ProductDetails_Image NVARCHAR(MAX)=NULL,
@ProductDetails_Details NVARCHAR(MAX)=NULL,



@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
	   
    DECLARE @ProductDetailsId INT
	SELECT @ProductDetailsId = ProductDetails_Id 
    FROM tbl_ProductDetails 
    WHERE ProductDetails_Code = @ProductDetails_Code AND Is_Active = 1;

	
   IF @ProductDetailsId IS NULL
      BEGIN
           SELECT @ProductDetails_Code = ('ProductDetailsCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_ProductDetails (ProductDetails_Code, Fk_ProductDetails_Id , ProductDetails_Name, ProductDetails_Image, ProductDetails_Details, Created_On, Created_By, Created_IP)
           VALUES (@ProductDetails_Code, @Fk_ProductDetails_Id,@ProductDetails_Name, @ProductDetails_Image, @ProductDetails_Details, GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD ProductDetails  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_Services]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_Services]

@Services_Code  NVARCHAR(MAX)=NULL,
@Services_Heading  NVARCHAR(MAX)=NULL,
@Services_Description  NVARCHAR(MAX)=NULL,
@Services_Image       NVARCHAR(MAX)=NULL,

@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
	   
    DECLARE @ServicesId INT
	SELECT @ServicesId = Services_Id 
    FROM tbl_Services 
    WHERE Services_Code = @Services_Code AND Is_Active = 1;

	
   IF @ServicesId IS NULL
      BEGIN
           SELECT @Services_Code = ('ServicesCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
           INSERT INTO tbl_Services (Services_Code,Services_Heading,Services_Description, Services_Image,Created_On, Created_By, Created_IP)
           VALUES (@Services_Code,@Services_Heading,@Services_Description,@Services_Image,               GETDATE(), @Created_By, @Created_IP);
         SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD Services  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_Status]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_Status]
  
 @Status_Code NVARCHAR(MAX)=NULL, 
 @Status_Name NVARCHAR(MAX)=NULL,
 
 @Created_On DATETIME=NULL,
 @Created_By INT=NULL,
 @Created_IP NVARCHAR(MAX)=NULL,
 @Modified_On DATETIME=NULL,
 @Modified_By INT=NULL,
 @Modified_IP NVARCHAR(MAX)=NULL,
 @Is_Active BIT=NULL
 
 AS
 BEGIN
 BEGIN TRY  
 	   
     DECLARE @StatusId INT
 	SELECT @StatusId = Status_Id 
     FROM tbl_Status 
     WHERE Status_Code = @Status_Code AND Is_Active = 1;
 
 	
    IF @StatusId IS NULL
       BEGIN
            SELECT @Status_Code = ('StatusCode') + (SELECT CAST(CONVERT(numeric(8,0),RAND() * 8999999) + 1000000 AS NVARCHAR))
            INSERT INTO tbl_Status (Status_Code, Status_Name,Created_On, Created_By, Created_IP)
            VALUES (@Status_Code, @Status_Name, GETDATE(), @Created_By, @Created_IP);
          SELECT SCOPE_IDENTITY()
       END
 
  END TRY   
 BEGIN CATCH    
    DECLARE @ErrorMessage VARCHAR(MAX);    
    SELECT @ErrorMessage ='SP ERROR : ADD Status  FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
    RAISERROR (@ErrorMessage, 16, 1)   
 END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_User]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_User]
@Registration_No NVARCHAR(MAX)=NULL,
@User_Name NVARCHAR(MAX)=NULL,
@Display_Name NVARCHAR(MAX)=NULL,
@Mobile_No NVARCHAR(MAX)=NULL,
@Email_Id NVARCHAR(200)=NULL,
@Password VARBINARY(MAX)=NULL,
@FK_User_Role_Id INT=NULL,
@Is_Locked BIT=NULL,
@Last_Login DATETIME=NULL,

@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
	   
   DECLARE @User_Id INT
   SELECT @User_Id=User_Id from tbl_User where User_Name=@User_Name AND Email_Id=@Email_Id AND Mobile_No=@Mobile_No AND Is_Active=1
		 
   IF @User_Id IS NULL
      BEGIN
         INSERT INTO tbl_User(Registration_No,User_Name,Display_Name,Mobile_No,Email_Id,Password,FK_User_Role_Id,Is_Locked,Last_Login,Created_By,Created_IP)
		 VALUES(@Registration_No,@User_Name,@Display_Name,@Mobile_No,@Email_Id,@Password,@FK_User_Role_Id,@Is_Locked,@Last_Login,@Created_By,@Created_IP)
		 SELECT SCOPE_IDENTITY()
      END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD USER FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Add_User_Role]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Add_User_Role]

@User_Role_Name NVARCHAR (MAX)=NULL,
@User_Role_Description NVARCHAR (MAX)=NULL,

@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN    
 BEGIN TRY   

   BEGIN

   DECLARE @User_Role_Id INT
   SELECT @User_Role_Id=User_Role_Id FROM tbl_User_Role WHERE User_Role_Name=@User_Role_Name AND Is_Active=1
  
   IF @User_Role_Id IS NULL 
   BEGIN

    INSERT INTO tbl_User_Role(User_Role_Name,User_Role_Description,
                               Created_By,
                               Created_IP)
                        VALUES(LTRIM(RTRIM(@User_Role_Name)),@User_Role_Description,
                                @Created_By,
                                @Created_IP)
    SELECT SCOPE_IDENTITY()

   END

   END
    
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : ADD USER ROLE FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Authenticate_User]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Authenticate_User]
@Mobile_No NVARCHAR(MAX)=NULL,
@Password VARBINARY(MAX)=NULL

AS
BEGIN
BEGIN TRY  
	   		 
   BEGIN
      SELECT * , CAST(U.Password AS VARCHAR(MAX)) AS Password_String FROM tbl_User U
      INNER JOIN tbl_User_Role UR ON UR.User_Role_Id=U.FK_User_Role_Id
      WHERE U.Mobile_No=@Mobile_No AND U.Password=@Password
   END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : AUTHENTICATE USER FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_About]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Delete_About]
@About_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_About SET Is_Active=0,Modified_On=GETDATE() WHERE About_Id=@About_Id
   SELECT @About_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE About FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_AboutDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Delete_AboutDetails]
@AboutDetails_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_AboutDetails SET Is_Active=0,Modified_On=GETDATE() WHERE AboutDetails_Id=@AboutDetails_Id
   SELECT @AboutDetails_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE AboutDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_Banner]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Delete_Banner]
@Banner_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_Banner SET Is_Active=0,Modified_On=GETDATE() WHERE Banner_Id=@Banner_Id
   SELECT @Banner_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE BANNER FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_Blog]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Delete_Blog]
@Blog_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_Blog SET Is_Active=0,Modified_On=GETDATE() WHERE Blog_Id=@Blog_Id
   SELECT @Blog_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE Blog FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_BlogDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Delete_BlogDetails]
@BlogDetails_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_BlogDetails SET Is_Active=0,Modified_On=GETDATE() WHERE BlogDetails_Id=@BlogDetails_Id
   SELECT @BlogDetails_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE BlogDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_Contact]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Delete_Contact]
@Contact_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_Contact SET Is_Active=0,Modified_On=GETDATE() WHERE Contact_Id=@Contact_Id
   SELECT @Contact_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE Contact FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_CustomberFeedback]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Delete_CustomberFeedback]
@CustomberFeedback_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_CustomberFeedback SET Is_Active=0,Modified_On=GETDATE() WHERE CustomberFeedback_Id=@CustomberFeedback_Id
   SELECT @CustomberFeedback_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE CustomberFeedback FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_Gallery]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Delete_Gallery]
	@Gallery_Id INT

	As 
	Begin 
	Begin Try

    Update tbl_Gallery Set Is_Active=0,Modified_On=GETDATE() WHERE Gallery_Id=@Gallery_Id
    SELECT @Gallery_Id

   END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE GALLERY FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_Product]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Delete_Product]
@Product_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_Product SET Is_Active=0,Modified_On=GETDATE() WHERE Product_Id=@Product_Id
   SELECT @Product_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE Product FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_ProductDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Delete_ProductDetails]
@ProductDetails_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_ProductDetails SET Is_Active=0,Modified_On=GETDATE() WHERE ProductDetails_Id=@ProductDetails_Id
   SELECT @ProductDetails_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE ProductDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_Services]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Delete_Services]
	@Services_Id INT

	AS
    BEGIN
	BEGIN TRY
	         
			  UPDATE tbl_Services Set Is_Active=0 ,Modified_On=GETDATE() WHERE  Services_Id=@Services_Id
			  SELECT @Services_Id 

  END TRY
  BEGIN CATCH
             DECLARE @ErrorMessage  varchar (MAX)
			 SELECT  @ErrorMessage ='SP ERROR : DELETE GALLERY FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()  
			 RAISERROR (@ErrorMessage, 16, 1)   
  END CATCH
  END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_Status]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Delete_Status]
@Status_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_Status SET Is_Active=0,Modified_On=GETDATE() WHERE Status_Id=@Status_Id
   SELECT @Status_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE Status FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_User]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_Delete_User]
@User_Id INT

AS
BEGIN
BEGIN TRY     
 	
   UPDATE tbl_User SET Is_Active=0,Modified_On=GETDATE() WHERE User_Id=@User_Id
   SELECT @User_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE USER FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_User_Role]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Delete_User_Role]
	@User_Role_Id INT

AS
BEGIN    
 BEGIN TRY  

	BEGIN
	UPDATE tbl_User_Role SET Is_Active=0 WHERE User_Role_Id=@User_Role_Id
	SELECT @User_Role_Id
	END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : DELETE USER ROLE FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_About]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_About]	@About_Id INT=NULLASBEGIN     BEGIN TRY         IF @About_Id=0 SET @About_Id=NULL    	        SELECT * FROM tbl_About WHERE About_Id=ISNULL(@About_Id,About_Id) AND Is_Active=1  END TRY    BEGIN CATCH    	DECLARE @ErrorMessage VARCHAR(MAX);       SELECT @ErrorMessage ='SP ERROR : LIST About FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   	RAISERROR (@ErrorMessage, 16, 1)    END CATCH    END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_AboutDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_AboutDetails]	@AboutDetails_Id INT=NULL,	@About_Id  INT=NULL,	@Banner_Id INT=NULLASBEGIN     BEGIN TRY         IF @AboutDetails_Id=0 SET @AboutDetails_Id=NULL      IF @About_Id=0 SET @About_Id=NULL	  IF @Banner_Id=0 SET @Banner_Id=NULL	SELECT * FROM tbl_AboutDetails AD    INNER JOIN tbl_About A ON AD.Fk_About_Id = A.About_Id    INNER JOIN tbl_Banner B ON AD.Fk_Banner_Id = B.Banner_Id    WHERE AD.AboutDetails_Id=ISNULL(@AboutDetails_Id,AD.AboutDetails_Id)	AND   AD.Fk_About_Id=ISNULL(@About_Id,AD.Fk_About_Id) 	AND   AD.Fk_Banner_Id=ISNULL(@Banner_Id,AD.Fk_Banner_Id)	AND   AD.Is_Active=1 	ORDER BY AD.AboutDetails_Id END TRY    BEGIN CATCH    	DECLARE @ErrorMessage VARCHAR(MAX);       SELECT @ErrorMessage ='SP ERROR : LIST AboutDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   	RAISERROR (@ErrorMessage, 16, 1)    END CATCH    END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_Banner]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_Banner]	@Banner_Id INT=NULLASBEGIN     BEGIN TRY         IF @Banner_Id=0 SET @Banner_Id=NULL    	        SELECT * FROM tbl_Banner WHERE Banner_Id=ISNULL(@Banner_Id,Banner_Id) AND Is_Active=1  END TRY    BEGIN CATCH    	DECLARE @ErrorMessage VARCHAR(MAX);       SELECT @ErrorMessage ='SP ERROR : LIST Banner FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   	RAISERROR (@ErrorMessage, 16, 1)    END CATCH    END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_Blog]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_Blog]
@Blog_Id INT=NULL

AS
BEGIN
BEGIN TRY     
 	
  if @Blog_Id=0 SET @Blog_Id=Null
  select * from tbl_Blog Where Blog_Id=ISNULL(@Blog_Id,Blog_Id )AND Is_Active=1;

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : List Blog FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_BlogDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_BlogDetails]
@BlogDetails_Id Int=NULL,
@Blog_Id Int=NULL
AS
BEGIN
BEGIN TRY     
 	
  IF @BlogDetails_Id=0 SET @BlogDetails_Id=Null
  IF @Blog_Id=0 SET @Blog_Id=Null
  select * from tbl_BlogDetails BD  
  INNER JOIN tbl_Blog B ON BD.Fk_Blog_Id=B.BLog_Id
  where BD.BlogDetails_Id=ISNULL(@BlogDetails_Id,BD.BlogDetails_Id)
  AND   BD.Fk_Blog_Id=ISNULL (@Blog_Id,Bd.FK_Blog_Id)   
  AND   BD.Is_Active=1
  ORDER BY BD.BlogDetails_Id 
 
 
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : LIST BlogDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_Contact]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_Contact]
    @Contact_Id INT=NULL
AS
BEGIN
    BEGIN TRY
        IF @Contact_Id = 0 SET @Contact_Id =NULL
            SELECT * FROM tbl_Contact WHERE Contact_Id=ISNULL(@Contact_Id,Contact_Id) AND Is_Active = 1;
       
  END TRY             
    BEGIN CATCH
        DECLARE @ErrorMessage VARCHAR(MAX);
        SELECT @ErrorMessage =  'SP ERROR: List Contact FAILED' + CHAR(13) + CHAR(10) +'THE ERROR WAS: ' + CHAR(13) + CHAR(10) + ERROR_MESSAGE();
        RAISERROR (@ErrorMessage, 16, 1);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_CustomberFeedback]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_CustomberFeedback]
@CustomberFeedback_Id  INT=NULL,
@Status_Id       INT=NULL

AS
BEGIN
BEGIN TRY     
     
    if @CustomberFeedback_Id=0  SET @CustomberFeedback_Id=NUll
    If @Status_Id=0 SET @Status_Id=Null
   
    SELECT * From tbl_CustomberFeedback CF
    INNER JOIN  tbl_Status S ON CF.Fk_Status_Id=S.Status_Id
    Where CF.CustomberFeedback_Id=ISNULL(@CustomberFeedback_Id,CF.CustomberFeedback_Id)
    AND CF.Fk_Status_Id = ISNULL(@Status_Id, CF.Fk_Status_Id)
    AND CF.Is_Active = 1
    ORDER BY CF.CustomberFeedback_Id



END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : List CustomberFeedback FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_Gallery]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_Gallery]
    @Gallery_Id INT=NULL

    As
    BEGIN 
       BEGIN TRY
               IF @Gallery_Id=0 SET @Gallery_Id=NUll
                SELECT * From tbl_Gallery Where  Gallery_Id=ISNULL(@Gallery_Id,Gallery_Id) AND Is_Active=1;
      
       END TRY
       BEGIN CATCH
                  DECLARE @ErrorMessage Varchar(MAX);
                  SELECT @ErrorMessage ='SP ERROR : LIST GALLERY FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
	      RAISERROR (@ErrorMessage, 16, 1)   
       END CATCH
    END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_Product]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_Product]	@Product_Id INT=NULLASBEGIN     BEGIN TRY         IF @Product_Id=0 SET @Product_Id=NULL    	        SELECT * FROM tbl_Product WHERE Product_Id=ISNULL(@Product_Id,Product_Id) AND Is_Active=1  END TRY    BEGIN CATCH    	DECLARE @ErrorMessage VARCHAR(MAX);       SELECT @ErrorMessage ='SP ERROR : LIST Product FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   	RAISERROR (@ErrorMessage, 16, 1)    END CATCH    END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_ProductDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_ProductDetails]
@ProductDetails_Id INT=NULL,
@Fk_ProductDetails_Id INT=NULL

AS
BEGIN    
 BEGIN TRY   

    IF @ProductDetails_Id=0 SET @ProductDetails_Id=NULL
    IF @Fk_ProductDetails_Id=0 SET @Fk_ProductDetails_Id=NULL

    SELECT * FROM tbl_ProductDetails B 
    INNER JOIN tbl_Product D ON B.Fk_ProductDetails_Id=D.Product_Id
	WHERE B.ProductDetails_Id=ISNULL(@ProductDetails_Id,B.ProductDetails_Id) 
    AND B.Fk_ProductDetails_Id=ISNULL(@Fk_ProductDetails_Id,B.Fk_ProductDetails_Id) 
	AND B.Is_Active=1 
	ORDER BY B.ProductDetails_Id

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : LIST ProductDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_Services]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_Services]
	@Services_Id INT=NULL

	As
	BEGIN 
	BEGIN TRY
	         
			 IF @Services_Id=0 SET @Services_Id=NULL
			 SELECT *From tbl_Services WHERE Services_Id=ISNULL(@Services_Id,Services_Id) And Is_Active=1;
    END TRY
	BEGIN CATCH
		   DECLARE @ErrorMessage nvarchar(max)
           SELECT @ErrorMessage ='SP ERROR : LIST SERVICES FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
	      RAISERROR (@ErrorMessage, 16, 1)   
    END CATCH    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_Status]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_Status]
@Status_Id INT

AS
BEGIN
BEGIN TRY     
 	
  IF @Status_Id=0 SET @Status_Id=NULL
    
	        SELECT * FROM tbl_Status WHERE Status_Id=ISNULL(@Status_Id,Status_Id) AND Is_Active=1

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : list Status FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_User]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_User]
@User_Id INT=NULL,
@User_Role_Id INT=NULL,
@Email_Id NVARCHAR(200)=NULL,
@Mobile_No NVARCHAR(MAX)=NULL

AS   
SET NOCOUNT ON    
BEGIN    
BEGIN TRY   

   BEGIN   

      IF @User_Id=0 SET @User_Id=NULL
      IF @User_Role_Id=0 SET @User_Role_Id=NULL

      SELECT *, U.Is_Active AS User_Active FROM tbl_User U
      INNER JOIN tbl_User_Role UR ON UR.User_Role_Id=U.FK_User_Role_Id
      WHERE U.User_Id=ISNULL(@User_Id,U.User_Id) AND 
      U.FK_User_Role_Id=ISNULL(@User_Role_Id,U.FK_User_Role_Id) AND 
      U.Email_Id=ISNULL(@Email_Id,U.Email_Id) AND  
      U.Mobile_No=ISNULL(@Mobile_No,U.Mobile_No) AND  
      U.Is_Active=1 
      ORDER BY U.User_Id

   END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : LIST USER FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_List_User_Role]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_List_User_Role]
@User_Role_Id INT=NULL

AS   
SET NOCOUNT ON    
BEGIN    
BEGIN TRY   

   BEGIN  
 
      IF @User_Role_Id=0 SET @User_Role_Id=NULL
 
      SELECT * FROM tbl_User_Role
      WHERE User_Role_Id=ISNULL(@User_Role_Id,User_Role_Id) AND Is_Active=1
      ORDER BY User_Role_Id

   END

END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : LIST USER ROLE FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_About]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_About]

@About_Id INT=NULL,
@About_Code NVARCHAR(MAX)=NULL,
@Name NVARCHAR(MAX)=NULL,
@Image NVARCHAR(MAX)=NULL,
@About_Us NVARCHAR(MAX)=NULL,


@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  


             UPDATE tbl_About SET        Name = @Name,
                                         Image = @Image,
                                         About_Us = @About_Us,

                                         Modified_On=GetDate(),
                                         Modified_By=@Modified_By,
                                         Modified_IP=@Modified_IP
             WHERE About_Id=@About_Id
   SELECT @About_Id                     
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE About FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_AboutDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_AboutDetails]

@AboutDetails_Id INT=NULL,
@AboutDetails_Code NVARCHAR(MAX)=NULL,
@Fk_About_Id INT=NULL,
@Fk_Banner_Id INT=NULL,
@About_Details NVARCHAR(MAX)=NULL,


@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  


             UPDATE tbl_AboutDetails SET       Fk_About_Id = @Fk_About_Id ,
                                               Fk_Banner_Id = @Fk_Banner_Id ,
                                               About_Details = @About_Details,
                                        
                                         

                                         Modified_On=@Modified_On,
                                         Modified_By=@Modified_By,
                                         Modified_IP=@Modified_IP
             WHERE AboutDetails_Id=@AboutDetails_Id
   SELECT @AboutDetails_Id                    
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE AboutDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_Banner]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_Banner]

@Banner_Id INT=NULL,
@Banner_Code NVARCHAR(MAX)=NULL,
@Banner_heading NVARCHAR(MAX)=NULL,
@Banner_description NVARCHAR(MAX)=NULL,
@Banner_image NVARCHAR(MAX)=NULL,


@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  


             UPDATE tbl_Banner SET  Banner_heading = @Banner_heading,
                                         Banner_description = @Banner_description,
                                         Banner_image = @Banner_image,

                                         Modified_On=@Modified_On,
                                         Modified_By=@Modified_By,
                                         Modified_IP=@Modified_IP
             WHERE Banner_Id=@Banner_Id
   SELECT @Banner_Id                     
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE BANNER FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_Blog]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_Blog]
@Blog_Id   INT=NULL,
@Blog_Code NVARCHAR(MAX)=NULL, 
@Blog_Name NVARCHAR(MAX)=NULL,
@Blog_Image NVARCHAR(MAX)=NULL,

@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL
As 
BEGIN
BEGIN TRY
       UPDATE tbl_Blog SET Blog_Code= @Blog_Code,
                           Blog_Name= @Blog_Name,
                           Blog_Image=@Blog_Image,
                           Modified_On=GetDate(),
                           Modified_By=@Modified_By,
                           Modified_IP=@Modified_IP
         WHERE  Blog_Id  = @Blog_Id
         SELECT @Blog_Id;
END TRY
BEGIN CATCH
           DECLARE @ErrorMessage NVARCHAR(MAX);
           SELECT  @ErrorMessage ='SP ERROR : UPDATE STATUS FAILED' +CHAR(13)+CHAR(10)+ 'THE ERROR WAS : ' + CHAR(13)+CHAR(10)+ ERROR_MESSAGE();
           RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_BlogDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_BlogDetails]
 @BlogDetails_Id  INT=NULL,
 @BlogDetails_Code  NVARCHAR(max)=NULL, 
 @Fk_Blog_Id        INT=NULL, 
 @BlogDetails_Description  NVARCHAR(max)=NULL, 
 @BlogDetails_Description1  NVARCHAR(max)=NULL,
 @BlogDetails_Image   NVARCHAR(max)=NULL, 
 @BlogDetails_ImageA NVARCHAR(max)=NULL, 
 @BlogDetails_ImageB NVARCHAR(max)=NULL, 
 @BlogDetails_Heading    NVARCHAR(MAX) NULL,

@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL
AS
BEGIN 
BEGIN TRY
         UPDATE  tbl_BlogDetails set
                                     BlogDetails_Code = @BlogDetails_Code ,
                                     Fk_Blog_Id       = @Fk_Blog_Id       ,
                                     BlogDetails_Description  =@BlogDetails_Description ,
                                     BlogDetails_Description1 =@BlogDetails_Description1,
                                     BlogDetails_Image  =@BlogDetails_Image  ,
                                     BlogDetails_ImageA =@BlogDetails_ImageA ,
                                     BlogDetails_ImageB =@BlogDetails_ImageB ,
                                     BlogDetails_Heading=@BlogDetails_Heading,
                                     Modified_On=@Modified_On,
                                     Modified_By=@Modified_By,
                                     Modified_IP=@Modified_IP
      where BlogDetails_Id = @BlogDetails_Id
      select  @BlogDetails_Id
END TRY
BEGIN CATCH
           Declare @ErrorMessage varchar(max);
           select  @ErrorMessage ='sp ERROR : UPDATE BlogDetail FAILED' +CHAR(13)+CHAR(10)+ 'THE ERROR WAS : ' +CHAR(13)+CHAR(10)+ ERROR_MESSAGE();
           RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_Contact]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_Contact]
    
    @Contact_Id INT=NULL,
	@Contact_Code NVARCHAR(Max)=Null,
    @Contact_Name   NVARCHAR(Max)=Null,
    @Contact_Number NVARCHAR(MAX)= Null,
    @Contact_Email  NVARCHAR(MAX) =NULL,
    @Contact_Subject NVARCHAR(MAX) =NULL,
    @Contact_Comment NVARCHAR(MAX) =NULL,
   
   @Created_On DATETIME=NULL,
   @Created_By INT=NULL,
   @Created_IP NVARCHAR(MAX)=NULL,
   @Modified_On DATETIME=NULL,
   @Modified_By INT=NULL,
   @Modified_IP NVARCHAR(MAX)=NULL,
   @Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
          update tbl_Contact set  Contact_Name   = @Contact_Name  , 
                                  Contact_Number = @Contact_Number ,
                                  Contact_Email  = @Contact_Email  ,
                                  Contact_Subject= @Contact_Subject,
                                  Contact_Comment= @Contact_Comment,
                                  Modified_On=GetDate(),
                                  Modified_By=@Modified_By,
                                  Modified_IP=@Modified_IP

        WHERE Contact_Id =@Contact_Id 
        SELECT @Contact_Id
END TRY
BEGIN CATCH
          DECLARE @ErrorMessage Nvarchar(max);
          Select @ErrorMessage ='SP ERROR : UPDATE CONTACT FAILED'+  Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
          RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_CustomberFeedBack]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_CustomberFeedBack]
    @CustomberFeedback_Id     INT=NULL,
	@CustomberFeedback_Code   NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Name   NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Email  NVARCHAR(MAX) = NULL, 
    @CustomberFeedback_Number NVARCHAR(MAX) = NULL,
    @CustomberFeedback_Comment NVARCHAR(MAX) = NULL,
    @Fk_Status_Id INT = NULL,

    @Created_On DATETIME = NULL,
    @Created_By INT = NULL,
    @Created_IP NVARCHAR(MAX) = NULL,
    @Modified_On DATETIME = NULL,
    @Modified_By INT = NULL,
    @Modified_IP NVARCHAR(MAX) = NULL,
    @Is_Active BIT = NULL
AS
BEGIN
BEGIN TRY  
          UPDATE tbl_CustomberFeedback set     
                                           CustomberFeedback_Code   = @CustomberFeedback_Code  ,
                                           CustomberFeedback_Name    =@CustomberFeedback_Name  ,
                                           CustomberFeedback_Email  = @CustomberFeedback_Email ,
                                           CustomberFeedback_Number  =@CustomberFeedback_Number,
                                           CustomberFeedback_Comment =@CustomberFeedback_Comment,
                                           Fk_Status_Id=@Fk_Status_Id,
                                           Modified_On=GETDATE(),
                                           Modified_By=@Modified_By,
                                           Modified_IP=@Modified_IP
          WHERE CustomberFeedback_Id =  @CustomberFeedback_Id   
          SELECT @CustomberFeedback_Id 
END TRY
BEGIN CATCH
      DECLARE @ErrorMessage varchar(MAX);
      SELECT @ErrorMessage = 'SP ERROR: ADD CustomberFeedback FAILED' +char(16)+char(13)+'THE ERROR WAS: '+ Char(13)+ char(10)+ ERROR_MESSAGE();
      RAISERROR (@ErrorMessage, 16, 1);
END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_Gallery]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_Gallery]
	@Gallery_Id INT=NULL,
	@Gallery_Code NVARCHAR(MAX)=NULL,
    @Gallery_Name NVARCHAR(MAX)=NULL,
    @Gallery_Heading NVARCHAR(MAX)=NULL,
    @Gallery_Image NVARCHAR(MAX)=NULL,
    
    @Created_On DATETIME=NULL,
    @Created_By INT=NULL,
    @Created_IP NVARCHAR(MAX)=NULL,
    @Modified_On DATETIME=NULL,
    @Modified_By INT=NULL,
    @Modified_IP NVARCHAR(MAX)=NULL,
    @Is_Active BIT=NULL

    AS
    BEGIN
    BEGIN TRY 
             UPDATE tbl_Gallery SET Gallery_Name=@Gallery_Name,
                                    Gallery_Heading=@Gallery_Heading,
                                    Gallery_Image=@Gallery_Image,
                                    Modified_On=GetDate(),
                                    Modified_By=@Modified_By,
                                    Modified_IP=@Modified_IP
                        WHERE Gallery_Id=@Gallery_Id
                        SELECT @Gallery_Id;
   END TRY
   BEGIN CATCH
            DECLARE @ErrorMessage varchar(MAX);
           SELECT @ErrorMessage ='SP ERROR : UPDATE GALLERY FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_Product]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_Product]

@Product_Id INT=NULL,
@Product_Code NVARCHAR(MAX)=NULL,
@Product_Name NVARCHAR(MAX)=NULL,
@Product_Image NVARCHAR(MAX)=NULL,


@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  


             UPDATE tbl_Product SET  Product_Name = @Product_Name,
                                         Product_Image = @Product_Image,
                                         

                                         Modified_On=@Modified_On,
                                         Modified_By=@Modified_By,
                                         Modified_IP=@Modified_IP
             WHERE Product_Id=@Product_Id
   SELECT @Product_Id                     
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE Product FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_ProductDetails]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_ProductDetails]
@ProductDetails_Id INT=NULL,
@ProductDetails_Code NVARCHAR(MAX)=NULL,
@Fk_ProductDetails_Id Int=NULL,
@ProductDetails_Name NVARCHAR(MAX)=NULL,
@ProductDetails_Image NVARCHAR(MAX)=NULL,
@ProductDetails_Details NVARCHAR(MAX)=NULL,


@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  


             UPDATE tbl_ProductDetails SET Fk_ProductDetails_Id = @Fk_ProductDetails_Id,  
                                         ProductDetails_Name = @ProductDetails_Name,
                                         ProductDetails_Image = @ProductDetails_Image,
                                         ProductDetails_Details = @ProductDetails_Details,
                                         

                                         Modified_On=@Modified_On,
                                         Modified_By=@Modified_By,
                                         Modified_IP=@Modified_IP
             WHERE ProductDetails_Id=@ProductDetails_Id
   SELECT @ProductDetails_Id                     
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE ProductDetails FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_Services]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_Services]
 @Services_Id INT=NULL,	
 @Services_Code  NVARCHAR(MAX)=NULL,
 @Services_Heading  NVARCHAR(MAX)=NULL,
 @Services_Description  NVARCHAR(MAX)=NULL,
 @Services_Image       NVARCHAR(MAX)=NULL,


@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

 
 AS
 BEGIN
 BEGIN TRY 
  UPDATE tbl_Services SET  Services_Heading = @Services_Heading,          
                           Services_Description = @Services_Description,
                           Services_Image = @Services_Image ,  

                           Modified_On=GetDate(),
                           Modified_By=@Modified_By,
                           Modified_IP=@Modified_IP
                  WHERE Services_Id=@Services_Id
                 SELECT @Services_Id;
  END TRY
  BEGIN CATCH
  DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE Services FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_Status]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_Status]
 @Status_Id   INT=NULL ,
 @Status_Code NVARCHAR(MAX)=NULL, 
 @Status_Name NVARCHAR(MAX)=NULL,
 
 @Created_On DATETIME=NULL,
 @Created_By INT=NULL,
 @Created_IP NVARCHAR(MAX)=NULL,
 @Modified_On DATETIME=NULL,
 @Modified_By INT=NULL,
 @Modified_IP NVARCHAR(MAX)=NULL,
 @Is_Active BIT=NULL
 
 AS
 BEGIN
 BEGIN TRY 
  update tbl_Status set Status_Name=@Status_Name,
                        Modified_On=GetDate(),
                        Modified_By=@Modified_By,
                        Modified_IP=@Modified_IP
                  WHERE Status_Id=@Status_Id
                  SELECT @Status_Id
  END TRY
  BEGIN CATCH
  DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE STATUS FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1);  
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_User]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_User]
@User_Id INT=NULL,
@User_Name NVARCHAR(MAX)=NULL,
@Registration_No NVARCHAR(MAX)=NULL,
@Display_Name NVARCHAR(MAX)=NULL,
@Mobile_No NVARCHAR(MAX)=NULL,
@Email_Id NVARCHAR(200)=NULL,
@Password VARBINARY(MAX)=NULL,
@FK_User_Role_Id INT=NULL,
@Is_Locked BIT=NULL,
@Last_Login DATETIME=NULL,

@Created_On DATETIME=NULL,
@Created_By INT=NULL,
@Modified_On DATETIME=NULL,
@Modified_By INT=NULL,
@Created_IP NVARCHAR(MAX)=NULL,
@Modified_IP NVARCHAR(MAX)=NULL,
@Is_Active BIT=NULL

AS
BEGIN
BEGIN TRY  
	   
   UPDATE tbl_User SET User_Name=@User_Name,
                       Registration_No=@Registration_No,
                       Display_Name=@Display_Name,
                       Mobile_No=@Mobile_No,
                       Email_Id=@Email_Id, 
                       Password=@Password, 
                       FK_User_Role_Id=@FK_User_Role_Id,
                       Is_Locked=@Is_Locked,
                       Last_Login=@Last_Login,

                       Modified_On=@Modified_On,
                       Modified_IP=@Modified_IP,
                       Modified_By=@Modified_By
                 WHERE User_Id=@User_Id
   SELECT @User_Id
                      
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE USER FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Update_User_Role]    Script Date: 2/19/2025 3:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Update_User_Role]
	 @User_Role_Id INT=NULL,
    @User_Role_Name NVARCHAR(MAX)=NULL,
   @User_Role_Description NVARCHAR(MAX)=NULL,

    @Created_On DATETIME=NULL,
    @Created_By INT=NULL,
    @Created_IP NVARCHAR(MAX)=NULL,
    @Modified_On DATETIME=NULL,
    @Modified_By INT=NULL,
    @Modified_IP NVARCHAR(MAX)=NULL,
    @Is_Active BIT=NULL

AS
BEGIN    
 BEGIN TRY   

   BEGIN
  
    UPDATE tbl_User_Role SET User_Role_Name=LTRIM(RTRIM(@User_Role_Name)),
                                             User_Role_Description=@User_Role_Description,
                          Modified_By=@Modified_By,
                          Modified_On=GETDATE(),
                          Modified_IP=@Modified_IP                  
                    WHERE User_Role_Id=@User_Role_Id

    SELECT @User_Role_Id

   END
    
END TRY   
BEGIN CATCH    
   DECLARE @ErrorMessage VARCHAR(MAX);    
   SELECT @ErrorMessage ='SP ERROR : UPDATE USER ROLE FAILED' + Char(13) + Char(10) + 'THE ERROR WAS : ' + Char(13) + Char(10) + ERROR_MESSAGE()   
   RAISERROR (@ErrorMessage, 16, 1)   
END CATCH
END
GO
