PRAGMA foreign_keys=ON;


-- Address 
INSERT INTO Address(country, city, zipCode) VALUES 
        ('Portugal','Lisbon','0000-000'),
        ('France','Paris','12345'),
        ('Australia','Camberra','1234'),
        ('Canada','Ottawa','A1A 1A1'),
        ('Portugal','Porto','0000-001'),
        ('UK','London','AA1'),
        ('Egypt','Cairo','00000'),
        ('Finland','Helsinki','11111'),
        ('Indonesia','Jakarta','22222'),
        ('Mozambique','Maputo','1100'),        
        ('Portugal','Braga','0000-002'),
        ('Portugal','Porto','0000-003'),
        ('Portugal','Aveiro','0000-004'),
        ('Portugal','Faro','0000-005'),
        ('Portugal','Lisbon','0000-006'), 
        ('Portugal','Lisbon','0000-007'),
        ('Portugal','Lisbon','0000-008');

-- Fan
INSERT INTO  Fan VALUES 
        (000000001, 900000000,'001@fan.com','PT','Mariana',1),
        (000000002, 900000001,'002@fan.com','PT','Igor',2),
        (000000003, 900000002,'003@fan.com','PT','Joao',3),
        (000000004, 900000003,'004@fan.com','PT','Pedro',4),
        (000000005, 900000005,'005@fan.com','PT','Rui',5);

-- StaffType
INSERT INTO StaffType VALUES 
        ('Hoster',4.20),
        ('Analyst',6.9),
        ('Event manager',6.66),
        ('Tournament admin',4.3),
        ('Partnerships manager',9.0);

-- Game
INSERT INTO Game('Gname','typeOfGame') VALUES 
        ('Chess','Abstract Strategy'),
        ('Tic Tac Toe','Paper-and-pencil'),
        ('PAC-MAN','Action Maze Chase'),
        ('Minesweeper','Minesweeper'),
        ('League Of Legends','MOBA');

-- Match
INSERT INTO Match(startTime,duration,gameId,addressId) VALUES 
        ('08:00','00:30',1,16),
        ('08:40','00:05',2,16),
        ('08:45','01:00',3,17),
        ('09:50','00:30',4,17),
        ('10:30','00:40',5,17);

-- Staff
INSERT INTO Staff(NIF,phoneNumber,emailAddress,nationality,name,address,staffType)  VALUES
        (100000001, 900000000,'001@staff.com','PT','Martim',11,'Hoster'),
        (100000002, 900000001,'002@staff.com','PT','Hugo',12,'Event manager'),
        (100000003, 900000002,'003@staff.com','PT','Pedro',13,'Partnerships manager'),
        (100000004, 900000003,'004@staff.com','PT','Sara',14,'Tournament admin'),
        (100000005, 900000005,'005@staff.com','PT','Afonso Magalhaes',15,'Analyst'),
        (100000006, 900000006,'006@staff.com','PT','Lemos Magalhaes',15,'Analyst'),
        (100000007, 900000007,'007@staff.com','BR','Gustavo Lima',10,'Partnerships manager');
        
-- Team
INSERT INTO Team(Tname,email) VALUES
        ('T1','t1@team.com'),
        ('T2','t2@team.com'),
        ('T3','t3@team.com'),
        ('T4','t4@team.com'),
        ('T5','t5@team.com');

-- Player
INSERT INTO Player VALUES 
        (200000001, 900000006,'001@player.com','PT','Mario',6,1),
        (200000002, 900000007,'002@player.com','PT','David',7,2),
        (200000003, 900000008,'003@player.com','PT','Lara',8,3),
        (200000004, 900000009,'004@player.com','PT','Miguel',9,4),
        (200000005, 900000010,'005@player.com','PT','Nuno',10,5);
 
-- Classification
INSERT INTO Classification(prize) VALUES 
        ('Golden Trophy + Cash (1000€)'),
        ('Silver Trophy + Cash (500€)'),
        ('Bronze Trophy + Cash (250€)'),
        ('Cash (100€)'),
        ('No Prize');

-- Participation
INSERT INTO Participation VALUES 
        (1,1,1),(1,2,4),(1,3,3),(1,4,5),(1,5,2),
        (2,1,2),(2,2,5),(2,3,1),(2,4,3),(2,5,4),
        (3,1,3),(3,2,1),(3,3,5),(3,4,2),(3,5,3),
        (4,1,4),(4,2,2),(4,3,4),(4,4,1),(4,5,5),
        (5,1,5),(5,2,3),(5,3,2),(5,4,4),(5,5,1);

-- WorkedTime
INSERT INTO WorkedInMatch VALUES
        (100000001, 1, 8), (100000001, 2, 4), (100000001, 3, 8), (100000001, 4, 8), (100000001, 5, 0),
        (100000002, 1, 3), (100000002, 2, 4), (100000002, 3, 5), (100000002, 4, 5), (100000002, 5, 3),
        (100000003, 1, 8), (100000003, 2, 4), (100000003, 3, 5), (100000003, 4, 0), (100000003, 5, 5),
        (100000004, 1, 5), (100000004, 2, 2), (100000004, 3, 5), (100000004, 4, 2), (100000004, 5, 3),
        (100000005, 1, 2), (100000005, 2, 6), (100000005, 3, 7), (100000005, 4, 4), (100000005, 5, 5);

-- GameFan
INSERT INTO GameFan VALUES
        (000000001, 4),
        (000000002, 1),
        (000000003, 5),
        (000000004, 2),
        (000000001, 2),
        (000000005, 4);

-- TeamFan
INSERT INTO TeamFan VALUES
        (000000001, 3),
        (000000002, 5),
        (000000003, 4),
        (000000004, 1),
        (000000005, 3);