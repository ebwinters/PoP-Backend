/****** Object:  StoredProcedure [dbo].[GetAuctionBids]    Script Date: 10/17/2021 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[GetAuctionBids]
(
    @StartDate DATETIME = NULL,
    @EndDate DATETIME = NULL
)
AS
BEGIN
    SELECT * FROM dbo.AuctionBid WITH (NOLOCK)
	WHERE 
		(@StartDate IS NULL OR Timestamp > @StartDate) 
		AND (@EndDate IS NULL OR Timestamp > @EndDate) 
END
GO
