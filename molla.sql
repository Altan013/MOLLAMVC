USE [MollaDataBase]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/5/2022 6:31:49 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AboutUs]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Banner] [nvarchar](max) NULL,
	[Title] [nvarchar](50) NOT NULL,
	[SubTitle] [nvarchar](50) NOT NULL,
	[Vision] [nvarchar](250) NOT NULL,
	[Mission] [nvarchar](250) NOT NULL,
	[NewsLink] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_AboutUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Firstname] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[IsAdmin] [bit] NOT NULL,
	[IsBlocked] [bit] NOT NULL,
	[Country] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Zip] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BasketItems]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BasketItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductSizeColorId] [int] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_BasketItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlacklistTokens]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlacklistTokens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Token] [nvarchar](max) NULL,
 CONSTRAINT [PK_BlacklistTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogComments]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BlogId] [int] NOT NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[Message] [nvarchar](350) NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[IsAccepted] [bit] NOT NULL,
 CONSTRAINT [PK_BlogComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](140) NOT NULL,
	[Author] [nvarchar](50) NULL,
	[Image] [nvarchar](120) NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[BlackQuote] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogTags]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BlogId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_BlogTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](65) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Totalsold] [int] NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[SizeGuideImage] [nvarchar](max) NULL,
	[GenderId] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Star] [smallint] NULL,
	[CreatedTime] [datetime2](7) NOT NULL,
	[Message] [nvarchar](350) NOT NULL,
	[Subject] [nvarchar](60) NOT NULL,
	[IsAccepted] [bit] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BannerImage] [nvarchar](max) NULL,
	[BannerTitle] [nvarchar](100) NOT NULL,
	[BannerDesc] [nvarchar](100) NOT NULL,
	[ContactInformation] [nvarchar](100) NOT NULL,
	[OfficeLocation] [nvarchar](100) NOT NULL,
	[LocationIcon] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](100) NOT NULL,
	[PhoneIcon] [nvarchar](100) NOT NULL,
	[Mail] [nvarchar](100) NOT NULL,
	[MailIcon] [nvarchar](100) NOT NULL,
	[OpenTime] [nvarchar](max) NOT NULL,
	[CloseTime] [nvarchar](max) NOT NULL,
	[OclockIcon] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](55) NOT NULL,
	[Lastname] [nvarchar](55) NOT NULL,
	[Info] [nvarchar](105) NOT NULL,
	[Speciality] [nvarchar](55) NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Count] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [float] NULL,
	[ProductSizeColorId] [int] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](max) NOT NULL,
	[Lastname] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Zip] [nvarchar](max) NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[MessageToUser] [nvarchar](200) NULL,
	[MessageToAdmin] [nvarchar](200) NULL,
	[AppUserId] [nvarchar](450) NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductColors]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[ColorId] [int] NULL,
 CONSTRAINT [PK_ProductColors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[ProductSizeColorId] [int] NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AvgStar] [smallint] NULL,
	[TotalSold] [int] NULL,
	[Name] [nvarchar](120) NOT NULL,
	[DealOfTheDay] [bit] NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [nvarchar](160) NULL,
	[GenderId] [int] NOT NULL,
	[Rating] [smallint] NULL,
	[Discount] [float] NULL,
	[Subtitle] [nvarchar](120) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CategoryId] [int] NULL,
	[SubCategoryId] [int] NULL,
	[BrandId] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSizeColors]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSizeColors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[DailySoldCount] [int] NOT NULL,
	[ColorId] [int] NULL,
	[SizeId] [int] NULL,
	[MainImage] [nvarchar](max) NULL,
	[TotalSold] [int] NOT NULL,
	[TotalStock] [int] NOT NULL,
 CONSTRAINT [PK_ProductSizeColors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsAcces] [bit] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[Message] [nvarchar](350) NOT NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[SearchIcon] [nvarchar](50) NOT NULL,
	[WishlistIcon] [nvarchar](50) NOT NULL,
	[BasketIcon] [nvarchar](50) NOT NULL,
	[HeaderLogoImage] [nvarchar](max) NULL,
	[FooterLogoImage] [nvarchar](max) NULL,
	[FbIcon] [nvarchar](50) NOT NULL,
	[FbLink] [nvarchar](160) NOT NULL,
	[InstaIcon] [nvarchar](50) NOT NULL,
	[InstaLink] [nvarchar](160) NOT NULL,
	[TwitIcon] [nvarchar](50) NOT NULL,
	[TwitLink] [nvarchar](160) NOT NULL,
	[YoutubeIcon] [nvarchar](50) NOT NULL,
	[YtLink] [nvarchar](160) NOT NULL,
	[PinterestIcon] [nvarchar](50) NOT NULL,
	[PinterestLink] [nvarchar](160) NOT NULL,
	[FooterDesc] [nvarchar](160) NOT NULL,
	[Copyright] [nvarchar](160) NOT NULL,
	[HomePageRefundIcon] [nvarchar](50) NOT NULL,
	[HomePageDeliveryIcon] [nvarchar](50) NOT NULL,
	[HomePagePaymentIcon] [nvarchar](50) NOT NULL,
	[HomePageSupportIcon] [nvarchar](50) NOT NULL,
	[PhoneIcon] [nvarchar](50) NOT NULL,
	[UserIcon] [nvarchar](50) NOT NULL,
	[LittleWishlist] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TextSmall] [nvarchar](150) NOT NULL,
	[TextBig] [nvarchar](150) NOT NULL,
	[Link] [nvarchar](150) NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialMedias]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMedias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](165) NOT NULL,
	[Link] [nvarchar](165) NOT NULL,
	[MemberId] [int] NOT NULL,
 CONSTRAINT [PK_SocialMedias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stores]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Mail] [nvarchar](100) NOT NULL,
	[StoreOpenTime] [datetime2](7) NOT NULL,
	[StoreCloseTime] [datetime2](7) NOT NULL,
	[StoreLink] [nvarchar](120) NOT NULL,
	[Phone] [nvarchar](120) NOT NULL,
	[StoreImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_Stores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscribers]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscribers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Subscribers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishlistItems]    Script Date: 7/5/2022 6:31:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishlistItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductColorId] [int] NOT NULL,
	[AppUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_WishlistItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220621121521_test', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622102610_Setting', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622121054_CreateSomeTables', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622130715_changes', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622152619_TotalSold', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622163721_BlogTables', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220622172646_AboutUsTables', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623105141_ContactAndBlackListTokenTables', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623120346_CommentTable', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623133429_BasketOrderTables', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220624125723_test123', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220625114213_somechanges', N'3.1.26')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220625114600_SomeChangesOnDB', N'3.1.26')
GO
SET IDENTITY_INSERT [dbo].[AboutUs] ON 

INSERT [dbo].[AboutUs] ([Id], [Banner], [Title], [SubTitle], [Vision], [Mission], [NewsLink]) VALUES (1, N'432c2be4-e133-4116-a23d-71a33e0f2d7b733e5e32-3eaa-44ea-980b-26e45c50d689contact-header-bg.jpg', N'About us', N'who we are', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales.', N'Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus.Praesent elementum hendrerit tortor. Sed semper lorem at felis.', N'https://localhost:44388/blog')
SET IDENTITY_INSERT [dbo].[AboutUs] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0796ee7d-824e-4cea-9f92-2c2ba06c198c', N'Admin', N'ADMIN', N'ac0d6868-52c2-483e-ad50-48892fe92cd1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3810022d-b8fe-41a6-9110-2d45d9f7b001', N'Member', N'MEMBER', N'a808914d-b92c-4033-96f9-d412670bd02d')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9e4b1008-2b3b-4c80-981a-dead286a97f9', N'Blocked', N'BLOCKED', N'4538eff4-b304-4a58-9d23-a001cc1eb237')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e94fd2ba-90f7-4b5f-a715-9a963ed8dd44', N'SuperAdmin', N'SUPERADMIN', N'9dbfc0c7-c91d-499c-806f-234d6cb1d101')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1e81d592-8d18-4acf-a429-45828f1574dc', N'3810022d-b8fe-41a6-9110-2d45d9f7b001')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7a2fd1ae-84d9-45b0-b4fd-d4407438b044', N'3810022d-b8fe-41a6-9110-2d45d9f7b001')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'983bbf1c-64e4-4864-b744-b4d40b3cbe36', N'3810022d-b8fe-41a6-9110-2d45d9f7b001')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f36b9d57-6968-4a29-924c-7d56fb4f5598', N'3810022d-b8fe-41a6-9110-2d45d9f7b001')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2ccd239d-32fc-4fbc-89f7-6d514a4f9a32', N'e94fd2ba-90f7-4b5f-a715-9a963ed8dd44')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Firstname], [Surname], [IsAdmin], [IsBlocked], [Country], [City], [Zip], [Phone], [Address]) VALUES (N'1e81d592-8d18-4acf-a429-45828f1574dc', N'Tester', N'TESTER', N'tester111@internet.ru', N'TESTER111@INTERNET.RU', 1, N'AQAAAAEAACcQAAAAEDk5MncbMWDMAtnOCo9hfuayox/Ysk4t4Yjl4Ygy4Usdbkku+WyTzuN+dp08oPGi4w==', N'OQLORYBFSSWD6FUSPNGL5F3PSEFXO7GF', N'b7a5f08e-411d-4bd4-bfdb-bf88851d3e95', NULL, 0, 0, NULL, 1, 0, N'Tester', N'Tester', 0, 0, N'Azerbaijan', N'Baku', N'AZ1000', N'+994513834993', N'28may')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Firstname], [Surname], [IsAdmin], [IsBlocked], [Country], [City], [Zip], [Phone], [Address]) VALUES (N'2ccd239d-32fc-4fbc-89f7-6d514a4f9a32', N'Admin', N'ADMIN', N'mollamvc1@gmail.com', N'MOLLAMVC1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEAVcESoDlE0C7svQiSP6f1dcpBURZJ2e9MTCmEUhhf1ib78Mt78l4c12+ZYwBCTOpA==', N'N6QVI3RQBBE3EQVRNWI2UI6KRICOG77K', N'45c21016-75f2-4fb1-bd06-7962741d780c', NULL, 0, 0, NULL, 1, 0, N'Admin', N'Admin', 1, 0, N'Azerbaijan', N'Baku', N'Az1000', N'+994513834993', N'28may')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Firstname], [Surname], [IsAdmin], [IsBlocked], [Country], [City], [Zip], [Phone], [Address]) VALUES (N'7a2fd1ae-84d9-45b0-b4fd-d4407438b044', N'Customer', N'CUSTOMER', N'altann0777@gmail.com', N'ALTANN0777@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHUDmE/2E0FGA+Z8B/FLS/eoJDZFUwnIV8kegQOjeMZ/D/P4M2NsLMO1KEWcbr/Xrg==', N'X7UQFPJG7MP4ONFLDADKHQZH6ONKMCVM', N'e3fe9e84-a1f0-4c4c-8337-9228c0d2f730', NULL, 0, 0, NULL, 1, 0, N'Test', N'Test', 0, 0, N'Azerbaijan', N'Baku', N'AZ1000', N'+9943834993', N'Nizami 203')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Firstname], [Surname], [IsAdmin], [IsBlocked], [Country], [City], [Zip], [Phone], [Address]) VALUES (N'983bbf1c-64e4-4864-b744-b4d40b3cbe36', N'Altan', N'ALTAN', N'altanai@code.edu.az', N'ALTANAI@CODE.EDU.AZ', 1, N'AQAAAAEAACcQAAAAEOBf8yWzHbmuYOSHPvu1eIZYQT4tIJi2++LZ8LGbommSSOVRsL3WA6xpFc3d/uDyww==', N'JGHIGQYTBLN2X7DNS6M4MXMRLY67WGWK', N'01827beb-c1ca-4938-a9b4-56b2f612a6dc', NULL, 0, 0, NULL, 1, 0, N'Ibrahimli', N'Altan', 0, 0, N'Azerbaijan', N'Baku', N'Az1000', N'+9943834993', N'28may')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Firstname], [Surname], [IsAdmin], [IsBlocked], [Country], [City], [Zip], [Phone], [Address]) VALUES (N'f36b9d57-6968-4a29-924c-7d56fb4f5598', N'quliyev039', N'QULIYEV039', N'kamil-k750@mail.ru', N'KAMIL-K750@MAIL.RU', 0, N'AQAAAAEAACcQAAAAEMiZa0ILzWMW5kWo9tlzA4HLfGfvVWWi1oYCEEKwAZ9/9XgqWIoXUlFtKdmBwn3wTQ==', N'V4RMFLUDVZ5JPABJAPNF44OWOOLHGWJD', N'7ad6d42e-66f6-4b4c-8982-33c20f675418', NULL, 0, 0, NULL, 1, 0, N'Kamil', N'Guliyev', 0, 0, N'Azerbaijan', N'Baku', N'AZ1000', N'+994709980919', N'Ortaligdan')
GO
SET IDENTITY_INSERT [dbo].[BlacklistTokens] ON 

INSERT [dbo].[BlacklistTokens] ([Id], [Token]) VALUES (2, N'CfDJ8JItGCvva+hIuC23q2QS+7cduFsn8p4f4UNed/2UZtUk5/uhGVZ5xI8DIQ9ZYF4PCjqeY44gCB5MeD94isE2HfYPyvXbClYrESgxsM681HjD0uTrYBqT6GvM2Exz+53og8+qZTqau+bTM4zDQnhWyqYk4MiI6YytfnBL7qvdy4GH921ksxoW3e4mWpBr6nXZWJl3c6J3WVuiWlxTPiXdTH6/YfqiSyjvcOatIVRYxEQZexp4/FVoW9YNsaimeRXtow==')
INSERT [dbo].[BlacklistTokens] ([Id], [Token]) VALUES (3, N'CfDJ8JItGCvva+hIuC23q2QS+7eNylhbTA/B3GiEx6LSo0vqiDKztG0xcMd/poQqlnnxXMdLR9FUZnZJfXZS2KTsRsmD3s282WMZO6ynrBoPdW2QFKM48uUGQ3GYiJEN0NfPS9QCmrCy5YoLtt295r17CuiyrWJ57WbMmFXj4pRfU2z3z74lnMw99mgpJvKjOGmY5dv58znmvXj/fLV7u2vk7tUemIqjBCmFejKvGXWaU1cWPBFpV4C/QdHyj6ClftWtVg==')
SET IDENTITY_INSERT [dbo].[BlacklistTokens] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogComments] ON 

INSERT [dbo].[BlogComments] ([Id], [BlogId], [CreatedTime], [Message], [AppUserId], [IsAccepted]) VALUES (1, 1, CAST(N'2022-06-29T18:50:02.5707604' AS DateTime2), N'Hey this is Test comment', N'983bbf1c-64e4-4864-b744-b4d40b3cbe36', 1)
INSERT [dbo].[BlogComments] ([Id], [BlogId], [CreatedTime], [Message], [AppUserId], [IsAccepted]) VALUES (2, 1, CAST(N'2022-06-30T16:32:56.1880378' AS DateTime2), N'Salam test', N'7a2fd1ae-84d9-45b0-b4fd-d4407438b044', 1)
INSERT [dbo].[BlogComments] ([Id], [BlogId], [CreatedTime], [Message], [AppUserId], [IsAccepted]) VALUES (3, 2, CAST(N'2022-07-03T18:39:28.0533958' AS DateTime2), N'Hey dude ', N'983bbf1c-64e4-4864-b744-b4d40b3cbe36', 1)
SET IDENTITY_INSERT [dbo].[BlogComments] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Name], [Author], [Image], [CreatedTime], [Description], [BlackQuote]) VALUES (1, N'Cras ornare tristique elit.', N'Admin', N'eeb8dfbf-5c8a-42b3-9fb2-aa29af0e9c351.jpg', CAST(N'2022-06-29T17:06:53.4332564' AS DateTime2), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti.')
INSERT [dbo].[Blogs] ([Id], [Name], [Author], [Image], [CreatedTime], [Description], [BlackQuote]) VALUES (2, N'Utaliquam sollicitudin leo.', N'Admin', N'a4c97077-86ba-4b56-a12d-7d98c75035abpost-4.jpg', CAST(N'2022-06-29T17:08:26.8009155' AS DateTime2), N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti.  Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti.  Sed egestas, ante e')
INSERT [dbo].[Blogs] ([Id], [Name], [Author], [Image], [CreatedTime], [Description], [BlackQuote]) VALUES (3, N'Utaliquam sollicitudin leo.', N'Admin', N'196a9974-63fe-46da-95e0-a4773d185104post-3.jpg', CAST(N'2022-06-29T17:09:22.3549770' AS DateTime2), N'Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Suspendisse potenti. Sed egestas ...', N'Morbi interdum mollis sapien. Sed ac risus. Phasellus lacinia, magna a ullamcorper laoreet, lectus arcu pulvinar risus, vitae facilisis libero dolor a purus. Sed vel lacus. Mauris nibh felis, adipiscing varius, adipiscing in, lacinia vel, tellus. Suspendisse ac urna. Etiam pellentesque mauris ut lectus. Nunc tellus ante, mattis eget, gravida vitae,')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogTags] ON 

INSERT [dbo].[BlogTags] ([Id], [BlogId], [TagId]) VALUES (1, 1, 1)
INSERT [dbo].[BlogTags] ([Id], [BlogId], [TagId]) VALUES (2, 1, 4)
INSERT [dbo].[BlogTags] ([Id], [BlogId], [TagId]) VALUES (3, 2, 4)
INSERT [dbo].[BlogTags] ([Id], [BlogId], [TagId]) VALUES (4, 2, 5)
INSERT [dbo].[BlogTags] ([Id], [BlogId], [TagId]) VALUES (7, 3, 2)
INSERT [dbo].[BlogTags] ([Id], [BlogId], [TagId]) VALUES (8, 3, 3)
SET IDENTITY_INSERT [dbo].[BlogTags] OFF
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [Image], [Totalsold]) VALUES (1, N'Balmain', N'bbbb.jpg', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Image], [Totalsold]) VALUES (2, N'Dolce&Gabanna', N'2fac184c3bf7bc01e94daff8b0bf9e77.png', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Image], [Totalsold]) VALUES (3, N'Jordan', N'Colors-Air-Jordan-Logo.jpg', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Image], [Totalsold]) VALUES (4, N'Hermes', N'hermes.png', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Image], [Totalsold]) VALUES (5, N'Balenciaga', N'Balenciaga-Logo-Vector-730x730.jpg', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Image], [Totalsold]) VALUES (6, N'EA7', N'zzzzz.jpg', NULL)
INSERT [dbo].[Brands] ([Id], [Name], [Image], [Totalsold]) VALUES (8, N'Ralph-Lauren', N'Ralph-lauren.jpg', NULL)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Image], [SizeGuideImage], [GenderId]) VALUES (1, N'T-Shirts', N'men-s-oversize-t-shirt-black.webp', N'78111b15-2902-412b-9fd5-fb804bada5fd15cc7c1a-ce8f-488d-9499-986912c79a3fWomen_T_Shirt_Size_Guide.jpg', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [SizeGuideImage], [GenderId]) VALUES (2, N'Sweatshirts', N'85cc4ddf-77d3-4f57-8702-0ef3b48042b53dd9ecfab5b7b4bcf25db046e9f223e6.jpg', N'b07b289e-73ed-40a6-abb7-21d78523418ee3a16efd-2251-45a3-9032-11cc2bac8cbcMen-long-sleeve-size-guide-1.jpg', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [SizeGuideImage], [GenderId]) VALUES (3, N'Pants', N'904e6796-9b34-4b24-b690-55a0149c304768f1fd11e706059f74b2ffb0f2856e98.jpg', N'dff1c364-0b5f-4070-9ce4-4b83eedae3f1d97d28ee-cdf7-4ed6-846f-add78ce43964b1f94efc36e78a8bc3e74aa32ddc1693.jpg', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [SizeGuideImage], [GenderId]) VALUES (4, N'Jackets ', N'3918e197-79b7-4b62-b6d9-0d14633d4a5dc00d5a523b6a005f2821759cb514ea7d55b0dc9e_original.jpeg', N'ca641be8-d161-4119-989d-b3f8b68142c2b07b289e-73ed-40a6-abb7-21d78523418ee3a16efd-2251-45a3-9032-11cc2bac8cbcMen-long-sleeve-size-guide-1.jpg', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [SizeGuideImage], [GenderId]) VALUES (5, N'Coats', N'067b688f-8acd-4e2e-83c1-80a2f6411aa5Autum-Velvet-Wedding-Dress-Coat-Mens-Blazer-Jacket-Fashion-Casual-Suit-JacketStage-DJ-Men-s-Business.jpg_Q90.jpg_.webp', N'a7f5e787-4c27-44fc-a715-38889fdea5bfb07b289e-73ed-40a6-abb7-21d78523418ee3a16efd-2251-45a3-9032-11cc2bac8cbcMen-long-sleeve-size-guide-1.jpg', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [SizeGuideImage], [GenderId]) VALUES (6, N'Shoes', N'5b51b70bbbca382a008b4909.webp', N'5869dfe6-f20f-4d2b-9810-362417acaad3menshoes.png', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [SizeGuideImage], [GenderId]) VALUES (7, N'T-Shirts', N'14228c09-d6b9-424e-82e6-9b8f6b30cf7371CUVc-gC0S._AC_UX569_.jpg', N'9b22a7ce-c013-41ab-9ab7-431ec06daefa15cc7c1a-ce8f-488d-9499-986912c79a3fWomen_T_Shirt_Size_Guide.jpg', 2)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [SizeGuideImage], [GenderId]) VALUES (8, N'Dresses', N'0227bf5c-8287-414b-8e70-a65797ea4407220610_CLPM_New.webp', N'2680df8b-497e-45a9-85cd-d21c82234ef4womendress.jpg', 2)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [SizeGuideImage], [GenderId]) VALUES (9, N'Pants', N'9c80b143-7904-43a6-9406-5a10359f9621Ripped-Denim-Jeans-Women-Long-Flare-Trousers-Wide-Leg-Pants-Broken-Destroyed-Baggy-Aesthetic-Female-Palazzo.jpg_Q90.jpg_.webp', N'15976999-840c-4bc5-afb1-c2fb11f13fc6womenjeans.jpg', 2)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [SizeGuideImage], [GenderId]) VALUES (10, N'Sweatshirts', N'3ad878b5-598f-41ad-862d-2e710903977fIMG_0090_517063f0-3dce-486d-b97a-ecd7028e580c_2400x.webp', N'8416af1a-0c7e-4727-8545-58873c9bc914womensweat.png', 2)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [SizeGuideImage], [GenderId]) VALUES (11, N'Jackets ', N'817e2f08-1407-4926-bd2e-b0eee4267248005311698alt2.webp', N'e5cd67ac-949b-4156-ad51-652b37f12581womensweat.png', 2)
INSERT [dbo].[Categories] ([Id], [Name], [Image], [SizeGuideImage], [GenderId]) VALUES (12, N'Shoes', N'e019ad40-cf9f-43ad-84f3-3b92034898076f268140b799ae2d08385adae39c9061.jpg', N'62f393f7-614e-4328-a783-ce7f02b34fd9wssize.jpg', 2)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name]) VALUES (1, N'Black')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (2, N'White')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (3, N'Red')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (4, N'Blue')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (5, N'Green')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (6, N'Yellow')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (7, N'Purple')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (8, N'Brown')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (9, N'Chocolate')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (10, N'Beige')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [ProductId], [Star], [CreatedTime], [Message], [Subject], [IsAccepted], [AppUserId]) VALUES (1, 34, 5, CAST(N'2022-06-30T15:28:07.7582833' AS DateTime2), N'I''m so happy', N'Very good joogers', 1, N'983bbf1c-64e4-4864-b744-b4d40b3cbe36')
INSERT [dbo].[Comments] ([Id], [ProductId], [Star], [CreatedTime], [Message], [Subject], [IsAccepted], [AppUserId]) VALUES (2, 47, 1, CAST(N'2022-06-30T15:58:33.3136652' AS DateTime2), N'bir iki uc ', N'twk', 1, N'983bbf1c-64e4-4864-b744-b4d40b3cbe36')
INSERT [dbo].[Comments] ([Id], [ProductId], [Star], [CreatedTime], [Message], [Subject], [IsAccepted], [AppUserId]) VALUES (3, 26, 4, CAST(N'2022-06-30T16:34:03.3557414' AS DateTime2), N'very good', N'good', 1, N'7a2fd1ae-84d9-45b0-b4fd-d4407438b044')
INSERT [dbo].[Comments] ([Id], [ProductId], [Star], [CreatedTime], [Message], [Subject], [IsAccepted], [AppUserId]) VALUES (4, 48, 5, CAST(N'2022-07-01T17:18:15.3906065' AS DateTime2), N'as', N'ad', 1, N'1e81d592-8d18-4acf-a429-45828f1574dc')
INSERT [dbo].[Comments] ([Id], [ProductId], [Star], [CreatedTime], [Message], [Subject], [IsAccepted], [AppUserId]) VALUES (5, 36, 5, CAST(N'2022-07-03T16:59:05.4016338' AS DateTime2), N'so nice', N'123', 1, N'1e81d592-8d18-4acf-a429-45828f1574dc')
INSERT [dbo].[Comments] ([Id], [ProductId], [Star], [CreatedTime], [Message], [Subject], [IsAccepted], [AppUserId]) VALUES (6, 15, 4, CAST(N'2022-07-03T17:01:41.6833982' AS DateTime2), N'4r234r5t', N'q123ert', 1, N'1e81d592-8d18-4acf-a429-45828f1574dc')
INSERT [dbo].[Comments] ([Id], [ProductId], [Star], [CreatedTime], [Message], [Subject], [IsAccepted], [AppUserId]) VALUES (7, 14, 4, CAST(N'2022-07-03T17:34:08.2742376' AS DateTime2), N'1234', N'123', 1, N'1e81d592-8d18-4acf-a429-45828f1574dc')
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Id], [BannerImage], [BannerTitle], [BannerDesc], [ContactInformation], [OfficeLocation], [LocationIcon], [Phone], [PhoneIcon], [Mail], [MailIcon], [OpenTime], [CloseTime], [OclockIcon]) VALUES (1, N'f574bd96-92a7-45c1-a48f-7cdaf43dd7c7432c2be4-e133-4116-a23d-71a33e0f2d7b733e5e32-3eaa-44ea-980b-26e45c50d689contact-header-bg.jpg', N'Contact us', N'keep in touch with us', N'Test info', N'28may', N'icon-map-marker', N'+994513834993', N'icon-phone', N'altanai@code.edu.az', N'icon-envelope', N'09:00', N'21:00', N'icon-clock-o')
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([Id], [Name]) VALUES (1, N'Man')
INSERT [dbo].[Genders] ([Id], [Name]) VALUES (2, N'Woman')
SET IDENTITY_INSERT [dbo].[Genders] OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON 

INSERT [dbo].[Members] ([Id], [Firstname], [Lastname], [Info], [Speciality], [Image]) VALUES (6, N'Altan', N'Ibrahimli', N'Creator', N'Backend Developer', N'a7074cdc-9ff5-4f17-9a8f-9cb6c3c83dd7119790095_389556572050876_2851346937206239617_n.jpg')
INSERT [dbo].[Members] ([Id], [Firstname], [Lastname], [Info], [Speciality], [Image]) VALUES (8, N'Kamil', N'Quliyev', N'Helper', N'Full Stack Developer ', N'4745954d-fa31-4c81-b165-c0c1dbbed9d374602321_2537683186477088_314986935504287174_n.jpg')
INSERT [dbo].[Members] ([Id], [Firstname], [Lastname], [Info], [Speciality], [Image]) VALUES (9, N'Sadigxan', N'Qayxanov', N'Helper', N'Backend Developer', N'80ad118f-4145-4a20-a0d9-8d951010ba4e225493197_329720082217206_3014754425992480375_n.jpg')
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [Count], [Name], [Price], [ProductSizeColorId], [AppUserId], [OrderId]) VALUES (1, 21, N'BALENCIAGA Pants', 8176.35, 40, N'983bbf1c-64e4-4864-b744-b4d40b3cbe36', 4)
INSERT [dbo].[OrderItems] ([Id], [Count], [Name], [Price], [ProductSizeColorId], [AppUserId], [OrderId]) VALUES (2, 3, N'BALENCIAGA | Denim Plain Cotton Oversized Logo Jeans', 5016, 44, N'983bbf1c-64e4-4864-b744-b4d40b3cbe36', 4)
INSERT [dbo].[OrderItems] ([Id], [Count], [Name], [Price], [ProductSizeColorId], [AppUserId], [OrderId]) VALUES (3, 2, N'Air Jordan 4 Retro "White Oreo" sneakers', 1178, 59, N'7a2fd1ae-84d9-45b0-b4fd-d4407438b044', 5)
INSERT [dbo].[OrderItems] ([Id], [Count], [Name], [Price], [ProductSizeColorId], [AppUserId], [OrderId]) VALUES (4, 1, N'Hermes Topman relaxed cargo trousers in grey', 125, 42, N'7a2fd1ae-84d9-45b0-b4fd-d4407438b044', 5)
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Firstname], [Lastname], [Email], [Country], [City], [Address], [Phone], [Zip], [TotalPrice], [Date], [MessageToUser], [MessageToAdmin], [AppUserId], [StatusId]) VALUES (4, N'Ibrahimli', N'Altan', N'altanai@code.edu.az', N'Azerbaijan', N'Baku', N'28may', N'+9943834993', N'Az1000', 13192.35, CAST(N'2022-06-29T16:04:51.4522175' AS DateTime2), N'Soon will be', NULL, N'983bbf1c-64e4-4864-b744-b4d40b3cbe36', 2)
INSERT [dbo].[Orders] ([Id], [Firstname], [Lastname], [Email], [Country], [City], [Address], [Phone], [Zip], [TotalPrice], [Date], [MessageToUser], [MessageToAdmin], [AppUserId], [StatusId]) VALUES (5, N'Test', N'Test', N'altann0777@gmail.com', N'Azerbaijan', N'Baku', N'Nizami 203', N'+9943834993', N'AZ1000', 1303, CAST(N'2022-07-01T17:08:57.4477330' AS DateTime2), N'Your order accepted', NULL, N'7a2fd1ae-84d9-45b0-b4fd-d4407438b044', 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductColors] ON 

INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (2, 6, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (3, 7, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (4, 7, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (5, 8, 3)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (6, 9, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (7, 10, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (8, 11, 5)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (9, 11, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (10, 11, 3)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (11, 12, 3)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (12, 13, 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (13, 14, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (14, 14, 6)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (15, 15, 9)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (16, 15, 7)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (17, 16, 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (18, 17, 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (19, 18, 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (20, 18, 6)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (21, 19, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (22, 20, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (23, 21, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (24, 22, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (25, 23, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (26, 24, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (27, 24, 5)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (28, 25, 3)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (29, 25, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (30, 25, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (31, 26, 10)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (32, 27, 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (33, 28, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (34, 29, 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (35, 30, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (36, 30, 3)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (37, 31, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (38, 32, 10)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (39, 33, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (40, 34, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (41, 34, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (42, 35, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (43, 36, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (44, 37, 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (45, 38, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (46, 38, 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (47, 39, 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (48, 40, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (49, 40, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (50, 41, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (51, 42, 3)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (52, 42, 5)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (53, 43, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (54, 43, 8)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (55, 44, 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (56, 44, 5)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (57, 45, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (58, 45, 1)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (59, 47, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (60, 48, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (63, 53, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (64, 54, 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (65, 55, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (66, 56, 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (67, 57, 5)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (68, 58, 4)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (69, 59, 5)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (70, 60, 2)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (71, 61, 8)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (72, 62, 3)
INSERT [dbo].[ProductColors] ([Id], [ProductId], [ColorId]) VALUES (73, 63, 4)
SET IDENTITY_INSERT [dbo].[ProductColors] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (4, N'3d4c8a65-b0e5-474e-bdd2-8b482b2f29bac69977.002_2.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (5, N'05f5360c-51af-41d6-a033-3afcfe68f5b2c69977.002_3.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (6, N'6b96a0dc-f2cd-4c33-8e28-6d28c96e25aac69977.002_4.jpg', 2)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (7, N'f749a4ab-fbb8-4b71-a3d9-4f03b68a596b354914.002_1.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (8, N'ec020bf5-485c-4328-a1b2-c48a1c1ecec3354914.002_2.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (9, N'7ab49176-c337-4476-a164-11a3af8358fc354914.002_3.jpg', 3)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (10, N'eabc36a3-9608-4705-b406-99d73367f419354914.001_1.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (11, N'fe104163-6f38-4426-9c11-344e94d81534354914.001_2.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (12, N'064018df-7c05-428c-8449-a4f19394f2ed354914.001_3.jpg', 4)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (13, N'9c3448ce-4035-479b-9dff-325c87941baf355486.010_1.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (14, N'f77e3c76-4754-4f46-a2c2-c3128f755a96355486.010_2.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (15, N'ac76e799-2c59-47ce-83e0-0ae70e620e6e355486.010_3.jpg', 5)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (16, N'0be01d36-5778-4b45-8483-039b48279bf1C95103.002_1.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (17, N'4b411cdc-ab89-4426-9f92-69ce0f08ae61C95103.002_2.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (18, N'2c40e449-611d-4470-916e-86ed55a16fb7C95103.002_3.jpg', 6)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (19, N'd326c2f5-b696-41b6-b217-0d4bb5c4ce0bD16301.002_1.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (20, N'e318abca-54e8-4e20-a2b2-f44a1e76d3feD16301.002_2.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (21, N'7aefb984-11b8-4cfc-9319-8b5f9c406a45D16301.002_3.jpg', 7)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (22, N'fe9da340-4a38-4056-b501-08cd4b1b3e84355071.077_1.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (23, N'f0f35310-79f2-4eee-b54e-4455fef2c50f355071.077_2.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (24, N'7d7a426e-ee10-4b62-956f-b8576c6fd3d3355071.077_3.jpg', 8)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (25, N'1f1336a5-83d3-4d45-8105-4ac50eccfea0355070.001_1.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (26, N'e8eb8cdd-159c-426b-b93c-0a58a3b9616e355070.001_2.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (27, N'6de437d9-4fbf-4886-a2ee-6cd38769a300355070.001_3.jpg', 9)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (28, N'5309c4b8-bb44-4279-8cf0-424110013e64C95102.010_1.jpg', 10)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (29, N'9f4a9658-318c-4143-8b36-65b06a88507fC95102.010_2.jpg', 10)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (30, N'f01bacfe-9acd-47af-b2ad-2af40b846c66C95102.010_3.jpg', 10)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (31, N'4d7308ce-1e5d-45d5-9ca7-9ba43ff0160b355470.089_1.jpg', 11)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (32, N'254e2b39-6f75-4820-8fb0-d5479420748c355470.089_2.jpg', 11)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (33, N'94642d18-6bf3-4b9f-8cee-5ddc57bf8f7c355470.089_3.jpg', 11)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (34, N'9ec6eb38-8ca7-49f4-b569-ab6cd07d6998355498.141_1.jpg', 12)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (35, N'ac3c4332-b71a-4e50-9015-6c56230a7f76355498.141_2.jpg', 12)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (36, N'6f4d3a08-0a79-47f9-88bc-582db55d5ca1355498.141_3.jpg', 12)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (37, N'abffaf9f-f4e0-40a3-a3b1-79446ec7cb754d70b242dec156e53e18f7050084392a8c3c4d3e_cmu2657_1.webp', 13)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (38, N'c89dfcfb-f4ae-4c71-b6aa-d34e7ca09a5a8ba5c1ac0e18274cec5abeb2d7195781165e2840_cmu2657_5.webp', 13)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (39, N'963d5739-b348-409a-b92f-11fb3afd4c6511060c4303659f966b4ad0a9400a7d4944632d37_cmu2657_3.webp', 13)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (40, N'c7ac70c8-2e34-48ea-bffb-b257a3f8478a6451d93a3440b48308eea6299a5ced6bfe93f2bb_cmu2656_4.webp', 14)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (41, N'4d1bb642-8889-4232-94c9-1f5c07d33846cf0fd83404cfc6dde5b618be9596c1a4d0238ed0_cmu2656_1.webp', 14)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (42, N'75ed27af-827c-467e-9ca5-43d9aefe193de5a33b849498e0aff916810213dbe24d3c016ccc_cmu2656_3 (1).webp', 14)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (43, N'975ffe8b-0d68-47b5-af5e-d5ca9c3415c281fb05cc9e9b00e721f23ab681ed3bc537712f3e_cmy4137_3.webp', 15)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (44, N'fbdce1a5-603b-45cf-a04f-61c199ff00285629c77e81fce0a9fabe9475e08eb410fc35b3dc_cmy4137_5.jpg', 15)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (45, N'c51c6fa6-3a1b-4dad-bb00-de9e25788d4246960caefa219f3a22f4266a9a6774627e213344_cmy4137_1.webp', 15)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (46, N'af90de45-21c3-4a30-9724-24625a1987500baac8b59a83e75f3c26364020874b3f96c9a9f5_cmy4136_3.jpg', 16)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (47, N'06f25397-a25e-42d6-b1ca-b83084c7bcbe68d68e9bcab918497af53d36c942c435d73f1bf3_cmy4136_5.jpg', 16)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (48, N'ab4b8cde-b5ea-4944-b18d-d4a361feadc974f915d21797adbaa6ce87dfd9853eac2e28b6c9_cmy4136_1.webp', 16)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (49, N'5a0087ef-3f17-4417-9642-33731e0be47913992149_18299470_1000.webp', 17)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (50, N'094bae84-ddb4-4aee-83fe-b3b7afea772b13992149_18299476_1000.webp', 17)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (51, N'53fd2bd1-cde4-4fe4-9229-b4093819b20213992149_18299481_1000.webp', 17)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (52, N'67b05ff1-cde9-43e3-ba8f-b9c505d9421a18527052_39881095_1000.webp', 18)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (53, N'7a65f7a4-07ce-4fcf-b487-0685ea46a5b518527052_39881102_1000.webp', 18)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (54, N'714db6dd-d48d-4e9d-a5f4-936b389cf26a18527052_39882693_1000.webp', 18)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (55, N'89f61f9c-a204-4948-af5d-5aa2b0842c2417548278_37486763_1000.jpg', 19)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (56, N'f8095d0f-ab42-434d-ba3e-25bbcf1d9dd217548278_37487636_1000.webp', 19)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (57, N'eec47011-8a1d-4472-922f-ef90ccac942f17548278_37487638_1000.jpg', 19)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (58, N'f1967da6-3b6c-4344-aab5-83c502f2463f17848689_39547802_1000.webp', 20)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (59, N'55d627f9-aa78-48e9-ac1e-0999eb35aed417848689_39548719_1000.webp', 20)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (60, N'adf7f956-9cfc-4066-aa78-88d861d42be217848689_39549167_1000.webp', 20)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (61, N'3e59c180-2704-42bf-af50-7c0d79aafa6817549176_38076725_480.webp', 21)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (62, N'a42b39eb-8c15-4ec1-a398-43b3bc7e56fb17549176_38076726_1000.webp', 21)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (63, N'fdcf3aa8-6cd1-4477-a5ba-1664b8a625a917549176_38077947_1000.webp', 21)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (64, N'a670e54a-cf43-4498-b224-12ca39eb2fda14938423_24566598_1000.webp', 22)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (65, N'44573813-6c39-4196-899c-525ee8a1d6fb14938423_24566599_1000.webp', 22)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (66, N'8396c5d3-9b32-42d4-9888-220d47d7c27214938423_24566604_1000.webp', 22)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (67, N'9970a36f-d004-4a24-b15d-e8e605d2ef5816182079666c94e264c45be86cb141813551aeaa80_thumbnail_600x.webp', 23)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (68, N'7192981b-b4bb-4889-9e44-edc4241d0caf16182079707e59f55c6ecf9c9ad0094170655edb20_thumbnail_220x293.webp', 23)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (69, N'3f1bf665-c97e-4585-bbf2-a77ae1aadef7161820796118b030bef2c43acd79e3ec44a11d71a8.webp', 23)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (70, N'f147225a-0cad-4be9-af1c-002dcb9f3276162795892246b57c3e6a42a786f6beb0b096998b3f_thumbnail_600x.webp', 24)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (71, N'67128e3b-b863-470c-8427-6399672fc0f4looks-com-calca-mom-jeans-pinterest-camisetabanda.jpg', 24)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (72, N'e656553d-8554-44be-860f-16c01550e9d6mom-jeans-destroy.webp', 24)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (73, N'5f7527a1-874d-4579-a574-2e2e610f4bdc24c0ea18-7a32-4d42-b219-a27277bad9b51609909256798-Popnetic-Women-Jackets-4931609909255502-3.webp', 25)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (74, N'1d140803-400d-459a-968e-9a5fe44ac1f3a8ac057b-4afe-4965-b322-60c484ef18fe1609909256745-Popnetic-Women-Jackets-4931609909255502-4.webp', 25)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (75, N'0601bb33-f922-4851-bcce-3931b03e4f2eb077c063-f80d-47b4-9f7e-193a5bd8b5d71609909256693-Popnetic-Women-Jackets-4931609909255502-5.webp', 25)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (76, N'fa7f1762-2d2a-49ec-88a2-e253466c0b5a98ec38ec-98fd-4538-afcb-32945fc76878.jpeg', 26)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (77, N'44679315-a74d-48f3-867c-ff095aff7c48aac618ea-8e73-44b2-87d2-c50848a8cea9.jpeg', 26)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (78, N'b91fa1cd-caa3-46ec-9535-a1a2347e0bbdf19d80c5-773f-471f-a108-4e029b1f7f18.webp', 26)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (79, N'1008c3ba-4a79-4a6d-b9a5-cf33d20f42972a7edc6f-7b2b-4b25-9d47-f74af7cb22f5.webp', 27)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (80, N'a9f139ed-fa15-4534-8213-5f294320a53c4f9e3851-60ef-4034-9eec-cfd729c2b44d.webp', 27)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (81, N'4cd977ea-2d22-4e89-bc4b-956fcbd76d05f3c89394-1fdb-4aa8-af2e-1794dfde6f33.webp', 27)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (82, N'4c13c2ba-d4e4-4f6f-b305-42d1148c21c2hmgoepprod (6).webp', 28)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (83, N'7134aebf-0513-4981-a66f-72cbf8916b05hmgoepprod (8).webp', 28)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (84, N'3960b7c6-1018-4701-989e-782e863f2d9chmgoepprod (9).webp', 28)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (85, N'835fa795-a65a-45cd-9019-ec707fe63237hmgoepprod (3).webp', 29)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (86, N'2689e740-2398-4872-b5d1-1ca607e5731dhmgoepprod (4).webp', 29)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (87, N'77de9d2e-b804-4a40-ab99-8a0b92c25119hmgoepprod (5).webp', 29)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (88, N'a302c6aa-f1ad-4da9-b5d3-e63fec21d132hmgoepprod (1).webp', 30)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (89, N'8bddccff-f06f-4b6c-9095-7d3ea4760218hmgoepprod.jpg', 30)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (90, N'9ab04f57-9413-4032-83f0-285278155988hmgoepprod.webp', 30)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (91, N'4a483f22-c8d3-471c-8a10-8601140c2dce203003918-2.webp', 31)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (92, N'e2bc4f77-3fee-4881-9b6d-22dd564d6ce4203003918-3.webp', 31)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (93, N'cb3d8533-36db-45f4-af97-d1018a1bde33203003918-4.webp', 31)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (94, N'14259e00-238c-40fa-b9b0-50a38d741372202331128-1-bluewhitemarl.webp', 32)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (95, N'5182b340-759e-45ab-98b8-af325f120110202331128-2.webp', 32)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (96, N'68e53504-31ba-424a-baa9-a009251b7fcc202331128-4.webp', 32)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (97, N'f27aa5de-d0ea-4f23-b20b-fd67c89fe105201608169-1-whitemarl.webp', 33)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (98, N'60f2b9bd-488a-477c-bcb0-21c8a7fe193f201608169-3.webp', 33)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (99, N'ebe31363-ac4f-423f-9cbf-a719fa7b3a89201608169-4.webp', 33)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (100, N'80cc2d51-6322-4820-9891-649973054c23202028366-2.webp', 34)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (101, N'b287ed57-27e1-4f92-b2bc-8d702de6dfab202028366-3.webp', 34)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (102, N'd5c57e20-90fb-454f-95fa-6ef553113489202028366-4.webp', 34)
GO
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (103, N'bd684c81-882f-40f8-b99e-df0468d0f6b0hmgoepprod (2).webp', 35)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (104, N'0cb4be10-5c16-40f5-8eea-c536c5629a9chmgoepprod (3).webp', 35)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (105, N'4e925aa1-3162-4e7c-a7c5-5179d8baadfchmgoepprod.jpg', 35)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (106, N'f8c11a30-a40b-4d59-a034-c60787265d0chmgoepprod (1).jpg', 36)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (107, N'551977fa-9a40-463f-9bc1-5cab574cf122hmgoepprod (4).webp', 36)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (108, N'9bbfce9f-b8e2-4046-846e-9c3e0e839f08hmgoepprod (6).webp', 36)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (109, N'509ca61e-2683-4321-a982-6c21ebda7969hmgoepprod (2).jpg', 37)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (110, N'78b43a9e-14c0-40a3-b376-ec5092ba0300hmgoepprod (8).webp', 37)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (111, N'38696927-b5a3-4ec2-b66d-0ac6f098a7c9hmgoepprod (9).webp', 37)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (112, N'31241d26-905c-4833-8afb-29da7665b218hmgoepprod (10).webp', 38)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (113, N'd1ad5df0-7e84-4eb4-ab87-f4634ae10b4dhmgoepprod (11).webp', 38)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (114, N'49633aa5-e345-47e4-8d88-3031c484f912hmgoepprod (12).webp', 38)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (115, N'7979089e-6749-4335-88b9-9d448a9f201dhmgoepprod (13).webp', 39)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (116, N'b849cc79-4e5e-4f70-b5f4-4954ee512ed0hmgoepprod (15).webp', 39)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (117, N'd0a9f3da-6972-4b0d-8726-397115afea85hmgoepprod (16).webp', 39)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (118, N'61ec8566-12f8-47d6-87c6-e2684c39f11c202503236-2.webp', 40)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (119, N'ddc13b9d-18fa-48a4-91d3-d80938170e39202503236-3.webp', 40)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (120, N'1b0886f9-5a46-4139-9572-9ed4079652ae202503236-4.webp', 40)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (121, N'04669dee-dd6e-4ba3-8296-39393f888618202890166-2.webp', 41)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (122, N'794990f3-f1df-4a31-a503-1958d69f38cd202890166-3.webp', 41)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (123, N'40e64df1-de32-45fc-bc54-4b6db8d5d36e202890166-4.webp', 41)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (124, N'ead5728d-f6df-4f93-9be4-2ceea29b7ba6202171613-1-grey.webp', 42)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (125, N'0e163f05-4da4-47cc-863a-a2af9f6cc433202171613-2.webp', 42)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (126, N'f0be6702-44f3-499f-9180-6495fd57d091202171613-3.webp', 42)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (127, N'80684de4-f66e-4208-b0c3-46584c17d866voil-h-saint-germain-pants--255040H32P-worn-2-0-0-800-800_b.webp', 43)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (128, N'0e88b2fe-c0f6-4a51-b2f5-55b775af3fe8voil-h-saint-germain-pants--255040H32P-worn-3-0-0-800-800_b.webp', 43)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (129, N'832b37e7-0406-4c62-b642-9dc4b0d424e4voil-h-saint-germain-pants--255040H32P-worn-5-0-0-800-800_b.webp', 43)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (130, N'522c456d-62e8-4d85-9a6b-bdb36c36a42a428 (1).jpg', 44)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (131, N'55341ec2-c8eb-4aba-a94c-d3d8d778d41e428 (2).jpg', 44)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (132, N'19222e83-e4d8-4beb-80a6-92d37029068f428 (3).jpg', 44)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (133, N'fa5e2161-c7e8-4cfa-8bb3-862d938a1013428 (1).jpg', 45)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (134, N'd087a069-b244-4bc4-962e-327b13225db1428 (2).jpg', 45)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (135, N'676d991c-e1ac-4c31-b282-1b6d916511bf428 (3).jpg', 45)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (136, N'e0b5823b-75d9-4771-910d-e246dce2fed8210.jpg', 46)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (137, N'20260048-a574-47c5-9c47-d154ad3502f0428 (8).jpg', 46)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (138, N'10fa4ed0-4aa6-4abc-aa9a-d6ef86681793428 (9).jpg', 46)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (139, N'4a60bb7d-382a-4050-93e8-e05b9702faeb210 (1).jpg', 47)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (140, N'a615c938-cdcc-4166-8eed-d4e6eb725e2c210.jpg', 47)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (141, N'6a0d07eb-aa1f-47f0-bdd0-deef848bd934428 (12).jpg', 47)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (142, N'c8082e46-72c2-45e9-8811-63a709055b87428 (13).jpg', 48)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (143, N'f40666ea-7c85-4d24-b437-68bc2f639c8d428 (14).jpg', 48)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (144, N'ad7456ee-c5c4-4bc3-85d8-c738966a9ee9428 (15).jpg', 48)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (145, N'4a23e956-40b3-48de-b667-be2119a3ef24428 (18).jpg', 49)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (146, N'17ba223d-934b-40ee-ba42-b3c56f41548e428 (19).jpg', 49)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (147, N'4e09670c-5bb8-4d8d-aca6-ab1441e3cccc428 (20).jpg', 49)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (148, N'94e5ab7e-dec1-4cf1-8155-e67fd964d72c6a398051ecc44d13178daa64b2f9a5a6.webp', 50)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (149, N'fa377e1b-c3fc-4d21-a013-4014232c9c73d02f0af55fa6c033042a9570dc285a15.webp', 50)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (150, N'8e027317-686b-4b41-9ba8-c924284d8580ea0c9c1c8b8e3c40957bd3a5e1239c7f.webp', 50)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (151, N'8ab8fd6e-a7d9-4fd2-934f-d0cdc80a5c15CS1783AJ986_89689_0.jpg', 51)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (152, N'553dba45-788c-438a-ace7-636f6c503e34CS1783AJ986_89689_2.jpg', 51)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (153, N'fa9fe987-e740-41e9-a231-9c9f245efc71CS1783AJ986_89689_3.jpg', 51)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (154, N'16395f56-abc8-4d67-a614-4678d5c67db7CS1783AJ986_8B617_0.jpg', 52)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (155, N'3ec71960-c2f6-4423-ab8a-d399aee21bb7CS1783AJ986_8B617_2.jpg', 52)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (156, N'81f2fdbb-706b-422c-ba56-3f042bafcc9cCS1783AJ986_8B617_3.jpg', 52)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (157, N'c65aa2e4-d66d-419c-ae29-2f04949b185e428 (1).jpg', 53)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (158, N'aa626589-45e2-4f7e-b10f-d6c54b4511b2428 (2).jpg', 53)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (159, N'c73e9b06-7130-45e1-abf4-bdffcee4b94f428 (3).jpg', 53)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (160, N'cd1633a9-d419-40c7-80b9-62ec0d5eaf64428 (5).jpg', 54)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (161, N'1effcf8e-6c86-4024-95df-fbfff9e489c1428 (6).jpg', 54)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (162, N'4394f7b9-7252-45bb-871d-6f79015ce0ac428 (7).jpg', 54)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (163, N'92c3cd42-63aa-4135-8775-ff1011d63f6815957834_30925990_1000.webp', 55)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (164, N'd03a8d53-7936-46cb-b64c-c5503091c37615957834_30928142_1000.webp', 55)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (165, N'79c38c6d-8422-451c-bcd7-e45bd8ff7ad415957834_30928145_1000.webp', 55)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (166, N'863fa86c-a639-427b-8794-cdc00ea0fe6414077010_18662963_1000.jpg', 56)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (167, N'9bd4fbfc-cf8a-486b-80be-d42e194a811514077010_18662966_1000.webp', 56)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (168, N'f3e7a8b9-7657-4b6b-8036-0826c8feb8af14077010_18662968_1000.webp', 56)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (169, N'779868ee-16d3-4a1d-8ed1-469dce61443d15057688_25617122_1000.webp', 57)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (170, N'2b6243a2-c71b-4f46-8e55-69e16c6eff0215057688_25617131_1000.webp', 57)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (171, N'a01e4353-fd3b-4175-a972-f22aa037c7c915057688_25617135_1000.webp', 57)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (175, N'a2706afc-9918-448f-bbca-2e1c9fcafa5a16593954_34049333_1000.webp', 59)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (176, N'89d20a64-03a6-4253-a22b-937ce7e22cd416593954_34049336_1000.webp', 59)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (177, N'8cb7836c-ad72-480e-a406-1ea02ee9bafd16593954_34050106_1000.webp', 59)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (178, N'62451ce0-13b5-4133-b5c8-dd3f2027d3b614904925_24494513_1000.webp', 60)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (179, N'29fb3e04-b148-4f66-932b-dc218fd664b814904925_24494515_1000.webp', 60)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (180, N'180b5ca4-5a3c-480d-b0c9-5a0ed0686f7a14904925_24494516_1000.webp', 60)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (187, N'c1857723-4efe-43eb-9ae3-2a8a716e0bd618475519_39729362_1000.webp', 63)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (188, N'd3b74144-3424-417e-b974-710eaeb3d82818475519_39730585_1000.webp', 63)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (189, N'c604731b-998f-4354-b7f8-6baada9a82f818475519_39732082_1000.webp', 63)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (190, N'8b13ef0d-4a93-4630-9739-f26917d8cb5815957834_30925990_1000.webp', 64)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (191, N'e139a917-fbfd-4376-8322-8cdc753a4cc215957834_30928142_1000.webp', 64)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (192, N'0aeae5d3-f616-4da1-aef2-0bc27dfaa7d115957834_30928145_1000.webp', 64)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (193, N'f2039f07-5f49-4573-b3e6-3bdc24ddfc51428 (13).jpg', 65)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (194, N'a950f494-ea51-4f4c-a2f3-b8def084557c428 (14).jpg', 65)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (195, N'31d06e53-a213-4b77-82d1-a0792350fed8428 (15).jpg', 65)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (196, N'792a2301-19bb-494d-96a5-f2e1d822947c428 (1).jpg', 66)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (197, N'796a9b35-89c7-4fd5-a8a5-4f1ee711e043428 (2).jpg', 66)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (198, N'07824f1e-66b9-4c17-83eb-409b2207b196428 (3).jpg', 66)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (199, N'34de1310-3e65-44d4-8513-ba714993a59e428 (3).jpg', 67)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (200, N'4f5765cd-bacf-40a8-ad46-de53192cb114428 (4).jpg', 67)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (201, N'4c78cfbf-04fe-44ac-9a21-f6a4643920d7428 (5).jpg', 67)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (202, N'ebb0c559-b465-4020-a94a-4e79fe5acc01428 (2).jpg', 68)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (203, N'dc348ccd-01cc-466c-9c4e-352135143a38428 (3).jpg', 68)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (204, N'34a707f5-671a-4156-afa3-1d5387228a33428 (4).jpg', 68)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (205, N'72ce7c5a-7105-4caa-8464-cd21d8f725e7428 (2).jpg', 69)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (206, N'cc8d0ae4-77bc-4685-8aab-8d6410eb70a1428 (3).jpg', 69)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (207, N'6dd8fb93-d150-498f-bce6-258aae350eea428 (4).jpg', 69)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (208, N'ebf1dba7-9d4c-4a45-a551-a833bd2eb057428 (14).jpg', 70)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (209, N'5cf54836-1965-4ac7-ad95-c884ba5fedc4428 (15).jpg', 70)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (210, N'cb3dccee-c661-4917-b29e-ee106b75da81428 (16).jpg', 70)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (211, N'e16537b6-c820-4b9e-a978-63a0d2dee6a2product-1.jpg', 71)
GO
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (212, N'2463ee5e-11ee-488e-beb1-ec7aebf1f3d7product-2.jpg', 71)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (213, N'6842f61e-7707-4693-a7fd-b31a788be2c3product-3.jpg', 71)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (214, N'cc8a0441-cecc-4aac-b69b-5317d4fe7ac1product-6.jpg', 72)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (215, N'0433475e-4731-4392-91d3-0c46c75db708product-7.jpg', 72)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (216, N'd61d1595-9310-41f8-b948-49bcbf76a580product-8.jpg', 72)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (217, N'654f487a-ba42-4104-b63b-825352a2daeeproduct-1.jpg', 73)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (218, N'b7da6685-7c93-4e90-8ba0-3e6db0953cffproduct-3.jpg', 73)
INSERT [dbo].[ProductImages] ([Id], [Image], [ProductSizeColorId]) VALUES (219, N'4622eac6-d623-4ed4-b775-a2c4d7629dc0product-4.jpg', 73)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (6, 1, NULL, N'Balmain sweatshirt', 0, 499, N'Organically cultivated cotton sweatshirt Long sleeves, crew neck, ribbing, white Balmain logo print Casual cut Fits true to size, select your usual size', 2, 2, NULL, N'Eco-designed cotton sweatshirt with Balmain logo print, black, hi-res Eco-designed cotton sweatshirt with Balmain logo ', CAST(N'2022-06-26T18:20:27.6634182' AS DateTime2), 10, 37, 1)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (7, 2, NULL, N'Balmain sweatshirt', 0, 699, N'Contemporary style Cotton  Maxi Balmain flock logo  Round neckline  Long sleeves with cuffs  Straight hem  Regular fit  Hand wash', 1, 2, 10, N'Eco-designed cotton sweatshirt with Balmain logo print, black, hi-res Eco-designed cotton sweatshirt with Balmain logo ', CAST(N'2022-06-26T19:04:45.4349461' AS DateTime2), 2, 8, 1)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (8, 2, NULL, N'BALENCIAGA Pants', 0, 500, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 2, 2, 30, N'Pants Pink Women Balenciaga 674594TKVB5 Composition: T COTTON 100%  Designer code: 674594TKVB5 Designer color code: 570 ', CAST(N'2022-06-26T19:14:49.5723108' AS DateTime2), 9, 35, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (9, 5, NULL, N'Balenciaga Long Dress', 0, 550, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 2, 2, NULL, N' Contemporary style  Long  Wool  Micro braid processing  Ribbed finishes  Rear logo label  Mock neck  Long sleeve', CAST(N'2022-06-26T19:46:08.6322867' AS DateTime2), 8, 32, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (10, 1, NULL, N'BALENCIAGA Flat Sandals', 0, 470, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 2, 2, NULL, N'Heeled Sandals Black Women Balenciaga 695000WCAE1 Composition: Leather Tacco: 4 cm', CAST(N'2022-06-26T19:49:01.6620582' AS DateTime2), 12, 42, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (11, 2, NULL, N'BALENCIAGA Sandals', 0, 155, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 2, 2, 25, N'Band model Eraser  Embossed logo Round and open toe  Anatomic footbed  Made in Italy', CAST(N'2022-06-26T19:53:27.9693185' AS DateTime2), 12, 42, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (12, 3, NULL, N'Balenciaga sweater with allover logo', 0, 863, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 2, 2, NULL, N'Contemporary style • Oversize fit • Wool • Crewneck • Balenciaga allover logo wool knit • Dropped shoulders • Long sle', CAST(N'2022-06-26T19:58:54.7203964' AS DateTime2), 10, 39, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (13, 1, NULL, N'Balenciaga jacket in washed denim with logo', 0, 1150, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 2, 2, NULL, N' Modern style • Classic line • Washed denim • Classic collar • Shoulders dropped • Central closure with buttons • Long s', CAST(N'2022-06-26T20:01:06.8450989' AS DateTime2), 11, 43, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (14, 4, NULL, N'Dolce&Gabanna WOVEN RUCHED PLUNGE DETAIL SHIRT STYLE BODYCON DRESS', 1, 850, N'Dolce & Gabbana ) is an Italian luxury fashion house founded in 1985 in Legnano by Italian designers Domenico Dolce and Stefano Gabbana.', 2, 4, 5, N'Update your wardrobe this season with this bodycon dress', CAST(N'2022-06-26T20:07:33.1585208' AS DateTime2), 8, 34, 2)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (15, 4, NULL, N'Dolce&Gabanna SATIN ONE SHOULDER BOW DETAIL MIDAXI DRESS', 0, 1600, N'Dolce & Gabbana ) is an Italian luxury fashion house founded in 1985 in Legnano by Italian designers Domenico Dolce and Stefano Gabbana.', 2, 4, 30, N'This dress is perfect for your special occassion doll. Featuring a champagne satin material with a one-shoulder design', CAST(N'2022-06-26T20:14:06.1288094' AS DateTime2), 8, 34, 2)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (16, 1, NULL, N'Emporio Armani printed shift dress', 0, 1031, N'Emporio Armani was founded in 1975 by Giorgio Armani, fashion''s most influential and celebrated fashion designer from Italy.', 2, 2, 30, N'With a timeless elegance about them Emporio Armani’s womenswear collections are able to combine luxury with practicality', CAST(N'2022-06-26T20:20:47.4287793' AS DateTime2), 8, 33, 6)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (17, 2, NULL, N'Emporio Armani printed shift dress', 0, 1250, N'Emporio Armani was founded in 1975 by Giorgio Armani, fashion''s most influential and celebrated fashion designer from Italy.', 2, 2, 25, N'Eco-designed cotton dress with EA logo print, black, hi-res Eco-designed cotton sweatshirt with EA logo ', CAST(N'2022-06-26T20:23:28.9120340' AS DateTime2), 8, 33, 6)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (18, 3, NULL, N'POLO Ralph Lauren ', 0, 50, N'Polo Ralph Lauren adds a signature twist to this classic short-sleeve T-shirt. Designed in a timeless navy blue colourway', 2, 2, NULL, N'Cotton 100% Machine Wash signature Polo Pony motif crew neck short sleeves straight hem', CAST(N'2022-06-26T21:05:13.7290499' AS DateTime2), 7, 27, 8)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (19, 1, NULL, N'Polo Bear T-shirt', 0, 205, N'Polo Ralph Lauren adds a signature twist to this classic short-sleeve T-shirt. Designed in a timeless navy blue colourway', 2, 2, NULL, N'white cotton jersey knit signature Polo Bear motif paint splatter detail crew neck short sleeves straight hem', CAST(N'2022-06-26T21:07:39.3556174' AS DateTime2), 7, 27, 8)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (20, 2, NULL, N'Hermes oversize T-Shirt', 0, 110, N'Definition. Hermes was the ancient Greek god of trade, wealth, luck, fertility, animal husbandry, sleep, language, thieves, and travel.', 2, 2, NULL, N'A classic white T-shirt is usually a winner. A classic white T-shirt with an oversized ', CAST(N'2022-06-26T21:24:12.8593294' AS DateTime2), 7, 29, 4)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (21, 3, NULL, N'Dolce&Gabanna', 0, 150, N'Dolce & Gabbana ) is an Italian luxury fashion house founded in 1985 in Legnano by Italian designers Domenico Dolce and Stefano Gabbana.', 2, 2, NULL, N'Your new favorite ''90s throwback – with a high rise & cropped, flared leg.', CAST(N'2022-06-26T21:28:18.8336731' AS DateTime2), 9, 35, 2)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (22, 1, NULL, N'Emporio Armani', 0, 123, N'Emporio Armani was founded in 1975 by Giorgio Armani, fashion''s most influential and celebrated fashion designer from Italy.', 2, 2, 5, N'Eco-designed cotton \ black, hi-res Eco-designed cotton ', CAST(N'2022-06-26T21:29:35.3511555' AS DateTime2), 9, 36, 6)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (23, 2, NULL, N'Hermes Jacket', 0, 499, N'Organically cultivated cotton sweatshirt Long sleeves, crew neck, ribbing, white Balmain logo print Casual cut Fits true to size, select your usual size', 2, 2, 2, N'100% Original Products Pay on delivery might be available Easy 15 days returns and exchanges Try & Buy might be availabl', CAST(N'2022-06-26T21:32:41.0591592' AS DateTime2), 11, 45, 4)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (24, 3, NULL, N'Balmain leather jacket ', 0, 750, N'Contemporary style Cotton  Maxi Balmain flock logo  Round neckline  Long sleeves with cuffs  Straight hem  Regular fit  Hand wash', 2, 2, 10, N'Bring a bit of edge to any look with this buttery-soft faux-leather jacket complete with all the classic hardware for au', CAST(N'2022-06-26T21:37:55.8420278' AS DateTime2), 11, 45, 1)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (25, 4, NULL, N'Sweatshirt with Printed Design', 0, 125, N'Contemporary style Cotton  Maxi Balmain flock logo  Round neckline  Long sleeves with cuffs  Straight hem  Regular fit  Hand wash', 2, 2, NULL, N'Tumble dry medium Only non-chlorine bleach when needed No dry clean Do not iron on print Medium iron Machine wash cool', CAST(N'2022-06-26T22:19:18.7149298' AS DateTime2), 10, 38, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (26, 4, NULL, N'Pull&Bear oversized t-shirt', 0, 75, N'Pull&Bear (Spanish: [pul am ˈbeɾ]) is a Spanish clothing and accessories retailer based in Narón (A Coruña), Galicia founded in 1991.', 1, 4, NULL, N'Act casual Crew neck Drop shoulders Branded patch to hem Oversized fit', CAST(N'2022-06-28T19:25:53.3496132' AS DateTime2), 1, 4, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (27, 1, NULL, N'BALENCIAGA DESIGN oversized collegiate hoodie with double layer in navy', 0, 199, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 1, 2, 10, N'Act casual Double-layer design Fixed hood Drop shoulders Short-sleeve overlay Pouch pocket Oversized fit', CAST(N'2022-06-28T19:30:19.4483222' AS DateTime2), 2, 9, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (28, 2, NULL, N'Dolce&Gabanna DESIGN oversized half zip sweatshirt with colour block chest panel', 0, 499, N'Dolce & Gabbana ) is an Italian luxury fashion house founded in 1985 in Legnano by Italian designers Domenico Dolce and Stefano Gabbana.', 1, 2, 5, N'Act casual Double-layer design Fixed hood Drop shoulders Short-sleeve overlay Pouch pocket Oversized fit', CAST(N'2022-06-28T19:35:28.3725526' AS DateTime2), 2, 10, 2)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (29, 3, NULL, N'Balmain  Originals crew neck sweatshirt with athletic embroidery in navy', 0, 699, N'Polo Ralph Lauren adds a signature twist to this classic short-sleeve T-shirt. Designed in a timeless navy blue colourway', 1, 2, 5, N'For the rotation Crew neck ''Athletic Club'' embroidery Fitted trims Regular fit', CAST(N'2022-06-28T19:38:39.8437264' AS DateTime2), 2, 8, 8)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (30, 4, NULL, N'Ralph Lauren Relaxed Fit Printed Hoodie', 0, 250, N'Polo Ralph Lauren adds a signature twist to this classic short-sleeve T-shirt. Designed in a timeless navy blue colourway', 1, 2, NULL, N'Tumble dry medium Only non-chlorine bleach when needed No dry clean Do not iron on print Medium iron Machine wash cool', CAST(N'2022-06-28T19:41:59.5260586' AS DateTime2), 2, 11, 8)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (31, 4, NULL, N'Balmain Oversized Fit Cotton Hoodie', 0, 125, N'Organically cultivated cotton sweatshirt Long sleeves, crew neck, ribbing, white Balmain logo print Casual cut Fits true to size, select your usual size', 1, 2, NULL, N'Blank Staples is a timeless collection of high-quality, minimalistic streetwear', CAST(N'2022-06-28T19:46:41.3676992' AS DateTime2), 2, 11, 1)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (32, 4, NULL, N'Hermes Relaxed Fit Sweatshirt', 0, 125, N'Contemporary style Cotton  Maxi Balmain flock logo  Round neckline  Long sleeves with cuffs  Straight hem  Regular fit  Hand wash', 1, 2, NULL, N'No. 5: The Sweatshirt. Relaxed-fit sweatshirt in cotton-blend fabric with soft, brushed inside. Dropped shoulders and ', CAST(N'2022-06-28T19:48:54.7079350' AS DateTime2), 2, 8, 4)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (33, 4, NULL, N'BALENCIAGA Relaxed Fit Sweatshirt', 0, 499, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 1, 2, NULL, N'Only non-chlorine bleach when needed Medium iron Machine wash cool Wash with like colors Line dry Can be dry cleaned', CAST(N'2022-06-28T19:50:21.1820427' AS DateTime2), 2, 8, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (34, 5, NULL, N'BALENCIAGA Pants', 0, 599, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 1, 5, 35, N'Waist-down dressing Elasticated drawstring waist Zip pockets Elasticated cuffs Regular, tapered fit', CAST(N'2022-06-28T19:58:03.0093989' AS DateTime2), 3, 13, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (35, 5, NULL, N'Hermes Topman relaxed cargo trousers in grey', 0, 125, N'Hermes was the ancient Greek god of trade, wealth, luck, fertility, animal husbandry, sleep, language, thieves, and travel', 1, 2, NULL, N'Waist-down dressing Regular rise Cargo leg pockets Relaxed fit', CAST(N'2022-06-28T20:10:45.3007350' AS DateTime2), 3, 13, 4)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (36, 5, NULL, N'Hermes "Voil''H" Saint-Germain pants', 0, 820, N'Fitted pants in "Voil''H" stretch cotton twill (97% cotton and 3% elastane)  - Contrasting zig zag topstitching detail  Made in Italy', 1, 5, NULL, N'Leg opening: 7.5" | Rise: 9.1" | The dimensions indicated correspond to a size 42, they may vary by +/- 0.4" depending o', CAST(N'2022-06-28T20:13:37.4358773' AS DateTime2), 3, 12, 4)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (37, 5, NULL, N'BALENCIAGA | Denim Plain Cotton Oversized Logo Jeans', 0, 1672, N'Jeans from BALENCIAGA, Plain, Logo, Oversized, Oversized, 2022 SS', 1, 2, NULL, N'Shipping is included in the cost of the product. The shipping period may vary depending on where the product is originat', CAST(N'2022-06-28T20:16:22.9780376' AS DateTime2), 3, 14, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (38, 1, NULL, N'BALENCIAGA | Jeans', 0, 1142, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 1, 2, NULL, N'Jeans from BALENCIAGA, Plain, Logo, Oversized, Oversized, 2022 SS', CAST(N'2022-06-28T20:20:14.3306152' AS DateTime2), 3, 14, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (39, 1, NULL, N'BALENCIAGA | Denim Street Style Plain Jeans', 0, 699, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 1, 2, NULL, N'Jeans from BALENCIAGA, Street Style, Street Style, Plain', CAST(N'2022-06-28T20:23:30.2016682' AS DateTime2), 3, 14, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (40, 1, NULL, N'Dolce & Gabbana | Cotton Jeans', 0, 251, N'Dolce & Gabbana ) is an Italian luxury fashion house founded in 1985 in Legnano by Italian designers Domenico Dolce and Stefano Gabbana.', 1, 2, NULL, N'Jeans from Dolce & Gabbana, 2021-22FW', CAST(N'2022-06-28T20:27:14.2971878' AS DateTime2), 3, 14, 2)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (41, 1, NULL, N'Dolce & Gabbana Portofino Sneakers', 0, 399.62, N'Dolce & Gabbana ) is an Italian luxury fashion house founded in 1985 in Legnano by Italian designers Domenico Dolce and Stefano Gabbana.', 1, 2, NULL, N'Dimensions: Sole: 2.5cm  100% Calfskin Leather, 100% Rubber Made in Italy', CAST(N'2022-06-28T20:45:32.5282593' AS DateTime2), 6, 25, 2)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (42, 1, NULL, N'Dolce&Gabanna Portofino sneakers in calfskin and patent leather', 0, 695, N'Dolce & Gabbana ) is an Italian luxury fashion house founded in 1985 in Legnano by Italian designers Domenico Dolce and Stefano Gabbana.', 1, 2, NULL, N'Delivery and returns are always free on all orders. Standard delivery takes place approximately within 3-4 working days ', CAST(N'2022-06-28T20:50:45.4271327' AS DateTime2), 6, 25, 2)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (43, 1, NULL, N'HERMES | Paris Fitted Loafer', 0, 1425, N'Hermes was the ancient Greek god of trade, wealth, luck, fertility, animal husbandry, sleep, language, thieves, and travel', 1, 2, 25, N'Loafer in goatskin with permabrass plated "H" detail. Two widths are available (Paris & Paris fitted) to guarantee ', CAST(N'2022-06-28T20:55:44.7746429' AS DateTime2), 6, 23, 4)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (44, 2, NULL, N'Air Jordan 1 Retro High "University Blue" sneakers', 0, 491, N'Air Jordan 1 Retro High "University Blue" sneakers Be careful: there are many reasons to be obsessed with these Air Jordan 1 Retro High "University Blue" sneake', 1, 2, NULL, N'blue leather signature Swoosh logo detail contrasting panel detail round toe front lace-up fastening ankle-length flat r', CAST(N'2022-06-28T20:58:58.2950279' AS DateTime2), 6, 26, 3)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (45, 2, NULL, N'Air Jordan 4 Retro Black Cat 2020', 0, 1230, N'Supplied by a premier sneaker marketplace dealing with unworn, already sold out, in demand rarities. Each product is rigorously inspected by experienced experts', 1, 2, NULL, N'Sole: Rubber 100%  Outer: Suede 100%, Nylon 100%  Lining: Polyester 100%', CAST(N'2022-06-28T21:01:55.0917967' AS DateTime2), 6, 26, 3)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (47, 1, NULL, N'Air Jordan 4 Retro "White Oreo" sneakers', 0, 589, N'Combining the silhouette''s "Oreo" and "White/Cement" colourways, the Air Jordan 4 Retro "White Oreo" sneakers boast a monochrome design. Speckled grey detailing', 1, 1, NULL, N'white/tech grey/black/fire red leather signature Jumpman motif panelled design round toe front lace-up fastening ankle', CAST(N'2022-06-28T21:04:20.3237293' AS DateTime2), 6, 25, 3)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (48, 5, NULL, N'Yeezy Boost 700 V3 "Azael"', 0, 812, N'Supplied by a premier sneaker marketplace dealing with unworn, already sold out, in demand rarities. Each product is rigorously inspected by experienced experts', 1, 5, 25, N'Supplied by a premier sneaker marketplace dealing with unworn, already sold out, in demand rarities. Each product is rig', CAST(N'2022-06-28T21:06:50.8154325' AS DateTime2), 6, 24, 3)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (53, NULL, NULL, N'Dolce & Gabbana Majolica-print espadrilles', 0, 634, N'Majolica-print espadrilles Dolce & Gabbana''s espadrilles are punctuated with the brand''s painterly Majolica print inspired by Sicilian tiles - a nod to the desi', 2, NULL, 10, N'Majolica-print espadrilles Dolce & Gabbana''s espadrilles are punctuated with the brand''s painterly Majolica print inspir', CAST(N'2022-07-01T17:36:52.8553856' AS DateTime2), 12, 42, 2)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (54, NULL, NULL, N'Jordan', 0, 11234, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 1, NULL, 5, N'Eco-designed cotton sweatshirt with Balmain logo print, black, hi-res Eco-designed cotton sweatshirt with Balmain logo ', CAST(N'2022-07-04T17:53:39.2387369' AS DateTime2), 6, 26, 3)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (55, NULL, NULL, N'BALENCIAGA Pants', 0, 125, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 1, NULL, 10, N'Act casual Double-layer design Fixed hood Drop shoulders Short-sleeve overlay Pouch pocket Oversized fit', CAST(N'2022-07-04T18:03:35.3133180' AS DateTime2), 3, 14, 5)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (56, NULL, NULL, N'Balmain sweatshirt32432', 0, 491, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 1, NULL, 25, N'Act casual Double-layer design Fixed hood Drop shoulders Short-sleeve overlay Pouch pocket Oversized fit', CAST(N'2022-07-04T18:17:42.4681111' AS DateTime2), 2, 4, 3)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (57, NULL, NULL, N'BALENCIAGA Pants234', 0, 125, N'Balenciaga SAS (/bəˌlɛnsiˈɑːɡə/ bə-LEN-see-AH-gə;) is a luxury fashion house founded in 1919 by the Spanish designer Cristóbal Balenciaga in San Sebastian', 1, NULL, 5, N'Eco-designed cotton sweatshirt with Balmain logo print, black, hi-res Eco-designed cotton sweatshirt with Balmain logo ', CAST(N'2022-07-04T18:20:09.9957686' AS DateTime2), 2, 8, 4)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (58, NULL, NULL, N'Emporio Armani printed shift dress', 0, 125, N'Dolce & Gabbana ) is an Italian luxury fashion house founded in 1985 in Legnano by Italian designers Domenico Dolce and Stefano Gabbana.', 1, NULL, 5, N'Act casual Double-layer design Fixed hood Drop shoulders Short-sleeve overlay Pouch pocket Oversized fit', CAST(N'2022-07-04T18:27:38.1380070' AS DateTime2), 2, 9, 4)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (59, NULL, NULL, N'BALENCIAGA Pants', 0, 499, N'Dolce & Gabbana ) is an Italian luxury fashion house founded in 1985 in Legnano by Italian designers Domenico Dolce and Stefano Gabbana.', 2, NULL, 25, N'Act casual Double-layer design Fixed hood Drop shoulders Short-sleeve overlay Pouch pocket Oversized fit', CAST(N'2022-07-04T18:31:38.7156374' AS DateTime2), 8, 32, 2)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (60, NULL, NULL, N'BALENCIAGA Pants', 0, 699, N'Polo Ralph Lauren adds a signature twist to this classic short-sleeve T-shirt. Designed in a timeless navy blue colourway', 2, NULL, 10, N'Tumble dry medium Only non-chlorine bleach when needed No dry clean Do not iron on print Medium iron Machine wash cool', CAST(N'2022-07-04T20:08:35.4213759' AS DateTime2), 8, 32, 6)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (61, NULL, NULL, N'Air Jordan 4 Retro Black Cat 2020', 0, 499, N'Dolce & Gabbana ) is an Italian luxury fashion house founded in 1985 in Legnano by Italian designers Domenico Dolce and Stefano Gabbana.', 2, NULL, 25, N'Eco-designed cotton sweatshirt with Balmain logo print, black, hi-res Eco-designed cotton sweatshirt with Balmain logo ', CAST(N'2022-07-04T20:14:51.3842218' AS DateTime2), 8, 34, 3)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (62, NULL, NULL, N'BALENCIAGA Pants', 0, 499, N'Organically cultivated cotton sweatshirt Long sleeves, crew neck, ribbing, white Balmain logo print Casual cut Fits true to size, select your usual size', 2, NULL, 25, N'324', CAST(N'2022-07-04T20:22:58.1227267' AS DateTime2), 7, 29, 4)
INSERT [dbo].[Products] ([Id], [AvgStar], [TotalSold], [Name], [DealOfTheDay], [Price], [Description], [GenderId], [Rating], [Discount], [Subtitle], [CreatedDate], [CategoryId], [SubCategoryId], [BrandId]) VALUES (63, NULL, NULL, N'Balmain sweatshirt', 0, 125, N'Dolce & Gabbana ) is an Italian luxury fashion house founded in 1985 in Legnano by Italian designers Domenico Dolce and Stefano Gabbana.', 2, NULL, 5, N'Eco-designed cotton sweatshirt with Balmain logo print, black, hi-res Eco-designed cotton sweatshirt with Balmain logo ', CAST(N'2022-07-04T20:27:47.7726349' AS DateTime2), 8, 33, 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductSizeColors] ON 

INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (2, 6, 0, 1, 1, N'e08660b6-cdc7-41f8-8171-f556fdaa684cc69977.002_1.jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (3, 7, 0, 1, 3, N'e1a432e2-051d-4b68-8ba1-529a1ccc3cf0354914.002_1 (1).jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (4, 7, 0, 2, 3, N'78625633-0c38-49d4-a5d9-f52f776210cf354914.001_1 (1).jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (5, 8, 0, 3, 3, N'dff0c3f2-1d1e-42da-b206-ff96f9acf3fb355486.010_1 (1).jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (6, 9, 0, 1, 3, N'1716c487-a0c3-480b-a2b6-369dd431892eC95103.002_1 (1).jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (7, 10, 0, 1, 8, N'40e97553-1967-4222-b5c3-81c5f48daea7D16301.002_1 (1).jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (8, 11, 0, 5, 8, N'58d401ce-26ce-4684-a40c-a2289884ea52355071.077_2.jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (9, 11, 0, 2, 9, N'4c2c759e-61ee-47eb-b86c-4e2eeb49cdfa355070.001_2.jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (10, 11, 0, 3, 9, N'cb74e3f7-707e-43d9-b53e-d100eb7be674C95102.010_2.jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (11, 12, 0, 3, 2, N'c51d01de-2d29-4f70-8782-59f467b5de28355470.089_2.jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (12, 13, 0, 4, 2, N'390d1bba-95c8-493a-a016-fc75eefe0510355498.141_1.jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (13, 14, 0, 1, 2, N'52aa0cd2-4423-4414-88cd-35c23e10cd494d70b242dec156e53e18f7050084392a8c3c4d3e_cmu2657_1.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (14, 14, 0, 6, 2, N'8802d913-94d6-4735-b627-0ede5315e708cf0fd83404cfc6dde5b618be9596c1a4d0238ed0_cmu2656_1.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (15, 15, 0, 9, 3, N'95993d79-00b0-4e1b-8520-706b66aae3f2879919530cd513446cf54ba3487119707a1dfde3_cmy4137_4.webp', 0, 6)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (16, 15, 0, 7, 3, N'5fa0a6d1-c914-4b97-bb76-ad01f5b73d689bfd452131cdb0b20b56841da9dc3756137a083a_cmy4136_4.jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (17, 16, 0, 4, 3, N'c6277a3a-0da3-4d01-ad8f-251eed3a916113992149_18299470_1000.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (18, 17, 0, 4, 4, N'e408c147-28cf-4964-887d-e496670c273918527052_39881095_1000.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (19, 18, 0, 4, 2, N'1567d1f4-c8d9-439a-b32b-fbaa81f4cbf717548278_37486764_1000.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (20, 18, 0, 6, 2, N'736dec9f-fda9-4ae6-bbf6-654bdc084edd17848689_39547802_1000.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (21, 19, 0, 2, 2, N'ac780e60-5a4b-44a2-b75e-4d5b3819d65c17549176_38076726_1000.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (22, 20, 0, 2, 2, N'7432fe33-76bc-4e47-b0cb-bb866347e80114938423_24566598_1000.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (23, 21, 0, 2, 3, N'90336e30-8217-4a62-a430-aeef457067f716182079707e59f55c6ecf9c9ad0094170655edb20_thumbnail_220x293.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (24, 22, 0, 2, 3, N'40c63a85-e796-4c59-96f9-5011ba2189a6mom-jeans-destroy.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (25, 23, 0, 1, 3, N'61b21305-c2f2-4f80-a527-d671f85a64a20cb5dcbc-2877-4f0b-9f0e-a32e8bb31a0f1609909256912-Popnetic-Women-Jackets-4931609909255502-1.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (26, 24, 0, 1, 3, N'77fe8ac7-f532-429f-9f90-570112ae3ff57b0f1170-5f24-4a96-ae53-f50fd1c51fd3.jpeg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (27, 24, 0, 5, 3, N'1ee7ee54-63b2-4cd8-be1f-5ce41753c634c611cfde-4193-448f-bce5-32cf928e97ed.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (28, 25, 0, 3, 1, N'6b3a87da-8ff2-40ec-89ad-e382010341eehmgoepprod (7).webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (29, 25, 0, 1, 1, N'8ed13800-ca95-4221-a5ed-4266e7601a22hmgoepprod (2).webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (30, 25, 0, 2, 1, N'ef2e41c9-3464-4742-9770-aeb6174fd083hmgoepprod.jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (31, 26, 0, 10, 1, N'597754bf-5620-4eb7-8823-03b827e2faf2203003918-1-ecru.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (32, 27, 0, 4, 1, N'cbddc3e8-7903-4b0d-b2c1-d14dc4264f27202331128-4.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (33, 28, 0, 2, 1, N'd05eb197-8ac3-4849-9ba2-056b59a88dbc201608169-2.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (34, 29, 0, 4, 1, N'337490db-58eb-4d7e-8747-74febc798d78202028366-1-spellbound.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (35, 30, 0, 2, 2, N'f9f7a77c-f1b0-4e47-9094-4be3d36419f1hmgoepprod.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (36, 30, 0, 3, 1, N'6f639d37-652d-4f47-b391-9a54491a26d9hmgoepprod (5).webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (37, 31, 0, 2, 1, N'20452e1c-b0a1-496c-bc9e-e0445ca392ebhmgoepprod (7).webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (38, 32, 0, 10, 2, N'9b4ee969-1a57-4257-9c35-ad0594994dcbhmgoepprod (3).jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (39, 33, 0, 1, 1, N'53431989-a39d-48d4-9427-2ba03dc5583ehmgoepprod (14).webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (40, 34, 0, 1, 2, N'59a8a83e-bee7-45e1-ae27-496ae7bacff1202503236-1-black.webp', 42, -37)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (41, 34, 0, 2, 2, N'840e2622-5151-4f62-a7de-e0180b8112af202890166-1-stone.jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (42, 35, 0, 2, 2, N'5bbdf30e-e36e-490e-87d9-9d5e7afb364b202171613-4.webp', 1, 4)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (43, 36, 0, 2, 2, N'2c3e535c-d6e9-430d-8f1a-cd6a15a88332voil-h-saint-germain-pants--255040H32P-worn-1-0-0-800-800_b.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (44, 37, 0, 4, 3, N'd177a89d-810a-4267-96c9-0d7194b7522368f1fd11e706059f74b2ffb0f2856e98.jpg', 6, -1)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (45, 38, 0, 1, 1, N'ef51b75f-4691-47b2-a226-cde1a9a92442428.jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (46, 38, 0, 4, 2, N'2cae7c48-0cc2-4432-9ba5-eed205f0d2bf428 (8).jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (47, 39, 0, 4, 2, N'2c0b7f46-deab-441c-8618-659ce92d6377428 (11).jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (48, 40, 0, 2, 3, N'79f6bb43-e0d5-4ee0-8c26-0d0024df1be1428 (16).jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (49, 40, 0, 1, 2, N'075172e2-7892-48b0-8a41-fe882cfafacc428 (17).jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (50, 41, 0, 2, 14, N'0881b2a5-2092-4688-9688-e63afb18a98eea0c9c1c8b8e3c40957bd3a5e1239c7f.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (51, 42, 0, 3, 15, N'a14149f1-9c76-426b-b20c-74801bb76ae8CS1783AJ986_89689_1.jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (52, 42, 0, 5, 14, N'250ada23-df11-4e9f-a3d1-eba5003fa945CS1783AJ986_8B617_1.jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (53, 43, 0, 1, 15, N'6868a30b-74a6-4709-9682-a85b38f19815428.jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (54, 43, 0, 8, 15, N'7efd15db-688e-475b-adc7-6c662ab05f8a428 (4).jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (55, 44, 0, 4, 15, N'587c0151-ce3a-46d9-a6d7-14b6ae84fe4b15957834_30925989_1000.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (56, 44, 0, 5, 15, N'096a05ee-81e0-4b5e-9be3-75805530632614077010_18662965_1000.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (57, 45, 0, 1, 15, N'fee616b8-dca6-4851-9397-e0ccc0a6962a15057688_25617121_1000.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (59, 47, 0, 2, 15, N'7623f56f-5e75-4861-bd5a-e1a221d272bc16593954_34046841_1000.webp', 2, 3)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (60, 48, 0, 2, 15, N'038c8fbc-f950-44d6-a341-095918b0c13214904925_24494514_1000.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (63, 53, 0, 2, 8, N'4944eb38-f85e-47f3-a980-9804c1259dd618475519_39729369_1000.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (64, 54, 0, 4, 12, N'15fc6478-6562-4e60-84ef-3f9fd62f74b215957834_30925989_1000.webp', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (65, 55, 0, 2, 3, N'b28a700e-98a8-4eae-bc94-ef3e3b47dbee428 (14).jpg', 0, 5)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (66, 56, 0, 4, 10, N'0b69261a-dff5-47b6-b3fe-394d70ba1ab0428 (3).jpg', 0, 15)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (67, 57, 0, 5, 12, N'2efd1efb-9f1c-42bf-ae92-d298df83a8ea428 (4).jpg', 0, 324)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (68, 58, 0, 4, 10, N'0ea8af3d-d901-4d92-a041-2b59dd609eda428 (2).jpg', 0, 34)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (69, 59, 0, 5, 11, N'f2693640-ec9e-4580-b2c9-373187467d92428 (2).jpg', 0, 234)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (70, 60, 0, 2, 18, N'b29da98f-759a-4ca8-96e8-36e3932996e6428 (13).jpg', 0, 324)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (71, 61, 0, 8, 10, N'8ba211b4-e564-4165-a82f-d308e2f4f9d6product-9.jpg', 0, 23)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (72, 62, 0, 3, 10, N'603639d9-eb96-4764-84bd-c399dcad7a1fproduct-6.jpg', 0, 23)
INSERT [dbo].[ProductSizeColors] ([Id], [ProductId], [DailySoldCount], [ColorId], [SizeId], [MainImage], [TotalSold], [TotalStock]) VALUES (73, 63, 0, 4, 9, N'c4685825-7c23-4895-b4c6-2f52a5989b98product-5.jpg', 0, 32)
SET IDENTITY_INSERT [dbo].[ProductSizeColors] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([Id], [IsAcces], [Name], [Phone], [Mail], [Subject], [Message]) VALUES (1, 1, N'Farah', N'jhvuiyvbi', N'farahei@code.edu.az', N'Frh', N'pis deyil')
INSERT [dbo].[Questions] ([Id], [IsAcces], [Name], [Phone], [Mail], [Subject], [Message]) VALUES (3, 1, N'Altan', N'+38555555555', N'altanai@code.edu.az', N'Sed pretium, ligula sollicitudin laoreet viverra', N'" Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti. "')
INSERT [dbo].[Questions] ([Id], [IsAcces], [Name], [Phone], [Mail], [Subject], [Message]) VALUES (4, 1, N'Kamil', N'+38555555555', N'kamilag@code.edu.az', N'Lorem ipsum dolor sit amet, consectetuer adipisc', N'" Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti. "')
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [Phone], [SearchIcon], [WishlistIcon], [BasketIcon], [HeaderLogoImage], [FooterLogoImage], [FbIcon], [FbLink], [InstaIcon], [InstaLink], [TwitIcon], [TwitLink], [YoutubeIcon], [YtLink], [PinterestIcon], [PinterestLink], [FooterDesc], [Copyright], [HomePageRefundIcon], [HomePageDeliveryIcon], [HomePagePaymentIcon], [HomePageSupportIcon], [PhoneIcon], [UserIcon], [LittleWishlist]) VALUES (1, N'+51 636 16 44', N'icon-search', N'icon-heart-o', N'icon-shopping-cart', N'zmOB0wXSvkco.png', N'zmOB0wXSvkco.png', N'icon-facebook-f', N'https://www.facebook.com', N'icon-instagram', N'https://www.instagram.com', N'icon-twitter', N'https://www.twitter.com', N'icon-youtube', N'https://www.youtube.com', N'icon-pinterest', N'https://www.google.com', N'All rights reserved.', N'Developed by Altan Ibrahimli', N'icon-rotate-left', N'icon-truck', N'icon-unlock', N'icon-headphones', N'icon-heart-o', N'icon-phone', N'icon-user')
SET IDENTITY_INSERT [dbo].[Settings] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (1, N'XS')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (2, N'S')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (3, N'M')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (4, N'L')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (5, N'XL')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (6, N'XXL')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (7, N'35')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (8, N'36')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (9, N'37')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (10, N'38')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (11, N'39')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (12, N'40')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (13, N'41')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (14, N'42')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (15, N'43')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (16, N'44')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (17, N'45')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (18, N'46')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [TextSmall], [TextBig], [Link], [Image]) VALUES (1, N'YOU`RE LOOKING GOOD', N'NEW LOOKBOOK', N'https://www.youtube.com', N'slide-1.jpg')
INSERT [dbo].[Sliders] ([Id], [TextSmall], [TextBig], [Link], [Image]) VALUES (2, N'DONT MISS', N'MYSTERY DEALS', N'https://www.facebook.com', N'slide-2.jpg')
INSERT [dbo].[Sliders] ([Id], [TextSmall], [TextBig], [Link], [Image]) VALUES (3, N'FAMOUS GALLERY', N'NEVER LOOK BACK', N'https://www.instagram.com', N'5b3ee311-1133-4eac-8a6f-8dda025add5dbenettonslider.webp')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[SocialMedias] ON 

INSERT [dbo].[SocialMedias] ([Id], [Icon], [Link], [MemberId]) VALUES (1, N'icon-instagram', N'https://www.instagram.com/iamgagarinn', 6)
INSERT [dbo].[SocialMedias] ([Id], [Icon], [Link], [MemberId]) VALUES (2, N'icon-github', N'https://github.com/Altan013', 6)
INSERT [dbo].[SocialMedias] ([Id], [Icon], [Link], [MemberId]) VALUES (5, N'icon-instagram', N'https://www.instagram.com/quliyev_039', 8)
INSERT [dbo].[SocialMedias] ([Id], [Icon], [Link], [MemberId]) VALUES (6, N'icon-github', N'https://github.com/kamilquliyev98', 8)
INSERT [dbo].[SocialMedias] ([Id], [Icon], [Link], [MemberId]) VALUES (7, N'icon-instagram', N'https://www.instagram.com/sadigkhan.gaykhanov', 9)
INSERT [dbo].[SocialMedias] ([Id], [Icon], [Link], [MemberId]) VALUES (8, N'icon-github', N'https://github.com/Sadigkhan', 9)
SET IDENTITY_INSERT [dbo].[SocialMedias] OFF
GO
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([Id], [Name]) VALUES (1, N'Pending')
INSERT [dbo].[Statuses] ([Id], [Name]) VALUES (2, N'Accepted')
INSERT [dbo].[Statuses] ([Id], [Name]) VALUES (3, N'Rejected')
SET IDENTITY_INSERT [dbo].[Statuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Stores] ON 

INSERT [dbo].[Stores] ([Id], [Name], [Address], [Mail], [StoreOpenTime], [StoreCloseTime], [StoreLink], [Phone], [StoreImage]) VALUES (1, N'Wall Street Plaza', N'88 Pine St, New York, NY 10005, USA', N'+1 987-876-6543', CAST(N'2022-06-30T09:00:00.0000000' AS DateTime2), CAST(N'2022-06-30T22:00:00.0000000' AS DateTime2), N'https://www.facebook.com', N'+1 987-876-6543', N'img-1.jpg')
INSERT [dbo].[Stores] ([Id], [Name], [Address], [Mail], [StoreOpenTime], [StoreCloseTime], [StoreLink], [Phone], [StoreImage]) VALUES (3, N'
One New York Plaza', N'88 Pine St, New York, NY 10005, USA', N'+1 987-876-6543', CAST(N'2022-06-28T09:00:00.0000000' AS DateTime2), CAST(N'2022-04-11T22:00:00.0000000' AS DateTime2), N'https://www.facebook.com', N'+1 987-876-6543', N'img-2.jpg')
SET IDENTITY_INSERT [dbo].[Stores] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (2, N'Basics', 1)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (3, N'Prints', 1)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (4, N'Oversized', 1)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (5, N'Long Sleeve', 1)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (6, N'Polos', 1)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (8, N'Basics', 2)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (9, N'Hoodies', 2)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (10, N'With zip', 2)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (11, N'Oversized', 2)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (12, N'Joogers', 3)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (13, N'Cargo', 3)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (14, N'Jeans', 3)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (15, N'Bomber', 4)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (16, N'Puffer', 4)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (17, N'Denim ', 4)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (18, N'Overshirts', 4)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (19, N'Traditional', 5)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (20, N'Duffle', 5)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (21, N'Duster', 5)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (22, N'Parka', 5)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (23, N'Loafers', 6)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (24, N'Trainers', 6)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (25, N'Sneakers', 6)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (26, N'Jordans', 6)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (27, N'Basics', 7)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (28, N'Long Sleeve', 7)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (29, N'Oversized', 7)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (30, N'Cropped', 7)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (31, N'Prints', 7)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (32, N'Midi', 8)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (33, N'Printed', 8)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (34, N'Party', 8)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (35, N'Mom', 9)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (36, N'Skinny', 9)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (37, N'Basics', 10)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (38, N'Hoodies', 10)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (39, N'Oversized', 10)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (40, N'Trainers', 12)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (41, N'Sneakers', 12)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (42, N'Sandals', 12)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (43, N'Denim ', 11)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (44, N'Leather', 4)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (45, N'Leather', 11)
INSERT [dbo].[SubCategories] ([Id], [Name], [CategoryId]) VALUES (47, N'Bomber', 11)
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscribers] ON 

INSERT [dbo].[Subscribers] ([Id], [Email]) VALUES (1, N'dsfdasf324@3fjdsfjlsd.com')
INSERT [dbo].[Subscribers] ([Id], [Email]) VALUES (2, N'sdfasf234124232@gmail.com')
INSERT [dbo].[Subscribers] ([Id], [Email]) VALUES (3, N'test@test.com')
INSERT [dbo].[Subscribers] ([Id], [Email]) VALUES (4, N'salam@final.az')
INSERT [dbo].[Subscribers] ([Id], [Email]) VALUES (5, N'altann0777@gmail.com')
INSERT [dbo].[Subscribers] ([Id], [Email]) VALUES (6, N'altann0777@gmail.com')
INSERT [dbo].[Subscribers] ([Id], [Email]) VALUES (7, N'altann0777@gmail.com')
INSERT [dbo].[Subscribers] ([Id], [Email]) VALUES (14, N'nijatam@code.edu.az')
INSERT [dbo].[Subscribers] ([Id], [Email]) VALUES (15, N'altanai@code.edu.az')
SET IDENTITY_INSERT [dbo].[Subscribers] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Name]) VALUES (1, N'Fashion')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (2, N'Style')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (3, N'Women')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (4, N'Photography')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (5, N'Travel')
INSERT [dbo].[Tags] ([Id], [Name]) VALUES (6, N'Shopping')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
ALTER TABLE [dbo].[ProductSizeColors] ADD  DEFAULT ((0)) FOR [TotalSold]
GO
ALTER TABLE [dbo].[ProductSizeColors] ADD  DEFAULT ((0)) FOR [TotalStock]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_ProductSizeColors_ProductSizeColorId] FOREIGN KEY([ProductSizeColorId])
REFERENCES [dbo].[ProductSizeColors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_ProductSizeColors_ProductSizeColorId]
GO
ALTER TABLE [dbo].[BlogComments]  WITH CHECK ADD  CONSTRAINT [FK_BlogComments_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BlogComments] CHECK CONSTRAINT [FK_BlogComments_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[BlogComments]  WITH CHECK ADD  CONSTRAINT [FK_BlogComments_Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlogComments] CHECK CONSTRAINT [FK_BlogComments_Blogs_BlogId]
GO
ALTER TABLE [dbo].[BlogTags]  WITH CHECK ADD  CONSTRAINT [FK_BlogTags_Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlogTags] CHECK CONSTRAINT [FK_BlogTags_Blogs_BlogId]
GO
ALTER TABLE [dbo].[BlogTags]  WITH CHECK ADD  CONSTRAINT [FK_BlogTags_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlogTags] CHECK CONSTRAINT [FK_BlogTags_Tags_TagId]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Genders_GenderId] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Genders] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Genders_GenderId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_ProductSizeColors_ProductSizeColorId] FOREIGN KEY([ProductSizeColorId])
REFERENCES [dbo].[ProductSizeColors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_ProductSizeColors_ProductSizeColorId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Statuses_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Statuses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Statuses_StatusId]
GO
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductColors_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[ProductColors] CHECK CONSTRAINT [FK_ProductColors_Colors_ColorId]
GO
ALTER TABLE [dbo].[ProductColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductColors_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductColors] CHECK CONSTRAINT [FK_ProductColors_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_ProductSizeColors_ProductSizeColorId] FOREIGN KEY([ProductSizeColorId])
REFERENCES [dbo].[ProductSizeColors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_ProductSizeColors_ProductSizeColorId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Genders_GenderId] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Genders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Genders_GenderId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_SubCategories_SubCategoryId] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_SubCategories_SubCategoryId]
GO
ALTER TABLE [dbo].[ProductSizeColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizeColors_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[ProductSizeColors] CHECK CONSTRAINT [FK_ProductSizeColors_Colors_ColorId]
GO
ALTER TABLE [dbo].[ProductSizeColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizeColors_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductSizeColors] CHECK CONSTRAINT [FK_ProductSizeColors_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductSizeColors]  WITH CHECK ADD  CONSTRAINT [FK_ProductSizeColors_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
GO
ALTER TABLE [dbo].[ProductSizeColors] CHECK CONSTRAINT [FK_ProductSizeColors_Sizes_SizeId]
GO
ALTER TABLE [dbo].[SocialMedias]  WITH CHECK ADD  CONSTRAINT [FK_SocialMedias_Members_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SocialMedias] CHECK CONSTRAINT [FK_SocialMedias_Members_MemberId]
GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCategories_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCategories_Categories_CategoryId]
GO
ALTER TABLE [dbo].[WishlistItems]  WITH CHECK ADD  CONSTRAINT [FK_WishlistItems_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WishlistItems] CHECK CONSTRAINT [FK_WishlistItems_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[WishlistItems]  WITH CHECK ADD  CONSTRAINT [FK_WishlistItems_ProductColors_ProductColorId] FOREIGN KEY([ProductColorId])
REFERENCES [dbo].[ProductColors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WishlistItems] CHECK CONSTRAINT [FK_WishlistItems_ProductColors_ProductColorId]
GO
