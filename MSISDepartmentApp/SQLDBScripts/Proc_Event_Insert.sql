USE [S20_ksbsestak]
GO

/****** Object:  StoredProcedure [dbo].[NewEvent_Insert]    Script Date: 5/5/2020 12:12:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE Procedure [dbo].[NewEvent_Insert] 
	@Type varchar(100),
	@Description varchar(1000),
	@Date DateTime,
	@Color varchar(10)

AS
BEGIN
	set NOCount ON;

	Insert into MSISEvents(Type,Description,Date,Color)
	values(@Type,@Description,@Date,@Color)

End

GO


