CREATE TABLE [dbo].[Audit_Candidate_Details](
	[Candidate_DetailUpdate_Id] [int] IDENTITY(1,1) NOT NULL,
	[FellowshipCandidateId] [int] NULL,
	[UpdateDate] [date] NULL,
	[First_Name] [varchar](50) NULL,
	[Opration] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Candidate_DetailUpdate_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Audit_Candidate_Details]  WITH CHECK ADD FOREIGN KEY([FellowshipCandidateId])
REFERENCES [dbo].[FellowshipCandidate] ([FellowshipCandidateId])
GO
