USE [Authentication]
GO

/****** Object:  Table [dbo].[RefreshToken]    Script Date: 10-01-2024 12:19:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RefreshToken](
	[Id] [int] NOT NULL,
	[Token] [varchar](1000) NULL,
	[Created] [datetime] NULL,
	[Expires] [datetime] NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RefreshToken] ADD  DEFAULT (NEXT VALUE FOR [SharedSequence]) FOR [Id]
GO

ALTER TABLE [dbo].[RefreshToken] ADD  DEFAULT (getdate()) FOR [Created]
GO

ALTER TABLE [dbo].[RefreshToken] ADD  DEFAULT (getdate()) FOR [Expires]
GO

ALTER TABLE [dbo].[RefreshToken]  WITH CHECK ADD  CONSTRAINT [FK_User_RefreshToken] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO

ALTER TABLE [dbo].[RefreshToken] CHECK CONSTRAINT [FK_User_RefreshToken]
GO

