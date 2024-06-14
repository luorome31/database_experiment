DELIMITER $$

CREATE TRIGGER RestrictDeleteWithDbo
BEFORE DELETE ON S
FOR EACH ROW
BEGIN
    -- 获取当前试图删除数据的用户的数据库用户名称
    DECLARE currentUser VARCHAR(255);
    SET currentUser = CURRENT_USER();
    -- 检查是否是 root 用户，如果不是，则拒绝删除操作
    IF currentUser != 'dbo' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Delete operation is not allowed for non-dbo users.';
    END IF;
END $$

DELIMITER ;