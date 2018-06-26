CREATE TABLE [dbo].[Order]
(
	OrderID INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(50) NOT NULL, 
	Line1 VARCHAR(50) NULL, 
	Line2 VARCHAR(50) NULL, 
	Line3 VARCHAR(50) NULL, 
	City VARCHAR(50) NULL, 
	[State] VARCHAR(50) NULL, 
	[Country] VARCHAR(50) NULL, 
	[Zip] VARCHAR(50) NULL, 
	GiftWrap bit NULL
)

drop table CartLine
CREATE TABLE [dbo].[CartLine] (
    [CartLineID] INT IDENTITY (1, 1) NOT NULL,
    [Quantity]   INT NOT NULL,
    [ProductId]    INT NOT NULL,
    PRIMARY KEY CLUSTERED ([CartLineID] ASC), 
    CONSTRAINT [FK_CartLine_ToTable] FOREIGN KEY (ProductId) REFERENCES [Product]([ProductId]) 
);

