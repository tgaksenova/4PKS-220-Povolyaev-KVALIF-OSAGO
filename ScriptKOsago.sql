USE [master]
GO
/****** Object:  Database [PM03_pks-220_Povolyaev_OSAGO_Version2]    Script Date: 27.12.2023 17:39:14 ******/
CREATE DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PM03_pks-220_Povolyaev_OSAGO_Version2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PM03_pks-220_Povolyaev_OSAGO_Version2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PM03_pks-220_Povolyaev_OSAGO_Version2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PM03_pks-220_Povolyaev_OSAGO_Version2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PM03_pks-220_Povolyaev_OSAGO_Version2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET ARITHABORT OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET  MULTI_USER 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET QUERY_STORE = OFF
GO
USE [PM03_pks-220_Povolyaev_OSAGO_Version2]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 27.12.2023 17:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] IDENTITY(100,1) NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[Mark] [varchar](50) NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[Year] [nchar](4) NOT NULL,
	[Number] [nchar](6) NOT NULL,
	[STSNumber] [nchar](10) NOT NULL,
	[PTSNumber] [nchar](10) NOT NULL,
	[DriverId] [int] NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 27.12.2023 17:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drivers]    Script Date: 27.12.2023 17:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drivers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Patronymic] [varchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Region] [varchar](50) NULL,
 CONSTRAINT [PK_Drivers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsuranceCopmanyes]    Script Date: 27.12.2023 17:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceCopmanyes](
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_InsuranceCopmanyes] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Licenses]    Script Date: 27.12.2023 17:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Licenses](
	[Id] [int] IDENTITY(7,1) NOT NULL,
	[DriverId] [int] NOT NULL,
	[Series] [nchar](4) NOT NULL,
	[Number] [nchar](6) NOT NULL,
	[DateOfIssue] [date] NOT NULL,
 CONSTRAINT [PK_Licenses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marks]    Script Date: 27.12.2023 17:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marks](
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Marks] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Models]    Script Date: 27.12.2023 17:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Models](
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Models] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passports]    Script Date: 27.12.2023 17:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passports](
	[Id] [int] IDENTITY(7,1) NOT NULL,
	[DriverId] [int] NOT NULL,
	[Series] [nchar](4) NOT NULL,
	[Number] [nchar](6) NOT NULL,
	[DateOfIssue] [date] NOT NULL,
 CONSTRAINT [PK_Passports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Policies]    Script Date: 27.12.2023 17:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Policies](
	[Number] [nchar](13) NOT NULL,
	[InsuranceCompany] [varchar](50) NOT NULL,
	[RegistrationDate] [datetime2](7) NOT NULL,
	[ValidityPeriod] [datetime2](7) NOT NULL,
	[LicenseSeries] [nchar](4) NOT NULL,
	[LicenseNumber] [nchar](6) NOT NULL,
	[CarId] [int] NOT NULL,
	[DriverId] [int] NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Policies] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 27.12.2023 17:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 27.12.2023 17:39:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[DriverId] [int] NULL,
	[Role] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([Id], [Category], [Mark], [Model], [Year], [Number], [STSNumber], [PTSNumber], [DriverId]) VALUES (106, N'A', N'Toyota', N'Neon', N'2019', N'527382', N'457299    ', N'359237    ', 7)
INSERT [dbo].[Cars] ([Id], [Category], [Mark], [Model], [Year], [Number], [STSNumber], [PTSNumber], [DriverId]) VALUES (107, N'BE', N'Jaguar', N'Atom', N'2020', N'528572', N'234278    ', N'352783    ', 8)
INSERT [dbo].[Cars] ([Id], [Category], [Mark], [Model], [Year], [Number], [STSNumber], [PTSNumber], [DriverId]) VALUES (108, N'C', N'Suzuki', N'L78', N'2017', N'471824', N'358238    ', N'238914    ', 9)
INSERT [dbo].[Cars] ([Id], [Category], [Mark], [Model], [Year], [Number], [STSNumber], [PTSNumber], [DriverId]) VALUES (109, N'B', N'Skoda', N'A6', N'2018', N'324813', N'481714    ', N'257835    ', 10)
INSERT [dbo].[Cars] ([Id], [Category], [Mark], [Model], [Year], [Number], [STSNumber], [PTSNumber], [DriverId]) VALUES (110, N'CE', N'Renault', N'Accent', N'2021', N'349184', N'357462    ', N'234912    ', 11)
INSERT [dbo].[Cars] ([Id], [Category], [Mark], [Model], [Year], [Number], [STSNumber], [PTSNumber], [DriverId]) VALUES (111, N'D', N'Volvo', N'R56', N'2013', N'324892', N'234712    ', N'235724    ', 12)
INSERT [dbo].[Cars] ([Id], [Category], [Mark], [Model], [Year], [Number], [STSNumber], [PTSNumber], [DriverId]) VALUES (112, N'DE', N'Aston Martin', N'Seltos', N'2023', N'348923', N'262732    ', N'236812    ', 13)
INSERT [dbo].[Cars] ([Id], [Category], [Mark], [Model], [Year], [Number], [STSNumber], [PTSNumber], [DriverId]) VALUES (113, N'Tm', N'Rolls-Royce', N'911', N'2009', N'490124', N'411289    ', N'328510    ', 14)
INSERT [dbo].[Cars] ([Id], [Category], [Mark], [Model], [Year], [Number], [STSNumber], [PTSNumber], [DriverId]) VALUES (114, N'B', N'Volkswagen', N'Creta', N'2019', N'351912', N'512894    ', N'563556    ', 15)
INSERT [dbo].[Cars] ([Id], [Category], [Mark], [Model], [Year], [Number], [STSNumber], [PTSNumber], [DriverId]) VALUES (115, N'BE', N'McLaren', N'Duster', N'2020', N'358235', N'325823    ', N'235238    ', 16)
INSERT [dbo].[Cars] ([Id], [Category], [Mark], [Model], [Year], [Number], [STSNumber], [PTSNumber], [DriverId]) VALUES (116, N'C', N'Rolls-Royce', N'Atom', N'1999', N'12525 ', N'12622664  ', N'126363727 ', NULL)
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
INSERT [dbo].[Categories] ([Title]) VALUES (N'A')
INSERT [dbo].[Categories] ([Title]) VALUES (N'B')
INSERT [dbo].[Categories] ([Title]) VALUES (N'BE')
INSERT [dbo].[Categories] ([Title]) VALUES (N'C')
INSERT [dbo].[Categories] ([Title]) VALUES (N'CE')
INSERT [dbo].[Categories] ([Title]) VALUES (N'D')
INSERT [dbo].[Categories] ([Title]) VALUES (N'DE')
INSERT [dbo].[Categories] ([Title]) VALUES (N'Tm')
GO
SET IDENTITY_INSERT [dbo].[Drivers] ON 

INSERT [dbo].[Drivers] ([Id], [Name], [Surname], [Patronymic], [DateOfBirth], [Region]) VALUES (7, N'Поволяев', N'Данила', N'Алексеевич', CAST(N'2004-12-13' AS Date), N'Москва')
INSERT [dbo].[Drivers] ([Id], [Name], [Surname], [Patronymic], [DateOfBirth], [Region]) VALUES (8, N'Гордеев', N'Иван', N'Дмитриевич', CAST(N'2004-10-30' AS Date), N'Москва')
INSERT [dbo].[Drivers] ([Id], [Name], [Surname], [Patronymic], [DateOfBirth], [Region]) VALUES (9, N'Смирнов', N'Алексей', N'Игоревич', CAST(N'2004-01-22' AS Date), N'Москва')
INSERT [dbo].[Drivers] ([Id], [Name], [Surname], [Patronymic], [DateOfBirth], [Region]) VALUES (10, N'Абдулаев', N'Тагир', N'Джамбулатович', CAST(N'2004-09-21' AS Date), N'Москва')
INSERT [dbo].[Drivers] ([Id], [Name], [Surname], [Patronymic], [DateOfBirth], [Region]) VALUES (11, N'Демьянов', N'Артём', N'Сергеевич', CAST(N'2004-08-25' AS Date), N'Адыгея')
INSERT [dbo].[Drivers] ([Id], [Name], [Surname], [Patronymic], [DateOfBirth], [Region]) VALUES (12, N'Кшнякин', N'Владислав', N'Борисович', CAST(N'2003-04-19' AS Date), N'Коми')
INSERT [dbo].[Drivers] ([Id], [Name], [Surname], [Patronymic], [DateOfBirth], [Region]) VALUES (13, N'Антон', N'Шастун', N'Леопольдович', CAST(N'2002-03-09' AS Date), N'Татарстан')
INSERT [dbo].[Drivers] ([Id], [Name], [Surname], [Patronymic], [DateOfBirth], [Region]) VALUES (14, N'Азазин', N'Максим', N'Дмитриевич', CAST(N'2005-06-23' AS Date), N'Алтай')
INSERT [dbo].[Drivers] ([Id], [Name], [Surname], [Patronymic], [DateOfBirth], [Region]) VALUES (15, N'Горин', N'Генадий', N'Олегович', CAST(N'2004-09-06' AS Date), N'Москва')
INSERT [dbo].[Drivers] ([Id], [Name], [Surname], [Patronymic], [DateOfBirth], [Region]) VALUES (16, N'Ирина', N'Чичаева', N'Антоновна', CAST(N'2003-12-23' AS Date), N'Адыгея')
SET IDENTITY_INSERT [dbo].[Drivers] OFF
GO
INSERT [dbo].[InsuranceCopmanyes] ([Title]) VALUES (N'Авто')
INSERT [dbo].[InsuranceCopmanyes] ([Title]) VALUES (N'Альфа')
INSERT [dbo].[InsuranceCopmanyes] ([Title]) VALUES (N'Зетта')
INSERT [dbo].[InsuranceCopmanyes] ([Title]) VALUES (N'Ингосстрах')
INSERT [dbo].[InsuranceCopmanyes] ([Title]) VALUES (N'РЕСО')
INSERT [dbo].[InsuranceCopmanyes] ([Title]) VALUES (N'Сбербанк')
INSERT [dbo].[InsuranceCopmanyes] ([Title]) VALUES (N'Согласие')
INSERT [dbo].[InsuranceCopmanyes] ([Title]) VALUES (N'Страхование')
INSERT [dbo].[InsuranceCopmanyes] ([Title]) VALUES (N'Тинькофф')
INSERT [dbo].[InsuranceCopmanyes] ([Title]) VALUES (N'Югория')
GO
SET IDENTITY_INSERT [dbo].[Licenses] ON 

INSERT [dbo].[Licenses] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (7, 7, N'4356', N'239842', CAST(N'2020-10-20' AS Date))
INSERT [dbo].[Licenses] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (8, 8, N'2352', N'235737', CAST(N'2019-04-23' AS Date))
INSERT [dbo].[Licenses] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (9, 9, N'5864', N'896892', CAST(N'2018-12-08' AS Date))
INSERT [dbo].[Licenses] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (10, 10, N'2359', N'519823', CAST(N'2019-04-13' AS Date))
INSERT [dbo].[Licenses] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (11, 11, N'1241', N'352982', CAST(N'2021-11-20' AS Date))
INSERT [dbo].[Licenses] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (12, 12, N'3523', N'358343', CAST(N'2020-01-29' AS Date))
INSERT [dbo].[Licenses] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (13, 13, N'4368', N'235823', CAST(N'2015-09-24' AS Date))
INSERT [dbo].[Licenses] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (14, 14, N'3591', N'238926', CAST(N'2019-09-09' AS Date))
INSERT [dbo].[Licenses] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (15, 15, N'4387', N'255455', CAST(N'2022-09-27' AS Date))
INSERT [dbo].[Licenses] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (16, 16, N'2936', N'235820', CAST(N'2021-01-10' AS Date))
SET IDENTITY_INSERT [dbo].[Licenses] OFF
GO
INSERT [dbo].[Marks] ([Title]) VALUES (N'Aston Martin')
INSERT [dbo].[Marks] ([Title]) VALUES (N'Jaguar')
INSERT [dbo].[Marks] ([Title]) VALUES (N'Land Rover')
INSERT [dbo].[Marks] ([Title]) VALUES (N'McLaren')
INSERT [dbo].[Marks] ([Title]) VALUES (N'Renault')
INSERT [dbo].[Marks] ([Title]) VALUES (N'Rolls-Royce')
INSERT [dbo].[Marks] ([Title]) VALUES (N'Skoda')
INSERT [dbo].[Marks] ([Title]) VALUES (N'Suzuki')
INSERT [dbo].[Marks] ([Title]) VALUES (N'Toyota')
INSERT [dbo].[Marks] ([Title]) VALUES (N'Volkswagen')
INSERT [dbo].[Marks] ([Title]) VALUES (N'Volvo')
GO
INSERT [dbo].[Models] ([Title]) VALUES (N'911')
INSERT [dbo].[Models] ([Title]) VALUES (N'A6')
INSERT [dbo].[Models] ([Title]) VALUES (N'Accent')
INSERT [dbo].[Models] ([Title]) VALUES (N'Atom')
INSERT [dbo].[Models] ([Title]) VALUES (N'Creta')
INSERT [dbo].[Models] ([Title]) VALUES (N'Duster')
INSERT [dbo].[Models] ([Title]) VALUES (N'L78')
INSERT [dbo].[Models] ([Title]) VALUES (N'Neon')
INSERT [dbo].[Models] ([Title]) VALUES (N'R56')
INSERT [dbo].[Models] ([Title]) VALUES (N'Seltos')
GO
SET IDENTITY_INSERT [dbo].[Passports] ON 

INSERT [dbo].[Passports] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (7, 7, N'3253', N'235347', CAST(N'2020-12-07' AS Date))
INSERT [dbo].[Passports] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (8, 8, N'2357', N'238492', CAST(N'2020-12-07' AS Date))
INSERT [dbo].[Passports] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (9, 9, N'2352', N'236549', CAST(N'2020-12-07' AS Date))
INSERT [dbo].[Passports] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (10, 10, N'2445', N'326291', CAST(N'2020-12-07' AS Date))
INSERT [dbo].[Passports] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (11, 11, N'5402', N'235860', CAST(N'2020-12-07' AS Date))
INSERT [dbo].[Passports] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (12, 12, N'4360', N'138198', CAST(N'2020-12-07' AS Date))
INSERT [dbo].[Passports] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (13, 13, N'9481', N'260960', CAST(N'2020-12-07' AS Date))
INSERT [dbo].[Passports] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (14, 14, N'6482', N'658347', CAST(N'2020-12-07' AS Date))
INSERT [dbo].[Passports] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (15, 15, N'5471', N'539820', CAST(N'2020-12-07' AS Date))
INSERT [dbo].[Passports] ([Id], [DriverId], [Series], [Number], [DateOfIssue]) VALUES (16, 16, N'5498', N'698235', CAST(N'2020-12-07' AS Date))
SET IDENTITY_INSERT [dbo].[Passports] OFF
GO
INSERT [dbo].[Policies] ([Number], [InsuranceCompany], [RegistrationDate], [ValidityPeriod], [LicenseSeries], [LicenseNumber], [CarId], [DriverId], [Price]) VALUES (N'12491274182  ', N'Ингосстрах', CAST(N'2020-03-03T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-03T00:00:00.0000000' AS DateTime2), N'3523', N'358343', 111, 12, CAST(1000000.00 AS Decimal(10, 2)))
INSERT [dbo].[Policies] ([Number], [InsuranceCompany], [RegistrationDate], [ValidityPeriod], [LicenseSeries], [LicenseNumber], [CarId], [DriverId], [Price]) VALUES (N'23428934923  ', N'Ингосстрах', CAST(N'2023-10-30T00:00:00.0000000' AS DateTime2), CAST(N'2028-10-30T00:00:00.0000000' AS DateTime2), N'2936', N'235820', 115, 16, CAST(1000000.00 AS Decimal(10, 2)))
INSERT [dbo].[Policies] ([Number], [InsuranceCompany], [RegistrationDate], [ValidityPeriod], [LicenseSeries], [LicenseNumber], [CarId], [DriverId], [Price]) VALUES (N'23582359235  ', N'Ингосстрах', CAST(N'2021-05-13T00:00:00.0000000' AS DateTime2), CAST(N'2026-05-13T00:00:00.0000000' AS DateTime2), N'2359', N'519823', 109, 10, CAST(1000000.00 AS Decimal(10, 2)))
INSERT [dbo].[Policies] ([Number], [InsuranceCompany], [RegistrationDate], [ValidityPeriod], [LicenseSeries], [LicenseNumber], [CarId], [DriverId], [Price]) VALUES (N'235872735813 ', N'Авто', CAST(N'2017-07-23T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-23T00:00:00.0000000' AS DateTime2), N'2352', N'235737', 107, 8, CAST(1000000.00 AS Decimal(10, 2)))
INSERT [dbo].[Policies] ([Number], [InsuranceCompany], [RegistrationDate], [ValidityPeriod], [LicenseSeries], [LicenseNumber], [CarId], [DriverId], [Price]) VALUES (N'24141824192  ', N'Зетта', CAST(N'2019-08-08T00:00:00.0000000' AS DateTime2), CAST(N'2024-08-08T00:00:00.0000000' AS DateTime2), N'3591', N'238926', 113, 14, CAST(1000000.00 AS Decimal(10, 2)))
INSERT [dbo].[Policies] ([Number], [InsuranceCompany], [RegistrationDate], [ValidityPeriod], [LicenseSeries], [LicenseNumber], [CarId], [DriverId], [Price]) VALUES (N'24190284192  ', N'Зетта', CAST(N'2023-09-09T00:00:00.0000000' AS DateTime2), CAST(N'2029-09-09T00:00:00.0000000' AS DateTime2), N'1241', N'352982', 110, 11, CAST(1000000.00 AS Decimal(10, 2)))
INSERT [dbo].[Policies] ([Number], [InsuranceCompany], [RegistrationDate], [ValidityPeriod], [LicenseSeries], [LicenseNumber], [CarId], [DriverId], [Price]) VALUES (N'28194819212  ', N'Авто', CAST(N'2023-04-04T00:00:00.0000000' AS DateTime2), CAST(N'2026-04-04T00:00:00.0000000' AS DateTime2), N'4368', N'235823', 112, 13, CAST(1000000.00 AS Decimal(10, 2)))
INSERT [dbo].[Policies] ([Number], [InsuranceCompany], [RegistrationDate], [ValidityPeriod], [LicenseSeries], [LicenseNumber], [CarId], [DriverId], [Price]) VALUES (N'358922358139 ', N'Ингосстрах', CAST(N'2020-06-05T00:00:00.0000000' AS DateTime2), CAST(N'2025-06-05T00:00:00.0000000' AS DateTime2), N'5864', N'896892', 108, 9, CAST(1000000.00 AS Decimal(10, 2)))
INSERT [dbo].[Policies] ([Number], [InsuranceCompany], [RegistrationDate], [ValidityPeriod], [LicenseSeries], [LicenseNumber], [CarId], [DriverId], [Price]) VALUES (N'391481241924 ', N'Авто', CAST(N'2020-02-02T00:00:00.0000000' AS DateTime2), CAST(N'2028-02-02T00:00:00.0000000' AS DateTime2), N'4387', N'255455', 114, 15, CAST(1000000.00 AS Decimal(10, 2)))
INSERT [dbo].[Policies] ([Number], [InsuranceCompany], [RegistrationDate], [ValidityPeriod], [LicenseSeries], [LicenseNumber], [CarId], [DriverId], [Price]) VALUES (N'5647282910456', N'Зетта', CAST(N'2015-09-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-23T00:00:00.0000000' AS DateTime2), N'4356', N'239842', 106, 7, CAST(1000000.00 AS Decimal(10, 2)))
INSERT [dbo].[Policies] ([Number], [InsuranceCompany], [RegistrationDate], [ValidityPeriod], [LicenseSeries], [LicenseNumber], [CarId], [DriverId], [Price]) VALUES (N'5647282910457', N'Сбербанк', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'2359', N'519823', 116, 10, CAST(878654.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Regions] ([Title]) VALUES (N'Адыгея')
INSERT [dbo].[Regions] ([Title]) VALUES (N'Алтай')
INSERT [dbo].[Regions] ([Title]) VALUES (N'Бурятия')
INSERT [dbo].[Regions] ([Title]) VALUES (N'Дагестан')
INSERT [dbo].[Regions] ([Title]) VALUES (N'Ингушетия')
INSERT [dbo].[Regions] ([Title]) VALUES (N'Коми')
INSERT [dbo].[Regions] ([Title]) VALUES (N'Москва')
INSERT [dbo].[Regions] ([Title]) VALUES (N'Татарстан')
INSERT [dbo].[Regions] ([Title]) VALUES (N'Тыва')
INSERT [dbo].[Regions] ([Title]) VALUES (N'Хакасия')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [Login], [Password], [DriverId], [Role]) VALUES (1, N'Sonecka07', N'kiTTy07', 7, N'Водитель')
INSERT [dbo].[Users] ([id], [Login], [Password], [DriverId], [Role]) VALUES (2, N'Vania08', N'sPider08', 8, N'Водитель')
INSERT [dbo].[Users] ([id], [Login], [Password], [DriverId], [Role]) VALUES (3, N'Asya09', N'sunnY09', 9, N'Водитель')
INSERT [dbo].[Users] ([id], [Login], [Password], [DriverId], [Role]) VALUES (4, N'Maliya10', N'masha10', 10, N'Водитель')
INSERT [dbo].[Users] ([id], [Login], [Password], [DriverId], [Role]) VALUES (5, N'Olezha11', N'mOnkey11', 11, N'Водитель')
INSERT [dbo].[Users] ([id], [Login], [Password], [DriverId], [Role]) VALUES (7, N'ammy13', N'yellow13', NULL, N'Страховой агент')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Licenses]    Script Date: 27.12.2023 17:39:15 ******/
ALTER TABLE [dbo].[Licenses] ADD  CONSTRAINT [IX_Licenses] UNIQUE NONCLUSTERED 
(
	[Series] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Licenses_1]    Script Date: 27.12.2023 17:39:15 ******/
ALTER TABLE [dbo].[Licenses] ADD  CONSTRAINT [IX_Licenses_1] UNIQUE NONCLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Categories] FOREIGN KEY([Category])
REFERENCES [dbo].[Categories] ([Title])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Categories]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Drivers] FOREIGN KEY([DriverId])
REFERENCES [dbo].[Drivers] ([Id])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Drivers]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Marks] FOREIGN KEY([Mark])
REFERENCES [dbo].[Marks] ([Title])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Marks]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Models] FOREIGN KEY([Model])
REFERENCES [dbo].[Models] ([Title])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Models]
GO
ALTER TABLE [dbo].[Drivers]  WITH CHECK ADD  CONSTRAINT [FK_Drivers_Regions] FOREIGN KEY([Region])
REFERENCES [dbo].[Regions] ([Title])
GO
ALTER TABLE [dbo].[Drivers] CHECK CONSTRAINT [FK_Drivers_Regions]
GO
ALTER TABLE [dbo].[Licenses]  WITH CHECK ADD  CONSTRAINT [FK_Licenses_Drivers1] FOREIGN KEY([DriverId])
REFERENCES [dbo].[Drivers] ([Id])
GO
ALTER TABLE [dbo].[Licenses] CHECK CONSTRAINT [FK_Licenses_Drivers1]
GO
ALTER TABLE [dbo].[Passports]  WITH CHECK ADD  CONSTRAINT [FK_Passports_Drivers1] FOREIGN KEY([DriverId])
REFERENCES [dbo].[Drivers] ([Id])
GO
ALTER TABLE [dbo].[Passports] CHECK CONSTRAINT [FK_Passports_Drivers1]
GO
ALTER TABLE [dbo].[Policies]  WITH CHECK ADD  CONSTRAINT [FK_Policies_Cars] FOREIGN KEY([CarId])
REFERENCES [dbo].[Cars] ([Id])
GO
ALTER TABLE [dbo].[Policies] CHECK CONSTRAINT [FK_Policies_Cars]
GO
ALTER TABLE [dbo].[Policies]  WITH CHECK ADD  CONSTRAINT [FK_Policies_Drivers] FOREIGN KEY([DriverId])
REFERENCES [dbo].[Drivers] ([Id])
GO
ALTER TABLE [dbo].[Policies] CHECK CONSTRAINT [FK_Policies_Drivers]
GO
ALTER TABLE [dbo].[Policies]  WITH CHECK ADD  CONSTRAINT [FK_Policies_InsuranceCopmanyes] FOREIGN KEY([InsuranceCompany])
REFERENCES [dbo].[InsuranceCopmanyes] ([Title])
GO
ALTER TABLE [dbo].[Policies] CHECK CONSTRAINT [FK_Policies_InsuranceCopmanyes]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Drivers] FOREIGN KEY([DriverId])
REFERENCES [dbo].[Drivers] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Drivers]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [CK_Users] CHECK  (([Role]='Водитель' OR [Role]='Страховой агент'))
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [CK_Users]
GO
USE [master]
GO
ALTER DATABASE [PM03_pks-220_Povolyaev_OSAGO_Version2] SET  READ_WRITE 
GO
