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


drop table if exists Address;
create table Address(
    addressId integer primary key AUTOINCREMENT,
    country text not null,
    city text not null,
    zipCode text not null
);


drop table if exists StaffType;
create table StaffType(
    STname text  primary key,
    costPerHour float 
);

drop table if exists Team;
create table Team(
    teamId integer primary key AUTOINCREMENT, 
    Tname text not null,
    email text not null 
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
--Trigger: derived attribute endtime is startime + duration  


drop table if exists Game;
create table Game(
    gameId integer  primary key AUTOINCREMENT,
    Gname text not null,
    typeOfGame text 
);


drop table if exists Participation;
create table Participation(
    teamId integer  references Team(teamId) on delete cascade on update cascade,
    matchId integer  references match(matchid) on delete cascade on update cascade,
    classification integer references Classification(classification) on delete cascade on update cascade,
    primary key (TeamId,matchId)
);

drop table if exists Classification;
create table Classification(
    classification integer primary key AUTOINCREMENT,
    prize text default "No Prize"
);


drop table if exists WorkedInMatch;
create table WorkedInMatch(
    staff int  references Staff(NIF) on delete cascade on update cascade,
    match integer   references match(matchid) on delete cascade on update cascade,
    workedTime float default 0,
    primary key (staff, match),
    constraint noNegativeHours check (workedTime >=0)
);
--Trigger to increment total workedhours after each match this staff member works on


drop table if exists GameFan;
create table GameFan(
    fan int   references Fan(NIF) on delete cascade on update cascade,
    game integer  references Game(gameId) on delete cascade on update cascade,
    primary key (fan,game)
);


drop table if exists TeamFan;
create table TeamFan(
    fan int  references Fan(NIF) on delete cascade on update cascade,
    team integer  references Team(teamId) on delete cascade on update cascade,
    primary key (fan,team)
);