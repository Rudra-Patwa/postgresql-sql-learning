-- FIRST_VALUE/LAST VALUE / NTH VALUE 


USE campusx;
select * from marks;
-- fist value()
SELECT * , FIRST_VALUE(marks) OVER(ORDER BY marks DESC) FROM marks;
SELECT * , FIRST_VALUE(name) OVER(ORDER BY marks DESC) FROM marks;

-- last value
SELECT * , LAST_VALUE(marks) OVER(ORDER BY marks DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) FROM marks;

-- NTH_VALUES() THIS GIVES US THE SPECIFIC VALUES 
SELECT * ,NTH_VALUE(name,2) OVER (partition by branch order by marks DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) FROM marks;

-- toppers 
select name , branch , marks  from (SELECT * , FIRST_VALUE(name) over(partition by branch order by marks desc) as 'topper_name'
 , FIRST_VALUE(marks) over(partition by branch order by marks desc) as 'topper_marks' FROM marks ) t
 where t.topper_name = t.name and t.topper_marks = t.marks
 
 -- loosers 
 select name , branch , marks  from (SELECT * , FIRST_VALUE(name) over(partition by branch order by marks desc ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as 'topper_name'
 , FIRST_VALUE(marks) over(partition by branch order by marks desc ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as 'topper_marks' FROM marks ) t
 where t.topper_name = t.name and t.topper_marks = t.marks