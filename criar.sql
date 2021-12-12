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
    address INT  REFERENCES Address(addressId)
);

DROP TABLE IF EXISTS Player;
CREATE TABLE Player(
    NIF INT NOT NULL PRIMARY KEY,
    phoneNumber INT,
    emailAddress TEXT NOT NULL,
    nationality TEXT,
    name TEXT NOT NULL,
    address INT  REFERENCES Address(addressId),
    team INTEGER  REFERENCES Team(teamId)
);

DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff(
    NIF INT  PRIMARY KEY,
    phoneNumber INT,
    emailAddress TEXT NOT NULL,
    nationality TEXT,
    name TEXT NOT NULL,
    totalWorkedHours  INT
    SELECT SUM(workedTime)
    FROM WorkedInMatch 
    WHERE person = NIF,
    address INT  REFERENCES Address(addressId),
    staffType TEXT  REFERENCES StaffType(STname)
);

DROP TABLE IF EXISTS Address;
CREATE TABLE Address(
    addressId INTEGER AUTOINCREMENT,
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
    startTime TIME,
    duration TIME,
    endTime TIME AS DATEADD(startTime + duration),
    gameId INTEGER REFERENCES Game(gameId),
    addressId INTEGER  REFERENCES  Address(addressId)


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

DROP TABLE IF EXISTS WorkedInMatch;
CREATE TABLE WorkedInMatch(
    staff INT  REFERENCES Staff(NIF),
    match INTEGER   REFERENCES Match(matchId),
    workedTime INT CHECK (workedTime >= 0),
    PRIMARY KEY (staff, match)
);


DROP TABLE IF EXISTS GameFan;
CREATE TABLE GameFan(
    fan INT   REFERENCES Fan(NIF),
    game INTEGER  REFERENCES Game(gameId),
    PRIMARY KEY (fan,game)
);


DROP TABLE IF EXISTS TeamFan;
CREATE TABLE TeamFan(
    fan INTEGER  REFERENCES Fan(NIF),
    team INTEGER  REFERENCES Team(teamId),
    PRIMARY KEY (fan,team)
);