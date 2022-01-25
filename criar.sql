drop table if exists Fan;
create table Fan(
    NIF int primary key,
    phoneNumber int unique,
    emailAddress text not null unique,
    nationality text,
    name text not null,
    address integer references Address(addressId) on delete cascade on update cascade
);


drop table if exists Player;
create table Player(
    NIF int primary key,
    phoneNumber int unique,
    emailAddress text not null unique,
    nationality text,
    name text not null,
    addressId integer  references Address(addressId) on delete cascade on update cascade,
    team integer  references Team(teamId) on delete cascade on update cascade
);


drop table if exists Staff;
create table Staff(
    NIF int  primary key,
    phoneNumber int unique,
    emailAddress text not null unique,
    nationality text,
    name text not null,
    totalWorkedHours  int  default 0,
    address integer  references Address(addressId) on delete cascade on update cascade,
    staffType text  references StaffType(STname) on delete cascade on update cascade,
    constraint noNegativeHours check (totalWorkedHours >=0)
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


drop table if exists match;
create table match (
    matchId integer primary key AUTOINCREMENT,
    startTime date,
    duration date,
    endTime date default null,
    gameId integer references Game(gameId) on delete cascade on update cascade,
    addressId integer  references  Address(addressId) on delete cascade on update cascade
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