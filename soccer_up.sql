-- Author: Saima Teasha
-- Cource: CS317
-- Assignment: Exercise 3B

-- 1. Create a database with tables that replicates the functionality of the Access database described in the Access tutorial. You may design your own database
-- tables, and populate it with your own team, coach, and player names. But it must meet the following criteria:
--     a. There must be at least 6 teams.
--     b. Each team must have at least 5 players.

CREATE TABLE Players (player VARCHAR(10) primary key, team VARCHAR(15));

INSERT INTO Players VALUES ('Raju', 'Blue Team'); 
INSERT INTO Players VALUES ('Tamjid', 'Blue Team'); 
INSERT INTO Players VALUES ('Taurit', 'Blue Team'); 
INSERT INTO Players VALUES ('Chachi', 'Blue Team'); 
INSERT INTO Players VALUES ('Tara', 'Blue Team'); 

INSERT INTO Players VALUES ('Hossain', 'Purple Team'); 
INSERT INTO Players VALUES ('Samei', 'Purple Team'); 
INSERT INTO Players VALUES ('Shanila', 'Purple Team'); 
INSERT INTO Players VALUES ('Mirza', 'Purple Team'); 
INSERT INTO Players VALUES ('Rashmeen', 'Purple Team'); 

INSERT INTO Players VALUES ('Teevana', 'Red Team'); 
INSERT INTO Players VALUES ('Yameen', 'Red Team'); 
INSERT INTO Players VALUES ('Mukti', 'Red Team'); 
INSERT INTO Players VALUES ('Fareed', 'Red Team'); 
INSERT INTO Players VALUES ('Farhan', 'Red Team'); 

INSERT INTO Players VALUES ('Sabique', 'Yellow Team'); 
INSERT INTO Players VALUES ('Sadat', 'Yellow Team'); 
INSERT INTO Players VALUES ('Smrity', 'Yellow Team'); 
INSERT INTO Players VALUES ('Nala', 'Yellow Team'); 
INSERT INTO Players VALUES ('Cookie', 'Yellow Team'); 

INSERT INTO Players VALUES ('Zach', 'Green Team'); 
INSERT INTO Players VALUES ('Drew', 'Green Team'); 
INSERT INTO Players VALUES ('Matt', 'Green Team'); 
INSERT INTO Players VALUES ('Andrew', 'Green Team'); 
INSERT INTO Players VALUES ('Dylan', 'Green Team'); 

INSERT INTO Players VALUES ('Alex', 'White Team'); 
INSERT INTO Players VALUES ('AJ', 'White Team'); 
INSERT INTO Players VALUES ('Jackson', 'White Team'); 
INSERT INTO Players VALUES ('Anna', 'White Team'); 
INSERT INTO Players VALUES ('Cody', 'White Team'); 

--     c. There must be games and a game schedule such that each team plays each other team exactly once.

CREATE TABLE Games (GameID INT AUTO_INCREMENT PRIMARY KEY, game_time DATE, game_place VARCHAR(10));

INSERT INTO Games (game_time, game_place) VALUES ('20220906', 'Field 1');
INSERT INTO Games (game_time, game_place) VALUES ('20220906', 'Field 2');
INSERT INTO Games (game_time, game_place) VALUES ('20220913', 'Field 1');
INSERT INTO Games (game_time, game_place) VALUES ('20220913', 'Field 2');
INSERT INTO Games (game_time, game_place) VALUES ('20220920', 'Field 1');
INSERT INTO Games (game_time, game_place) VALUES ('20220920', 'Field 2');
INSERT INTO Games (game_time, game_place) VALUES ('20220927', 'Field 1');
INSERT INTO Games (game_time, game_place) VALUES ('20220927', 'Field 2');
INSERT INTO Games (game_time, game_place) VALUES ('20221004', 'Field 1');
INSERT INTO Games (game_time, game_place) VALUES ('20221004', 'Field 2');
INSERT INTO Games (game_time, game_place) VALUES ('20221011', 'Field 1');
INSERT INTO Games (game_time, game_place) VALUES ('20221011', 'Field 2');
INSERT INTO Games (game_time, game_place) VALUES ('20221018', 'Field 1');
INSERT INTO Games (game_time, game_place) VALUES ('20221018', 'Field 2');
INSERT INTO Games (game_time, game_place) VALUES ('20221025', 'Field 1');

--     d. The schedule must associate two teams with each game, and designate one of the two as the host (responsible for bringing the after-game snacks).

--     e. Assignment of host status (snack bringer) must be fairly evenly distributed to the teams such that the difference between host games of team with 
--        most games as host and host games of team with fewest games as host is not bigger than 2 (ideally 1).
--     f. Tables must not replicate data unnecessarily, which is to say that any data that appears in more than one table must be a primary or candidate key
--        in at least one table, and represent a foreign key in any other table where it appears.

