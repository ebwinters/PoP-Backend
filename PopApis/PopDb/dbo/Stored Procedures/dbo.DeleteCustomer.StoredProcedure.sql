/****** Object:  StoredProcedure [dbo].[DeleteCustomer]    Script Date: 10/17/2021 6:19:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[DeleteCustomer]
(
	@CustomerId INT = NULL
)
AS
BEGIN
   
   DELETE FROM [dbo].[Customer]
	WHERE 
	Id = @CustomerId	
  
END
GO
