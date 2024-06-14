-- 1．定义“SSCH”院学生基本情况视图V_SSCH；
-- 2．将S，C，SC表中学生的学号，姓名，课程号，课程名，成绩定义为视图V_S_C_G;
-- 3．将各院学生人数，平均年龄定义为视图V_NUM_AVG;
-- 4．将各位学生选修课程的门数及平均成绩定义为视图V_AVG_S_G并查询结果;

CREATE VIEW V_SSCH AS
SELECT Sno, Sname, Ssex, Sage, sdept
FROM S
WHERE sdept = 'SSCH';

CREATE VIEW V_S_C_G AS
SELECT S.Sno, S.Sname, SC.Cno, C.Cname, SC.grade
FROM SC
JOIN S ON SC.Sno = S.Sno
JOIN C ON SC.Cno = C.Cno;

CREATE VIEW V_NUM_AVG AS
SELECT S.sdept AS Department, COUNT(*) AS Num_Students, AVG(S.Sage) AS Average_Age
FROM S
GROUP BY S.sdept;

CREATE VIEW V_AVG_S_G AS
SELECT SC.Sno, COUNT(*) AS Num_Courses, AVG(SC.grade) AS Average_Grade
FROM SC
GROUP BY SC.Sno;

