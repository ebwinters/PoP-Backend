/****** Object:  Table [dbo].[Auction]    Script Date: 10/17/2021 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuctionTypeId] [int] NULL,
	[Title] [nvarchar](500) NOT NULL,
	[Description] [text] NULL,
	[Restrictions] [text] NULL,
	[IsActive] [bit] NULL,
	[Amount] [decimal](18, 2) NULL,
	[Created] [datetime] NOT NULL,
	[ImageUrl] [nvarchar](2048) NULL,
 CONSTRAINT [PK_Auction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Auction_created]  DEFAULT (getutcdate()) FOR [Created]
GO
ALTER TABLE [dbo].[Auction]  WITH CHECK ADD  CONSTRAINT [FK__Auction__AuctionType] FOREIGN KEY([AuctionTypeId])
REFERENCES [dbo].[AuctionType] ([Id])
GO
ALTER TABLE [dbo].[Auction] CHECK CONSTRAINT [FK__Auction__AuctionType]
GO
