CREATE TABLE [dbo].[Mentor_Tech_Stack](
	[Mentor_Tech_Stack_Id] [int] IDENTITY(1,1) NOT NULL,
	[mentor_id] [int] NOT NULL,
	[tech_stack_id] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[creator_stamp] [varchar](50) NOT NULL,
	[creator_user] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mentor_Tech_Stack_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Mentor_Tech_Stack]  WITH CHECK ADD FOREIGN KEY([mentor_id])
REFERENCES [dbo].[Mentor] ([MentorId])
GO

ALTER TABLE [dbo].[Mentor_Tech_Stack]  WITH CHECK ADD  CONSTRAINT [Mentor_Tech_Stack_Status] CHECK  (([Status]='Rejected' OR [Status]='Accepted' OR [Status]='Pending'))
GO

ALTER TABLE [dbo].[Mentor_Tech_Stack] CHECK CONSTRAINT [Mentor_Tech_Stack_Status]
GO