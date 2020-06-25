CREATE TABLE [dbo].[FellowshipCandidate](
	[FellowshipCandidateId] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [varchar](50) NOT NULL,
	[Middle_Name] [varchar](50) NULL,
	[Last_Name] [varchar](50) NOT NULL,
	[EmailId] [varchar](50) NOT NULL,
	[Hired_City] [varchar](50) NOT NULL,
	[Degree] [varchar](50) NOT NULL,
	[Hired_Date] [date] NOT NULL,
	[Mobile_Number] [bigint] NULL,
	[Permanent_Pincode] [int] NOT NULL,
	[Hired_Lab] [int] NOT NULL,
	[Attitude] [varchar](20) NOT NULL,
	[Communication_Remark] [varchar](20) NOT NULL,
	[Knowledge_Remark] [varchar](20) NOT NULL,
	[Aggregate_Remark] [varchar](20) NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[Creator_Stamp] [varchar](50) NOT NULL,
	[Creator_User] [varchar](50) NOT NULL,
	[Birth_Date] [date] NULL,
	[Is_Birth_Date_Verified] [bit] NOT NULL,
	[Parent_Name] [varchar](50) NULL,
	[Parent_Occupation] [varchar](50) NULL,
	[Parents_Mobile_Number] [bigint] NULL,
	[Parents_Annual_Salary] [float] NULL,
	[Local_Address] [varchar](100) NULL,
	[Permanent_Address] [varchar](100) NULL,
	[Joinig] [date] NULL,
	[Candidate_Status] [varchar](20) NOT NULL,
	[Personal_Information] [varchar](20) NOT NULL,
	[Bank_Information] [varchar](20) NOT NULL,
	[Educational_Information] [varchar](20) NOT NULL,
	[Document_Status] [varchar](20) NOT NULL,
	[Remark] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[FellowshipCandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FellowshipCandidate]  WITH CHECK ADD  CONSTRAINT [FellowshipCheck_Status] CHECK  (([Status]='Rejected' OR [Status]='Accepted' OR [Status]='Pending'))
GO

ALTER TABLE [dbo].[FellowshipCandidate] CHECK CONSTRAINT [FellowshipCheck_Status]
GO