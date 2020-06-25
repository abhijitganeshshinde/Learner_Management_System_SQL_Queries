CREATE TABLE [dbo].[MakerProgram](
	[MakerProgramID] [int] IDENTITY(1,1) NOT NULL,
	[program_name] [varchar](50) NOT NULL,
	[program_type] [varchar](50) NULL,
	[program_link] [varchar](max) NULL,
	[tech_stack_id] [int] NOT NULL,
	[tech_type_id] [int] NOT NULL,
	[is_program_approved] [bit] NOT NULL,
	[Description] [varchar](max) NULL,
	[status] [varchar](20) NOT NULL,
	[creator_stamp] [varchar](50) NOT NULL,
	[creator_user] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MakerProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[MakerProgram]  WITH CHECK ADD FOREIGN KEY([tech_stack_id])
REFERENCES [dbo].[Tech_Stack] ([Tech_Stack_Id])
GO

ALTER TABLE [dbo].[MakerProgram]  WITH CHECK ADD FOREIGN KEY([tech_type_id])
REFERENCES [dbo].[Tech_Type] ([Tech_Type_Id])
GO

ALTER TABLE [dbo].[MakerProgram]  WITH CHECK ADD  CONSTRAINT [MakerProgram_Status] CHECK  (([status]='Rejected' OR [status]='Accepted' OR [status]='Pending'))
GO

ALTER TABLE [dbo].[MakerProgram] CHECK CONSTRAINT [MakerProgram_Status]
GO