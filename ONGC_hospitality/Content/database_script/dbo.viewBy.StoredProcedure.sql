USE [ONGCEntityFramework]
GO
/****** Object:  StoredProcedure [dbo].[viewBy]    Script Date: 09-07-2019 11:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[viewBy]
@ByEmpID int
AS
	BEGIN
		SELECT *
		FROM FormStatus
		WHERE ByEmpID = @ByEmpID
	END
GO
