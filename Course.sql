USE [Authentication]
GO

/****** Object:  Table [dbo].[Course]    Script Date: 10-01-2024 12:18:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Course](
	[CourseId] [int] NOT NULL,
	[CourseName] [varchar](255) NOT NULL,
	[mode] [varchar](3) NULL,
	[recordcreationdate] [datetime] NULL,
	[recordmodifieddate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Course] ADD  DEFAULT (NEXT VALUE FOR [SharedSequence]) FOR [CourseId]
GO

ALTER TABLE [dbo].[Course] ADD  DEFAULT (getdate()) FOR [recordcreationdate]
GO

ALTER TABLE [dbo].[Course] ADD  DEFAULT (getdate()) FOR [recordmodifieddate]
GO

