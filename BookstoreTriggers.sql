--triggers
/*
### Task 3: Implementing Triggers
1. **Trigger for Inventory Management**:
- Develop a trigger that automatically calls the `UpdateInventory` procedure whenever a new sale is
recorded in the `Sales` table. */

CREATE TRIGGER AfterInsertSale AFTER INSERT ON Sales FOR EACH ROW BEGIN
    EXEC UpdateInventory @BookID = NEWBookID, @Quantity = NEWQuantity;
END;

/*
2. **Trigger to Check Inventory Levels**:
- Create a trigger that alerts if the inventory of any book drops below a certain threshold (e.g., 5
copies).
*/
CREATE TRIGGER InventoryCheck AFTER INSERT ON Sales FOR EACH ROW BEGIN
DECLARE remain_quantity INT,
    --  check if below the threshold
    IF remain_quantity < 5 THEN
        -- alerts
        INSERT INTO InventoryAlerts (BookID, Quantity, Alert) VALUES (BookID, remain_quantity);
END;
