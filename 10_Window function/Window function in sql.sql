-- problem question 
-- Q1 Find all the students who have marks higher thatn the avg marks of their respective

use campusx;
select * from marks;

select * from (select *,avg(marks) OVER (PARTITION BY branch) as 'branch_avg' from marks) t
where t.marks > t.branch_avg

