//fan address confirmed
insert into Address(country, city, zipCode) values 
        ('Portugal','Lisbon','0000-000'),
        ('France','Paris','12345'),
        ('Australia','Camberra','1234'),
        ('Canada','Ottawa','A1A 1A1'),
        ('Portugal','Porto','0000-001');

// Fan confirmed
insert into  Fan values 
        (000000001, 900000000,'001@fan.com','PT','Mariana',1);
        (000000002, 900000001,'002@fan.com','PT','Igor',2),
        (000000003, 900000002,'003@fan.com','PT','Joao',3),
        (000000004, 900000003,'004@fan.com','PT','Pedro',4),
        (000000005, 900000005,'005@fan.com','PT','Rui',5);

//player address confirmed
insert into Address(country, city, zipCode) values 
        ('UK','London','AA1'),
        ('Egypt','Cairo','00000'),
        ('Finland','Helsinki','11111'),
        ('Indonesia','Jakarta','22222'),
        ('Mozambique','Maputo','1100');

//staff address confirmed
insert into Address(country, city, zipCode) values 
        ('Portugal','Braga','0000-002'),
        ('Portugal','Porto','0000-003'),
        ('Portugal','Aveiro','0000-004'),
        ('Portugal','Faro','0000-005'),
        ('Portugal','Lisbon','0000-006');

//staffType confirmed
insert into StaffType values 
        ('Hoster',0),
        ('Analyst',0),
        ('Event manager',0),
        ('Tournament admin',0),
        ('Partnerships manager',0);

//Match address confirmed
insert into Address values 
        ('Portugal','Lisbon','0000-007');
        ('Portugal','Lisbon','0000-008');


//Game confirmed
insert into Game('Gname','typeOfGame') values 
        ('Chess','Abstract Strategy'),
        ('Tic Tac Toe','Paper-and-pencil'),
        ('PAC-MAN','Action Maze Chase'),
        ('Minesweeper','Minesweeper'),
        ('League Of Legends','MOBA');

//Match
insert into Match(startTime,duration,gameId,addressId) values 
        ('08:00','00:30',1,16),
        ('08:40','00:05',2,16),
        ('08:45','01:00',3,17),
        ('09:50','00:30',4,17),
        ('10:30','00:40',5,17);

//Staff confirmed
insert into Staff values 
        (100000001, 900000000,'001@staff.com','PT','Martim',11,1),
        (100000002, 900000001,'002@staff.com','PT','Hugo',12,2),
        (100000003, 900000002,'003@staff.com','PT','Pedro',13,3),
        (100000004, 900000003,'004@staff.com','PT','Sara',14,4),
        (100000005, 900000005,'005@staff.com','PT','Afonso',15,5);

//Team confirmed
insert into Team(Tname,email) values
        ('T1','t1@team.com'),
        ('T2','t2@team.com'),
        ('T3','t3@team.com'),
        ('T4','t4@team.com'),
        ('T5','t5@team.com');

//Player confirmed
insert into Player values 
        (200000001, 900000006,'001@player.com','PT','Mario',6,1),
        (200000002, 900000007,'002@player.com','PT','David',7,2),
        (200000003, 900000008,'003@player.com','PT','Lara',8,3),
        (200000004, 900000009,'004@player.com','PT','Miguel',9,4),
        (200000005, 900000010,'005@player.com','PT','Nuno',10,5);

//Participation
insert into Participation values 
(1,1,1),(1,2,4),(1,3,3),(1,4,5),(1,5,2),
(2,1,2),(2,2,5),(2,3,1),(2,4,3),(2,5,4),
(3,1,3),(3,2,1),(3,3,5),(3,4,2),(3,5,3),
(4,1,4),(4,2,2),(4,3,4),(4,4,1),(4,5,5),
(5,1,5),(5,2,3),(5,3,2),(5,4,4),(5,5,1);

//Classification
insert into Classification(prize) values 
        ('Golden Trophy + Cash (1000€)'),
        ('Silver Trophy + Cash (500€)'),
        ('Bronze Trophy + Cash (250€)'),
        ('Cash (100€)'),
        ('No Prize');


//WorkedTime
insert into WorkedTime values
        (100000001,1,),
        (100000002,2,),
        (100000003,3,),
        (100000004,4,),
        (100000005,5,);
//GameFan
insert into 
//TeamFan







select * from Person;