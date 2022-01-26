.mode columns
.headers ON
.nullvalue NULL

--Qual o país (ou países) com mais jogadores?

--Creation OF VIEW that counts how many players FROM EACH Country 
DROP VIEW IF EXISTS CountryCount;

CREATE VIEW CountryCount AS 
SELECT COUNT(name) AS NPlayers, country 
FROM 
    (select NAME, 
            country 
    FROM Player JOIN Address USING(addressId))
GROUP BY country;

--Query
SELECT country 
FROM Countrycount 
WHERE NPlayers = (select MAX(Nplayers) FROM CountryCount);


--Alternative answer
--select country FROM (select * FROM CountryCount, (select MAX(NPLAYERS) AS Maximum FROM CountryCount)) WHERE NPlayers = Maximum ORDER BY country;