/****** Object:  StoredProcedure [dbo].[DeleteAuction]    Script Date: 10/17/2021 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[DeleteAuction]
(
	@AuctionId INT = NULL
)
AS
BEGIN
   
   DELETE FROM [dbo].[Auction]
	WHERE 
	Id = @AuctionId	
  
END
GO
