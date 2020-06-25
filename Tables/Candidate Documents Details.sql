CREATE TABLE [dbo].[Candidate_Documents](
	[Candidate_Documents_Id] [int] IDENTITY(1,1) NOT NULL,
	[FellowshipCandidateId] [int] NULL,
	[doc_type] [varchar](10) NULL,
	[doc_path] [varchar](max) NULL,
	[Status] [varchar](20) NOT NULL,
	[creator_stamp] [varchar](50) NOT NULL,
	[creator_user] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Candidate_Documents_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Candidate_Documents]  WITH CHECK ADD FOREIGN KEY([FellowshipCandidateId])
REFERENCES [dbo].[FellowshipCandidate] ([FellowshipCandidateId])
GO

ALTER TABLE [dbo].[Candidate_Documents]  WITH CHECK ADD  CONSTRAINT [Candidate_Documents_Status] CHECK  (([Status]='Rejected' OR [Status]='Accepted' OR [Status]='Pending'))
GO

ALTER TABLE [dbo].[Candidate_Documents] CHECK CONSTRAINT [Candidate_Documents_Status]
GO