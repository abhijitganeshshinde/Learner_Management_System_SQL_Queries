CREATE TABLE [dbo].[HiredCandidate](
	[HiredCandidateId] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [varchar](50) NOT NULL,
	[Middle_Name] [varchar](50) NULL,
	[Last_Name] [varchar](50) NOT NULL,
	[EmailId] [varchar](50) NOT NULL,
	[Hired_City] [varchar](50) NOT NULL,
	[Degree] [varchar](50) NOT NULL,
	[Hired_Date] [date] NOT NULL,
	[Permanent_Pincode] [int] NOT NULL,
	[Hired_Lab] [int] NOT NULL,
	[Attitude] [varchar](20) NOT NULL,
	[Communication_Remark] [varchar](20) NOT NULL,
	[Knowledge_Remark] [varchar](20) NOT NULL,
	[Aggregate_Remark] [varchar](20) NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[Creator_Stamp] [varchar](50) NOT NULL,
	[Creator_User] [varchar](50) NOT NULL,
	[Mobile_Number] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HiredCandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[HiredCandidate]  WITH CHECK ADD  CONSTRAINT [Check_Status] CHECK  (([Status]='Rejected' OR [Status]='Accepted' OR [Status]='Pending'))
GO

ALTER TABLE [dbo].[HiredCandidate] CHECK CONSTRAINT [Check_Status]
GO