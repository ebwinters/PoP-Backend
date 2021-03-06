/****** Object:  Table [dbo].[AuctionBid]    Script Date: 10/17/2021 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuctionBid](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuctionId] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_AuctionBid] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AuctionBid] ADD  CONSTRAINT [DF_AuctionBid1_Timestamp]  DEFAULT (getutcdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[AuctionBid]  WITH CHECK ADD  CONSTRAINT [FK__AuctionBid__Auction] FOREIGN KEY([AuctionId])
REFERENCES [dbo].[Auction] ([Id])
GO
ALTER TABLE [dbo].[AuctionBid] CHECK CONSTRAINT [FK__AuctionBid__Auction]
GO
