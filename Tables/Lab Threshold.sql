CREATE TABLE [dbo].[Lab_Threshold](
	[Lab_Threshold_Id] [int] IDENTITY(1,1) NOT NULL,
	[lab_id] [int] NOT NULL,
	[lab_capacity] [int] NOT NULL,
	[lead_threshold] [int] NOT NULL,
	[ideation_engg_threshold] [int] NOT NULL,
	[buddy_engg_threshold] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[creator_stamp] [varchar](50) NOT NULL,
	[creator_user] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Lab_Threshold_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Lab_Threshold]  WITH CHECK ADD FOREIGN KEY([lab_id])
REFERENCES [dbo].[Lab] ([Lap_Id])
GO

ALTER TABLE [dbo].[Lab_Threshold]  WITH CHECK ADD  CONSTRAINT [Lab_Threshold_Status] CHECK  (([Status]='Rejected' OR [Status]='Accepted' OR [Status]='Pending'))
GO

ALTER TABLE [dbo].[Lab_Threshold] CHECK CONSTRAINT [Lab_Threshold_Status]
GO