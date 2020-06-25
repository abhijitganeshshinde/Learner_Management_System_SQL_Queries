CREATE TABLE [dbo].[CandidateMap](
	[CandidateMapId] [int] IDENTITY(1,1) NOT NULL,
	[FellowshipCandidateId] [int] NULL,
	[CompanyId] [int] NULL,
	[LeadId] [int] NULL,
 CONSTRAINT [PK_CandidateMap] PRIMARY KEY CLUSTERED 
(
	[CandidateMapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CandidateMap]  WITH CHECK ADD FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO

ALTER TABLE [dbo].[CandidateMap]  WITH CHECK ADD FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO

ALTER TABLE [dbo].[CandidateMap]  WITH CHECK ADD FOREIGN KEY([FellowshipCandidateId])
REFERENCES [dbo].[FellowshipCandidate] ([FellowshipCandidateId])
GO

ALTER TABLE [dbo].[CandidateMap]  WITH CHECK ADD FOREIGN KEY([FellowshipCandidateId])
REFERENCES [dbo].[FellowshipCandidate] ([FellowshipCandidateId])
GO

ALTER TABLE [dbo].[CandidateMap]  WITH CHECK ADD FOREIGN KEY([LeadId])
REFERENCES [dbo].[Mentor] ([MentorId])
GO

ALTER TABLE [dbo].[CandidateMap]  WITH CHECK ADD FOREIGN KEY([LeadId])
REFERENCES [dbo].[Mentor] ([MentorId])
GO