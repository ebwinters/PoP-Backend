/****** Object:  StoredProcedure [dbo].[GetHighestBid]    Script Date: 10/17/2021 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetHighestBid]
(
	@AuctionId INT = NULL
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    SELECT
    Sub2.Id AS Id,
    Sub1.AuctionId,
    Sub2.Amount,
    Sub2.Email,
    Sub2.Timestamp
    FROM
    (
        SELECT Main.AuctionId, MAX(Main.Amount) as MaxBid
        FROM
        (
        SELECT * FROM dbo.AuctionBid WITH (NOLOCK)
	    WHERE AuctionId = @AuctionId
        ) Main
            GROUP BY Main.AuctionId
    ) Sub1
    INNER JOIN 
    dbo.AuctionBid AS Sub2 ON Sub1.MaxBid = Sub2.Amount AND Sub1.AuctionId = Sub2.AuctionId
END
GO
