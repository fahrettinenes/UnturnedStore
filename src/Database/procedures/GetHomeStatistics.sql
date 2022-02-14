﻿CREATE PROCEDURE dbo.GetHomeStatistics
AS
BEGIN
	SELECT
		(SELECT COUNT(*) FROM dbo.Orders WHERE Status = 'Completed') AS SalesCount,
		(SELECT COUNT(*) FROM dbo.Users) AS UsersCount,
		(SELECT COUNT(*) FROM dbo.Products) AS ProductsCount;

	RETURN 0;
END
