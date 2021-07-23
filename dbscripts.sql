create table CompanyDetail (CompanyId int NOT NULL    IDENTITY(1,1)    PRIMARY KEY,CompanyCode nvarchar(50) NOT NULL,CompanyName nvarchar(50) NOT NULL,
CompanyCEO nvarchar(50) NOT NULL,CompanyTurnover decimal(19,2) NOT NULL,Website nvarchar(50) NOT NULL,StockExchangeId int NOT NULL);

create table StockExchange (StockExchangeId int NOT NULL    IDENTITY(1,1)    PRIMARY KEY,StockExchangeName char(3) NOT NULL);
