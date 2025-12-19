use games;
show tables;
select * from games;
insert into games
values(151,"Future Racing","Racing","2024-10-01","Speed Studios");
select * from gamesales;
update gamesales set Price=62 where
GameID=2 and Platform='PlayStation';
SET SQL_SAFE_UPDATES = 0;
delete from gamesales where GameID=5;
select g.GameTitle,sum(s.UnitsSold) from games g inner join 
gamesales s on g.GameID=s.GameID group by GameTitle;
select g.GameTitle,max(s.UnitsSold) as maxi from games g inner join 
gamesales s on g.GameID=s.GameID 
where s.SalesRegion='North America' group by g.GameTitle
order by maxi desc limit 1;
desc games;
desc gamesales;
select max(UnitsSold) from gamesales 
where SalesRegion='North America';
select g.GameTitle,s.GameID from games g inner join gamesales s
on g.GameID=s.GameID;
select g.GameTitle,s.Platform,s.SalesRegion,s.UnitsSold from 
games g left join gamesales s on g.GameID=s.GameID;

select g.GameID,s.SalesRegion,s.Platform from games g right join 
gamesales s on g.GameID=s.GameID;
SELECT DISTINCT *
FROM gamesales
WHERE SalesRegion IN ('North America', 'Europe');
SELECT *
FROM gamesales
WHERE SalesRegion IN ('North America', 'Europe');

SELECT DISTINCT GameID, Platform, SalesRegion, UnitsSold, Price
FROM gamesales
WHERE SalesRegion IN ('North America', 'Europe');


 