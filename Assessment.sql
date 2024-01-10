USE [Authentication]
GO

/****** Object:  Table [dbo].[Assessment]    Script Date: 10-01-2024 12:17:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Assessment](
	[AssessmentId] [int] NOT NULL,
	[AssessmentName] [varchar](255) NOT NULL,
	[Duration] [datetime] NULL,
	[numOfQuestions] [int] NULL,
	[startdate] [date] NULL,
	[recordcreationdate] [datetime] NULL,
	[recordmodifieddate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AssessmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Assessment] ADD  DEFAULT (NEXT VALUE FOR [SharedSequence]) FOR [AssessmentId]
GO

ALTER TABLE [dbo].[Assessment] ADD  DEFAULT (getdate()) FOR [recordcreationdate]
GO

ALTER TABLE [dbo].[Assessment] ADD  DEFAULT (getdate()) FOR [recordmodifieddate]
GO

