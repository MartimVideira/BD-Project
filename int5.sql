.mode columns
.headers ON
.nullvalue NULL

--Qual o país (ou países) com mais jogadores?

--Creation OF VIEW that counts how many players FROM EACH Country 
DROP VIEW IF EXISTS CountryCount;
.read criar.sql
.read povoar.sql

CREATE VIEW CountryCount AS 
SELECT COUNT(NAME) AS NPlayers, country 
FROM 
    (select NAME, 
            country 
    FROM Player JOIN Address USING(ADDRESSID))
GROUP BY country;

-- 1
--Query
SELECT country 
FROM Countrycount 
WHERE NPlayers = (select MAX(NPLAYERS) FROM CountryCount);

--Alternative answer
--select country FROM (select * FROM CountryCount, (select MAX(NPLAYERS) AS Maximum FROM CountryCount)) WHERE NPlayers = Maximum ORDER BY country;


-- This two alternatives use subqueries in the select clause

-- 2  using a join (Natural Join)
SELECT DISTINCT A.country,(
        SELECT COUNT(NIF) 
        FROM Player 
        NATURAL JOIN Address B
        WHERE  B.country = A.country) AS TotalNumberOfPlayers
FROM Address AS A;

-- 3 Using 2 nested subqueries
SELECT DISTINCT A.country, (
    SELECT COUNT(NIF)
    FROM Player AS P WHERE P.addressId IN(
        SELECT addressId FROM Address B WHERE  B.country = A.country)
) AS TotalNumberOfPlayers
FROM Address A;