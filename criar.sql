PRAGMA foreign_keys=OFF;

DROP TABLE IF EXISTS Person;
CREATE TABLE Person(
    NIF INT NOT NULL PRIMARY KEY,
    phoneNumber INT,
    emailAddress TEXT,
    nationality TEXT NOT NULL,
    name TEXT NOT NULL,
    totalWorkedHours INT,
    address INT  REFERENCES Address(addressId),
    staffType TEXT  REFERENCES StaffType(name),
    team INT  REFERENCES Team(teamId)
);

DROP TABLE IF EXISTS Address;
CREATE TABLE Address(
    addressId,
    country TEXT,
    city TEXT,
    zipCode TEXT
);

DROP TABLE IF EXISTS StaffType;
CREATE TABLE StaffType(
    name TEXT NOT NULL PRIMARY KEY,
    costPerHour INT
);

DROP TABLE IF EXISTS Team;
CREATE TABLE Team(
    teamId INT NOT NULL PRIMARY KEY, 
    name TEXT NOT NULL,
    country TEXT,
    email TEXT NOT NULL
);




DROP TABLE IF EXISTS Match;
CREATE TABLE Match (
    matchId INT  NOT NULL PRIMARY KEY,
    startTime DATE,
    duration  DATE,
    endTime DATE CHECK (endTime = startTime + duration),
    gameId INT   REFERENCES Game(gameId),
    addressId INT  REFERENCES  Address(addressId)

);



DROP TABLE IF EXISTS Game;
CREATE TABLE Game(
    gameId INT NOT NULL PRIMARY KEY ,
    name TEXT NOT NULL,
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
    workedTime INT CHECK  (workedTime >= 0),
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