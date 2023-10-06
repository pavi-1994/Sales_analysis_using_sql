/* Question 1:
Table: `Transaction`
Columns: `trans id`, `trans date`, `trans amount`
📜 Task: Fetch the `id` and `date` for every month which has the highest transaction amount. *(Note: Multiple transactions can occur on a single day by one trans id.)*
*/
Select trans id , trans date, trans_amount
from
(Select trans id , trans date, trans amount rank() over(partition by extract(month from trans_date)order by trans amount) as rank_trans
From Transaction)
Where rank_trans=1;
 
/*Question 2:
Table: `emp`
Columns: `Emp_id`, `Emp_name`, `dob`
📜 Task: Considering a company policy where employees aged 60 or more should retire, retrieve the list of employees who will be retiring in 2024.
*/
Select emp_id,emp_name,
 From
 (Select emp_id , emp_name , dob,
(Case 
When  2024- extract(year from dob)=60 then 1
Else 0
End ) as  will_retire
From emp) employees
where will_retire=1


/* Question 3:
Given:
Table A: 
ids: 1, 2, 3, 4, 5, 6, 7, 8, 9, 19
Table B: 
ids: 1, 2, 3, 4, 5*/
-- --------------------------------------------------------------------------------------------------------------------
-- Task: What would be the output for inner join, left join, right join, and full outer join between these tables?

For inner join  it will return 1,2,3,4,5
For left join it will return 1, 2, 3, 4, 5, 6, 7, 8, 9, 19 (it will return null if there is no matching ids in the right table  )
For right join 1,2,3,4,5
From full outer join 1,2,3,4,5,6,7,8,9,19 (it will return null if there is no matching ids in the table  )



For inner join  it will  return 1,2,3,4,5
For left join it will return 1, 2, 3, 4, 5, 6, 7, 8, 9, 19 (it will return null if there is no matching ids in the right table  )
For right join 1,2,3,4,5
From full outer join 1,2,3,4,5,6,7,8,9,19 (it will return null if there is no matching ids in the table  )

