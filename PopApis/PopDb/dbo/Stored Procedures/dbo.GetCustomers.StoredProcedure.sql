/****** Object:  StoredProcedure [dbo].[GetCustomers]    Script Date: 10/17/2021 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetCustomers]
(
    @StartDate DATETIME = NULL,
    @EndDate DATETIME = NULL
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    SELECT * FROM dbo.Customer WITH (NOLOCK)
	WHERE 
		(@StartDate IS NULL OR Created > @StartDate) 
		AND (@EndDate IS NULL OR Created > @EndDate) 
END
GO
