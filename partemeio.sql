DROP TABLE IF EXISTS Match
CREATE TABLE Match (
    matchId INT  NOT NULL PRIMARY KEY,
    startTime DATE,
    duration  DATE,
    endTime DATE CONSTRAINT endTime = startTime + duration ,
    gameId INT  FOREIGN KEY REFERENCES Game(gameId),
    addressId INT FOREIGN KEY REFERENCES  Address(addressId)

);



DROP TABLE IF EXISTS Game 
CREATE TABLE Game(
    gameId INT NOT NULL PRIMARY KEY ,
    name TEXT NOT NULL,
    typeOfGame TEXT 
);


DROP TABLE IF EXISTS Participation
CREATE TABLE Participation(
    prize FLOAT DEFAULT 0.0,
    classification TEXT,
    teamId INT FOREIGN KEY Team(teamId), 
    matchId INT FOREIGN KEY Match(matchId)
);

CREATE TABLE WorkedTime(
    person INT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Person(NIF),
    match INT NOT NULL PRIMARY KEY FOREIGN KEY REFERENCES Match(matchId),
    workedTime INT CONSTRAINT workedTime >= 0
);


DROP TABLE IF EXISTS GameFan;
CREATE TABLE GameFan(
    fan INT NOT NULL FOREIGN KEY REFERENCES Person(NIF),
    game INT FOREIGN KEY REFERENCES Game(gameId),
    PRIMARY KEY (fan,game)
);


DROP TABLE IF EXISTS TeamFan;
CREATE TABLE TeamFan(
    fan INT NOT NULL FOREIGN KEY REFERENCES Person(NIF),
    team INT FOREIGN KEY REFERENCES Team(idTeam),
    PRIMARY KEY (fan,team)
);