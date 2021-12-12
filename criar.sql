.mode columns
.headers on
PRAGMA foreign_keys=OFF;

DROP TABLE IF EXISTS PersonFan;
CREATE TABLE PersonFan(
    NIF INT NOT NULL PRIMARY KEY,
    phoneNumber INT,
    emailAddress TEXT,
    nationality TEXT NOT NULL,
    name TEXT NOT NULL,
    address INT  REFERENCES Address(addressId)
);

DROP TABLE IF EXISTS PersonPlayer;
CREATE TABLE PersonPlayer(
    NIF INT NOT NULL PRIMARY KEY,
    phoneNumber INT,
    emailAddress TEXT,
    nationality TEXT NOT NULL,
    name TEXT NOT NULL,
    address INT  REFERENCES Address(addressId),
    team INT  REFERENCES Team(teamId)
);

DROP TABLE IF EXISTS PersonStaff;
CREATE TABLE PersonStaff(
    NIF INT NOT NULL PRIMARY KEY,
    phoneNumber INT,
    emailAddress TEXT,
    nationality TEXT NOT NULL,
    name TEXT NOT NULL,
    totalWorkedHours  INT
    SELECT SUM(workedTime)
    FROM WorkedTime
    WHERE person = NIF,
    address INT  REFERENCES Address(addressId),
    staffType TEXT  REFERENCES StaffType(STname)
);

DROP TABLE IF EXISTS Address;
CREATE TABLE Address(
    addressId AUTOINCREMENT,
    country TEXT,
    city TEXT,
    zipCode TEXT
);

DROP TABLE IF EXISTS StaffType;
CREATE TABLE StaffType(
    STname TEXT NOT NULL PRIMARY KEY,
    costPerHour INT
);

DROP TABLE IF EXISTS Team;
CREATE TABLE Team(
    teamId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
    Tname TEXT NOT NULL,
    email TEXT NOT NULL
);




DROP TABLE IF EXISTS Match;
CREATE TABLE Match (
<<<<<<< HEAD
    matchId INTEGER PRIMARY KEY AUTOINCREMENT,
    startTime TIME,
    duration TIME,
    endTime TIME AS DATEADD(startTime + duration) ,
    gameId INTEGER REFERENCES Game(gameId),
    addressId INTEGER  REFERENCES  Address(addressId)
=======
    matchId INT  NOT NULL PRIMARY KEY,
    startTime DATE,
    duration  DATE,
    endTime DATE CHECK (endTime = startTime + duration),
    gameId INT   REFERENCES Game(gameId),
    addressId INT  REFERENCES  Address(addressId)
>>>>>>> fb154cc226bafb72f3b2f17c13a2dfa2a4223004

);



DROP TABLE IF EXISTS Game;
CREATE TABLE Game(
    gameId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Gname TEXT NOT NULL,
    typeOfGame TEXT 
);


DROP TABLE IF EXISTS Participation;
CREATE TABLE Participation(
    prize FLOAT DEFAULT 0.0,
    classification TEXT,
    teamId INT  REFERENCES Team(teamId), 
    matchId INT  REFERENCES Match(matchId)
);

DROP TABLE IF EXISTS WorkedTime;
CREATE TABLE WorkedTime(
    person INT NOT NULL  REFERENCES Person(NIF),
    match INT NOT NULL   REFERENCES Match(matchId),
<<<<<<< HEAD
    workedTime INT CHECK (workedTime >= 0),
=======
    workedTime INT CHECK  (workedTime >= 0),
>>>>>>> fb154cc226bafb72f3b2f17c13a2dfa2a4223004
    PRIMARY KEY (person, match)
);


DROP TABLE IF EXISTS GameFan;
CREATE TABLE GameFan(
    fan INT NOT NULL  REFERENCES Person(NIF),
    game INT  REFERENCES Game(gameId),
    PRIMARY KEY (fan,game)
);


DROP TABLE IF EXISTS TeamFan;
CREATE TABLE TeamFan(
    fan INT NOT NULL  REFERENCES Person(NIF),
    team INT NOT NULL  REFERENCES Team(teamId),
    PRIMARY KEY (fan,team)
);