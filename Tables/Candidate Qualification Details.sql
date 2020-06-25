CREATE TABLE [dbo].[Candidate_Qualification](
	[Candidate_Qualification_ID] [int] IDENTITY(1,1) NOT NULL,
	[FellowshipCandidateId] [int] NULL,
	[diploma] [varchar](30) NULL,
	[degree_name] [varchar](30) NOT NULL,
	[is_degree_name_verified] [bit] NOT NULL,
	[employee_decipline] [bit] NOT NULL,
	[is_employee_decipline_verified] [bit] NOT NULL,
	[passing_year] [int] NOT NULL,
	[is_passing_year_verified] [bit] NOT NULL,
	[aggr_per] [float] NULL,
	[final_year_per] [float] NULL,
	[is_final_year_per_verified] [bit] NOT NULL,
	[training_institute] [varchar](50) NULL,
	[is_training_institute_verified] [bit] NULL,
	[training_duration_month] [int] NULL,
	[is_training_duration_month_verified] [bit] NULL,
	[other_training] [varchar](50) NULL,
	[is_other_training_verified] [bit] NULL,
	[creator_stamp] [varchar](50) NOT NULL,
	[creator_user] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Candidate_Qualification_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Candidate_Qualification]  WITH CHECK ADD FOREIGN KEY([FellowshipCandidateId])
REFERENCES [dbo].[FellowshipCandidate] ([FellowshipCandidateId])
GO