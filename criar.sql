.mode columns
.headers on
PRAGMA foreign_keys=OFF;

DROP TABLE IF EXISTS Fan;
CREATE TABLE Fan(
    NIF INT  PRIMARY KEY,
    phoneNumber INT,
    emailAddress TEXT NOT NULL,
    nationality TEXT,
    name TEXT NOT NULL,
    address INTEGER REFERENCES Address(addressId)
);

DROP TABLE IF EXISTS Player;
CREATE TABLE Player(
    NIF INT PRIMARY KEY,
    phoneNumber INT,
    emailAddress TEXT NOT NULL,
    nationality TEXT,
    name TEXT NOT NULL,
    address INTEGER  REFERENCES Address(addressId),
    team INTEGER  REFERENCES Team(teamId)
);

DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff(
    NIF INT  PRIMARY KEY,
    phoneNumber INT,
    emailAddress TEXT NOT NULL,
    nationality TEXT,
    name TEXT NOT NULL,
    totalWorkedHours  INT  DEFAULT 0,
    address INTEGER  REFERENCES Address(addressId),
    staffType TEXT  REFERENCES StaffType(STname),
    CONSTRAINT noNegativeHours CHECK (totalWorkedHours >=0)
);

DROP TABLE IF EXISTS Address;
CREATE TABLE Address(
    addressId INTEGER PRIMARY KEY AUTOINCREMENT,
    country TEXT,
    city TEXT,
    zipCode TEXT
);

DROP TABLE IF EXISTS StaffType;
CREATE TABLE StaffType(
    STname TEXT  PRIMARY KEY,
    costPerHour FLOAT 
);

DROP TABLE IF EXISTS Team;
CREATE TABLE Team(
    teamId INTEGER PRIMARY KEY AUTOINCREMENT, 
    Tname TEXT NOT NULL,
    email TEXT NOT NULL 
);


DROP TABLE IF EXISTS Match;
CREATE TABLE Match (
    matchId INTEGER PRIMARY KEY AUTOINCREMENT,
    startTime DATE,
    duration DATE,
    endTime DATE DEFAULT NULL,
    gameId INTEGER REFERENCES Game(gameId),
    addressId INTEGER  REFERENCES  Address(addressId)


);
--Trigger: derived attribute endtime is startime + duration  

DROP TABLE IF EXISTS Game;
CREATE TABLE Game(
    gameId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Gname TEXT NOT NULL,
    typeOfGame TEXT 
);


DROP TABLE IF EXISTS Participation;
CREATE TABLE Participation(
    teamId INTEGER  REFERENCES Team(teamId),
    matchId INTEGER  REFERENCES Match(matchId),
    classification INTEGER REFERENCES Classification(classification)
);

DROP TABLE IF EXISTS Classification;
CREATE TABLE Classification(
    classification INTEGER PRIMARY KEY AUTOINCREMENT,
    prize TEXT DEFAULT "No Prize"
);

DROP TABLE IF EXISTS WorkedInMatch;
CREATE TABLE WorkedInMatch(
    staff INT  REFERENCES Staff(NIF),
    match INTEGER   REFERENCES Match(matchId),
    workedTime INT ,
    PRIMARY KEY (staff, match),
    CONSTRAINT noNegativeHours CHECK (workedTime <=0)
);
--Trigger to increment total workedhours after each match this staff member works on

DROP TABLE IF EXISTS GameFan;
CREATE TABLE GameFan(
    fan INT   REFERENCES Fan(NIF),
    game INTEGER  REFERENCES Game(gameId),
    PRIMARY KEY (fan,game)
);


DROP TABLE IF EXISTS TeamFan;
CREATE TABLE TeamFan(
    fan INT  REFERENCES Fan(NIF),
    team INTEGER  REFERENCES Team(teamId),
    PRIMARY KEY (fan,team)
);
