fans_e_jogos_favoritos=[(1, 4),
        (2, 1),
        (3, 5),
        (4, 2),
        (5, 3),
        (6, 6),
        (7, 7),
        (8, 1),
        (9, 7),
        (10, 4),
        (11, 3),
        (12, 5),
        (13, 2),
        (14, 7),
        (15, 6),
        (16, 6),
        (17, 3),
        (18, 4),
        (19, 1),
        (20, 1),
        (1, 7),
        (5, 7),
        (8, 4),
        (16, 7),
        (17, 2),
        (20, 6),
        (2, 2),
        (2, 3),
        (12, 4),
        (13, 5),
        (12, 6)]

informacoes_fans =[(1, 900000001,'001@fan.com','PT','Maria',1),
        (2, 900000002,'002@fan.com','FR','Jean',2),
        (3, 900000003,'003@fan.com','AU','Kayla',3),
        (4, 900000004,'004@fan.com','CA','Peter',4),
        (5, 900000005,'005@fan.com','PT','Rui',5),
        (6, 900000006,'006@fan.com','UK','Michael',6),
        (7, 900000007,'007@fan.com','EG','Isis',7),
        (8, 900000008,'008@fan.com','FI','Anneli',8),
        (9, 900000009,'009@fan.com','IN','Lintang',9),
        (10, 900000010,'010@fan.com','MO','Abilio',10),
        (11, 900000011,'011@fan.com','JP','Minami',18),
        (12, 900000012,'012@fan.com','JP','Mariko',19),
        (13, 900000013,'013@fan.com','SP','Juan',24),
        (14, 900000014,'014@fan.com','SP','Alfonso',24),
        (15, 900000015,'015@fan.com','SP','Carlos',24),
        (16, 900000016,'016@fan.com','CA','Mark',4),
        (17, 900000017,'017@fan.com','PT','Ana',1),
        (18, 900000018,'018@fan.com','UK','Chris',6),
        (19, 900000019,'019@fan.com','JP','Haruto',21),
        (20, 900000020,'020@fan.com','JP','Tatsuo',22)]

jogos =[('Chess','Abstract Strategy'),
        ('Tic Tac Toe','Paper-and-pencil'),
        ('PAC-MAN','Action Maze Chase'),
        ('Minesweeper','Minesweeper'),
        ('League Of Legends','MOBA'),
        ('Connect Four', "Board Game"),
        ('Pokémon Unite', 'MOBA')]

adresses =[('Portugal','Lisbon','0000-000'),
        ('France','Paris','12345'),
        ('Australia','Camberra','1234'),
        ('Canada','Ottawa','A1A 1A1'),
        ('Portugal','Porto','0000-001'),
        ('UK','London','AA1'),
        ('Egypt','Cairo','00000'),
        ('Finland','Helsinki','11111'),
        ('Indonesia','Jakarta','22222'),
        ('Mozambique','Maputo','1100'),
        ('France','Paris','12334'),
        ('Australia','Camberra','1245'),
        ('Egypt','Cairo','00007'),
        ('Finland','Helsinki','11122'),
        ('Portugal','Lisbon','0000-006'), 
        ('Portugal','Lisbon','0000-007'),
        ('Portugal','Lisbon','0000-008'),
        ('Japan', 'Tokyo', '101-2002'),
        ('Japan', 'Tokyo', '105-2552'),
        ('Egypt','Cairo','00099'),
        ('Japan', 'Tokyo', '103-2667'),
        ('Japan', 'Tokyo', '107-2675'),
        ('Mozambique','Maputo','1122'),
        ('Spain', 'Madrid', '28000'),
        ('Spain', 'Madrid', '28009'),
        ('Spain', 'Madrid', '28999'),
        ('Canada','Ottawa','A2A 2A2'), 
        ('UK','London','AA2')]


lisbon_fans = set()
for  fan in informacoes_fans: 
    if(fan[-1]) == 1:
        lisbon_fans.add(fan[0])

jogos_favoritos = list()
for fan in fans_e_jogos_favoritos:
    if fan[0] in lisbon_fans:
        jogos_favoritos.append(fan[1])
    

dictjogos = dict()
print(jogos_favoritos)
for jogo in jogos_favoritos:
    dictjogos[jogo] = dictjogos.get(jogo,0) +1

print(dictjogos)
