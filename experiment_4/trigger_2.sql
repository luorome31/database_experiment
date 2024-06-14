DELIMITER $$

CREATE TRIGGER AfterDeleteOnS
AFTER DELETE ON S
FOR EACH ROW
BEGIN
    INSERT INTO operation_log (operation_type, target_table, record_id)
    VALUES ('DELETE', 'S', OLD.Sno);
END$$

DELIMITER ;