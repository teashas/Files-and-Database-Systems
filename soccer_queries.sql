-- Author: Saima Teasha
-- Cource: CS317
-- Assignment: Exercise 3B

-- 4. Put the following queries in a third .sql file (e.g. soccer_queries.sql) and show output
--     a. A query generating a table with player name, team name, and team coach name.

SELECT Player, Teams.team, Coach 
FROM Players JOIN Teams ON Teams.team = Players.team;

SELECT Coach, game_time, snacks
FROM Teams JOIN Schedule ON Schedule.team = Teams.team
JOIN Games ON Games.gameID = Schedule.gameID;

--     b. Queries capable of generating the following tables (modulo using your own names).
--         i. table 1

CREATE TABLE Away
AS SELECT gameID, Schedule.team, snacks, Coach 
FROM Schedule JOIN Teams ON Teams.team = Schedule.team;

SELECT Teams.Coach, game_time AS be_there, Away.snacks
FROM Teams JOIN Schedule ON Schedule.team = Teams.team
JOIN Away on Away.snacks != Schedule.snacks
AND Away.gameID = Schedule.gameID
JOIN Games ON Games.gameID = Away.gameID;

--         ii. table 2

SELECT Player, game_time, Away.snacks, Away.team AS against
FROM Players JOIN Schedule ON Schedule.team = Players.team
JOIN Away ON Away.snacks != Schedule.snacks
AND Away.gameID = Schedule.gameID
JOIN Games ON Games.gameID = Away.gameID;

--         ii. table 3

SELECT Player, game_time, Away.snacks,
Away.Team AS against, Away.Coach AS lead_by
FROM Players JOIN Schedule ON Schedule.team = Players.team
JOIN Away ON Away.snacks != Schedule.snacks
AND Away.gameID = Schedule.gameID
JOIN Games ON Games.gameID = Away.gameID;
