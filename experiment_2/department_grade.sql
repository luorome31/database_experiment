
DROP table IF EXISTS 'Department_Averages';
CREATE TABLE IF NOT EXISTS Department_Averages (
    Department VARCHAR(255),
    Average_Grade DECIMAL(5, 2)
);

INSERT INTO Department_Averages (Department, Average_Grade)
SELECT S.sdept AS Department, AVG(SC.grade) AS Average_Grade
FROM SC
JOIN S ON SC.Sno = S.Sno
GROUP BY S.sdept;