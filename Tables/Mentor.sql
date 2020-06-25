CREATE TABLE [dbo].[Mentor](
	[MentorId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[mentor_type] [varchar](50) NOT NULL,
	[lab_id] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[creator_stamp] [varchar](50) NOT NULL,
	[creator_user] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MentorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Mentor]  WITH CHECK ADD FOREIGN KEY([lab_id])
REFERENCES [dbo].[Lab] ([Lap_Id])
GO

ALTER TABLE [dbo].[Mentor]  WITH CHECK ADD  CONSTRAINT [Mentor_Status] CHECK  (([Status]='Rejected' OR [Status]='Accepted' OR [Status]='Pending'))
GO

ALTER TABLE [dbo].[Mentor] CHECK CONSTRAINT [Mentor_Status]
GO
