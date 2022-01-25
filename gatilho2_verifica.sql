.mode columns
.headers ON
.nullvalue NULL

.print ''
.print 'validar o insert para um valor negativo 01:-20'
.print ''
.print 'deve aparecer 1 erro'
.print ''

.read criar.sql
.read gatilho2_adiciona.sql
Insert into match(starttime,duration,gameid,addressid) values('10:30','01:-20',2,15);
.read gatilho2_remove.sql

.print ''
.print 'VERIFICAR INSERT, endtime = starttime + duration'
.print ''
.print 'antes de ter trigger'
.print ''

.read criar.sql
.read povoar.sql
select * from match;

.print ''
.print 'depois de ter trigger'
.print ''

.read criar.sql
.read gatilho2_adiciona.sql
.read povoar.sql
select * from match;

.print ''
.print 'vamos inserir uma nova partida (matchId = 11) depois de termos o trigger'
.print ''

insert into match(starttime,duration,gameid,addressid) values ('08:00','00:30',1,1);

.print ''
.print 'tabela ficará'
.print ''

select * from match;

.print ''
.print 'caso introduza um valor incorreto, voltara a aparecer 1 erro'
.print ''

Insert into match(starttime,duration,gameid,addressid) values('10:30','01:-30',2,15);

.print ''
.print 'validar o update para um valor incorreto'
.print ''
.print 'deve aparecer 1 erro se for dar update com uma duration de -01:00'
.print ''

update match set duration = '-01:00' where matchId = 1;

.print ''
.print 'validar o update para um valor correto'
.print ''
.print 'update em duration da partida de id 11'
.print ''

update match set duration = '01:00' where matchId = 11;
select * from match;