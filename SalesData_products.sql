SELECT p.[ProductKey]
      ,[EnglishProductName] AS [Product Name]
      ,pc.EnglishProductCategoryName [Product Category]
      ,ps.EnglishProductSubcategoryName AS [Subcegory]
      ,[ProductAlternateKey] AS [Product Item No.]
      ,[Color] AS [Product Color]
	  ,[Size] AS [Product Size]
      ,[ProductLine] AS [Product Line]
      ,[ModelName] AS [Product Model Name] 
      ,[EnglishDescription] AS [Product Description]
      ,ISNULL (Status, 'Outdated') AS [Product Status]
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] p
  LEFT JOIN DimProductSubcategory ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey 
  LEFT JOIN DimProductCategory pc ON pc.ProductCategoryKey = ps.ProductCategoryKey
  Order By p.ProductKey asc