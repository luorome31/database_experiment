DELIMITER $$

CREATE TRIGGER AfterUpdateOnS
AFTER UPDATE ON S
FOR EACH ROW
BEGIN
    INSERT INTO operation_log (operation_type, target_table, record_id)
    VALUES ('UPDATE', 'S', OLD.Sno);
END$$

DELIMITER ;