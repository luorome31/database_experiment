DROP TABLE IF EXISTS `S_GRADE`;
CREATE TABLE IF NOT EXISTS `S_GRADE` (
    `SNO` VARCHAR(255),
    `AVG_GRADE` DECIMAL(5, 2)
);

INSERT INTO `S_GRADE` (`SNO`, `AVG_GRADE`)
SELECT SC.Sno, AVG(SC.grade)
FROM SC
JOIN S ON SC.Sno = S.Sno
WHERE S.Ssex = '男'
GROUP BY SC.Sno
HAVING AVG(SC.grade) > 80;