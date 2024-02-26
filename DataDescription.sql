CREATE TABLE Teachers (
TeacherID INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR (255) NOT NULL,
Subject VARCHAR (255) NOT NULL
);

INSERT INTO Teachers (Name,Subject)
VALUES 
	('Mr. Smith', 'Math'),
    ('Mrs. Johnson', 'English'),
    ('Ms. Lee', 'Science'),
    ('Mr. Brown', 'History'),
    ('Mrs. Davis', 'Art'),
    ('Mr. Wilson', 'Physical Education'),
    ('Ms. Garcia', 'Spanish'),
    ('Mr. Taylor', 'Music'),
    ('Mrs. Clark', 'Biology'),
    ('Mr. Martinez', 'Chemistry');
    
CREATE TABLE Subjects (
SubjectID INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR (255) NOT NULL
); 

INSERT INTO Subjects (Name)
VALUES 
('Math'),
    ('English'),
    ('Science'),
    ('History'),
    ('Art'),
    ('Physical Education'),
    ('Spanish'),
    ('Music'),
    ('Biology'),
    ('Chemistry');
   
   
 CREATE TABLE Students (
 StudentID INT AUTO_INCREMENT PRIMARY KEY,
 Name VARCHAR (255) NOT NULL,
 Class VARCHAR (10) NOT NULL
 );
 
 INSERT INTO Students (Name, Class)
VALUES 
    ('John Smith', '10A'),
    ('Emily Johnson', '11B'),
    ('Michael Brown', '9C'),
    ('Emma Davis', '12A'),
    ('William Wilson', '10B'),
    ('Olivia Garcia', '11A'),
    ('James Taylor', '9D'),
    ('Sophia Clark', '10C'),
    ('Benjamin Martinez', '11C'),
    ('Abigail Anderson', '9A'),
    ('Alexander Hernandez', '12B'),
    ('Mia Thompson', '10D'),
    ('Ethan Robinson', '11D'),
    ('Charlotte Hall', '9B'),
    ('Daniel Lopez', '12C'),
    ('Ava White', '10E'),
    ('Logan Harris', '11E'),
    ('Harper King', '9F'),
    ('Jacob Lee', '12D'),
    ('Ella Adams', '10F');

CREATE TABLE Grades (
    GradeID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    SubjectID INT NOT NULL,
    Grade DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);

INSERT INTO Grades (StudentID, SubjectID, Grade)
VALUES 
    (1, 1, 4.5),
    (1, 2, 5.0),
    (1, 3, 4.0),
    (2, 1, 5.0),
    (2, 2, 4.5),
    (2, 3, 3.5),
    (3, 1, 4.0),
    (3, 2, 3.0),
    (3, 3, 4.0),
    (4, 1, 3.5),
    (4, 2, 4.0),
    (4, 3, 3.0),
    (5, 1, 4.0),
    (5, 2, 3.5),
    (5, 3, 4.5),
    (6, 1, 5.0),
    (6, 2, 4.5),
    (6, 3, 5.0),
    (7, 1, 3.0),
    (7, 2, 2.5);

