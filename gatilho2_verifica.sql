.mode COLUMNS
.headers ON
.nullvalue NULL

.print ''
.print 'validar o insert para um valor negativo (embora nao faca muito sentido)'
.print ''
.print 'deve aparecer 1 mensagem'
.print ''

.read criar.sql
.read gatilho2_adiciona.sql
Insert into match(starttime,duration,gameid,addressid) values('10:30','-01:30',2,15);
.read gatilho2_remove.sql

.print ''
.print 'verificar insert - endtime = starttime + duration'
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
.print 'vamos inserir uma nova partida depois de termos o trigger'
.print ''

insert into match(starttime,duration,gameid,addressid) values ('08:00','00:30',1,1);

.print ''
.print 'tabela ficará'
.print ''

select * from match;

.print ''
.print 'caso introduza um valor incorreto, voltara a aparecer a mensagem'
.print ''

Insert into match(starttime,duration,gameid,addressid) values('10:30','-01:30',2,15);