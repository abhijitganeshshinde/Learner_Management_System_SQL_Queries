CREATE TABLE [dbo].[Candidate_Tech_Stack_Assignment](
	[Candidate_Tech_Stack_Assignment_Id] [int] IDENTITY(1,1) NOT NULL,
	[requirement_id] [int] NOT NULL,
	[candidate_id] [int] NOT NULL,
	[assign_date] [date] NULL,
	[Status] [varchar](20) NOT NULL,
	[creator_stamp] [varchar](50) NOT NULL,
	[creator_user] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Candidate_Tech_Stack_Assignment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Candidate_Tech_Stack_Assignment]  WITH CHECK ADD FOREIGN KEY([candidate_id])
REFERENCES [dbo].[FellowshipCandidate] ([FellowshipCandidateId])
GO

ALTER TABLE [dbo].[Candidate_Tech_Stack_Assignment]  WITH CHECK ADD FOREIGN KEY([requirement_id])
REFERENCES [dbo].[Company_Requirement] ([Company_Requirement_Id])
GO

ALTER TABLE [dbo].[Candidate_Tech_Stack_Assignment]  WITH CHECK ADD  CONSTRAINT [Candidate_Tech_Stack_Assignment_Status] CHECK  (([Status]='Rejected' OR [Status]='Accepted' OR [Status]='Pending'))
GO

ALTER TABLE [dbo].[Candidate_Tech_Stack_Assignment] CHECK CONSTRAINT [Candidate_Tech_Stack_Assignment_Status]
GO