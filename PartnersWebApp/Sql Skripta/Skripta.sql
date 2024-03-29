USE [partnersDB]
GO
/****** Object:  Table [dbo].[partners]    Script Date: 2/20/2024 2:37:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](255) NOT NULL,
	[LastName] [nchar](255) NOT NULL,
	[Address] [nchar](255) NULL,
	[PartnerNumber] [nchar](20) NOT NULL,
	[CroatianPIN] [nchar](11) NULL,
	[PartnerTypeId] [int] NOT NULL,
	[CreatedAtUtc] [datetime] NOT NULL,
	[CreateByUser] [nchar](255) NOT NULL,
	[IsForeign] [tinyint] NOT NULL,
	[ExternalCode] [nchar](20) NULL,
	[Gender] [char](1) NOT NULL,
 CONSTRAINT [PK_partners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[policies]    Script Date: 2/20/2024 2:37:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[policies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PartnersID] [int] NOT NULL,
	[PolicyNumber] [nchar](15) NOT NULL,
	[Amount] [decimal](18, 2) NULL,
 CONSTRAINT [PK_policies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[partners] ON 

INSERT [dbo].[partners] ([Id], [FirstName], [LastName], [Address], [PartnerNumber], [CroatianPIN], [PartnerTypeId], [CreatedAtUtc], [CreateByUser], [IsForeign], [ExternalCode], [Gender]) VALUES (1, N'Pero                                                                                                                                                                                                                                                           ', N'Peric                                                                                                                                                                                                                                                          ', N'Ilica 12                                                                                                                                                                                                                                                       ', N'12345678912345678912', N'11111111111', 1, CAST(N'2024-02-16T18:35:09.767' AS DateTime), N'pperic@gmail.com                                                                                                                                                                                                                                               ', 1, N'AVCBASDWEQ          ', N'M')
INSERT [dbo].[partners] ([Id], [FirstName], [LastName], [Address], [PartnerNumber], [CroatianPIN], [PartnerTypeId], [CreatedAtUtc], [CreateByUser], [IsForeign], [ExternalCode], [Gender]) VALUES (3, N'Ivo                                                                                                                                                                                                                                                            ', N'Ivic                                                                                                                                                                                                                                                           ', N'Zagrebacka 13                                                                                                                                                                                                                                                  ', N'12345678999995678912', N'11111111112', 1, CAST(N'2024-02-16T18:36:21.470' AS DateTime), N'iivic@gmail.com                                                                                                                                                                                                                                                ', 1, N'AVCBASDWEQaa        ', N'M')
INSERT [dbo].[partners] ([Id], [FirstName], [LastName], [Address], [PartnerNumber], [CroatianPIN], [PartnerTypeId], [CreatedAtUtc], [CreateByUser], [IsForeign], [ExternalCode], [Gender]) VALUES (4, N'Ana                                                                                                                                                                                                                                                            ', N'Anic                                                                                                                                                                                                                                                           ', N'Istarska 3                                                                                                                                                                                                                                                     ', N'99999999999999999999', N'88888888888', 2, CAST(N'2024-02-16T19:17:00.717' AS DateTime), N'aanic@gmail.com                                                                                                                                                                                                                                                ', 1, N'fffffffffffffff     ', N'F')
INSERT [dbo].[partners] ([Id], [FirstName], [LastName], [Address], [PartnerNumber], [CroatianPIN], [PartnerTypeId], [CreatedAtUtc], [CreateByUser], [IsForeign], [ExternalCode], [Gender]) VALUES (5, N'Test                                                                                                                                                                                                                                                           ', N'ManjeOd5000                                                                                                                                                                                                                                                    ', N'Splitska 3                                                                                                                                                                                                                                                     ', N'12344321567887651122', N'22222222222', 1, CAST(N'2024-02-19T19:41:01.713' AS DateTime), N'test1@gmail.com                                                                                                                                                                                                                                                ', 0, N'wwwqqqeeerrr22211151', N'F')
INSERT [dbo].[partners] ([Id], [FirstName], [LastName], [Address], [PartnerNumber], [CroatianPIN], [PartnerTypeId], [CreatedAtUtc], [CreateByUser], [IsForeign], [ExternalCode], [Gender]) VALUES (6, N'Test                                                                                                                                                                                                                                                           ', N'ManjeOd5                                                                                                                                                                                                                                                       ', N'Osjecka 3                                                                                                                                                                                                                                                      ', N'12344777567887651122', N'33222233322', 1, CAST(N'2024-02-19T19:41:41.767' AS DateTime), N'test2@gmail.com                                                                                                                                                                                                                                                ', 0, N'QQQQQQeeerrr22211151', N'M')
INSERT [dbo].[partners] ([Id], [FirstName], [LastName], [Address], [PartnerNumber], [CroatianPIN], [PartnerTypeId], [CreatedAtUtc], [CreateByUser], [IsForeign], [ExternalCode], [Gender]) VALUES (7, N'Partnername                                                                                                                                                                                                                                                    ', N'Partnersurname                                                                                                                                                                                                                                                 ', N'Idunno                                                                                                                                                                                                                                                         ', N'12345890511234589051', NULL, 1, CAST(N'2024-02-20T13:40:11.750' AS DateTime), N'partner@gmail.com                                                                                                                                                                                                                                              ', 1, N'dasdasw123          ', N'M')
INSERT [dbo].[partners] ([Id], [FirstName], [LastName], [Address], [PartnerNumber], [CroatianPIN], [PartnerTypeId], [CreatedAtUtc], [CreateByUser], [IsForeign], [ExternalCode], [Gender]) VALUES (15, N'New                                                                                                                                                                                                                                                            ', N'Partner                                                                                                                                                                                                                                                        ', N'test124                                                                                                                                                                                                                                                        ', N'12345890511234587878', NULL, 1, CAST(N'2024-02-20T14:30:49.090' AS DateTime), N'test@gmail.com                                                                                                                                                                                                                                                 ', 1, N'dasdaswWWWWQ1       ', N'M')
SET IDENTITY_INSERT [dbo].[partners] OFF
GO
SET IDENTITY_INSERT [dbo].[policies] ON 

INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (2, 1, N'12345678123    ', CAST(8000.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (3, 1, N'1234567s123    ', CAST(8000.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (4, 3, N'1234das7s123   ', CAST(1200.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (5, 1, N'21231341412    ', CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (6, 3, N'21adsads341412 ', CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (7, 3, N'asdadsdas      ', CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (8, 3, N'asdadsdas      ', CAST(2300.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (9, 3, N'asdadsdas      ', CAST(2322.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (10, 3, N'asdadsdas      ', CAST(2321.54 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (11, 4, N'dsasdadsasd    ', CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (12, 4, N'adasaasdadsa   ', CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (13, 4, N'adsasdqwwqeg12 ', CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (14, 4, N'dasadsasadsads ', CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (15, 3, N'adsadsdassdas  ', CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (16, 3, N'adsadsasddas   ', CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (17, 4, N'asdasadsasasd  ', CAST(33.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (18, 4, N'1231231412142  ', CAST(44.22 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (19, 4, N'ADSADSASDAS    ', CAST(44.11 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (20, 4, N'adsdasdasads   ', CAST(33.11 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (21, 4, N'adasasasdas    ', CAST(44.11 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (22, 4, N'adsadsadsadsads', CAST(44.11 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (23, 4, N'adsgawgawagaw  ', CAST(441.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (24, 5, N'asfadsasasfa   ', CAST(5000.01 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (25, 6, N'dasdasadsdasad ', CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (26, 6, N'dsaaASDASADSASD', CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (27, 6, N'DASASDASDASDASD', CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (28, 6, N'ADSSAASDADSADS ', CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (29, 6, N'1221321123A    ', CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (30, 6, N'GGASFAAFWQ     ', CAST(400.00 AS Decimal(18, 2)))
INSERT [dbo].[policies] ([Id], [PartnersID], [PolicyNumber], [Amount]) VALUES (31, 6, N'BBBBBBBBBBB    ', CAST(2000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[policies] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_external]    Script Date: 2/20/2024 2:37:18 PM ******/
ALTER TABLE [dbo].[partners] ADD  CONSTRAINT [UQ_external] UNIQUE NONCLUSTERED 
(
	[ExternalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[policies]  WITH CHECK ADD  CONSTRAINT [FK_PartnersID] FOREIGN KEY([PartnersID])
REFERENCES [dbo].[partners] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[policies] CHECK CONSTRAINT [FK_PartnersID]
GO
/****** Object:  StoredProcedure [dbo].[GetAllPartners]    Script Date: 2/20/2024 2:37:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllPartners]
AS
SELECT partners. *, COALESCE(COUNT(policies.PartnersID),0) as NumberOfPolicies,CAST(COALESCE(SUM(policies.Amount),0)AS DECIMAL(18, 2))as TotalAmount
FROM partners
LEFT JOIN 
policies on policies.PartnersID = partners.Id
GROUP BY
partners.Id, partners.FirstName, partners.LastName, partners.Address, partners.PartnerNumber, partners.CroatianPIN,
partners.PartnerTypeId, partners.CreatedAtUtc,partners.CreateByUser,partners.IsForeign,partners.IsForeign,partners.ExternalCode,partners.Gender
ORDER BY
partners.CreatedAtUtc DESC;
GO
/****** Object:  StoredProcedure [dbo].[InsertPartner]    Script Date: 2/20/2024 2:37:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertPartner]
@FirstName nchar(255),
@LastName nchar(255),
@Address nchar(255),
@PartnerNumber nchar(20),
@CroatianPIN nchar(11),
@PartnerTypeId int,
@CreateByUser nchar(255),
@IsForeign tinyint,
@ExternalCode nchar(20),
@Gender char(1),
@isValid BIT OUTPUT
AS
BEGIN
	IF LEN(@FirstName) < 2 OR LEN(@FirstName) > 255
    BEGIN
        SET @isValid = 0;
        RETURN;
    END

	IF LEN(@LastName) < 2 OR LEN(@LastName) > 255
    BEGIN
        SET @isValid = 0;
        RETURN;
    END

    IF LEN(@PartnerNumber) <> 20 OR PATINDEX('%[^0-9]%', @PartnerNumber) > 0
	BEGIN
		SET @isValid = 0;
		RETURN;
	END

    IF (@CroatianPIN IS NOT NULL AND (LEN(@CroatianPIN) <> 11 OR PATINDEX('%[^0-9]%', @CroatianPIN) > 0))
	BEGIN
		SET @isValid = 0;
    RETURN;
	END

    IF @PartnerTypeId NOT IN (1, 2)
    BEGIN
        SET @isValid = 0;
        RETURN;
    END

	IF LEN(@CreateByUser) > 255
    BEGIN
        SET @isValid = 0;
        RETURN;
    END

	IF LEN(@ExternalCode) < 10 OR LEN(@ExternalCode) > 20
    BEGIN
        SET @isValid = 0;
        RETURN;
    END

    IF EXISTS (SELECT 1 FROM Partners WHERE ExternalCode = @ExternalCode)
    BEGIN
        SET @isValid = 0;
        RETURN;
    END

    IF @Gender NOT IN ('F', 'M', 'N')
    BEGIN
        SET @isValid = 0;
        RETURN;
    END

	INSERT INTO partners (FirstName,LastName,Address,PartnerNumber,CroatianPIN,PartnerTypeId,CreatedAtUtc,CreateByUser,IsForeign,ExternalCode,Gender)
	VALUES(@FirstName,@LastName,@Address,@PartnerNumber,@CroatianPIN,@PartnerTypeId,GETDATE(),@CreateByUser,@IsForeign,@ExternalCode,@Gender)
	
	IF @@ROWCOUNT > 0
        SET @isValid = 1;
    ELSE
        SET @isValid = 0;
END
GO
/****** Object:  StoredProcedure [dbo].[InsertPolicy]    Script Date: 2/20/2024 2:37:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertPolicy]
	@partnerId int,
	@policyNumber nchar(15),
	@amount decimal(18,2),
	@isValid BIT OUTPUT

AS
BEGIN
   
    INSERT INTO policies (PartnersID, PolicyNumber, Amount) VALUES (@partnerId, @policyNumber, @amount)
    
    IF @@ROWCOUNT > 0
        SET @isValid = 1;
    ELSE
        SET @isValid = 0;
END
GO
