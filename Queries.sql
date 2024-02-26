#1
SELECT DISTINCT Subjects.Name
FROM Teachers
JOIN Subjects ON Teachers.Subject = Subjects.Name
WHERE Teachers.Name = 'Mr. Smith';

SELECT DISTINCT Subjects.Name
FROM Teachers
JOIN Subjects ON Teachers.Subject = Subjects.Name
WHERE Teachers.Name = 'Mrs. Davis';


#2
SELECT *
FROM Students
WHERE Class = '9C';

#3
SELECT AVG(Grade)
FROM Grades
WHERE StudentID = '5';

SELECT AVG(Grade)
FROM Grades
WHERE StudentID = '3';

#4
INSERT INTO Students (Name, Class)
VALUES ('Rosica Vasileva', '12A');

#5
UPDATE Grades
SET Grade = 5
WHERE StudentID = 3 AND SubjectID = 6;

