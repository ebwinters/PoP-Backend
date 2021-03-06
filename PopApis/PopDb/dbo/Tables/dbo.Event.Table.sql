/****** Object:  Table [dbo].[Event]    Script Date: 10/17/2021 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [text] NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Goal] [decimal](18, 2) NULL,
	[Type] [nvarchar](255) NULL,
	[BaseAmount] [decimal](18, 2) NULL,
	[Venue] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Event] ADD  CONSTRAINT [DF_Event_Timestamp]  DEFAULT (getutcdate()) FOR [Created]
GO
