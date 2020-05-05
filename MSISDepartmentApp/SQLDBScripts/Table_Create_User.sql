USE [S20_ksbsestak]
GO

/****** Object:  Table [dbo].[MSISUsers]    Script Date: 5/5/2020 12:11:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MSISUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](25) NOT NULL,
	[Password] [nvarchar](64) NOT NULL,
	[Salt] [nvarchar](64) NOT NULL
) ON [PRIMARY]
GO


