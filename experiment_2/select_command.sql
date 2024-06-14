-- 查询学生的基本信息
SELECT * FROM S;

-- 查询“CS”系学生的基本信息
SELECT * FROM S WHERE sdept = 'CS';

-- 查询“CS”系学生年龄不在19到21之间的学生的学号、姓名
SELECT Sno, Sname FROM S WHERE sdept = 'CS' AND Sage NOT BETWEEN 19 AND 21;

-- 找出“CS”系年龄最大的学生，显示其学号、姓名
SELECT MAX(S.Sno) AS Sno, MAX(S.Sname) AS Sname
FROM S
WHERE sdept = 'CS';

-- -- 找出各系年龄最大的学生，显示其学号、姓名
SELECT sdept, MAX(Sage) AS MaxAge
FROM S
GROUP BY sdept
ORDER BY MaxAge DESC;
-- 统计“CS”系学生的人数
SELECT COUNT(*) FROM S WHERE sdept = 'CS';

-- -- 统计各系学生的人数，结果按升序排列
SELECT sdept, COUNT(*) FROM S GROUP BY sdept ORDER BY COUNT(*) ASC;

-- -- 按系统计各系学生的平均年龄，结果按降序排列
SELECT sdept, AVG(Sage) FROM S GROUP BY sdept ORDER BY AVG(Sage) DESC;

-- 查询无-- 找出“CS”系年龄最大的学生，显示其学号、姓名
SELECT MAX(S.Sno) AS Sno, MAX(S.Sname) AS Sname
FROM S
WHERE sdept = 'CS';

-- -- 找出各系年龄最大的学生，显示其学号、姓名
SELECT sdept, MAX(Sage) AS MaxAge
FROM S
GROUP BY sdept
ORDER BY MaxAge DESC;
-- 统计“CS”系学生的人数
SELECT COUNT(*) FROM S WHERE sdept = 'CS';

-- 统计各系学生的人数，结果按升序排列
SELECT sdept, COUNT(*) FROM S GROUP BY sdept ORDER BY COUNT(*) ASC;

-- 按系统计各系学生的平均年龄，结果按降序排列
SELECT sdept, AVG(Sage) FROM S GROUP BY sdept ORDER BY AVG(Sage) DESC;

-- 查询无先修课的课程的课程名和学分数
SELECT Cname, ccredit FROM C WHERE Cpno IS NULL;

-- 统计每位学生选修课程的门数、学分及其平均成绩
SELECT Sno, COUNT(*) AS CoursesCount, SUM(ccredit) AS TotalCredits, AVG(grade) AS AverageGrade
FROM SC JOIN C ON SC.Cno = C.Cno
GROUP BY Sno;

-- 统计选修每门课程的学生人数及各门课程的平均成绩
SELECT C.Cname, COUNT(SC.Sno) AS StudentsCount, AVG(SC.grade) AS AverageGrade
FROM SC JOIN C ON SC.Cno = C.Cno
GROUP BY C.Cno;

-- 找出平均成绩在85分以上的学生，结果按系分组，并按平均成绩的升序排列
SELECT S.Sno, S.Sname, AVG(SC.grade) AS AverageGrade
FROM SC
JOIN S ON SC.Sno = S.Sno
GROUP BY S.Sno, S.Sname
HAVING AVG(SC.grade) >= 85
ORDER BY S.sdept, AverageGrade ASC;

-- 查询选修了“1”或“2”号课程的学生学号和姓名
SELECT DISTINCT S.Sno, S.Sname
FROM S JOIN SC ON S.Sno = SC.Sno
WHERE SC.Cno IN ('1', '2');

-- 查询选修了课程名为“数据库系统”且成绩在60分以下的学生的学号、姓名和成绩
SELECT SC.Sno, S.Sname, SC.grade
FROM SC JOIN S ON SC.Sno = S.Sno JOIN C ON SC.Cno = C.Cno
WHERE C.Cname = '数据库系统' AND SC.grade < 60;

-- 查询每位学生选修了课程的学生信息（显示：学号，姓名，课程号，课程名，成绩）
SELECT S.Sno, S.Sname, SC.Cno, C.Cname, SC.grade
FROM S JOIN SC ON S.Sno = SC.Sno
JOIN C ON SC.Cno = C.Cno;

-- 查询没有选修课程的学生的基本信息
SELECT * FROM S WHERE Sno NOT IN (SELECT Sno FROM SC);

-- 查询选修了3门以上课程的学生学号
SELECT Sno FROM SC GROUP BY Sno HAVING COUNT(*) > 3;

-- 查询选修课程成绩至少有一门在80分以上的学生学号
SELECT DISTINCT Sno FROM SC WHERE grade >= 80;

-- 查询选修课程成绩均在80分以上的学生学号
SELECT SC.Sno
FROM SC
GROUP BY SC.Sno
HAVING MIN(SC.grade) >= 80;


