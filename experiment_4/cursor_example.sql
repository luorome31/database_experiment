DELIMITER $$

CREATE PROCEDURE FindGradesBelowAverage()
BEGIN
    DECLARE avgGrade DECIMAL(5, 2);
    DECLARE curSno VARCHAR(255);
    DECLARE curGrade INT;

    -- 计算平均成绩
    SELECT AVG(grade) INTO avgGrade FROM SC;

    -- 输出平均成绩到客户端（或MySQL的错误日志）
    SELECT '平均分', avgGrade;

    -- 选择低于平均分的成绩
    SELECT Sno, grade
    FROM SC
    WHERE grade < avgGrade
    ORDER BY grade ASC;
END$$

DELIMITER ;