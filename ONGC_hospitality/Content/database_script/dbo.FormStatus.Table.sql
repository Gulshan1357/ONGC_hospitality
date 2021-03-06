USE [ONGCEntityFramework]
GO
/****** Object:  Table [dbo].[FormStatus]    Script Date: 09-07-2019 11:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormStatus](
	[SerialNo] [int] IDENTITY(1,1) NOT NULL,
	[FormId] [int] NOT NULL,
	[ByEmpID] [int] NULL,
	[ToEmpID] [int] NULL,
	[Status] [varchar](50) NOT NULL,
	[EventDate] [varchar](100) NULL,
 CONSTRAINT [PK__FormStat__5E5A535F82DE9240] PRIMARY KEY CLUSTERED 
(
	[SerialNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
