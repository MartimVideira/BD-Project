Drop Table If Exists Fan;
Create Table Fan(
    NIF Int Primary Key,
    phoneNumber Int Unique,
    emailAddress Text Not Null Unique,
    nationality Text,
    Name Text Not Null,
    address Integer References Address(addressId) On Delete Cascade On Update Cascade,
    CONSTRAINT emailFormat CHECK (emailAddress like '%@%.com')
);


Drop Table If Exists Player;
Create Table Player(
    NIF Int Primary Key,
    phoneNumber Int Unique,
    emailAddress Text Not Null Unique,
    nationality Text,
    Name Text Not Null,
    addressId Integer  References Address(addressId) On Delete Cascade On Update Cascade,
    team Integer  References Team(teamId) On Delete Cascade On Update Cascade,
    CONSTRAINT emailFormat CHECK (emailAddress like '%@%.com')

);


Drop Table If Exists Staff;
Create Table Staff(
    NIF Int  Primary Key,
    phoneNumber Int Unique,
    emailAddress Text Not Null Unique,
    nationality Text,
    Name Text Not Null,
    totalWorkedHours  Int  Default 0,
    address Integer  References Address(addressId) On Delete Cascade On Update Cascade,
    staffType Text  References StaffType(STname) On Delete Cascade On Update Cascade,
    Constraint noNegativeHours Check (totalWorkedHours >=0),
    CONSTRAINT emailFormat CHECK (emailAddress like '%@%.com')

);


Drop Table If Exists Address;
Create Table Address(
    addressId Integer Primary Key AUTOINCREMENT,
    country Text Not Null,
    city Text Not Null,
    zipCode Text Not Null
);


Drop Table If Exists StaffType;
Create Table StaffType(
    STname Text  Primary Key,
    costPerHour Float 
);

Drop Table If Exists Team;
Create Table Team(
    teamId Integer Primary Key AUTOINCREMENT, 
    Tname Text Not Null,
    email Text Not Null 
);


Drop Table If Exists Match;
Create Table Match (
    matchId Integer Primary Key AUTOINCREMENT,
    startTime Time,
    duration Time,
    endTime Time Default Null,
    gameId Integer References Game(gameId) On Delete Cascade On Update Cascade,
    addressId Integer  References  Address(addressId) On Delete Cascade On Update Cascade
);
--Trigger: Derived Attribute endtime Is startime + duration  


Drop Table If Exists Game;
Create Table Game(
    gameId Integer  Primary Key AUTOINCREMENT,
    Gname Text Not Null,
    typeOfGame Text 
);


Drop Table If Exists Participation;
Create Table Participation(
    teamId Integer  References Team(teamId) On Delete Cascade On Update Cascade,
    matchId Integer  References Match(matchid) On Delete Cascade On Update Cascade,
    classification Integer References Classification(classification) On Delete Cascade On Update Cascade,
    Primary Key (TeamId,matchId)
);

Drop Table If Exists Classification;
Create Table Classification(
    classification Integer Primary Key AUTOINCREMENT,
    prize Text Default "No Prize"
);


Drop Table If Exists WorkedInMatch;
Create Table WorkedInMatch(
    staff Int  References Staff(NIF) On Delete Cascade On Update Cascade,
    Match Integer   References Match(matchid) On Delete Cascade On Update Cascade,
    workedTime Float Default 0,
    Primary Key (staff, match),
    Constraint noNegativeHours Check (workedTime >=0)
);
--Trigger To Increment total workedhours After Each Match this staff Member works On


Drop Table If Exists GameFan;
Create Table GameFan(
    fan Int   References Fan(NIF) On Delete Cascade On Update Cascade,
    game Integer  References Game(gameId) On Delete Cascade On Update Cascade,
    Primary Key (fan,game)
);


Drop Table If Exists TeamFan;
Create Table TeamFan(
    fan Int  References Fan(NIF) On Delete Cascade On Update Cascade,
    team Integer  References Team(teamId) On Delete Cascade On Update Cascade,
    Primary Key (fan,team)
);