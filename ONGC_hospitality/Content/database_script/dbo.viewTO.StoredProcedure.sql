USE [ONGCEntityFramework]
GO
/****** Object:  StoredProcedure [dbo].[viewTO]    Script Date: 09-07-2019 11:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[viewTO]
@ToEmpID int
AS
	BEGIN
		SELECT *
		FROM FormStatus
		WHERE ToEmpID = @ToEmpID
	END
GO
