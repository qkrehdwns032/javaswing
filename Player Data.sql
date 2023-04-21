CREATE DATABASE Player DEFAULT CHARACTER SET UTF8;

use Player;

CREATE TABLE player
(
	name char(255),
    age int,
    Country char(255),
    Height double,
    Position char(255),
    Number int
);

show tables;

INSERT INTO player(name,age,Country,Height,Position,Number) Values('Kepa',28,'Spain',189,'Goalkeeper',1);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Mendy',31,'France',194,'Goalkeeper',16);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Badiashile',21,'France',194,'Centre-Back',4);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Thiago Silva',38,'Brazil',181,'Centre-Back',6);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Chalobah',23,'England',192,'Centre-Back',14);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Ben Chilwell',26,'England',181,'Left-Back',21);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Reece James',23,'England',179,'Defender/Wing-Back',24);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Koulibaly',31,'France',186,'Centre-Back',26);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Azpilicueta',33,'Spain',178,'Defender/Wing-Back',28);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Cucurella',24,'Spain',173,'Defender/Wing-Back',32);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Fofana',22,'France',186,'Centre-Back',33);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Fernandez',22,'Argentina',178,'Midfielder',5);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Kante',32,'France',171,'Midfielder',7);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Kovacic',28,'Austria',177,'Midfielder',8);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Loftus-Cheek',27,'England',191,'Midfielder',12);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Mount',24,'England',181,'Midfielder',19);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Zakaria',26,'Switzerland',190,'Midfielder',20);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Enzo',32,'Argentina',178,'Midfielder',5);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Gallagher',23,'England',182,'Midfielder',23);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Chukwuemeka',19,'Austria',187,'Midfielder',30);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Aubameyang',33,'Gabon',186,'Striker',9);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Pulisic',24,'USA',178,'Winger',10);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Joao Felix',23,'Portugal',181,'Forward',11);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Mudryk',22,'Ukraine',175,'Winger',15);
INSERT INTO player(name,age,Country,Height,Position,Number) Values('Stering',28,'England',172,'Winger',17);

select * FROM player;
DELETE FROM player WHERE name = '123124';

CREATE TABLE Loan
(
	name char(255),
    age int,
    Country char(255),
    Height double,
    Position char(255),
    Number int
);

INSERT INTO Loan(name,age,Country,Height,Position,Number)Values('Sarr','24','France','182','Centre-Back','31');

SELECT * FROM Loan;

CREATE TABLE Coach
(
	name char(255),
    age int,
    Country char(255)
);

INSERT INTO coach(name,age,Country)Values('Potter','47','England');

DELETE FROM Loan;

SELECT * FROM coach;

CREATE TABLE Fixtures
(
	Date char(255),
    Type char(255),
    Time char(20),
	VS char(25)
);

INSERT INTO Fixtures(Date,Type,Time,VS)Values('Sun 2 APR 2023','PREMIER LEAGUE','01:30','Aston Villa');
DELETE FROM Fixtures WHERE Date = '3132' and VS = '123123';


SELECT * FROM Fixtures;

CREATE TABLE result
(
	Date char(255),
    Type char(255),
    Win char(255),
    Lose char(255),
    Score char(255) #  a : a 이런 식  더보기 버튼 만들기 lineup goal ex..
);


CREATE TABLE League
(
	Team char(25),
    Play int,
    Win int,
    Draw int,
    Lose int,
    GD char(5), # Goal Differences
    PTS int  # Points
);

ALTER TABLE League ADD COLUMN Ranking int NOT Null First;

INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('1','Arsenal','28','22','3','3','+40',69);
DELETE FROM League WHERE Ranking = '1';

INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('1','Arsenal','31','23','5','3','+43',74);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('2','Mancity','30','22','4','4','+50',70);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('3','Man Utd','30','18','5','7','+9',59);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('4','Newcastle','30','15','11','4','+24',56);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('5','Tottenham','31','16','5','10','+12',53);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('6','Aston Villa','31','15','5','11','+4',50);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('7','Brighton','29','14','7','8','+17',49);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('8','Liverpool','30','13','8','9','+20',47);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('9','Brentford','31','10','13','8','+5',43);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('10','Fulham','30','12','6','12','+1',42);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('11','Chelsea','31','10','9','12','-3',39);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('12','Crystal Palace','31','9','9','13','-9',36);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('13','Wolves','31','9','7','15','-16',34);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('14','Bournemouth','31','9','6','16','-28',33);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('15','West Ham','30','8','7','15','-12',31);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('16','Leeds','31','7','8','16','-20',29);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('17','Everton','31','6','9','16','-22',27);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('18','Nottm Forest','31','6','9','16','-32',27);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('19','Leicester','31','7','4','20','-14',25);
INSERT INTO League(Ranking,Team,Play,Win,Draw,Lose,GD,PTS)Values('20','Southampton','31','6','5','20','-29',23);


SELECT * FROM League;


ALTER TABLE result ADD COLUMN Draw char(20) NOT NULL AFTER Lose;

INSERT INTO result(Date,Type,Win,Lose,Draw,Score)Values('Sun 19 MAR 2023','PREMIER LEAGUE','-','-','Everton','2-2');

DELETE FROM result;

SELECT * FROM result;