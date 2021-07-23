create table CompanyDetail (CompanyId int NOT NULL    IDENTITY(1,1)    PRIMARY KEY,CompanyCode nvarchar(50) NOT NULL,CompanyName nvarchar(50) NOT NULL,
CompanyCEO nvarchar(50) NOT NULL,CompanyTurnover decimal(19,2) NOT NULL,Website nvarchar(50) NOT NULL,StockExchangeId int NOT NULL);

create table StockExchange (StockExchangeId int NOT NULL    IDENTITY(1,1)    PRIMARY KEY,StockExchangeName char(3) NOT NULL);



USE [EStockMarket]
GO

/****** Object:  Table [dbo].[CompanyDetails]    Script Date: 23-07-2021 11:23:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CompanyDetails](
	[CompanyId] [int] NOT NULL IDENTITY(1,1),
	[CompanyCode] [varchar](50) NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[CompanyCEO] [varchar](25) NOT NULL,
	[Turnover] [decimal](19, 4) NOT NULL,
	[Website] [varchar](100) NOT NULL,
	[StockExchange] [int] NULL,
 CONSTRAINT [PK_CompanyId] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC,
	[CompanyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CompanyDetails]  WITH CHECK ADD  CONSTRAINT [Fk_StockExchange_ExchangeID] FOREIGN KEY([StockExchange])
REFERENCES [dbo].[StockExchange] ([ExchangeID])
GO

ALTER TABLE [dbo].[CompanyDetails] CHECK CONSTRAINT [Fk_StockExchange_ExchangeID]
GO


USE [EStockMarket]
GO

/****** Object:  Table [dbo].[StockExchange]    Script Date: 23-07-2021 11:23:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StockExchange](
	[ExchangeID] [int] NOT NULL IDENTITY(1,1),
	[ExchangeName] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ExchangeId] PRIMARY KEY CLUSTERED 
(
	[ExchangeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


