/****** Object:  StoredProcedure [dbo].[AddOrUpdateStripeCustomerId]    Script Date: 10/17/2021 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddOrUpdateStripeCustomerId]
(
	@CustomerId INT = NULL,
	@StripeCustomerId NVARCHAR(255) = NULL
)
AS
BEGIN
	IF @CustomerId IS NOT NULL AND @StripeCustomerId IS NOT NULL
	BEGIN
		UPDATE [dbo].[Customer]
		   SET [StripeCustomerId] = @StripeCustomerId
		 WHERE 
			Id = @CustomerId	
	END   
   END
GO
