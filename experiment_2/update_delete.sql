-- 将“CS”系全体学生的成绩置零:
UPDATE SC
SET grade = 0
WHERE Sno IN (SELECT Sno FROM S WHERE sdept = 'CS');


-- 删除“CS”系全体学生的选课记录:
DELETE FROM SC
WHERE Sno IN (SELECT Sno FROM S WHERE sdept = 'CS');

-- 删除学号为“S1”的相关信息:
DELETE FROM S WHERE Sno = 'S1';
DELETE FROM SC WHERE Sno = 'S1';

-- 将学号为“S1”的学生的学号修改为“S001”:
UPDATE S SET Sno = 'S001' WHERE Sno = 'S1';
UPDATE SC SET Sno = 'S001' WHERE Sno = 'DELETE FROM SC
WHERE Cno = 2 AND grade < (
    SELECT AVG(grade)
    FROM SC
    WHERE Cno = 2
);S1';

-- 把平均成绩大于80分的男同学的学号和平均成绩存入另一个表S_GRADE:
INSERT INTO S_GRADE (SNO, AVG_GRADE)
SELECT Sno, AVG(grade)
FROM SC
JOIN S ON SC.Sno = S.Sno
WHERE S.Ssex = '男' AND AVG(grade) > 80
GROUP BY Sno;


UPDATE SC
SET grade = grade * 1.1
WHERE Cno IN (SELECT Cno FROM C WHERE Cname = '数据结构');


DELETE SC
FROM SC
JOIN (
    SELECT Sno
    FROM SC
    WHERE Cno = 2
    GROUP BY Sno
    HAVING AVG(grade) < (SELECT AVG(grade) FROM SC WHERE Cno = 2)
) AS temp ON SC.Sno = temp.Sno
WHERE SC.Cno = 2;