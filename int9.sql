.mode columns
.headers on
.nullvalue null


-- Qual o fã que torce pelo maior número de equipas?

.read criar.sql
.read povoar.sql

-- Diferentes Maneiras de se fazer.

-- Fan schema : Fan(NIF,phoneNumber,emailAddress,nationality,NAME,address)
-- TeamFan : TeamFan(fan,team)

Create view nif_name_numero_equipas_que_gosta as
Select  NIF, NAME,Count(team) as NrDeEquipasQueGosta from TeamFan Join Fan  On NIF=fan
Group by NIF;

-- 1
Select * from nif_name_numero_equipas_que_gosta 
order by NrDeEquipasQueGosta Desc
limit 1;

--2 
Select NIF, NAME, Max(NrDeEquipasQueGosta) from nif_name_numero_equipas_que_gosta;
