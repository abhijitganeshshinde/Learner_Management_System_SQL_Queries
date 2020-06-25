CREATE TABLE [dbo].[Lab](
	[Lap_Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[location] [varchar](50) NOT NULL,
	[address] [varchar](max) NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[creator_stamp] [varchar](50) NOT NULL,
	[creator_user] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Lap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Lab]  WITH CHECK ADD  CONSTRAINT [Lab_Location] CHECK  (([location]='Bengalore' OR [location]='Pune' OR [location]='Mumbai'))
GO

ALTER TABLE [dbo].[Lab] CHECK CONSTRAINT [Lab_Location]
GO

ALTER TABLE [dbo].[Lab]  WITH CHECK ADD  CONSTRAINT [Lab_Status] CHECK  (([Status]='Rejected' OR [Status]='Accepted' OR [Status]='Pending'))
GO

ALTER TABLE [dbo].[Lab] CHECK CONSTRAINT [Lab_Status]
GO