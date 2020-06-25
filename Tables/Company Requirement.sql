CREATE TABLE [dbo].[Company_Requirement](
	[Company_Requirement_Id] [int] IDENTITY(1,1) NOT NULL,
	[company_id] [int] NOT NULL,
	[requested_month] [int] NOT NULL,
	[city] [varchar](20) NOT NULL,
	[is_doc_verifrication] [bit] NOT NULL,
	[requirement_doc_path] [varchar](max) NOT NULL,
	[no_of_engg] [int] NOT NULL,
	[tech_stack_id] [int] NOT NULL,
	[tech_type_id] [int] NOT NULL,
	[maker_program_id] [int] NOT NULL,
	[lead_id] [int] NOT NULL,
	[ideation_engg_id] [int] NOT NULL,
	[buddy_engg_id] [int] NOT NULL,
	[special_remark] [varchar](20) NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[creator_stamp] [varchar](50) NOT NULL,
	[creator_user] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Company_Requirement_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Company_Requirement]  WITH CHECK ADD FOREIGN KEY([buddy_engg_id])
REFERENCES [dbo].[Mentor] ([MentorId])
GO

ALTER TABLE [dbo].[Company_Requirement]  WITH CHECK ADD FOREIGN KEY([company_id])
REFERENCES [dbo].[Company] ([CompanyId])
GO

ALTER TABLE [dbo].[Company_Requirement]  WITH CHECK ADD FOREIGN KEY([ideation_engg_id])
REFERENCES [dbo].[Mentor] ([MentorId])
GO

ALTER TABLE [dbo].[Company_Requirement]  WITH CHECK ADD FOREIGN KEY([lead_id])
REFERENCES [dbo].[Mentor] ([MentorId])
GO

ALTER TABLE [dbo].[Company_Requirement]  WITH CHECK ADD FOREIGN KEY([maker_program_id])
REFERENCES [dbo].[MakerProgram] ([MakerProgramID])
GO

ALTER TABLE [dbo].[Company_Requirement]  WITH CHECK ADD FOREIGN KEY([tech_stack_id])
REFERENCES [dbo].[Tech_Stack] ([Tech_Stack_Id])
GO

ALTER TABLE [dbo].[Company_Requirement]  WITH CHECK ADD FOREIGN KEY([tech_type_id])
REFERENCES [dbo].[Tech_Type] ([Tech_Type_Id])
GO

ALTER TABLE [dbo].[Company_Requirement]  WITH CHECK ADD  CONSTRAINT [Company_Requirement_Status] CHECK  (([Status]='Rejected' OR [Status]='Accepted' OR [Status]='Pending'))
GO

ALTER TABLE [dbo].[Company_Requirement] CHECK CONSTRAINT [Company_Requirement_Status]
GO