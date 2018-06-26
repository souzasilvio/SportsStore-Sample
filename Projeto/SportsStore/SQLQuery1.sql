CREATE TABLE [dbo].[Product] (
    [ProductID]   INT             IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (50)    NOT NULL,
    [Description] VARCHAR (100)   NULL,
    [Price]       DECIMAL (18, 2) NULL,
    [CategoryId]    INT             NULL,
    PRIMARY KEY CLUSTERED ([ProductID] ASC),
    CONSTRAINT [FK_Product_Category] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([CategoryId])
);




CREATE TABLE [dbo].[Order] (
    [OrderID]  INT          IDENTITY (1, 1) NOT NULL,
    [Name]     VARCHAR (50) NOT NULL,
    [Line1]    VARCHAR (50) NULL,
    [Line2]    VARCHAR (50) NULL,
    [Line3]    VARCHAR (50) NULL,
    [City]     VARCHAR (50) NULL,
    [State]    VARCHAR (50) NULL,
    [Country]  VARCHAR (50) NULL,
    [Zip]      VARCHAR (50) NULL,
    [GiftWrap] BIT          NULL,
    PRIMARY KEY CLUSTERED ([OrderID] ASC)
);

--drop table CartLine
CREATE TABLE [dbo].[CartLine] (
    [CartLineID] INT IDENTITY (1, 1) NOT NULL,
    [Quantity]   INT NOT NULL,
    [ProductId]  INT NOT NULL,
	[OrderId]  INT NOT NULL,	
    PRIMARY KEY CLUSTERED ([CartLineID] ASC),
    CONSTRAINT [FK_CartLine_ToTable] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductID]),
	CONSTRAINT [FK_CartLine_Orders_OrderID] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([OrderID])
	
);


alter table [order] add Shipped BIT default 0
CREATE TABLE [dbo].[Category]
(
	[CategoryId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] VARCHAR(50) NOT NULL
)

alter table [Product] add Category Int 
alter table [Product] add CONSTRAINT [FK_Product_Category] FOREIGN KEY ([Category]) REFERENCES [dbo].[Category] ([CategoryId])