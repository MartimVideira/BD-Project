-- Match(idMatch ,startTime,duration, endTime, game -> Game,, address -> Address ) 
CREATE TABLE Match (
    matchId INT  NOT NULL PRIMARY KEY,
    startTime DATE,
    duration  DATE,
    endTime DATE CONSTRAINT endTime = startTime + duration ,
    gameId INT  FOREIGN KEY REFERENCES Game(gameId),
    addressId INT FOREIGN KEY REFERENCES  Address(addressId)S

);



--Game(gameId,name , typeOfGame) 
CREATE TABLE Game(
    gameId INT NOT NULL PRIMARY KEY ,
    name TEXT NOT NULL,
    typeOfGame TEXT 
);


--Participation(team ->team , match -> match , prize , classification)
CREATE TABLE Participation(
    prize FLOAT DEFAULT 0.0,
    classification TEXT,
    teamId INT FOREIGN KEY Team(teamId), 
    matchId INT FOREIGN KEY Match(matchId)
    );