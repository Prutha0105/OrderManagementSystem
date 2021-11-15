--create table for item rate history trigger

CREATE TABLE [dbo].[Itemratehistory](
	[ItemId] [int] NULL,
	[Rate] [numeric](18, 2) NULL,
	[ModifiedDate] [datetime] NULL,
	[operation] [char](1) NULL
)