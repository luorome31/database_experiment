import mysql.connector

cnx = mysql.connector.connect(user='root', password='123456',
                              host='127.0.0.1', database='student_220131')

cursor = cnx.cursor()

s_query = "INSERT INTO S (Sno, Sname, Ssex, Sage, sdept) VALUES (%s, %s, %s, %s, %s)"
c_query = "INSERT INTO C (Cno, Cname, Cpno, Ccredit) VALUES (%s, %s, %s, %s)"
sc_query = "INSERT INTO SC (Sno, Cno, Grade) VALUES (%s, %s, %s)"
students = [
    ('8209220141', '张三', '男', 21, 'CS'),
    ('8209220142', '李四', '女', 22, 'EE'),
    ('8209220143', '王五', '男', 20, 'ME'),
    ('8209220144', '赵六', '女', 23, 'CS'),
    ('8209220145', '孙七', '男', 21, 'EE'),
    ('8209220146', '周八', '女', 22, 'ME'),
    ('8209220147', '吴九', '男', 20, 'CS'),
    ('8209220148', '郑十', '女', 23, 'EE')
]

courses = [
    (2,'编译原理',None,4),
    (3,'操作系统',None,4),
    (4,'计算机网络',3,4),
]

scs = [
    ('8209220141',2,90),
    ('8209220141',3,85),
    ('8209220141',4,88),
    ('8209220142',2,92),
    ('8209220142',3,87),
    ('8209220142',4,90),
]



cursor.executemany(s_query, students)
cursor.executemany(c_query, courses)
cursor.executemany(sc_query, scs)
cnx.commit()

cursor.close()
cnx.close()