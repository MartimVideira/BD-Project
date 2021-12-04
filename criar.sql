PRAGMA foreign_keys=OFF;

DROP TABLE IF EXISTS Persons;
CREATE TABLE Persons(
    NIF INTEGER PRIMARY KEY,
    phoneNumber INTEGER,
    emailAddress TEXT,
    nationality TEXT,
    name TEXT,
    TotalWorkedHours INTEGER,
    address TEXT REFERENCES Address(idAddress),
    staffType TEXT REFERENCES StaffType(name),
    team TEXT REFERENCES Teams(idTeams)
    );



DROP TABLE IF EXISTS Teams;
CREATE TABLE Teams(
    idTeams INTEGER PRIMARY KEY, 
    name TEXT,
    country TEXT,
    email TEXT
    );


DROP TABLE IF EXISTS Teams;
DROP TABLE IF EXISTS Teams;
DROP TABLE IF EXISTS Teams;
DROP TABLE IF EXISTS Teams;
DROP TABLE IF EXISTS Teams;
