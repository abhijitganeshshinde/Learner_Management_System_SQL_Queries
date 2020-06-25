CREATE TABLE [dbo].[Mentor_Ideation_Map](
	[Mentor_Ideation_Map_Id] [int] IDENTITY(1,1) NOT NULL,
	[mentor_id] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[creator_stamp] [varchar](50) NOT NULL,
	[creator_user] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mentor_Ideation_Map_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Mentor_Ideation_Map]  WITH CHECK ADD FOREIGN KEY([mentor_id])
REFERENCES [dbo].[Mentor] ([MentorId])
GO

ALTER TABLE [dbo].[Mentor_Ideation_Map]  WITH CHECK ADD  CONSTRAINT [Mentor_Ideation_Map_Status] CHECK  (([Status]='Rejected' OR [Status]='Accepted' OR [Status]='Pending'))
GO

ALTER TABLE [dbo].[Mentor_Ideation_Map] CHECK CONSTRAINT [Mentor_Ideation_Map_Status]
GO