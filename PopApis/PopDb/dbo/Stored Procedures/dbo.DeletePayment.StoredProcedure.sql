/****** Object:  StoredProcedure [dbo].[DeletePayment]    Script Date: 10/17/2021 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[DeletePayment]
(
    -- Add the parameters for the stored procedure here
	@PaymentId INT = NULL
)
AS
BEGIN
   DELETE FROM [dbo].[Payment]
	WHERE 
	Id = @PaymentId	
END
GO
