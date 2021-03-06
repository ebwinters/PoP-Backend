/****** Object:  StoredProcedure [dbo].[AddOrUpdatePayment]    Script Date: 10/17/2021 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[AddOrUpdatePayment]
(
	@PaymentId INT = NULL,
	@AuctionId INT = NULL,
	@CustomerId INT = NULL,
	@Complete BIT = NULL,
    @StripeInvoiceItemId NVARCHAR(500) = NULL,
	@StripeInvoiceId NVARCHAR(500) = NULL,
	@Created DATETIME = NULL,
    @Amount DECIMAL(18,2) = NULL,
    @Description TEXT = NULL
)
AS
BEGIN
   
   IF @PaymentId IS NULL
   BEGIN
	   INSERT INTO [dbo].[Payment]
			   ([AuctionId]
			   ,[CustomerId]
			   ,[Complete]
			   ,[StripeInvoiceItemId]
			   ,[StripeInvoiceId]
			   ,[Created]
               ,[Amount]
               ,[Description])
		 VALUES
			   (@AuctionId
			   ,@CustomerId
			   ,@Complete
			   ,@StripeInvoiceItemId
			   ,@StripeInvoiceId
			   ,COALESCE(@Created, GETUTCDATE())
               ,@Amount
               ,@Description)
	END
	ELSE
	BEGIN
		UPDATE [dbo].[Payment]
		   SET [AuctionId] = @AuctionId
			  ,[CustomerId] = @CustomerId
			  ,[Complete] = @Complete
			  ,[StripeInvoiceItemId] = @StripeInvoiceItemId
			  ,[StripeInvoiceId] = @StripeInvoiceId
			  ,[Created] = @Created
              ,[Amount] = @Amount
              ,[Description] = @Description
		 WHERE 
			Id = @PaymentId	
	END   
   END
GO
