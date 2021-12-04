PRAGMA foreign_keys=OFF;

DROP TABLE IF EXISTS Persons;
CREATE TABLE Persons(
    NIF int NOT NULL PRIMARY KEY,
    phoneNumber int,
    emailAddress text,
    nationality text NOT NULL,
    name text NOT NULL,
    TotalWorkedHours int,
    address text FOREIGN KEY REFERENCES Address(idAddress),
    staffType text FOREIGN KEY REFERENCES StaffType(name),
    team text FOREIGN KEY REFERENCES Teams(idTeams)
);

DROP TABLE IF EXISTS Address;
CREATE TABLE Address(
    idAddress int NOT NULL PRIMARY,
    country text,
    city text,
    zipCode text
);

DROP TABLE IF EXISTS StaffType;
CREATE TABLE StaffType(
    name text NOT NULL PRIMARY KEY,
    CostPerHour int
);

DROP TABLE IF EXISTS Teams;
CREATE TABLE Teams(
    idTeams int PRIMARY KEY, 
    name text NOT NULL,
    country text,
    email text NOT NULL
);



