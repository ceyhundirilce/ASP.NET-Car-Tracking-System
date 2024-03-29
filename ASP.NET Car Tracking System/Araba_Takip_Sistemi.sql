USE [master]
GO
/****** Object:  Database [Araba_Takip_Sistemi]    Script Date: 7.03.2024 19:06:40 ******/
CREATE DATABASE [Araba_Takip_Sistemi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Araba_Takip_Sistemi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Araba_Takip_Sistemi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Araba_Takip_Sistemi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Araba_Takip_Sistemi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Araba_Takip_Sistemi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET  MULTI_USER 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET QUERY_STORE = ON
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Araba_Takip_Sistemi]
GO
/****** Object:  Table [dbo].[Araclar]    Script Date: 7.03.2024 19:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Araclar](
	[aracID] [int] IDENTITY(1,1) NOT NULL,
	[saseNo] [nvarchar](17) NULL,
	[marka] [nvarchar](50) NULL,
	[model] [nvarchar](50) NULL,
	[kasaTipi] [nvarchar](50) NULL,
	[jantBoyutu] [int] NULL,
	[segment] [nvarchar](1) NULL,
	[renk] [nvarchar](50) NULL,
	[modelTarihi] [nvarchar](50) NULL,
	[fiyat_TL] [nvarchar](9) NULL,
	[motorHacmi_CC] [nvarchar](50) NULL,
	[yakitTuru] [nvarchar](50) NULL,
	[vitesTuru] [nvarchar](50) NULL,
 CONSTRAINT [PK_Arac] PRIMARY KEY CLUSTERED 
(
	[aracID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 7.03.2024 19:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[musteriID] [int] IDENTITY(1,1) NOT NULL,
	[tc] [nvarchar](11) NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[yas] [int] NULL,
	[cinsiyet] [nvarchar](1) NULL,
	[tel] [nvarchar](11) NULL,
	[eposta] [nvarchar](50) NULL,
	[kullaniciAd] [nvarchar](15) NULL,
	[parola] [nvarchar](5) NULL,
	[adres] [nvarchar](max) NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[musteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satislar]    Script Date: 7.03.2024 19:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satislar](
	[satisID] [int] IDENTITY(1,1) NOT NULL,
	[musteriID] [int] NOT NULL,
	[aracID] [int] NULL,
	[plaka] [nvarchar](10) NULL,
	[saseNo] [nvarchar](17) NULL,
	[satisTarihi] [nvarchar](50) NULL,
	[satisFiyati] [nvarchar](9) NULL,
	[odemeTuru] [nvarchar](50) NULL,
 CONSTRAINT [PK_Satislar] PRIMARY KEY CLUSTERED 
(
	[satisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servisler]    Script Date: 7.03.2024 19:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servisler](
	[servisID] [int] IDENTITY(1,1) NOT NULL,
	[servisTipi] [nvarchar](50) NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[eposta] [nvarchar](50) NULL,
	[tel] [nvarchar](11) NULL,
	[marka] [nvarchar](50) NULL,
	[model] [nvarchar](50) NULL,
	[plaka] [nvarchar](10) NULL,
	[kilometre] [int] NULL,
	[servisTarihi] [nvarchar](50) NULL,
	[sube] [nvarchar](50) NULL,
	[aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_Servis] PRIMARY KEY CLUSTERED 
(
	[servisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Araclar] ON 

INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (1, N'MLAG74BFDUZQF4S4T', N'Audi', N'A3', N'Sedan', 17, N'C', N'Kırmızı', N'2023-01-19', N'1051752', N'1498', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (2, N'P3H7FN6KQRVY8SR4B', N'Audi', N'A3', N'Hatchback', 17, N'C', N'Siyah', N'2023-01-19', N'951339', N'999', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (3, N'M3USMH7YSD27QFXK4', N'Audi', N'A4', N'Sedan', 17, N'D', N'Mavi', N'2023-01-19', N'1647415', N'1968', N'Dizel', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (4, N'HTNR8DA9RXGPEUE5Q', N'Audi', N'A4', N'Sedan', 17, N'D', N'Beyaz', N'2023-01-19', N'1719218', N'1984', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (5, N'LHFL2FRX4W8SW4KZB', N'Audi', N'A4', N'Station Wagon', 17, N'D', N'Siyah', N'2023-01-19', N'1766241', N'1968', N'Dizel', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (6, N'LK2P3QMVPGDG8FYS4', N'Audi', N'A4', N'Station Wagon', 17, N'D', N'Gri', N'2023-01-19', N'1858340', N'1984', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (7, N'F6HSKNRVF5Z5CQMVN', N'Audi', N'A5', N'Coupe', 17, N'D', N'Sarı', N'2023-01-19', N'1857249', N'1968', N'Dizel', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (8, N'ZU9VVLVYPKWRAXUNH', N'Audi', N'A5', N'Coupe', 17, N'D', N'Kırmızı', N'2023-01-19', N'1883779', N'1984', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (9, N'C3E65S4Q699GKKRNP', N'Audi', N'A5', N'Hatchback', 17, N'D', N'Mavi', N'2023-01-19', N'1894419', N'1968', N'Dizel', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (10, N'WWE2T7WD4ZYW792FH', N'Audi', N'A5', N'Hatchback', 17, N'D', N'Beyaz', N'2023-01-19', N'1926574', N'1984', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (11, N'FYVDDAEQC84H9KCSW', N'Audi', N'A5', N'Cabrio', 17, N'D', N'Siyah', N'2023-01-19', N'2039559', N'1968', N'Dizel', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (12, N'R6RYVTP6U7U8SZ6HG', N'Audi', N'A5', N'Cabrio', 17, N'D', N'Gri', N'2023-01-19', N'2069059', N'1984', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (13, N'GC3FYMGVZQTZM3S2S', N'Audi', N'R8', N'Coupe', 17, N'S', N'Kırmızı', N'2023-01-19', N'10000000', N'5204', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (14, N'Z72C5WGDPHREEWCGN', N'Mercedes', N'A Serisi', N'Sedan', 16, N'C', N'Kahverengi', N'2023-01-19', N'1127000', N'1332', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (15, N'PAEPMZMWSBTGURXL5', N'Mercedes', N'B Serisi', N'MPV', 16, N'C', N'Sarı', N'2023-01-19', N'1082500', N'1332', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (16, N'PRX3H6CLRN4FRUE86', N'Mercedes', N'C Serisi', N'Coupe', 17, N'D', N'Beyaz', N'2023-01-19', N'1773500', N'1497', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (17, N'BQX3XCGXPF23HDVXR', N'Mercedes', N'C Serisi', N'Cabrio', 17, N'D', N'Gri', N'2023-01-19', N'2133000', N'1497', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (18, N'MY582348L6QP6DMVV', N'Mercedes', N'E Serisi', N'Sedan', 20, N'E', N'Siyah', N'2023-01-19', N'2277500', N'1597', N'Dizel', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (19, N'D8LLT8XU493BNXCMA', N'Mercedes', N'E Serisi', N'Sedan', 20, N'E', N'Kırmızı', N'2023-01-19', N'3364000', N'1993', N'Dizel', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (20, N'L9ZGEELB6BRUZSMA3', N'Mercedes', N'E Serisi', N'Coupe', 17, N'E', N'Gri', N'2023-01-19', N'3404500', N'1993', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (21, N'ME4BWQC9ZY8RSZ4F6', N'Mercedes', N'E Serisi', N'Cabrio', 17, N'E', N'Sarı', N'2023-01-19', N'3935000', N'1991', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (22, N'R3M6U2C8E8CL4DSQW', N'Mercedes', N'G Serisi', N'Suv', 18, N'F', N'Mavi', N'2023-01-19', N'7643000', N'2925', N'Dizel', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (23, N'SVAZFUFC2N5Q7YRWX', N'Mercedes', N'G Serisi', N'Suv', 18, N'F', N'Kahverengi', N'2023-01-19', N'10406000', N'3982', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (24, N'T9FCKAFTGBQSNBA3C', N'BMW', N'5 Serisi', N'Sedan', 17, N'E', N'Beyaz', N'2023-01-19', N'3344200', N'1995', N'Dizel', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (25, N'H8BEBCU7WSWLERAKX', N'BMW', N'5 Serisi', N'Sedan', 17, N'E', N'Siyah', N'2023-06-23', N'2312400', N'1597', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (26, N'GFVNHZ27BRBKUKYVG', N'BMW', N'5 Serisi', N'Station Wagon', 17, N'E', N'Kahverengi', N'2023-01-19', N'3611600', N'1998', N'Hibrit', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (27, N'N9SAH8NHYSNVYFCXE', N'BMW', N'İ4', N'Sedan', 17, N'D', N'Gri', N'2023-01-19', N'2632500', N'0', N'Elektrik', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (28, N'GU2KSS6L5WB97F72D', N'BMW', N'8 Serisi', N'Coupe', 19, N'F', N'Kırmızı', N'2023-01-19', N'9041600', N'2998', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (29, N'YLFYF8WULQPKQDPU4', N'BMW', N'8 Serisi', N'Cabrio', 19, N'F', N'Mavi', N'2023-01-19', N'8488200', N'2998', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (30, N'EZF6QHZ659GGC8WXZ', N'BMW', N'M8', N'Cabrio', 20, N'F', N'Sarı', N'2023-01-19', N'10488200', N'4395', N'Benzin', N'Otomatik')
INSERT [dbo].[Araclar] ([aracID], [saseNo], [marka], [model], [kasaTipi], [jantBoyutu], [segment], [renk], [modelTarihi], [fiyat_TL], [motorHacmi_CC], [yakitTuru], [vitesTuru]) VALUES (31, N'MLAG74BFDUZQF4S4A', N'Renault', N'Megane', N'Hatchback', 16, N'D', N'Beyaz', N'2023-1-12', N'150000', N'1500', N'Benzin', N'Yarı Otomatik')
SET IDENTITY_INSERT [dbo].[Araclar] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteriler] ON 

INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (1, N'38039591289', N'Atahan', N'Aydın', 25, N'E', N'05614517068', N'morozanja@24hinbox.com	', N'AtahanAydın', N'30977', N'Cumhuriyet,21, 8600, Hopa/ Artvin, Turkey
')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (2, N'80020738480', N'Fatma Özlem', N'Acar', 31, N'K', N'05917132125', N'anyxl@teamtrac.org', N'FatmaÖzlem', N'25805', N'Buğdayli,7, 10902, Gönen/ Balikesir, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (3, N'60763339366', N'Özde', N'Acarkan', 19, N'K', N'05269900671', N'dudewm@sohbetamk.xyz', N'ÖzdeAcarken', N'59284', N'Tabaklar Köyü,23, 3602, Emirdağ/ Afyonkarahisar, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (4, N'49926268422', N'Atahan', N'Adıgüzel', 47, N'E', N'05619993814', N'doc1948@semprulz.net', N'AtahanAdıgüzel', N'27575', N'Olurdere,29, 25650, Olur/ Erzurum, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (5, N'21293687198', N'Mehmet', N'Akdoğan', 42, N'E', N'05620566789', N'simoncopestake@teamtrac.org', N'BestamiAkdoğan', N'74773', N'Güneşli,6, 35270, Konak/ İzmir, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (6, N'80804003834', N'Şennur', N'Akıncılar', 52, N'K', N'05939719446', N'patsnumber37@teamtrac.org', N'ŞennurAkıncılar', N'91643', N'Pamuklar,1, 6210, Yenimahalle/ Ankara, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (7, N'35039896430', N'Sevinç', N'Aksan', 21, N'K', N'05738795331', N'metallik@advertmix85.xyz', N'SevinçAksan', N'44280', N'Terziler,18, 67960, Çaycuma/ Zonguldak, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (8, N'20818316346', N'Ahmet Raşit', N'Akyıldız', 32, N'E', N'05805767368', N'bbuuggssy@stinkypoopoo.com', N'AhmetAkyıldız', N'98922', N'Uzamiş,30, 58762, Hafik/ Sivas, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (9, N'78332301614', N'Senem', N'Al', 46, N'K', N'05888241049', N'guochanglin@mymailcr.com', N'SenemAl', N'79378', N'Yenidoğan Yeşilyurt,7, 6870, Kalecik/ Ankara, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (10, N'53508767562', N'Adem', N'Albaş', 40, N'E', N'05522332946', N'joebonaddio1@advertmix85.xyz', N'AdemAlbaş', N'54398', N'Balaban Mevki,31, 53340, Pazar/ Rize, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (11, N'34028744226', N'Ali ', N'Alkan', 21, N'E', N'05511181912', N'gulfiaeverest@otpku.com', N'AliAlkan', N'45931', N'Alan,16, 52900, Mesudiye/ Ordu, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (12, N'83941337930', N'Abdullah', N'Erek', 55, N'E', N'05299565848', N'bugnet@uzbekbazaar.com', N'AbdullahErek', N'61332', N'Elmalik,30, 55600, Terme/ Samsun, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (13, N'54807756226', N'Atakan', N'Erkoç', 67, N'E', N'05197120902', N'taztheman@culasatu.site', N'AtakanErkoç', N'78090', N'Dolma,23, 23802, Baskil/ Elaziğ, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (14, N'80661037652', N'Bensu', N'Gülkan', 61, N'K', N'05582377659', N'nb2458610@rontgateprop.com', N'BensuGülkan', N'80309', N'Yukarikonak,31, 47700, Mazidaği/ Mardin, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (15, N'88387765484', N'Nazım Orhun', N'Gültaş', 50, N'E', N'05652322837', N'tenor1@gatamala.com', N'NazımGültaş', N'67164', N'Kümeören Köyü,16, 58842, Gemerek/ Sivas, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (16, N'29783093450', N'Ayla', N'Gürdemir', 43, N'K', N'05634967683', N'sitovartem@uzbekbazaar.com', N'AylaGürdemir', N'92917', N'Yeşilyurt,5, 7500, Serik/ Antalya, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (17, N'38409084826', N'Aksu', N'Hızarcıoğlu', 26, N'K', N'05384097112', N'evgen1990ku@stinkypoopoo.com', N'AksuHızarcıoğlu', N'38929', N'İpekli Köyü,17, 2000, Merkez/ Adiyaman, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (18, N'15723754352', N'İbrahim Hakkı', N'Kabukçu', 71, N'E', N'05433313507', N'andreifox1@rackabzar.com', N'İbrahimKabukçu', N'18226', N'Yukaribahçeler,24, 52400, Fatsa/ Ordu, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (19, N'58264391884', N'Ahmet Yasin', N'Kalfaoğlu', 54, N'E', N'05608727686', N'mikiej8@rontgateprop.com', N'AhmetKalfaoğlu', N'61412', N'Derebağlar,23, 8390, Ardanuç/ Artvin, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (20, N'77709746850', N'Seda Nur', N'Karaaslanlı', 23, N'K', N'05213129700', N'bankfigge@btcmod.com', N'SedaKaraaslanlı', N'90174', N'Alemdar,9, 46500, Afşin/ Kahramanmaraş, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (21, N'98453840540', N'Yücel', N'Karadağ', 28, N'E', N'05420937519', N'cfpringlejr@getcashstash.com', N'YücelKaradağ', N'41184', N'Alincik Köyü,35, 23902, Sivrice/ Elaziğ, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (22, N'30962543338', N'Büşra', N'Kovancı', 31, N'K', N'05623666546', N'bobdavis69@gatamala.com', N'BüşraKovancı', N'68864', N'Azmimilli,34, 81010, Merkez/ Düzce, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (23, N'25998455120', N'Afra', N'Köken', 20, N'K', N'05815296774', N'dolcegusto@uzbekbazaar.com', N'AfraKöken', N'18947', N'Yeniköy Köyü,9, 58982, İmranli/ Sivas, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (24, N'47870179856', N'Bayram', N'Nişancı', 34, N'E', N'05812009932', N'mama2103@cdvaldagno.it', N'BayramNişancı', N'99852', N'Subaşi,17, 43950, Şaphane/ Kütahya, Turkey')
INSERT [dbo].[Musteriler] ([musteriID], [tc], [ad], [soyad], [yas], [cinsiyet], [tel], [eposta], [kullaniciAd], [parola], [adres]) VALUES (25, N'55909349576', N'Elanur', N'Atlan', 20, N'K', N'05470793084', N'lexemus@teamtrac.org', N'ElanurAtlan', N'41013', N'Taşkaynak,6, 25300, Pasinler/ Erzurum, Turkey')
SET IDENTITY_INSERT [dbo].[Musteriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Satislar] ON 

INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7295, 23, 25, N'41 AA 100', N'M4WT6EM7C86YBKPKB', N'Jul  5 2023 12:00AM', N'2312400', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7296, 7, 5, N'41 AA 101', N'LUBPQAKNSFN7MPBTB', N'Jul  8 2023 12:00AM', N'1766241', N'Kredi Kartı')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7297, 14, 19, N'41 AA 102', N'B39NKLJIETGSYUBP1', N'Jul 10 2023 12:00AM', N'3364000', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7298, 18, 30, N'41 AA 103', N'TECNK5A8662NS2UZW', N'Jul 13 2023 12:00AM', N'10488200', N'Kredi Kartı')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7299, 10, 13, N'41 AA 104', N'R455ZGLE79342M2XY', N'Jul 13 2023 12:00AM', N'10000000', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7300, 24, 17, N'41 AA 105', N'L7X2O9QNC7CNEFKUR', N'Jul 14 2023 12:00AM', N'2133000', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7301, 5, 26, N'41 AA 106', N'U9I5Q3HW1L43BO2ZV', N'Jul 15 2023 12:00AM', N'3611600', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7302, 13, 11, N'41 AA 107', N'PUEA5PDMG5L69XNFT', N'Jul 15 2023 12:00AM', N'2039559', N'Kredi Kartı')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7303, 19, 14, N'41 AA 108', N'DPMHVC4B5UXUY5DUL', N'Jul 15 2023 12:00AM', N'1127000', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7304, 25, 7, N'41 AA 109', N'W9D3WRWSBN4KUEQCR', N'Jul 17 2023 12:00AM', N'1857249', N'Kredi Kartı')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7305, 1, 3, N'41 AA 110', N'FWC539B4W78SDUAXE', N'Jul 21 2023 12:00AM', N'164741', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7306, 21, 15, N'41 AA 111', N'FDTWGHAKFEAPHY4UZ', N'Jul 22 2023 12:00AM', N'1082500', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7307, 8, 28, N'41 AA 112', N'VTCWW4RYEYUXDW7BX', N'Jul 24 2023 12:00AM', N'9041600', N'Kredi Kartı')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7308, 17, 21, N'41 AA 113', N'E46MR8PZUXL8E6WLD', N'Jul 27 2023 12:00AM', N'3935000', N'Kredi Kartı')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7309, 15, 2, N'41 AA 114', N'SR8DRAZL5D33V8WHC', N'Jul 28 2023 12:00AM', N'951339', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7310, 2, 18, N'41 AA 115', N'KG9G7NG8AYRKMEHM8', N'Jul 28 2023 12:00AM', N'2277500', N'Kredi Kartı')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7311, 4, 9, N'41 AA 116', N'RCPKVEKM43DD2CE83', N'Jul 30 2023 12:00AM', N'1894419', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7312, 16, 29, N'41 AA 117', N'DWTY9DAY2HF7HZ2YC', N'Aug  4 2023 12:00AM', N'8488200', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7313, 6, 23, N'41 AA 118', N'HUA5HX9EMYRL5GDD8', N'Aug  5 2023 12:00AM', N'10406000', N'Kredi Kartı')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7314, 11, 8, N'41 AA 119', N'Z7NV9RYH9CE6WS56U', N'Aug 10 2023 12:00AM', N'1883779', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7315, 9, 6, N'41 AA 120', N'GSLQNK5A6AUTQ8XT3', N'Aug 11 2023 12:00AM', N'1858340', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7316, 12, 16, N'41 AA 121', N'SX49W7Z7ETAGW53MK', N'Aug 11 2023 12:00AM', N'1773500', N'Kredi Kartı')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7317, 20, 4, N'41 AA 122', N'AR3F6VBELTLLKZ37F', N'Aug 14 2023 12:00AM', N'1719218', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7318, 3, 10, N'41 AA 123', N'Y4RQ75CMYKRDD6NYN', N'Aug 19 2023 12:00AM', N'1926574', N'Kredi Kartı')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7319, 22, 12, N'41 AA 124', N'FXEC572FWWN89NVGZ', N'Aug 19 2023 12:00AM', N'2069059', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7320, 9, 20, N'41 AA 125', N'H6XFF9LN3X3VKTNYV', N'Aug 19 2023 12:00AM', N'3404500', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7321, 1, 24, N'41 AA 126', N'VRV2HV9FTH6452YX7', N'Aug 20 2023 12:00AM', N'3344200', N'Kredi Kartı')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7322, 13, 22, N'41 AA 127', N'PXWCVRNDMXASVU3UB', N'Aug 24 2023 12:00AM', N'7643000', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7323, 20, 1, N'41 AA 128', N'LSF27NBRZGDGS45L3', N'Aug 25 2023 12:00AM', N'1051752', N'Nakit')
INSERT [dbo].[Satislar] ([satisID], [musteriID], [aracID], [plaka], [saseNo], [satisTarihi], [satisFiyati], [odemeTuru]) VALUES (7324, 17, 27, N'41 AA 129', N'P6NAKYKK35UTRPSZD', N'Aug 29 2023 12:00AM', N'2632500', N'Kredi Kartı')
SET IDENTITY_INSERT [dbo].[Satislar] OFF
GO
SET IDENTITY_INSERT [dbo].[Servisler] ON 

INSERT [dbo].[Servisler] ([servisID], [servisTipi], [ad], [soyad], [eposta], [tel], [marka], [model], [plaka], [kilometre], [servisTarihi], [sube], [aciklama]) VALUES (1, N'Periyodik Bakım', N'Ceyhun', N'Dirilce', N'evsrevrs', N'56546565465', N'Audi', N'A3', N'81 AA 100', 0, N'2023-01-11T19:52', N'Akçakoca', N'svrsvr')
SET IDENTITY_INSERT [dbo].[Servisler] OFF
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Satislar_Arac] FOREIGN KEY([aracID])
REFERENCES [dbo].[Araclar] ([aracID])
GO
ALTER TABLE [dbo].[Satislar] CHECK CONSTRAINT [FK_Satislar_Arac]
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Satislar_Musteriler] FOREIGN KEY([musteriID])
REFERENCES [dbo].[Musteriler] ([musteriID])
GO
ALTER TABLE [dbo].[Satislar] CHECK CONSTRAINT [FK_Satislar_Musteriler]
GO
USE [master]
GO
ALTER DATABASE [Araba_Takip_Sistemi] SET  READ_WRITE 
GO
