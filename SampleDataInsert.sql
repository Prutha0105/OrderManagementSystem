
INSERT [dbo].[BrandMaster] ([BrandId], [BrandName]) VALUES (1, N'Apple')
GO
INSERT [dbo].[BrandMaster] ([BrandId], [BrandName]) VALUES (2, N'MI')
GO
INSERT [dbo].[BrandMaster] ([BrandId], [BrandName]) VALUES (3, N'Samsung')
GO
INSERT [dbo].[BrandMaster] ([BrandId], [BrandName]) VALUES (4, N'HP')
GO
INSERT [dbo].[BrandMaster] ([BrandId], [BrandName]) VALUES (5, N'Dell')
GO
INSERT [dbo].[BrandMaster] ([BrandId], [BrandName]) VALUES (6, N'Lenovo')
GO

INSERT [dbo].[CategoryMaster] ([CategoryId], [CategoryName]) VALUES (1, N'Mobile')
GO
INSERT [dbo].[CategoryMaster] ([CategoryId], [CategoryName]) VALUES (2, N'Laptop')
GO
INSERT [dbo].[CategoryMaster] ([CategoryId], [CategoryName]) VALUES (3, N'Tablet')
GO

INSERT [dbo].[CustomerMaster] ([CustomerId], [CustomerName]) VALUES (3, N'Prutha Desai')
GO
INSERT [dbo].[CustomerMaster] ([CustomerId], [CustomerName]) VALUES (4, N'Hardik Sheth')
GO
INSERT [dbo].[CustomerMaster] ([CustomerId], [CustomerName]) VALUES (5, N'Steve Jobs')
GO
INSERT [dbo].[CustomerMaster] ([CustomerId], [CustomerName]) VALUES (6, N'Ratan Tata')
GO
INSERT [dbo].[CustomerMaster] ([CustomerId], [CustomerName]) VALUES (7, N'Mukesh Ambani')
GO
INSERT [dbo].[CustomerMaster] ([CustomerId], [CustomerName]) VALUES (8, N'Sundar Pichai')
GO

INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (1, N'iPhone 12', 1, 1, CAST(100000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (2, N'iPhone 12 Mini', 1, 1, CAST(85000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (3, N'iPhone 12 Pro', 1, 1, CAST(112000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (4, N'iPhone 12 Pro Max', 1, 1, CAST(150000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (7, N'HP Laptop i5 Gen', 4, 2, CAST(50000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (8, N'HP Laptop i3 Gen', 4, 2, CAST(35000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (10, N'Dell Laprop i5 Gen', 5, 2, CAST(55000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (11, N'Dell Laptop i3 Gen', 5, 2, CAST(40000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (12, N'Lenovo Laptop i3 Gen', 6, 2, CAST(60000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (13, N'Lenovo Laptop i5 Gen', 6, 2, CAST(75000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (14, N'Samsung A30', 3, 1, CAST(18000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (15, N'Samsung M30', 3, 1, CAST(22000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (16, N'Samsung M20', 3, 1, CAST(15000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (17, N'Samsung M21', 3, 1, CAST(17000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (18, N'Samsung A31', 3, 1, CAST(24000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (19, N'Mi Note 1', 2, 1, CAST(10000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (20, N'Mi Note 2', 2, 1, CAST(15000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (21, N'Mi Note 3', 2, 1, CAST(20000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (22, N'Mi Note 4', 2, 1, CAST(25000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (23, N'Mi Note 5', 2, 1, CAST(30000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[ItemMaster] ([ItemId], [ItemName], [BrandId], [CategoryId], [Rate]) VALUES (24, N'Mi Note 6', 2, 1, CAST(35000.00 AS Numeric(18, 2)))
GO

INSERT [dbo].[OrderMaster] ([OrderId], [OrderDate], [SalesPersonId], [CustomerId], [TotalAmount], [TotalQty]) VALUES (2, CAST(N'2021-08-14T15:06:44.263' AS DateTime), 3, 3, CAST(50000.00 AS Numeric(18, 2)), CAST(12.000 AS Numeric(18, 3)))
GO
INSERT [dbo].[OrderMaster] ([OrderId], [OrderDate], [SalesPersonId], [CustomerId], [TotalAmount], [TotalQty]) VALUES (3, CAST(N'2021-08-14T15:07:05.597' AS DateTime), 4, 3, CAST(5000000.00 AS Numeric(18, 2)), CAST(15.000 AS Numeric(18, 3)))
GO
INSERT [dbo].[OrderMaster] ([OrderId], [OrderDate], [SalesPersonId], [CustomerId], [TotalAmount], [TotalQty]) VALUES (4, CAST(N'2021-08-14T15:07:43.043' AS DateTime), 3, 4, CAST(15000.00 AS Numeric(18, 2)), CAST(10.000 AS Numeric(18, 3)))
GO

INSERT [dbo].[SalesPersonMaster] ([SalesPersonId], [SalesPersonName]) VALUES (3, N'Sales Person 1')
GO
INSERT [dbo].[SalesPersonMaster] ([SalesPersonId], [SalesPersonName]) VALUES (4, N'Sales Person 2')
GO
INSERT [dbo].[SalesPersonMaster] ([SalesPersonId], [SalesPersonName]) VALUES (5, N'Sales Person 3')
GO