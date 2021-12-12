# Projeto de BD

-Mariana Azevedo
-Martim Videira
-David Fang

## Descrição
Vamos criar uma Base de Dados para guardar informações acerca da
organização/gestão de campeonatos ou eventos de jogos (iremos usar
evento e campeonato como sinônimos neste trabalho).
Os jogos podem ser tanto jogos tradicionais como videojogos ou partidas
desportivas já que a nossa base de Dados não especifica o tipo de jogos mas
sim a organização do campeonato em si.
Um campeonato é composto por várias partidas, das quais interessa saber a
data de início e a duração e cada uma é realizada em certo local, do qual
interessa saber o país, cidade e código-postal.
Cada partida é de um só jogo, do qual é preciso saber o nome e tipo de jogo.
Existem várias equipas, das quais importa saber o nome, país e e-mail. Cada
equipa pode participar em várias partidas, sendo então guardada a sua
classificação final e recompensa.
Existem várias pessoas envolvidas no campeonato, e de cada uma é
necessário guardar o NIF, nome, número de telemóvel, email, local onde vive
e nacionalidade. Depois cada pessoa pode ser uma ou mais de várias coisas:
jogador, fã ou staff. Dos jogadores é preciso guardar a qual equipa
pertencem, dos fãs de quais equipas e jogos são fãs, e de cada staff em que
partidas trabalha, total de horas de trabalho e que tipo de staff é, podendo ser
só de um tipo. Cada tipo de staff recebe um pagamento á hora diferente.
Também é preciso registar o número de horas que cada staff trabalha em
cada partida.
