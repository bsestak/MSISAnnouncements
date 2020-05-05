USE [S20_ksbsestak]
GO

/****** Object:  StoredProcedure [dbo].[User_Update]    Script Date: 5/5/2020 12:11:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE Procedure [dbo].[User_Update]
	@Id int,
	@Password varchar(64),
	@Salt varchar(64)

AS
BEGIN
	set NOCount ON;

	Update MSISUsers
	set Password = @Password, Salt = @Salt
	where Id=@Id

End

GO


