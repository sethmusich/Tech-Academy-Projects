import sqlite3
with sqlite3.connect('drill.db') as connection:
    c = connection.cursor()
    c.executescript("""
    DROP TABLE IF EXISTS Roster;
    CREATE TABLE Roster(Name TEXT, Species TEXT, IQ INT);
    INSERT INTO Roster VALUES('Jean-Baptiste Zorg', 'Human', '122'),('Korben Dallas', 'Popsicle','100'),('Aknot','Mangalore','-5') ;
    """)

with sqlite3.connect('drill.db') as connection:
    c = connection.cursor()
    c.execute("UPDATE Roster SET Species='Human' WHERE Name='Korben Dallas' AND IQ='100'");

    
with sqlite3.connect('drill.db') as connection:
    c = connection.cursor()
    c.execute("SELECT Name, IQ FROM Roster WHERE Species='Human'")
    for row in c.fetchall():
        print (row)
    
