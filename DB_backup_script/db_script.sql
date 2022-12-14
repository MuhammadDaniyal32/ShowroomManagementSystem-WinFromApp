USE [master]
GO
/****** Object:  Database [Showroom_Management_System]    Script Date: 24/07/2022 1:52:35 pm ******/
CREATE DATABASE [Showroom_Management_System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Showroom_Management_System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Showroom_Management_System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Showroom_Management_System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Showroom_Management_System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Showroom_Management_System] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Showroom_Management_System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Showroom_Management_System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET ARITHABORT OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Showroom_Management_System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Showroom_Management_System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Showroom_Management_System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Showroom_Management_System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Showroom_Management_System] SET  MULTI_USER 
GO
ALTER DATABASE [Showroom_Management_System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Showroom_Management_System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Showroom_Management_System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Showroom_Management_System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Showroom_Management_System] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Showroom_Management_System] SET QUERY_STORE = OFF
GO
USE [Showroom_Management_System]
GO
/****** Object:  Table [dbo].[classicalcar_showroom]    Script Date: 24/07/2022 1:52:35 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classicalcar_showroom](
	[car_id] [int] NOT NULL,
	[car_name] [varchar](50) NOT NULL,
	[car_brand] [varchar](50) NOT NULL,
	[Manufacturing_year] [varchar](50) NOT NULL,
	[reg_no] [varchar](50) NOT NULL,
	[chassis_no] [varchar](50) NOT NULL,
	[eng_no] [varchar](50) NOT NULL,
	[trasmission] [varchar](50) NOT NULL,
	[horse_power] [varchar](50) NOT NULL,
	[fuel_type] [varchar](50) NOT NULL,
	[cost] [varchar](50) NOT NULL,
 CONSTRAINT [PK_classicalcar_showroom] PRIMARY KEY CLUSTERED 
(
	[car_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_showroom]    Script Date: 24/07/2022 1:52:35 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_showroom](
	[cust_id] [int] NOT NULL,
	[cust_name] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[phone_no] [varchar](50) NULL,
	[car_name] [varchar](50) NULL,
	[manufact_year] [varchar](50) NULL,
	[car_catagorie] [varchar](50) NULL,
	[car_type] [varchar](50) NULL,
	[chassis_no] [varchar](50) NULL,
	[cost] [varchar](50) NULL,
 CONSTRAINT [PK_customer_showroom] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[exoticcar_showroom]    Script Date: 24/07/2022 1:52:35 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exoticcar_showroom](
	[car_id] [int] NOT NULL,
	[car_name] [varchar](50) NOT NULL,
	[car_brand] [varchar](50) NOT NULL,
	[Manufacturing_year] [varchar](50) NOT NULL,
	[reg_no] [varchar](50) NOT NULL,
	[chassis_no] [varchar](50) NOT NULL,
	[eng_no] [varchar](50) NOT NULL,
	[trasmission] [varchar](50) NOT NULL,
	[horse_power] [varchar](50) NOT NULL,
	[fuel_type] [varchar](50) NOT NULL,
	[cost] [varchar](50) NOT NULL,
 CONSTRAINT [PK_exoticcar_showroom] PRIMARY KEY CLUSTERED 
(
	[car_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login_showroom]    Script Date: 24/07/2022 1:52:35 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login_showroom](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[User_id] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_login_showroom] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[classicalcar_showroom] ([car_id], [car_name], [car_brand], [Manufacturing_year], [reg_no], [chassis_no], [eng_no], [trasmission], [horse_power], [fuel_type], [cost]) VALUES (1, N'Toyata Corolla', N'Toyota', N'1980', N'kche1233', N'asdv234', N'2324', N'RWD', N'89', N'Petrol', N'300000')
GO
INSERT [dbo].[customer_showroom] ([cust_id], [cust_name], [address], [gender], [phone_no], [car_name], [manufact_year], [car_catagorie], [car_type], [chassis_no], [cost]) VALUES (1, N'ali', N'address', N'Male', N'0123456789', N'Civic', N'1995', N'Exotic', N'Sold', N'abs12334', N'600000')
GO
INSERT [dbo].[exoticcar_showroom] ([car_id], [car_name], [car_brand], [Manufacturing_year], [reg_no], [chassis_no], [eng_no], [trasmission], [horse_power], [fuel_type], [cost]) VALUES (1, N'Mercedes-Benz', N'Mercedes', N'1990', N'abc1234', N'123444', N'232434', N'RWD', N'560 hp', N'high octane', N'1200000')
GO
SET IDENTITY_INSERT [dbo].[login_showroom] ON 

INSERT [dbo].[login_showroom] ([id], [User_id], [Password]) VALUES (1, N'Daniyal', N'daniyal')
SET IDENTITY_INSERT [dbo].[login_showroom] OFF
GO
USE [master]
GO
ALTER DATABASE [Showroom_Management_System] SET  READ_WRITE 
GO
