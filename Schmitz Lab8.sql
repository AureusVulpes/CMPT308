//kill children tables

DROP TABLE Contracts;
DROP TABLE Actors;
DROP TABLE Directors;

// then the parent tables

DROP TABLE Movies;
DROP TABLE People;

//build tables

CREATE TABLE People(
   PID INT NOT NULL PRIMARY KEY,
   Name VARCHAR (20) NOT NULL,
   Address VARCHAR(25) NOT NULL,
   SpouseName VARCHAR (20)
);

CREATE TABLE Actors(
   PID INT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES People(PID),
   Birthdate DATE NOT NULL,
   hairColor VARCHAR (20) NOT NULL,
   eyeColor VARCHAR (20) NOT NULL,
   HeightInches INT NOT NULL,
   weightLBS INT NOT NULL,
   favColor VARCHAR(20),
   screenActorsGuildAnniv DATE NOT NULL
);

CREATE TABLE Directors(
   PID INT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES People(PID),
   filmSchool VARCHAR (30) NOT NULL,
   directGuildAnniv DATE NOT NULL,
   favLensMaker VARCHAR (30)
);

CREATE TABLE Movies(
   MID INT NOT NULL PRIMARY KEY,
   movieName VARCHAR (30) NOT NULL,
   yearReleased YEAR NOT NULL,
   MPAAnumber INT,
   domBoxOfficeSales INT,
   foreignBoxOfficeSales INT,
   discSales INT
);

CREATE TABLE Contracts(
   AID INT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Actors(PID),
   DID INT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Directors(PID),
   MID INT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Movies(MID)
);


//find out what directors Sean Connery has worked with

SELECT DISTINCT Contracts.DID FROM Contracts 
	INNER JOIN People ON Contracts.DID=People.PID
	LEFT JOIN People ON Contracts.AID=People.PID
	WHERE Contracts.AID IN (SELECT PID FROM People WHERE name = "Sean Connery");