/****** Object:  StoredProcedure [dbo].[DeleteAuctionBid]    Script Date: 10/17/2021 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[DeleteAuctionBid]
(
    @AuctionBidId INT = NULL
)
AS
BEGIN
    DELETE FROM [dbo].[AuctionBid]
	WHERE 
	Id = @AuctionBidId	
END
GO
