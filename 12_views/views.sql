
use flights;

select * from flights;
create view indigo as
select * from flights where Airline = 'Indigo';

select * from indigo;

show tables;

