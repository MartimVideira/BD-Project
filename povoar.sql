//fan address confirmed
insert into Address(country, city, zipCode) values ('Portugal','Lisbon','0000-000');
insert into Address(country, city, zipCode) values ('France','Paris','12345');
insert into Address(country, city, zipCode) values ('Australia','Camberra','1234');
insert into Address(country, city, zipCode) values ('Canada','Ottawa','A1A 1A1');
insert into Address(country, city, zipCode) values ('Portugal','Porto','0000-001');

// Fan confirmed
insert into  Fan values (000000001, 900000000,'001@fan.com','PT','Mariana',1);
insert into  Fan values (000000002, 900000001,'002@fan.com','PT','Igor',2);
insert into  Fan values (000000003, 900000002,'003@fan.com','PT','Joao',3);
insert into  Fan values (000000004, 900000003,'004@fan.com','PT','Pedro',4);
insert into  Fan values (000000005, 900000005,'005@fan.com','PT','Rui',5);

//player address confirmed
insert into Address(country, city, zipCode) values ('UK','London','AA1');
insert into Address(country, city, zipCode) values ('Egypt','Cairo','00000');
insert into Address(country, city, zipCode) values ('Finland','Helsinki','11111');
insert into Address(country, city, zipCode) values ('Indonesia','Jakarta','22222');
insert into Address(country, city, zipCode) values ('Mozambique','Maputo','1100');

//staff address confirmed
insert into Address(country, city, zipCode) values ('Portugal','Braga','0000-002');
insert into Address(country, city, zipCode) values ('Portugal','Porto','0000-003');
insert into Address(country, city, zipCode) values ('Portugal','Aveiro','0000-004');
insert into Address(country, city, zipCode) values ('Portugal','Faro','0000-005');
insert into Address(country, city, zipCode) values ('Portugal','Lisbon','0000-006');

//staffType confirmed
insert into StaffType('Hoster',0);
insert into StaffType('Analyst',0);
insert into StaffType('Event manager',0);
insert into StaffType('Tournament admin',0);
insert into StaffType('Partnerships manager',0);

//Match address confirmed
insert into Address values ('Portugal','Lisbon','0000-007');
insert into Address values ('Portugal','Lisbon','0000-008');


//Game confirmed
insert into Game('Gname','typeOfGame') values ('Chess','Abstract Strategy');
insert into Game('Gname','typeOfGame') values ('Tic Tac Toe','Paper-and-pencil');
insert into Game('Gname','typeOfGame') values ('PAC-MAN','Action Maze Chase');
insert into Game('Gname','typeOfGame') values ('Minesweeper','Minesweeper');
insert into Game('Gname','typeOfGame') values ('League Of Legends','MOBA');

//Match
insert into Match(startTime,duration,gameId,addressId) values ('08:00','00:30',1,16);
insert into Match(startTime,duration,gameId,addressId) values ('08:40','00:05',2,16);
insert into Match(startTime,duration,gameId,addressId) values ('08:45','01:00',3,17);
insert into Match(startTime,duration,gameId,addressId) values ('09:50','00:30',4,17);
insert into Match(startTime,duration,gameId,addressId) values ('10:30','00:40',5,17);

//Staff confirmed
insert into PersonStaff values (100000001, 900000000,'001@staff.com','PT','Martim',11,1);
insert into PersonStaff values (100000002, 900000001,'002@staff.com','PT','Hugo',12,2);
insert into PersonStaff values (100000003, 900000002,'003@staff.com','PT','Pedro',13,3);
insert into PersonStaff values (100000004, 900000003,'004@staff.com','PT','Sara',14,4);
insert into PersonStaff values (100000005, 900000005,'005@staff.com','PT','Afonso',15,5);

//Team confirmed
insert into Team(Tname,email) values('T1','t1@team.com');
insert into Team(Tname,email) values('T2','t2@team.com');
insert into Team(Tname,email) values('T3','t3@team.com');
insert into Team(Tname,email) values('T4','t4@team.com');
insert into Team(Tname,email) values('T5','t5@team.com');

//Player confirmed
insert into Player values (200000001, 900000006,'001@player.com','PT','Mario',6,1);
insert into Player values (200000002, 900000007,'002@player.com','PT','David',7,2);
insert into Player values (200000003, 900000008,'003@player.com','PT','Lara',8,3);
insert into Player values (200000004, 900000009,'004@player.com','PT','Miguel',9,4);
insert into Player values (200000005, 900000010,'005@player.com','PT','Nuno',10,5);

//Participation

//WorkedTime

//GameFan

//TeamFan







select * from Person;