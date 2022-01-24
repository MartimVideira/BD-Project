addresses = [
    (1, "Portugal", "Lisbon", "0000-000"),
    (2, "France", "Paris", "12345"),
    (3, "Australia", "Camberra", "1234"),
    (4, "Canada", "Ottawa", "A1A 1A1"),
    (5, "Portugal", "Porto", "0000-001"),
    (6, "UK", "London", "AA1"),
    (7, "Egypt", "Cairo", "00000"),
    (8, "Finland", "Helsinki", "11111"),
    (9, "Indonesia", "Jakarta", "22222"),
    (10, "Mozambique", "Maputo", "1100"),
    (11, "France", "Paris", "12334"),
    (12, "Australia", "Camberra", "1245"),
    (13, "Egypt", "Cairo", "00007"),
    (14, "Finland", "Helsinki", "11122"),
    (15, "Portugal", "Lisbon", "0000-006"),
    (16, "Portugal", "Lisbon", "0000-007"),
    (17, "Portugal", "Lisbon", "0000-008"),
    (18, "Japan", "Tokyo", "101-2002"),
    (19, "Japan", "Tokyo", "105-2552"),
    (20, "Egypt", "Cairo", "00099"),
    (21, "Japan", "Tokyo", "103-2667"),
    (22, "Japan", "Tokyo", "107-2675"),
    (23, "Mozambique", "Maputo", "1122"),
    (24, "Spain", "Madrid", "28000"),
    (25, "Spain", "Madrid", "28009"),
    (26, "Spain", "Madrid", "28999"),
    (27, "Canada", "Ottawa", "A2A 2A2"),
    (28, "UK", "London", "AA2"),
]

fans = [
    (1, 900000001, "001@fan.com", "PT", "Maria", 1),
    (2, 900000002, "002@fan.com", "FR", "Jean", 2),
    (3, 900000003, "003@fan.com", "AU", "Kayla", 3),
    (4, 900000004, "004@fan.com", "CA", "Peter", 4),
    (5, 900000005, "005@fan.com", "PT", "Rui", 5),
    (6, 900000006, "006@fan.com", "UK", "Michael", 6),
    (7, 900000007, "007@fan.com", "EG", "Isis", 7),
    (8, 900000008, "008@fan.com", "FI", "Anneli", 8),
    (9, 900000009, "009@fan.com", "IN", "Lintang", 9),
    (10, 900000010, "010@fan.com", "MO", "Abilio", 10),
    (11, 900000011, "011@fan.com", "JP", "Minami", 18),
    (12, 900000012, "012@fan.com", "JP", "Mariko", 19),
    (13, 900000013, "013@fan.com", "SP", "Juan", 24),
    (14, 900000014, "014@fan.com", "SP", "Alfonso", 24),
    (15, 900000015, "015@fan.com", "SP", "Carlos", 24),
    (16, 900000016, "016@fan.com", "CA", "Mark", 4),
    (17, 900000017, "017@fan.com", "PT", "Ana", 1),
    (18, 900000018, "018@fan.com", "UK", "Chris", 6),
    (19, 900000019, "019@fan.com", "JP", "Haruto", 21),
    (20, 900000020, "020@fan.com", "JP", "Tatsuo", 22),
]

staffType = [
    (1, "Hoster", 4.20),
    (2, "Analyst", 6.9),
    (3, "Event manager", 6.66),
    (4, "Tournament admin", 4.3),
    (5, "Partnerships manager", 9.0),
    (6, "Electrician", 3.10),
    (7, "Sound specialist", 4.00),
    (8, "Cleaner", 2.30),
    (9, "Food provider", 2.80),
]

gameType = [
    (1, "Gname", "typeOfGame"),
    (2, "Chess", "Abstract Strategy"),
    (3, "Tic Tac Toe", "Paper-and-pencil"),
    (4, "PAC-MAN", "Action Maze Chase"),
    (5, "Minesweeper", "Minesweeper"),
    (6, "League Of Legends", "MOBA"),
    (7, "Connect Four", "Board Game"),
    (8, "Pokémon Unite", "MOBA"),
]

matches = [
    (1, "08:00", "00:30", 1, 16),
    (2, "08:40", "00:05", 2, 16),
    (3, "08:45", "01:00", 3, 17),
    (4, "09:50", "00:30", 4, 17),
    (5, "10:30", "00:40", 5, 17),
    (6, "08:00", "00:20", 6, 15),
    (7, "08:40", "01:00", 5, 15),
    (8, "09:50", "00:30", 3, 15),
    (9, "10:30", "00:40", 7, 15),
    (10, "12:00", "00:30", 3, 16),
]

staff = [
    (100000001, 900000021, "001@staff.com", "PT", "Francisca", 1, "Hoster"),
    (100000002, 900000022, "002@staff.com", "FR", "Céline", 9, "Event manager"),
    (100000003, 900000023, "003@staff.com", "FR", "Jacques", 9, "Food provider"),
    (100000004, 900000024, "004@staff.com", "AU", "Sarah", 10, "Tournament admin"),
    (100000005, 900000025, "005@staff.com", "AU", "Margaret", 10, "Analyst"),
    (100000006, 900000026, "006@staff.com", "JP", "Midori", 16, "Analyst"),
    (
        100000007,
        900000027,
        "007@staff.com",
        "BR",
        "Gustavo Lima",
        1,
        "Partnerships manager",
    ),
    (100000008, 900000028, "008@staff.com", "BR", "Ivete Sangalo", 1, "Hoster"),
    (
        100000009,
        900000029,
        "009@staff.com",
        "BR",
        "Roberto Carlos",
        1,
        "Sound specialist",
    ),
    (100000010, 900000030, "010@staff.com", "MO", "Ayah", 21, "Electrician"),
    (100000011, 900000031, "011@staff.com", "MO", "Elea", 21, "Electrician"),
    (100000012, 900000032, "012@staff.com", "SP", "Julieta", 23, "Cleaner"),
    (100000013, 900000033, "013@staff.com", "SP", "Romeo", 23, "Cleaner"),
]

teams = [
    (1, "T1", "t1@team.com"),
    (2, "T2", "t2@team.com"),
    (3, "T3", "t3@team.com"),
    (4, "T4", "t4@team.com"),
    (5, "T5", "t5@team.com"),
    (6, "T6", "t6@team.com"),
    (7, "T7", "t7@team.com"),
    (8, "T8", "t8@team.com"),
    (9, "T9", "t9@team.com"),
    (10, "T10", "t10@team.com"),
]

players = [
    (200000001, 900000041, "001@player.com", "PT", "Mário", 1, 2),
    (200000002, 900000042, "002@player.com", "PT", "David", 5, 1),
    (200000003, 900000043, "003@player.com", "PT", "Martim", 5, 1),
    (200000004, 900000044, "004@player.com", "PT", "Mariana", 5, 1),
    (200000005, 900000045, "005@player.com", "PT", "Nuno", 1, 4),
    (200000006, 900000046, "006@player.com", "FR", "Marie", 2, 4),
    (200000007, 900000047, "007@player.com", "FR", "Leo", 2, 2),
    (200000008, 900000048, "008@player.com", "AU", "Kyle", 3, 5),
    (200000009, 900000049, "009@player.com", "CA", "Karen", 25, 9),
    (200000010, 900000050, "010@player.com", "CA", "Anthony", 25, 9),
    (200000011, 900000051, "011@player.com", "JP", "Kaito", 16, 3),
    (200000012, 900000052, "012@player.com", "JP", "Kenji", 16, 3),
    (200000013, 900000053, "0013@player.com", "JP", "Yui", 16, 3),
    (200000014, 900000054, "014@player.com", "UK", "Charlotte", 26, 10),
    (200000015, 900000055, "015@player.com", "UK", "Charles", 26, 10),
    (200000016, 900000056, "016@player.com", "SP", "Catalina", 24, 5),
    (200000017, 900000057, "017@player.com", "SP", "Mateo", 24, 2),
    (200000018, 900000058, "018@player.com", "SP", "Diego", 24, 6),
    (200000019, 900000059, "019@player.com", "EG", "Omari", 11, 6),
    (200000020, 900000060, "020@player.com", "FI", "Elias", 12, 7),
    (200000021, 900000061, "021@player.com", "FI", "Kaarina", 12, 7),
    (200000022, 900000062, "022@player.com", "EG", "Mohamed", 18, 4),
    (200000023, 900000063, "023@player.com", "UK", "James", 26, 5),
    (200000024, 900000064, "024@player.com", "CA", "Liam", 25, 6),
    (200000025, 900000065, "025@player.com", "FR", "Antoine", 2, 7),
    (200000026, 900000066, "026@player.com", "MO", "Adelino", 8, 8),
    (200000027, 900000067, "027@player.com", "MO", "Olencia", 8, 8),
]

classifications = [
    (1, "Golden Trophy + Cash (1000€)"),
    (2, "Silver Trophy + Cash (500€)"),
    (3, "Bronze Trophy + Cash (250€)"),
    (4, "Cash (100€)"),
    (5, "No Prize"),
]

participations = [
    (1, 1, 1),
    (2, 1, 2),
    (3, 1, 3),
    (4, 1, 4),
    (5, 1, 5),
    (10, 2, 1),
    (9, 2, 2),
    (8, 2, 3),
    (7, 2, 4),
    (6, 2, 5),
    (2, 3, 1),
    (5, 3, 2),
    (9, 3, 3),
    (6, 3, 4),
    (3, 3, 5),
    (8, 4, 1),
    (2, 4, 2),
    (7, 4, 3),
    (10, 4, 4),
    (4, 4, 5),
    (4, 5, 1),
    (8, 5, 2),
    (2, 5, 3),
    (10, 5, 4),
    (7, 5, 5),
    (1, 6, 1),
    (10, 6, 2),
    (4, 6, 3),
    (7, 6, 4),
    (9, 6, 5),
    (5, 7, 1),
    (2, 7, 2),
    (1, 7, 3),
    (4, 7, 4),
    (10, 7, 5),
    (9, 8, 1),
    (6, 8, 2),
    (7, 8, 3),
    (3, 8, 4),
    (1, 8, 5),
    (1, 9, 1),
    (3, 9, 2),
    (5, 9, 3),
    (9, 9, 4),
    (2, 9, 5),
    (5, 10, 1),
    (1, 10, 2),
    (2, 10, 3),
    (3, 10, 4),
    (10, 10, 5),
]

workedInMatch = [
    (100000001, 1, 3),
    (100000001, 2, 3),
    (100000001, 3, 2),
    (100000001, 4, 3),
    (100000001, 5, 2),
    (100000002, 1, 1),
    (100000002, 2, 2),
    (100000002, 3, 1),
    (100000002, 4, 2),
    (100000002, 5, 2),
    (100000002, 6, 1),
    (100000002, 7, 2),
    (100000002, 8, 1),
    (100000002, 9, 1),
    (100000003, 1, 1.5),
    (100000003, 2, 1.5),
    (100000003, 3, 1),
    (100000003, 4, 1),
    (100000003, 5, 0.5),
    (100000003, 6, 1),
    (100000003, 7, 1),
    (100000003, 8, 1),
    (100000003, 9, 1),
    (100000003, 10, 0.5),
    (100000004, 1, 1),
    (100000004, 2, 1),
    (100000004, 3, 1),
    (100000004, 4, 1),
    (100000004, 5, 1),
    (100000004, 6, 1),
    (100000004, 7, 4),
    (100000004, 8, 1),
    (100000004, 9, 1),
    (100000005, 1, 2),
    (100000005, 3, 5),
    (100000005, 5, 6),
    (100000005, 7, 4),
    (100000005, 9, 5),
    (100000006, 2, 3),
    (100000006, 4, 6),
    (100000006, 6, 2),
    (100000006, 8, 5),
    (100000007, 1, 0.5),
    (100000007, 2, 0.5),
    (100000007, 3, 0.5),
    (100000007, 4, 0.5),
    (100000007, 5, 1),
    (100000007, 6, 1.5),
    (100000007, 7, 0.5),
    (100000007, 8, 0.5),
    (100000007, 9, 0.5),
    (100000007, 10, 0.5),
    (100000008, 6, 2),
    (100000008, 7, 3),
    (100000008, 8, 3),
    (100000008, 9, 3),
    (100000009, 1, 4),
    (100000009, 2, 5),
    (100000009, 3, 3),
    (100000009, 4, 8),
    (100000009, 5, 5),
    (100000009, 6, 6),
    (100000009, 7, 10),
    (100000009, 8, 3),
    (100000009, 9, 4),
    (100000009, 10, 2),
    (100000010, 1, 6),
    (100000010, 5, 6),
    (100000010, 3, 7),
    (100000010, 9, 8),
    (100000011, 4, 9),
    (100000011, 2, 11),
    (100000011, 8, 4),
    (100000011, 7, 5),
    (100000011, 6, 5),
    (100000012, 9, 8),
    (100000012, 2, 9),
    (100000012, 1, 10),
    (100000012, 6, 13),
    (100000012, 3, 11),
    (100000013, 5, 12),
    (100000013, 4, 9),
    (100000013, 8, 10),
    (100000013, 7, 11),
]

gameFans = [
    (1, 4),
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
    (12, 6),
]

teamFan = [
    (1, 3),
    (2, 5),
    (3, 4),
    (4, 1),
    (5, 3),
    (5, 2),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 5),
    (12, 7),
    (13, 4),
    (14, 1),
    (15, 1),
    (16, 1),
    (17, 4),
    (18, 9),
    (19, 10),
    (20, 1),
    (8, 3),
    (9, 1),
    (10, 7),
    (2, 6),
    (2, 4),
]


def pergunta2():
    partidas_mais_que_uma_hora = set(
        elemento[0]
        for elemento in matches
        if ("01:00" < elemento[2] or elemento[2] == "01:00")
    )
    equipas_em_partida = set(
        elemento[0]
        for elemento in participations
        if elemento[1] in partidas_mais_que_uma_hora
    )
    numero_telefone_jogadores_dessas_equipas = set(
        elemento[1] for elemento in players if elemento[-1] in equipas_em_partida
    )

    numero_telefone_jogadores_dessas_equipas


def pergunta3():
    team_points = dict()
    for participation in participations:
        team_points[participation[0]] = (
            team_points.get(participation[0], (0, 0))[0] + participation[-1],
            team_points.get(participation[0], (0, 0))[1] + 1,
        )

    team_average = {
        key: round(value[0] / value[1], 2) for key, value in team_points.items()
    }
    leader_board = list(team_average.items())
    leader_board.sort(key=(lambda x: x[1]))
    print(leader_board)


def pergunta4():
    pass


def pergunta5():
    mapping_address_country = {address[0]: address[1] for address in addresses}
    country_frequency = {address[1]: 0 for address in addresses}

    for player in players:
        country_frequency[mapping_address_country[player[-2]]] += 1

    lista = list(country_frequency.items())
    lista.sort(key=lambda x: x[0], reverse=True)
    lista.sort(key=lambda x: x[1], reverse=True)
    number_of_spaces: int = 10
    print("Pais", (number_of_spaces - 4) * " ", "Nº Jogadores")
    for value in lista:
        print(value[0], (number_of_spaces - len(value[0]) + 4) * " ", value[1])


def pergunta6():
    nomes = set()

    def addNames(final, param, index): return final.union(
        {elemento[index] for elemento in param})
    nomes = addNames(nomes, fans, 4)
    nomes = addNames(nomes, players, 4)
    nomes = addNames(nomes, staff, 4)

    print(f"Há {len(nomes)} nomes unicos")
    print(nomes)


def pergunta7():
    equipas = {equipa[0]:dict() for equipa in teams}
    mapping_address_country = {address[0]: address[1] for address in addresses}
    fan_country = {fan[0]: mapping_address_country[fan[-1]] for fan in fans}
    for isFan in teamFan:
        if(fan_country[isFan[0]]  == "Portugal"):
            continue     
        equipas[isFan[1]][fan_country[isFan[0]]] = equipas[isFan[1]].get(fan_country[isFan[0]],0) +1 

    lista = list(equipas.items())
    lista.sort(key=lambda x: len(x[1]), reverse=True)
    number_of_spaces: int = 8
    print("Equipa", (number_of_spaces - 5) * " ", "Paises")
    for value in lista:
        print(value[0], (number_of_spaces - len(str(value[0]))) * " ", value[1])

def pergunta8():
    pass


def pergunta9():
    pass


def pergunta10():
    pass


def main(argv: list):

    pergunta7()


if __name__ == "__main__":
    import sys
    main(sys.argv)
