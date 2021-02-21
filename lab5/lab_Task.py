# create db
# psql -d template1
import psycopg2
from faker import Faker
# https://stackabuse.com/working-with-postgresql-in-python/
con = psycopg2.connect(database="Lab5", user="postgres",
                       password="postgres", host="127.0.0.1", port="5432")

print("Database opened successfully")
cur = con.cursor()
cur.execute('''CREATE TABLE LABTest2
      (ProfessorNumber INT PRIMARY KEY     NOT NULL,
      TA           TEXT    NOT NULL,
      Lab            INT     NOT NULL,
      Course        Char(50));''')
print("Table created successfully")
fake = Faker()
for i in range(100000):
    print(i)
    cur.execute("INSERT INTO LABTest2 (ProfessorNumber,TA,LAB,Course) VALUES ('"+ str(i)+"','"+fake.name()+"','"+ str(i)+"','"+fake.name()+"')")
    con.commit()


