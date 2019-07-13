USE [master]
GO
/****** Object:  Database [ONGCEntityFramework]    Script Date: 09-07-2019 11:22:44 AM ******/
CREATE DATABASE [ONGCEntityFramework]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ONGCEntityFramework', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ONGCEntityFramework.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ONGCEntityFramework_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ONGCEntityFramework_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ONGCEntityFramework] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ONGCEntityFramework].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ONGCEntityFramework] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET ARITHABORT OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ONGCEntityFramework] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ONGCEntityFramework] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ONGCEntityFramework] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ONGCEntityFramework] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ONGCEntityFramework] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ONGCEntityFramework] SET  MULTI_USER 
GO
ALTER DATABASE [ONGCEntityFramework] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ONGCEntityFramework] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ONGCEntityFramework] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ONGCEntityFramework] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ONGCEntityFramework] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ONGCEntityFramework] SET QUERY_STORE = OFF
GO
ALTER DATABASE [ONGCEntityFramework] SET  READ_WRITE 
GO
