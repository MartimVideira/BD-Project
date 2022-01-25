.mode columns
.headers ON
.nullvalue NULL

--gatilho2_adiciona.sql

--verifica, se o tempo introduzido é válido (maior ou igual a 0) antes da inserção
Create Trigger durationCheckBeforeInsert Before Insert on Match
When (new.duration < '00:00')
Begin
    Select raise(ABORT, 'Existe uma duracao invalida');
End;

--insert, depois de inserir, o endtime deve aparecer como soma de starttime e duration
CREATE TRIGGER addEndTime 
AFTER INSERT ON Match 
BEGIN 
    update match set endtime = time(strftime('%s',startTime) + strftime('%s',duration),'unixepoch');
END;

--verifica, se o tempo introduzido é válido (maior ou igual a 0) antes da atualização
Create Trigger durationCheckBeforeUpdate Before update on Match
When (new.duration < '00:00')
Begin
    Select raise(ABORT, 'Existe uma duracao invalida');
End;