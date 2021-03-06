/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auction]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuctionTypeId] [int] NULL,
	[Title] [nvarchar](500) NOT NULL,
	[Description] [text] NULL,
	[Restrictions] [text] NULL,
	[IsActive] [bit] NULL,
	[Amount] [decimal](18, 2) NULL,
	[Created] [datetime] NOT NULL,
	[ImageUrl] [nvarchar](2048) NULL,
 CONSTRAINT [PK_Auction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT INTO [dbo].[Auction]
			   ([AuctionTypeId]
			   ,[Title]
			   ,[Description]
			   ,[Restrictions]
			   ,[IsActive]
			   ,[Amount]
			   ,[Created]
			   ,[ImageUrl])
		 VALUES
			   (5
			   ,'Donation'
			   ,''
			   ,''
			   ,1
			   ,0
			   ,GETUTCDATE()
			   ,'')
/****** Object:  Table [dbo].[AuctionBid]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuctionBid](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuctionId] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_AuctionBid] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuctionType]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuctionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](255) NULL,
 CONSTRAINT [PK_AuctionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[StripeCustomerId] [nvarchar](255) NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Description] [text] NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Goal] [decimal](18, 2) NULL,
	[Type] [nvarchar](255) NULL,
	[BaseAmount] [decimal](18, 2) NULL,
	[Venue] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GetAuctionsResult]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GetAuctionsResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuctionTypeId] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Restrictions] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Created] [datetime2](7) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_GetAuctionsResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuctionId] [int] NULL,
	[CustomerId] [int] NULL,
	[Complete] [bit] NULL,
	[StripeInvoiceItemId] [nvarchar](500) NULL,
	[StripeInvoiceId] [nvarchar](500) NULL,
	[Created] [datetime] NOT NULL,
	[Amount] [decimal](18, 2) NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED 
(
	[principal_id] ASC,
	[name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Auction] ADD  CONSTRAINT [DF_Auction_created]  DEFAULT (getutcdate()) FOR [Created]
GO
ALTER TABLE [dbo].[AuctionBid] ADD  CONSTRAINT [DF_AuctionBid1_Timestamp]  DEFAULT (getutcdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Timestamp]  DEFAULT (getutcdate()) FOR [Created]
GO
ALTER TABLE [dbo].[Event] ADD  CONSTRAINT [DF_Event_Timestamp]  DEFAULT (getutcdate()) FOR [Created]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF_Payment_Timestamp]  DEFAULT (getutcdate()) FOR [Created]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Auction]  WITH CHECK ADD  CONSTRAINT [FK__Auction__AuctionType] FOREIGN KEY([AuctionTypeId])
REFERENCES [dbo].[AuctionType] ([Id])
GO
ALTER TABLE [dbo].[Auction] CHECK CONSTRAINT [FK__Auction__AuctionType]
GO
ALTER TABLE [dbo].[AuctionBid]  WITH CHECK ADD  CONSTRAINT [FK__AuctionBid__Auction] FOREIGN KEY([AuctionId])
REFERENCES [dbo].[Auction] ([Id])
GO
ALTER TABLE [dbo].[AuctionBid] CHECK CONSTRAINT [FK__AuctionBid__Auction]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Customer]
GO
/****** Object:  StoredProcedure [dbo].[AddOrUpdateAuction]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[AddOrUpdateAuction]
(
	@AuctionId INT = NULL,
	@AuctionTypeId INT,
    @Title NVARCHAR(500),
	@Description TEXT = NULL,
	@Restrictions TEXT = NULL,
	@IsActive BIT = NULL,
	@Amount DECIMAL(18,2) = NULL,
	@Created DATETIME = NULL,
	@ImageUrl NVARCHAR(2048) = NULL
)
AS
BEGIN
   
   IF @AuctionId IS NULL
   BEGIN
	   INSERT INTO [dbo].[Auction]
			   ([AuctionTypeId]
			   ,[Title]
			   ,[Description]
			   ,[Restrictions]
			   ,[IsActive]
			   ,[Amount]
			   ,[Created]
			   ,[ImageUrl])
		 VALUES
			   (@AuctionTypeId
			   ,@Title
			   ,@Description
			   ,@Restrictions
			   ,COALESCE(@IsActive, 1)
			   ,@Amount
			   ,COALESCE(@Created, GETUTCDATE())
			   ,@ImageUrl)
	END
	ELSE
	BEGIN
		UPDATE [dbo].[Auction]
		   SET [AuctionTypeId] = @AuctionTypeId
			  ,[Title] = @Title
			  ,[Description] = @Description
			  ,[Restrictions] = @Restrictions
			  ,[IsActive] = @IsActive
			  ,[Amount] = @Amount
			  ,[Created] = @Created
			  ,[ImageUrl] = @ImageUrl
		 WHERE 
			Id = @AuctionId	
	END   
   END
GO
/****** Object:  StoredProcedure [dbo].[AddOrUpdateAuctionBid]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddOrUpdateAuctionBid]
(
    @Id INT=NULL,
	@AuctionId INT,
    @Amount DECIMAL(18,2),
	@Email NVARCHAR(100),
	@Timestamp DATETIME = NULL
)
AS
BEGIN
   IF @Id IS NULL OR @Id = -1
   BEGIN
		INSERT INTO [dbo].[AuctionBid]
				   ([AuctionId]
				   ,[Amount]
				   ,[Email]
				   ,[Timestamp])
			 VALUES
				   (@AuctionId
				   ,@Amount
				   ,@Email
				   ,GETUTCDATE())
	END 
   IF NOT EXISTS (
		SELECT TOP 1 1 
		FROM dbo.AuctionBid WITH (NOLOCK) 
		WHERE AuctionId = @AuctionId AND Email = @Email
	)
   BEGIN
		INSERT INTO [dbo].[AuctionBid]
				   ([AuctionId]
				   ,[Amount]
				   ,[Email]
				   ,[Timestamp])
			 VALUES
				   (@AuctionId
				   ,@Amount
				   ,@Email
				   ,COALESCE(@Timestamp, GETUTCDATE()))
	END
	ELSE
	BEGIN
	 -- Update the bid amount for an existing email for an auction
		UPDATE [dbo].[AuctionBid]
		 SET [Amount] = @Amount
		,[Timestamp] = COALESCE(@Timestamp, GETUTCDATE())
		WHERE 
			AuctionId = @AuctionId	AND Email = @Email
	END 
	BEGIN
	 -- Update the bid amount for for an auction
		UPDATE [dbo].[Auction]
		 SET [Amount] = @Amount
		,[Created] = COALESCE(@Timestamp, GETUTCDATE())
		WHERE 
			Id = @AuctionId
	END 
   END

GO
/****** Object:  StoredProcedure [dbo].[AddOrUpdateCustomer]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddOrUpdateCustomer]
(
	@CustomerId INT = NULL,
    @Email NVARCHAR(50),
	@StripeCustomerId NVARCHAR(255) = NULL,
	@Created DATETIME = NULL
)
AS
BEGIN
   IF EXISTS(Select TOP 1 Id FROM [dbo].[Customer]
        Where Id = @CustomerId
        OR Email = @Email)
    BEGIN
        UPDATE [dbo].[Customer]
		   SET [Email] = @Email
			  ,[StripeCustomerId] = @StripeCustomerId
			  ,[Created] = GETUTCDATE()
		 WHERE 
			Email = @Email
    END
    ELSE
    BEGIN
        INSERT INTO [dbo].[Customer]
                ([Email]
                ,[StripeCustomerId]
                ,[Created])
            VALUES
                (@Email
                ,@StripeCustomerId
                ,COALESCE(@Created, GETUTCDATE()))
    END
    BEGIN
        SELECT TOP 1 Id FROM [dbo].[Customer]
        WHERE Email = @Email
    END   
END
GO
/****** Object:  StoredProcedure [dbo].[AddOrUpdateEvent]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[AddOrUpdateEvent]
(
	@EventId INT = NULL,
    @Name NVARCHAR(500),
	@Description TEXT = NULL,
	@StartDate DATETIME = NULL,
	@EndDate DATETIME = NULL,
	@Goal DECIMAL(18,2) = NULL,
	@Type NVARCHAR(255) = NULL,
	@BaseAmount DECIMAL(18,2) = NULL,
	@Venue NVARCHAR(255) = NULL,
	@IsActive BIT = NULL,
	@Created DATETIME = NULL
)
AS
BEGIN
   
   IF @EventId IS NULL
   BEGIN
	   INSERT INTO [dbo].[Event]
			   ([Name]
			   ,[Description]
			   ,[StartDate]
			   ,[EndDate]
			   ,[Goal]
			   ,[Type]
			   ,[BaseAmount]
			   ,[Venue]
			   ,[IsActive]
			   ,[Created])
		 VALUES
			   (@Name
			   ,@Description
			   ,@StartDate
			   ,@EndDate
			   ,@Goal
			   ,@Type
			   ,@BaseAmount
			   ,@Venue
			   ,COALESCE(@IsActive, 1)
			   ,COALESCE(@Created, GETUTCDATE()))
	END
	ELSE
	BEGIN
		UPDATE [dbo].[Event]
		   SET [Name] = @Name
			  ,[Description] = @Description
			  ,[StartDate] = @StartDate
			  ,[EndDate] = @EndDate
			  ,[Goal] = @Goal
			  ,[Type] = @Type
			  ,[BaseAmount] = @BaseAmount
			  ,[Venue] = @Venue
			  ,[IsActive] = @IsActive
			  ,[Created] = @Created
		 WHERE 
			Id = @EventId	
	END   
   END
GO
/****** Object:  StoredProcedure [dbo].[AddOrUpdatePayment]    Script Date: 10/18/2021 12:26:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[AddOrUpdateStripeCustomerId]    Script Date: 10/18/2021 12:26:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteAuction]    Script Date: 10/18/2021 12:26:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteAuctionBid]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[DeleteAuctionBid]
(
    @AuctionBidId INT = NULL
)
AS
BEGIN
    DELETE FROM [dbo].[AuctionBid]
	WHERE 
	Id = @AuctionBidId	
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCustomer]    Script Date: 10/18/2021 12:26:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DeleteEvent]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[DeleteEvent]
(
	@EventId INT = NULL
)
AS
BEGIN
   
   DELETE FROM [dbo].[Event]
	WHERE 
	Id = @EventId	
  
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePayment]    Script Date: 10/18/2021 12:26:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DropAll]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DropAll]
(
	@EventId INT = NULL
)
AS
BEGIN
   
    DELETE FROM [dbo].[Event];
    DELETE FROM [dbo].[Payment];
    DELETE FROM [dbo].[Customer];
    DELETE FROM [dbo].[Auction];
    DELETE FROM [dbo].[AuctionBid];
    DELETE FROM [dbo].[AuctionType];
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllAuctionIDs]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[GetAllAuctionIDs]
(
    -- Add the parameters for the stored procedure here
    @StartDate DATETIME = NULL,
    @EndDate DATETIME = NULL,
	@IsActive BIT = 1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
    SELECT Id FROM dbo.Auction WITH (NOLOCK)
	WHERE 
		(@StartDate IS NULL OR Created > @StartDate) 
		AND (@EndDate IS NULL OR Created < @EndDate) 
		AND (@IsActive IS NULL OR IsActive = @IsActive)
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllDonationAmounts]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[GetAllDonationAmounts]
(
    -- Add the parameters for the stored procedure here
    @StartDate DATETIME = NULL,
    @EndDate DATETIME = NULL
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
    SELECT ISNULL(SUM(Payment.Amount), 0) AS Amount 
	FROM dbo.Auction INNER JOIN dbo.Payment WITH (NOLOCK)
	ON Payment.AuctionId = Auction.Id
	WHERE AuctionTypeId = 5 OR AuctionTypeId = 1 OR AuctionId = -1
END
GO
/****** Object:  StoredProcedure [dbo].[GetAuctionBids]    Script Date: 10/18/2021 12:26:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAuctions]    Script Date: 10/18/2021 12:26:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetAuctionTypes]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAuctionTypes]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    SELECT * FROM dbo.AuctionType WITH (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[GetBids]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetBids]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    SELECT * FROM dbo.AuctionBid WITH (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[GetCustomers]    Script Date: 10/18/2021 12:26:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetEvents]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEvents]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    SELECT * FROM dbo.Event WITH (NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[GetFinalData]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetFinalData]
(
    @StartDate DATETIME = NULL,
    @EndDate DATETIME = NULL
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    SELECT * FROM dbo.FinalData WITH (NOLOCK)
	WHERE 
		(@StartDate IS NULL OR Created > @StartDate) 
		AND (@EndDate IS NULL OR Created > @EndDate) 
END
GO
/****** Object:  StoredProcedure [dbo].[GetHighestBid]    Script Date: 10/18/2021 12:26:55 PM ******/
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
/****** Object:  StoredProcedure [dbo].[GetHighestBidForAllAuctionsOfType]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetHighestBidForAllAuctionsOfType]
(
    @AuctionTypeId INT = NULL
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    SELECT
    Sub2.Id AS Id,
    Sub1.AuctionId,
    Sub1.MaxBid AS Amount,
    Sub2.Email,
    Sub2.Timestamp
    FROM
    (
        SELECT Main.AuctionId, MAX(Main.Amount) AS MaxBid
        FROM
        (
        SELECT A.Id AS AuctionId, AB.Email, AB.Amount FROM dbo.Auction AS A WITH (NOLOCK)
            INNER JOIN dbo.AuctionBid AS AB WITH (NOLOCK) ON A.Id = AB.AuctionId
            WHERE A.AuctionTypeId = @AuctionTypeId
        ) Main
        GROUP BY Main.AuctionId
    ) Sub1
    INNER JOIN 
    dbo.AuctionBid AS Sub2 ON Sub1.MaxBid = Sub2.Amount AND Sub1.AuctionId = Sub2.AuctionId
END
GO
/****** Object:  StoredProcedure [dbo].[GetPayments]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetPayments]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    SELECT
        Sub1.Id,
        Sub1.AuctionId,
        Sub1.CustomerId,
        Sub1.Complete,
        Sub1.StripeInvoiceItemId,
        Sub1.StripeInvoiceId,
        Sub1.Created,
        Sub1.Amount,
        Sub1.Description,
        Sub2.StripeCustomerId
    FROM 
    (dbo.Payment AS Sub1
    INNER JOIN
    dbo.Customer AS Sub2 ON Sub1.CustomerId = Sub2.Id)
END
GO
/****** Object:  StoredProcedure [dbo].[ProcessFinalData]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ProcessFinalData]
(
@StartDate DATETIME = NULL,
@EndDate DATETIME = NULL
)
AS
BEGIN
-- Get payments data
INSERT INTO [dbo].[FinalData]
([Email]
,[Amount]
,[Complete]
,[StripeCustomerId]
,[StripeInvoiceItemId]
,[StripeInvoiceId]
,[Created])
SELECT ab.Email, ab.Amount, p.Complete, p.CustomerId, p.StripeInvoiceId, p.StripeInvoiceItemId, p.Created
from dbo.AuctionBid ab 
left join dbo.Auction a ON a.Id = ab.AuctionId
left join dbo.Customer c ON c.Email = ab.Email
left join dbo.Payment p on p.AuctionId = a.Id
where a.AuctionTypeId = 2
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_alterdiagram]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_creatediagram]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_dropdiagram]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagramdefinition]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagrams]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_renamediagram]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_upgraddiagrams]    Script Date: 10/18/2021 12:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
	
GO
EXEC sys.sp_addextendedproperty @name=N'microsoft_database_tools_support', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sysdiagrams'
GO
