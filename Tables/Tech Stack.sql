CREATE TABLE [dbo].[Tech_Stack](
	[Tech_Stack_Id] [int] IDENTITY(1,1) NOT NULL,
	[tech_name] [varchar](50) NOT NULL,
	[framework] [float] NOT NULL,
	[cur_status] [varchar](20) NOT NULL,
	[creator_stamp] [varchar](50) NOT NULL,
	[creator_user] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Tech_Stack_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Tech_Stack]  WITH CHECK ADD  CONSTRAINT [tech_name] CHECK  (([tech_name]='Phython' OR [tech_name]='PHP' OR [tech_name]='Mobile' OR [tech_name]='Java'))
GO

ALTER TABLE [dbo].[Tech_Stack] CHECK CONSTRAINT [tech_name]
GO

ALTER TABLE [dbo].[Tech_Stack]  WITH CHECK ADD  CONSTRAINT [Tech_Stack_Status] CHECK  (([cur_status]='Rejected' OR [cur_status]='Accepted' OR [cur_status]='Pending'))
GO

ALTER TABLE [dbo].[Tech_Stack] CHECK CONSTRAINT [Tech_Stack_Status]
GO