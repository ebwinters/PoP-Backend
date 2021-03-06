/****** Object:  StoredProcedure [dbo].[GetAuctions]    Script Date: 10/17/2021 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAuctions]
(
	@AuctionTypeId INT = NULL,
    @StartDate DATETIME = NULL,
    @EndDate DATETIME = NULL,
	@IsActive BIT = 1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    SELECT * FROM dbo.Auction WITH (NOLOCK)
	WHERE 
		(@StartDate IS NULL OR Created > @StartDate) 
		AND (@EndDate IS NULL OR Created < @EndDate) 
		AND (@AuctionTypeId IS NULL OR AuctionTypeId = @AuctionTypeId)
		AND (@IsActive IS NULL OR IsActive = @IsActive)
END
GO
