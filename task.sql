USE ShopDB;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN WarehouseID INT
)
BEGIN

    SELECT 
	Products.Name AS product_name,
	ProductInventory.WarehouseAmount AS amount
    FROM ProductInventory
    INNER JOIN Products
    ON ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = WarehouseID;

END //
DELIMITER;