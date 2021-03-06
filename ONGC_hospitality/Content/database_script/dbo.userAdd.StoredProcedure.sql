USE [ONGCEntityFramework]
GO
/****** Object:  StoredProcedure [dbo].[userAdd]    Script Date: 09-07-2019 11:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[userAdd]
@EventN varchar(225),
@Department varchar(225),
@Venue varchar(225),
@EventDate varchar(100),
@LightRefreshment int,
@HighTea int,
@LunchWLv int,
@LunchWLnv int,
@LunchSv int,
@LunchSnv int,
@LunchVIPv int,
@LunchVIPnv int,
@LunchVVIPv int,
@LunchVVIPnv int,
@DinnerSv int,
@DinnerSnv int,
@DinnerVIPv int,
@DinnerVIPnv int,
@DinnerVVIPv int,
@DinnerVVIPnv int,
@MinWater int,
@ByEmpID int,
@ToEmpID int
AS
	INSERT INTO FormDetails (EventN,Department,Venue,EventDate,LightRefreshment,HighTea,LunchWLv,LunchWLnv,LunchSv,LunchSnv,LunchVIPv,LunchVIPnv,LunchVVIPv,LunchVVIPnv,DinnerSv,DinnerSnv,DinnerVIPv,DinnerVIPnv,DinnerVVIPv,DinnerVVIPnv,MinWater,ByEmpID,ToEmpID)
	VALUES (@EventN,@Department,@Venue,@EventDate,@LightRefreshment,@HighTea,@LunchWLv,@LunchWLnv,@LunchSv,@LunchSnv,@LunchVIPv,@LunchVIPnv,@LunchVVIPv,@LunchVVIPnv,@DinnerSv,@DinnerSnv,@DinnerVIPv,@DinnerVIPnv,@DinnerVVIPv,@DinnerVVIPnv,@MinWater,@ByEmpID,@ToEmpID)
GO
