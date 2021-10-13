CREATE PROCEDURE [dbo].[GetHighestBid]
(
	@AuctionId INT = NULL
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    SELECT * FROM dbo.AuctionBid WITH (NOLOCK)
	WHERE
		(@AuctionId IS NULL OR AuctionId = @AuctionId)
    ORDER BY Amount DESC
END
GO