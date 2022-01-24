.mode COLUMNS
.headers ON
.nullvalue NULL

.print ''
.print 'validar o insert para um valor negativo (embora nao faca muito sentido)'
.print ''
.print 'deve aparecer duas mensagens'
.print ''

.read criar.sql
.read gatilho2_adiciona.sql
Insert into match(starttime,duration,gameid,addressid) values('10:30','-01:30',2,15), ('08:00','00:30',1,16);
.read gatilho2_remove.sql

.print ''
.print 'verificar insert - se endtime e igual a soma de starttime e duration'
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