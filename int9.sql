.mode COLUMN
.headers ON
.nullvalue NULL


-- Qual o fã que torce pelo maior número de equipas?

.read criar.sql
.read povoar.sql

--                      Used Schemas: 
-- Fan SCHEMA : Fan(NIF,phoneNumber,emailAddress,nationality,NAME,address)
-- TeamFan : TeamFan(fan,team)

CREATE VIEW nif_name_numero_equipas_que_gosta AS
SELECT  nIF, NAME,Count(Team) AS nrdeequipasquegosta FROM TeamFan JOIN Fan  ON NIF=fan
GROUP BY NIF;

-- 1
SELECT * FROM nif_name_numero_equipas_que_gosta 
ORDER BY NrDeEquipasQueGosta DESC
LIMIT 1;

--2 
SELECT NIF, NAME, MAX(NrDeEquipasQueGosta) FROM nif_name_numero_equipas_que_gosta;
