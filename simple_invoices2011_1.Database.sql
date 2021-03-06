USE [master]
GO
/****** Object:  Database [simple_invoices2011_1]    Script Date: 08/21/2015 20:55:35 ******/
CREATE DATABASE [simple_invoices2011_1] ON  PRIMARY 
( NAME = N'simple_invoices2011_1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\simple_invoices2011_1.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'simple_invoices2011_1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\simple_invoices2011_1_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [simple_invoices2011_1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [simple_invoices2011_1] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET ANSI_NULLS OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET ANSI_PADDING OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET ARITHABORT OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [simple_invoices2011_1] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [simple_invoices2011_1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [simple_invoices2011_1] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET  ENABLE_BROKER
GO
ALTER DATABASE [simple_invoices2011_1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [simple_invoices2011_1] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [simple_invoices2011_1] SET  READ_WRITE
GO
ALTER DATABASE [simple_invoices2011_1] SET RECOVERY FULL
GO
ALTER DATABASE [simple_invoices2011_1] SET  MULTI_USER
GO
ALTER DATABASE [simple_invoices2011_1] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [simple_invoices2011_1] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'simple_invoices2011_1', N'ON'
GO
