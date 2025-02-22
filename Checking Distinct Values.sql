/*Checking Distinct Values*/

select Gender, Count(Gender) as TotalCount,
Count(Gender)*100.0 / (Select Count(*) from stg_Churn) as Percentage
From stg_churn 
Group By Gender

select Contract, Count(Contract) as TotalCount,
Count(Contract)*100.0/(select count(*) from stg_Churn) as Percentage
from stg_Churn 
Group by Contract

select Customer_Status, Count(Customer_STATUS) as TotalCount, Sum(Total_Revenue) as TotalRevenue,
sum(Total_Revenue)*100.0 / (select sum(Total_Revenue) from stg_Churn) as RevPercentage
From stg_Churn
Group By Customer_Status

Select State, Count(State) as TotalCount,
count(State)*100.0 / (select count(*) from stg_Churn) as Percentage
From stg_Churn
Group By State
Order By Percentage desc

Select Distinct Internet_Type From stg_Churn

