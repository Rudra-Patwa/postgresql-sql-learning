# Characters manipulations
use movies;
create database movies;
SELECT * FROM movies.movies;

select upper(title_x) from movies;

select concat('concat ',title_x ,' ') from movies
select concat_ws('@',title_x,title_y) from movies

-- Substring from string 
-- Remember subtring will alyws start with 1 indextion unlike pythone 0 indexing
select substr(title_x,3) from movies;
select substr(title_x,1,3) from movies;
select substr(title_x,-2) from movies;

-- Replace

select REPLACE("HELLO WORLD",'WORLD','INDIA');
SELECT * FROM MOVIES;

SELECT title_x from movies 
where title_x = reverse(title_x);

-- length() vs CHAR_LENGTH()
select title_x , length(title_x)from movies ;
select title_x, length(title_x) != CHAR_LENGTH(title_x) from movies ;

select insert("hello world",6,8, " india");

-- LEFT() RIGHT()
SELECT LEFT(title_x,3) from movies ;
SELECT RIGHT(title_x,6) from movies ;

-- TRIM() remove spaces or charectors
select TRIM("      NITISH         " );
select TRIM(BOTH "." FROM ".............NITITHIS...........");
select TRIM(LEADING "." FROM ".............NITITHIS...........");
select TRIM(TRAILING "." FROM ".............NITITHIS...........");

-- LTRIM(), RTRIM() ONLY removes spaces trim ka chota bhai
SELECT LTRIM('      NITISH       ') -- REMOVE BOTH SIDE SPACES
SELECT RTRIM('     NITHISH       ') -- REMOVE SPACES FROM END

-- SUBSTRING_INDEX() just similer to split function in python

SELECT SUBSTRING_INDEX("WWW.CAMPUSX.IN",'.',1)

-- STRCMP()

SELECT "Delhi" , "Mumbai"

-- locate() gives the indext values of char or location of char

select locate('w','hewllo world',4);

-- lpad() vs rpad()
select lpad('8888888888',14,"+91 ");
select lpad('8888888888',14,"+91");
select lpad('8888888888',13,"+91");

select rpad('8888888888',14,"+91 ");
select rpad('8888888888',14,"+91");
select rpad('8888888888',13,"+91");