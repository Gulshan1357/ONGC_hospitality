USE [ONGCEntityFramework]
GO
/****** Object:  StoredProcedure [dbo].[updateStatus]    Script Date: 09-07-2019 11:22:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[updateStatus]
@FormId int,
@Status varchar(50)
AS
BEGIN
	UPDATE FormStatus
	SET
		Status = @Status
	WHERE FormId = @FormId
END
GO
