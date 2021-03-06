USE [ONGCEntityFramework]
GO
/****** Object:  Table [dbo].[FormDetails]    Script Date: 09-07-2019 11:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormDetails](
	[FormId] [int] IDENTITY(1,1) NOT NULL,
	[EventN] [varchar](255) NULL,
	[Department] [varchar](255) NULL,
	[Venue] [varchar](255) NULL,
	[EventDate] [varchar](100) NULL,
	[LightRefreshment] [int] NULL,
	[HighTea] [int] NULL,
	[LunchWLv] [int] NULL,
	[LunchWLnv] [int] NULL,
	[LunchSv] [int] NULL,
	[LunchSnv] [int] NULL,
	[LunchVIPv] [int] NULL,
	[LunchVIPnv] [int] NULL,
	[LunchVVIPv] [int] NULL,
	[LunchVVIPnv] [int] NULL,
	[DinnerSv] [int] NULL,
	[DinnerSnv] [int] NULL,
	[DinnerVIPv] [int] NULL,
	[DinnerVIPnv] [int] NULL,
	[DinnerVVIPv] [int] NULL,
	[DinnerVVIPnv] [int] NULL,
	[MinWater] [int] NULL,
	[ByEmpID] [int] NULL,
	[ToEmpID] [int] NULL,
 CONSTRAINT [PK__FormDeta__FB05B7DD4072C62F] PRIMARY KEY CLUSTERED 
(
	[FormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FormDetails] ADD  CONSTRAINT [DF__FormDetai__Light__4BAC3F29]  DEFAULT ((0)) FOR [LightRefreshment]
GO
ALTER TABLE [dbo].[FormDetails] ADD  CONSTRAINT [DF__FormDetai__HighT__4CA06362]  DEFAULT ((0)) FOR [HighTea]
GO
ALTER TABLE [dbo].[FormDetails] ADD  CONSTRAINT [DF__FormDetai__Lunch__4D94879B]  DEFAULT ((0)) FOR [LunchWLv]
GO
ALTER TABLE [dbo].[FormDetails] ADD  CONSTRAINT [DF__FormDetai__Lunch__4E88ABD4]  DEFAULT ((0)) FOR [LunchSv]
GO
ALTER TABLE [dbo].[FormDetails] ADD  CONSTRAINT [DF__FormDetai__Lunch__4F7CD00D]  DEFAULT ((0)) FOR [LunchVIPv]
GO
ALTER TABLE [dbo].[FormDetails] ADD  CONSTRAINT [DF__FormDetai__Lunch__5070F446]  DEFAULT ((0)) FOR [LunchVVIPv]
GO
ALTER TABLE [dbo].[FormDetails] ADD  CONSTRAINT [DF__FormDetai__Dinne__5165187F]  DEFAULT ((0)) FOR [DinnerSv]
GO
ALTER TABLE [dbo].[FormDetails] ADD  CONSTRAINT [DF__FormDetai__Dinne__52593CB8]  DEFAULT ((0)) FOR [DinnerVIPv]
GO
ALTER TABLE [dbo].[FormDetails] ADD  CONSTRAINT [DF__FormDetai__Dinne__534D60F1]  DEFAULT ((0)) FOR [DinnerVVIPv]
GO
ALTER TABLE [dbo].[FormDetails] ADD  CONSTRAINT [DF__FormDetai__MinWa__5441852A]  DEFAULT ((0)) FOR [MinWater]
GO
