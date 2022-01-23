DROP TABLE IF EXISTS Fan;
CREATE TABLE Fan(
    NIF INT PRIMARY KEY,
    phoneNumber INT UNIQUE,
    emailAddress TEXT NOT NULL UNIQUE,
    nationality TEXT,
    name TEXT NOT NULL,
    address INTEGER REFERENCES Address(addressId) ON DELETE CASCADE ON UPDATE CASCADE
);


DROP TABLE IF EXISTS Player;
CREATE TABLE Player(
    NIF INT PRIMARY KEY,
    phoneNumber INT UNIQUE,
    emailAddress TEXT NOT NULL UNIQUE,
    nationality TEXT,
    name TEXT NOT NULL,
    address INTEGER  REFERENCES Address(addressId) ON DELETE CASCADE ON UPDATE CASCADE,
    team INTEGER  REFERENCES Team(teamId) ON DELETE CASCADE ON UPDATE CASCADE
);


DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff(
    NIF INT  PRIMARY KEY,
    phoneNumber INT UNIQUE,
    emailAddress TEXT NOT NULL UNIQUE,
    nationality TEXT,
    name TEXT NOT NULL,
    totalWorkedHours  INT  DEFAULT 0,
    address INTEGER  REFERENCES Address(addressId) ON DELETE CASCADE ON UPDATE CASCADE,
    staffType TEXT  REFERENCES StaffType(STname) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT noNegativeHours CHECK (totalWorkedHours >=0)
);


DROP TABLE IF EXISTS Address;
CREATE TABLE Address(
    addressId INTEGER PRIMARY KEY AUTOINCREMENT,
    country TEXT NOT NULL,
    city TEXT NOT NULL,
    zipCode TEXT NOT NULL
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
    gameId INTEGER REFERENCES Game(gameId) ON DELETE CASCADE ON UPDATE CASCADE,
    addressId INTEGER  REFERENCES  Address(addressId) ON DELETE CASCADE ON UPDATE CASCADE
);
--Trigger: derived attribute endtime is startime + duration  


DROP TABLE IF EXISTS Game;
CREATE TABLE Game(
    gameId INTEGER  PRIMARY KEY AUTOINCREMENT,
    Gname TEXT NOT NULL,
    typeOfGame TEXT 
);


DROP TABLE IF EXISTS Participation;
CREATE TABLE Participation(
    teamId INTEGER  REFERENCES Team(teamId) ON DELETE CASCADE ON UPDATE CASCADE,
    matchId INTEGER  REFERENCES Match(matchId) ON DELETE CASCADE ON UPDATE CASCADE,
    classification INTEGER REFERENCES Classification(classification) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (TeamId,matchId)
);

DROP TABLE IF EXISTS Classification;
CREATE TABLE Classification(
    classification INTEGER PRIMARY KEY AUTOINCREMENT,
    prize TEXT DEFAULT "No Prize"
);


DROP TABLE IF EXISTS WorkedInMatch;
CREATE TABLE WorkedInMatch(
    staff INT  REFERENCES Staff(NIF) ON DELETE CASCADE ON UPDATE CASCADE,
    match INTEGER   REFERENCES Match(matchId) ON DELETE CASCADE ON UPDATE CASCADE,
    workedTime FLOAT DEFAULT 0,
    PRIMARY KEY (staff, match),
    CONSTRAINT noNegativeHours CHECK (workedTime >=0)
);
--Trigger to increment total workedhours after each match this staff member works on


DROP TABLE IF EXISTS GameFan;
CREATE TABLE GameFan(
    fan INT   REFERENCES Fan(NIF) ON DELETE CASCADE ON UPDATE CASCADE,
    game INTEGER  REFERENCES Game(gameId) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (fan,game)
);


DROP TABLE IF EXISTS TeamFan;
CREATE TABLE TeamFan(
    fan INT  REFERENCES Fan(NIF) ON DELETE CASCADE ON UPDATE CASCADE,
    team INTEGER  REFERENCES Team(teamId) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (fan,team)
);