USE [master]
GO
/****** Object:  Database [OVCS]    Script Date: 6/21/2021 9:13:40 AM ******/
CREATE DATABASE [OVCS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OVCS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\OVCS.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OVCS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\OVCS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OVCS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OVCS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OVCS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OVCS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OVCS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OVCS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OVCS] SET ARITHABORT OFF 
GO
ALTER DATABASE [OVCS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OVCS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [OVCS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OVCS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OVCS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OVCS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OVCS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OVCS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OVCS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OVCS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OVCS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OVCS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OVCS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OVCS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OVCS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OVCS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OVCS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OVCS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OVCS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OVCS] SET  MULTI_USER 
GO
ALTER DATABASE [OVCS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OVCS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OVCS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OVCS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [OVCS]
GO
/****** Object:  StoredProcedure [dbo].[spAuthenticateUser]    Script Date: 6/21/2021 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[spAuthenticateUser]
@UserName nvarchar(100), 
@Password nvarchar(100)
as
Begin
 Declare @Count int
 
 Select @Count = COUNT(UserName) from tblUsers
 where [UserName] = @UserName and [Password] = @Password
 
 if(@Count = 1)
 Begin
  Select 1 as ReturnCode
 End
 Else
 Begin
  Select -1 as ReturnCode
 End
End


GO
/****** Object:  StoredProcedure [dbo].[spRegisterUser]    Script Date: 6/21/2021 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spRegisterUser] 
@UserName NVARCHAR(100),
@Password NVARCHAR(200),
@Email NVARCHAR(200)
AS
BEGIN
DECLARE @Count INT
DECLARE @ReturnCode INT

SELECT @Count = COUNT(UserName)
FROM tblUsers WHERE UserName = @UserName

IF @Count > 0
BEGIN
SET @ReturnCode = - 1
END
ELSE
BEGIN
	SET @ReturnCode = 1
	INSERT INTO tblUsers VALUES (@UserName,@Password,@Email)
END

SELECT @ReturnCode AS ReturnValue
END


GO
/****** Object:  Table [dbo].[admin]    Script Date: 6/21/2021 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[apass] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BakeryEnrollments]    Script Date: 6/21/2021 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BakeryEnrollments](
	[Bid] [int] IDENTITY(1,1) NOT NULL,
	[StdEmail] [nvarchar](150) NOT NULL,
	[Blevel] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BakerySchedule]    Script Date: 6/21/2021 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BakerySchedule](
	[Eid] [int] IDENTITY(1,1) NOT NULL,
	[Sday] [nvarchar](150) NULL,
	[Stime] [nvarchar](150) NULL,
	[Elevel] [nvarchar](150) NULL,
	[Elocation] [nvarchar](150) NULL,
	[ERoom] [nvarchar](150) NULL,
	[Ecapacity] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Coursetable]    Script Date: 6/21/2021 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coursetable](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Cname] [nvarchar](150) NOT NULL,
	[Clevel] [nvarchar](150) NOT NULL,
	[Duration] [nvarchar](150) NOT NULL,
	[Cfees] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EasternCuisineSchedule]    Script Date: 6/21/2021 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EasternCuisineSchedule](
	[Eid] [int] IDENTITY(1,1) NOT NULL,
	[Sday] [nvarchar](150) NULL,
	[Stime] [nvarchar](150) NULL,
	[Elevel] [nvarchar](150) NULL,
	[Elocation] [nvarchar](150) NULL,
	[ERoom] [nvarchar](150) NULL,
	[Ecapacity] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EasternEnrollments]    Script Date: 6/21/2021 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EasternEnrollments](
	[Eeid] [int] IDENTITY(1,1) NOT NULL,
	[StdEmail] [nvarchar](150) NULL,
	[Elevel] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Eeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Levels]    Script Date: 6/21/2021 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Levels](
	[lid] [int] IDENTITY(1,1) NOT NULL,
	[lname] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[lname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Requests]    Script Date: 6/21/2021 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[Stid] [int] IDENTITY(1,1) NOT NULL,
	[Stfname] [nvarchar](150) NULL,
	[Stlname] [nvarchar](150) NULL,
	[StFathername] [nvarchar](150) NULL,
	[StFatherPhone] [int] NULL,
	[StEmail] [nvarchar](150) NULL,
	[Stphone] [int] NULL,
	[Coursejoin] [nvarchar](150) NULL,
	[Courselevel] [nvarchar](150) NULL,
	[CourseFees] [int] NULL,
	[Firstinstallment] [int] NULL,
	[FeesDue] [int] NULL,
	[Joindate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Stid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 6/21/2021 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tutor]    Script Date: 6/21/2021 9:13:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tutor](
	[Tid] [int] IDENTITY(1,1) NOT NULL,
	[Tname] [nvarchar](150) NULL,
	[Tpass] [nvarchar](150) NULL,
	[Temail] [nvarchar](150) NULL,
	[Tphone] [int] NULL,
	[Tcourse] [nvarchar](150) NULL,
	[Tqualification] [nvarchar](150) NULL,
	[Joindate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[BakeryEnrollments]  WITH CHECK ADD FOREIGN KEY([Blevel])
REFERENCES [dbo].[Levels] ([lname])
GO
ALTER TABLE [dbo].[BakerySchedule]  WITH CHECK ADD FOREIGN KEY([Elevel])
REFERENCES [dbo].[Levels] ([lname])
GO
ALTER TABLE [dbo].[EasternCuisineSchedule]  WITH CHECK ADD FOREIGN KEY([Elevel])
REFERENCES [dbo].[Levels] ([lname])
GO
ALTER TABLE [dbo].[EasternEnrollments]  WITH CHECK ADD FOREIGN KEY([Elevel])
REFERENCES [dbo].[Levels] ([lname])
GO
USE [master]
GO
ALTER DATABASE [OVCS] SET  READ_WRITE 
GO
