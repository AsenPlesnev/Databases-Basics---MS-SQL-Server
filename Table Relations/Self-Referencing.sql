CREATE TABLE Teachers(
  TeacherID int NOT NULL UNIQUE,
  Name nvarchar(50) NOT NULL,
  ManagerID int,
  CONSTRAINT PK_Teachers PRIMARY KEY (TeacherID),
  CONSTRAINT FK_Teachers_Managers FOREIGN KEY (ManagerID) REFERENCES Teachers(TeacherID)
)

INSERT INTO Teachers VALUES
  (101, 'John', NULL),
  (102, 'Maya', 106),
  (103, 'Silvia', 106),
  (104, 'Ted', 105),
  (105, 'Mark', 101),
  (106, 'Greta', 101)
