USE [Authentication]
GO

/****** Object:  Table [dbo].[User]    Script Date: 10-01-2024 12:19:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[UserId] [int] NOT NULL,
	[Username] [nvarchar](255) NOT NULL,
	[PasswordSalt] [varchar](max) NOT NULL,
	[PasswordHash] [varchar](max) NOT NULL,
	[Role] [varchar](10) NOT NULL,
	[recordcreationdate] [datetime] NULL,
	[recordmodifieddate] [datetime] NULL,
	[RefreshToken] [varchar](1000) NULL,
	[TokenCreated] [datetime] NULL,
	[TokenExpires] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[User] ADD  DEFAULT (NEXT VALUE FOR [SharedSequence]) FOR [UserId]
GO

ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [recordcreationdate]
GO

ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [recordmodifieddate]
GO

