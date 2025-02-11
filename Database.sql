USE [master]
GO
/****** Object:  Database [MVCCvWebsite]    Script Date: 16.08.2020 21:00:25 ******/
CREATE DATABASE [MVCCvWebsite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MVCCvWebsite', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MVCCvWebsite.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MVCCvWebsite_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MVCCvWebsite_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MVCCvWebsite] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MVCCvWebsite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MVCCvWebsite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET ARITHABORT OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MVCCvWebsite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MVCCvWebsite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MVCCvWebsite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MVCCvWebsite] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET RECOVERY FULL 
GO
ALTER DATABASE [MVCCvWebsite] SET  MULTI_USER 
GO
ALTER DATABASE [MVCCvWebsite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MVCCvWebsite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MVCCvWebsite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MVCCvWebsite] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MVCCvWebsite] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MVCCvWebsite', N'ON'
GO
ALTER DATABASE [MVCCvWebsite] SET QUERY_STORE = OFF
GO
USE [MVCCvWebsite]
GO
/****** Object:  Table [dbo].[About]    Script Date: 16.08.2020 21:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[Surname] [varchar](30) NULL,
	[Adress] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Mail] [varchar](150) NULL,
	[About] [varchar](max) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 16.08.2020 21:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](20) NULL,
	[Sifre] [varchar](20) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Awards]    Script Date: 16.08.2020 21:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Awards](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Award] [varchar](250) NULL,
 CONSTRAINT [PK_Awards] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 16.08.2020 21:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[University] [varchar](50) NULL,
	[Faculty] [varchar](50) NULL,
	[Branch] [varchar](150) NULL,
	[GPA] [decimal](3, 2) NULL,
	[Date] [varchar](50) NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Experience]    Script Date: 16.08.2020 21:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experience](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](20) NULL,
	[SubTitle] [varchar](20) NULL,
	[Date] [varchar](20) NULL,
	[Detail] [varchar](max) NULL,
 CONSTRAINT [PK_Experience,] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interesteds]    Script Date: 16.08.2020 21:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interesteds](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Interested] [varchar](500) NULL,
 CONSTRAINT [PK_Hobbies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 16.08.2020 21:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Skill] [varchar](150) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([Id], [Name], [Surname], [Adress], [Phone], [Mail], [About]) VALUES (1, N'Hasan', N'Erdal', N'Hüseyin Aşkın Sk. Şahinbey-Gaziantep', N'+905370352059', N'hasaerda@hotmail.com', N'Merhaba ben Hasan Erdal. Yazılımda kendimi geliştiren ve bu konuda bitmez bir merakı olan biriyim. C# ve .NET alanlarında çalışıyorum. Aynı zamanda Python ve Javascript ile uğraşıyorum. Gelişime açık bir bireyim. asdas')
SET IDENTITY_INSERT [dbo].[About] OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [KullaniciAdi], [Sifre]) VALUES (1, N'Filiphasan', N'483706706')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Awards] ON 

INSERT [dbo].[Awards] ([Id], [Award]) VALUES (1, N'Udemy-Uygulama Geliştirerek C# Öğrenin: A''dan Z''ye Eğitim Seti')
INSERT [dbo].[Awards] ([Id], [Award]) VALUES (2, N'Udemy-C# ile DevExpress''de SQL Tabanlı Ticari Otomasyon Geliştirin')
INSERT [dbo].[Awards] ([Id], [Award]) VALUES (3, N'Udemy-C# ile DevExpress''de Teknik Servis ve Ürün Takip Sistemi')
INSERT [dbo].[Awards] ([Id], [Award]) VALUES (4, N'Udemy-SQL Kursu : Sıfırdan Sektörün Yükseklerine - 2020')
INSERT [dbo].[Awards] ([Id], [Award]) VALUES (5, N'Udemy-C# İLE OOP TEMELLERİ: ADIM ADIM KATMANLI MİMARİ')
SET IDENTITY_INSERT [dbo].[Awards] OFF
GO
SET IDENTITY_INSERT [dbo].[Education] ON 

INSERT [dbo].[Education] ([Id], [University], [Faculty], [Branch], [GPA], [Date]) VALUES (3, N'Uludağ Üniversitesi', N'Mühendislik Fakültesi', N'Elektrik Elektronik Mühendisliği', CAST(2.66 AS Decimal(3, 2)), N'Eylül 2016-Temmuz 2021')
INSERT [dbo].[Education] ([Id], [University], [Faculty], [Branch], [GPA], [Date]) VALUES (4, N'Türkan Halit Aykılıç Fen Lisesi', N'Fen Bilimleri', N'Sayısal Bölümü', CAST(3.25 AS Decimal(3, 2)), N'Eylül 2012-Temmuz 2016')
SET IDENTITY_INSERT [dbo].[Education] OFF
GO
SET IDENTITY_INSERT [dbo].[Experience] ON 

INSERT [dbo].[Experience] ([Id], [Title], [SubTitle], [Date], [Detail]) VALUES (1, N'Freelance', N'Web Development', N'Haziran 2020-Now', N'Müşteri isteklerine göre  Web siteleri ve dinamik websiteleri oluşturuyorum.')
SET IDENTITY_INSERT [dbo].[Experience] OFF
GO
SET IDENTITY_INSERT [dbo].[Interesteds] ON 

INSERT [dbo].[Interesteds] ([Id], [Interested]) VALUES (1, N'Anime izlemeyi ve Manga okumayı seviyorum.')
INSERT [dbo].[Interesteds] ([Id], [Interested]) VALUES (2, N'Vizyondaki filmleri ve dizileri takip etmeyi ve bunlarla ilgili yazıları okumayı seviyorum.')
INSERT [dbo].[Interesteds] ([Id], [Interested]) VALUES (3, N'Bilgisayar parçaları hakkında yazılar okumayı ve videolar izlemeyi seviyorum. Bu konularda araştırma yapıyorum.')
SET IDENTITY_INSERT [dbo].[Interesteds] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([Id], [Skill]) VALUES (1, N'Dynamic Web Development')
INSERT [dbo].[Skills] ([Id], [Skill]) VALUES (2, N'C# Development')
INSERT [dbo].[Skills] ([Id], [Skill]) VALUES (3, N'.NET Development')
INSERT [dbo].[Skills] ([Id], [Skill]) VALUES (4, N'MVC Development')
INSERT [dbo].[Skills] ([Id], [Skill]) VALUES (5, N'Python Basics')
INSERT [dbo].[Skills] ([Id], [Skill]) VALUES (7, N'Javascript Basics')
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
USE [master]
GO
ALTER DATABASE [MVCCvWebsite] SET  READ_WRITE 
GO
