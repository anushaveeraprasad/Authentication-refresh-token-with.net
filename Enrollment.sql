USE [Authentication]
GO

/****** Object:  Table [dbo].[Enrollment]    Script Date: 10-01-2024 12:18:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Enrollment](
	[EnrollmentId] [int] NOT NULL,
	[UserId] [int] NULL,
	[CourseId] [int] NULL,
	[AssessmentId] [int] NULL,
	[recordcreationdate] [datetime] NULL,
	[recordmodifieddate] [datetime] NULL,
	[enrolledtime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_Enroll_UAC] UNIQUE NONCLUSTERED 
(
	[UserId] ASC,
	[CourseId] ASC,
	[AssessmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Enrollment] ADD  DEFAULT (NEXT VALUE FOR [SharedSequence]) FOR [EnrollmentId]
GO

ALTER TABLE [dbo].[Enrollment] ADD  DEFAULT (getdate()) FOR [recordcreationdate]
GO

ALTER TABLE [dbo].[Enrollment] ADD  DEFAULT (getdate()) FOR [recordmodifieddate]
GO

ALTER TABLE [dbo].[Enrollment] ADD  CONSTRAINT [default_time]  DEFAULT (getdate()) FOR [enrolledtime]
GO

ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Assessment] FOREIGN KEY([AssessmentId])
REFERENCES [dbo].[Assessment] ([AssessmentId])
GO

ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enroll_Assessment]
GO

ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO

ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enroll_Course]
GO

ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO

ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enroll_User]
GO

