USE [S20_ksbsestak]
GO

/****** Object:  StoredProcedure [dbo].[NewUser_Insert]    Script Date: 5/5/2020 12:12:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE Procedure [dbo].[NewUser_Insert] 
	@FirstName varchar(50),
	@LastName varchar(50),
	@UserName varchar(25),
	@Password varchar(64),
	@Salt varchar(64)

AS
BEGIN
	set NOCount ON;

if @UserName not in (Select UserName from MSISUsers)

begin

	Insert into MSISUsers(FirstName,LastName,UserName,Password,Salt)
	values(@FirstName,@LastName,@UserName,@Password,@Salt)
	select 'true' as result
end
else
begin
	select 'false' as result
end

End

GO


