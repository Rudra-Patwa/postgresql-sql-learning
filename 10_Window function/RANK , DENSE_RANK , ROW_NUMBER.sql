-- Window unctions (RANK , DENSE_RANK , ROW_NUMBER)

USE campusx;
select * from marks;

-- put order by is important with rannk () funciton
select *, RANK() OVER(ORDER BY marks DESC) from marks; -- rank on overall table 
select *, RANK() OVER(partition by branch ORDER BY marks DESC) from marks ;-- rank on branch wise table 

-- Dence rank ()
select *, RANK() OVER(partition by branch ORDER BY marks DESC) , DENSE_RANK() OVER(PARTITION BY branch ORDER BY marks DESC) from marks ;-- dence rank on branch wise table 

-- row_number()
select * , ROW_NUMBER() OVER() FROM marks; -- every data is getting a row number 
select * , ROW_NUMBER() OVER(PARTITION BY branch) FROM marks -- every data is getting a row number 
select * ,concat(branch,'-', ROW_NUMBER() OVER(PARTITION BY branch)) FROM marks -- every data is getting a row number 

-- problem question 
use zomato_case_study
SELECT * FROM zomato_case_study.orders;

select * from (SELECT 
				monthname(date) as 'month',
				user_id,
				sum(amount) as 'total',
				RANK() OVER (PARTITION BY monthname(date) ORDER BY sum(amount) DESC) AS 'rank'
				FROM orders 
				group by monthname(date) , user_id ) t
where t.rank < 3
order by month desc, t.rank asc;
