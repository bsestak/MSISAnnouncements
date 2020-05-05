USE [S20_ksbsestak]
GO

/****** Object:  StoredProcedure [dbo].[User_Select]    Script Date: 5/5/2020 12:11:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




create procedure [dbo].[User_Select]
	@UserName varchar(25)

as 
begin

	set nocount on;

	select Id,FirstName, LastName, UserName, Password,Salt
	from MSISUsers
	where UserName = @UserName
		

end

GO


