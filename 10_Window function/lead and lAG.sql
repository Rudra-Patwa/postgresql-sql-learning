-- lead and lAG
USE campusx;
select * from marks;

select * , LAG(marks) OVER(PARTITION BY branch ORDER BY student_id),
			LEAD(marks) OVER(PARTITION BY branch ORDER BY student_id)
              from marks

-- Find the MoM revenew grown 
use zomato_case_study
SELECT * FROM zomato_case_study.orders;


SELECT 
    month,
    total_amount,
    LAG(total_amount) OVER (ORDER BY month_num) AS prev_month,
    total_amount - LAG(total_amount) OVER (ORDER BY month_num) AS diff,
    (total_amount - LAG(total_amount) OVER (ORDER BY month_num)) 
        / LAG(total_amount) OVER (ORDER BY month_num) AS growth_ratio
FROM (
    SELECT 
        MONTHNAME(date) AS month,
        MONTH(date) AS month_num,
        SUM(amount) AS total_amount
    FROM orders
    GROUP BY MONTHNAME(date), MONTH(date)
) t;