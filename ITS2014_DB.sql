USE [master]
GO
/****** Object:  Database [ITS2014]    Script Date: 21/03/2014 22.24.05 ******/
CREATE DATABASE [ITS2014]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ITS2014', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.TABRIS_SQLSERVER\MSSQL\DATA\ITS2014.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ITS2014_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.TABRIS_SQLSERVER\MSSQL\DATA\ITS2014_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ITS2014] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ITS2014].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ITS2014] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ITS2014] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ITS2014] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ITS2014] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ITS2014] SET ARITHABORT OFF 
GO
ALTER DATABASE [ITS2014] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ITS2014] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ITS2014] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ITS2014] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ITS2014] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ITS2014] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ITS2014] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ITS2014] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ITS2014] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ITS2014] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ITS2014] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ITS2014] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ITS2014] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ITS2014] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ITS2014] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ITS2014] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ITS2014] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ITS2014] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ITS2014] SET RECOVERY FULL 
GO
ALTER DATABASE [ITS2014] SET  MULTI_USER 
GO
ALTER DATABASE [ITS2014] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ITS2014] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ITS2014] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ITS2014] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ITS2014', N'ON'
GO
USE [ITS2014]
GO
/****** Object:  User [ITS2014]    Script Date: 21/03/2014 22.24.05 ******/
CREATE USER [ITS2014] FOR LOGIN [ITS2014] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ITS2014]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ITS2014]
GO
/****** Object:  Table [dbo].[Contatti]    Script Date: 21/03/2014 22.24.05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contatti](
	[ContattoId] [int] IDENTITY(1,1) NOT NULL,
	[Cognome] [nvarchar](64) NOT NULL,
	[Nome] [nvarchar](64) NOT NULL,
	[Cellulare] [nvarchar](64) NOT NULL,
	[Email] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_Contatti] PRIMARY KEY CLUSTERED 
(
	[ContattoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [ITS2014] SET  READ_WRITE 
GO
