CREATE TABLE [dbo].[Candidate_Bank_Details](
	[Candidate_Bank_Details_ID] [int] IDENTITY(1,1) NOT NULL,
	[FellowshipCandidateId] [int] NULL,
	[Name] [varchar](100) NOT NULL,
	[Account_Number] [bigint] NOT NULL,
	[Is_Account_Num_Verified] [bit] NOT NULL,
	[Ifsc_code] [varchar](20) NOT NULL,
	[is_ifsc_code_verified] [tinyint] NOT NULL,
	[pan_number] [varchar](100) NOT NULL,
	[is_pan_number_verified] [bit] NOT NULL,
	[addhaar_num] [bigint] NOT NULL,
	[is_addhaar_num_verified] [bit] NOT NULL,
	[creator_stamp] [varchar](50) NOT NULL,
	[creator_user] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Candidate_Bank_Details_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Candidate_Bank_Details]  WITH CHECK ADD FOREIGN KEY([FellowshipCandidateId])
REFERENCES [dbo].[FellowshipCandidate] ([FellowshipCandidateId])