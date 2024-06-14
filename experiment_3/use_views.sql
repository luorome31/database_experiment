-- 5．查询平均成绩为90分以上的学生学号、姓名和成绩；
-- 6．通过视图V_SSCH，新增加一个学生记录 ('S12','YAN XI',19, 'SSCH')，并查询结果；
-- 7．通过视图V_SSCH，删除学号为“S12”学生信息，并查询结果；
-- 8．将视图V_SSCH中学号为“S12”的学生改名“中南人”。 
-- 将各位学生选修课程的门数及平均成绩定义为视图V_AVG_S_G并查询结果:
SELECT *
FROM V_AVG_S_G;
-- 查询平均成绩为90分以上的学生学号、姓名和成绩:
SELECT Sno,
    Sname,
    grade
FROM V_S_C_G
WHERE grade >= 90;
-- 通过视图V_SSCH，新增加一个学生记录 ('S12','YAN XI',19, 'SSCH')，并查询结果:
INSERT INTO S (Sno, Sname, Ssex, Sage, sdept)
SELECT *
FROM (
        SELECT 'S12',
            'YAN XI',
            '男',
            19,
            'SSCH'
    ) AS tmp
WHERE NOT EXISTS (
        SELECT *
        FROM V_SSCH
        WHERE Sno = 'S12'
    );
-- 查询结果
SELECT *
FROM V_SSCH;


-- 尝试更新学生记录
UPDATE S
SET Sname = '中南人'
WHERE Sno = 'S12' AND sdept = 'SSCH';

-- 查询结果
SELECT * FROM V_SSCH;