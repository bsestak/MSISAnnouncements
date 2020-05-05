USE [S20_ksbsestak]
GO

/****** Object:  StoredProcedure [dbo].[Events_Select]    Script Date: 5/5/2020 12:12:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[Events_Select]
	@SearchType varchar(10), @Value varchar(20)

as 
begin

	set nocount on;

	select id,
		type,
		Description,
		Date,
		Color
	from MSISEvents e
	where
		(case when (
					@SearchType = 'All'
					) then 1
			  when (
					@SearchType = 'Date'
					and e.Date > = CONVERT(datetime,@Value)
					) then 1

		
		end) = 1

end

GO


