CREATE TABLE [dbo].[Tech_Type](
	[Tech_Type_Id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [varchar](20) NOT NULL,
	[cur_status] [varchar](20) NOT NULL,
	[creator_stamp] [varchar](50) NOT NULL,
	[creator_user] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Tech_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Tech_Type]  WITH CHECK ADD  CONSTRAINT [Tech_Type_Status] CHECK  (([cur_status]='Rejected' OR [cur_status]='Accepted' OR [cur_status]='Pending'))
GO

ALTER TABLE [dbo].[Tech_Type] CHECK CONSTRAINT [Tech_Type_Status]
GO

ALTER TABLE [dbo].[Tech_Type]  WITH CHECK ADD  CONSTRAINT [Type_Name] CHECK  (([type_name]='Frontend' OR [type_name]='Backend' OR [type_name]='Full Stack'))
GO

ALTER TABLE [dbo].[Tech_Type] CHECK CONSTRAINT [Type_Name]
GO