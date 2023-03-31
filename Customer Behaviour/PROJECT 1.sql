create database project;
use project;
drop table salary_data;
select * from customer_behaviour;

/* order by Estimated salary - ascending order*/
select * from customer_behaviour order by EstimatedSalary;

/* order by Estimated salary - descending order*/
select*from customer_behaviour order by EstimatedSalary desc;

/* select max EstimatedSalary of customers*/
select max(EstimatedSalary) from customer_behaviour;

/* select min EstimatedSalary of customers*/
select min(EstimatedSalary) from customer_behaviour;

/* select avg EstimatedSalary of customers*/
select avg(EstimatedSalary) from customer_behaviour;

/*show User_id whoses Age is lies in the range between 25 and 30*/
select User_ID from customer_behaviour where Age between 25 and 30;

/* show Age of customers whoses salary greater than 20000*/
select Age from customer_behaviour where EstimatedSalary>20000;

/*show count of each male and female*/
SELECT Gender,COUNT(*) AS count FROM customer_behaviour GROUP BY gender;

/*Showing the gender which have the  Hihest salary from the data set*/
select Gender from customer_behaviour
order by EstimatedSalary desc
limit 1;

/*Showing the gender which Have the Highest EstimatedSalary from the purchased customer list*/
SELECT Gender,EstimatedSalary FROM customer_behaviour where Purchased=1 order by Purchased desc limit 1;

/*Showing details of the customer with AGE Less than or qual to 20 and EstimatedSalary=82000*/
select*from customer_behaviour where Age<=20 and EstimatedSalary=82000;

/*showing the details of only one selected  user-id*/
select*from customer_behaviour where User_ID='15628972';

/*showing details of the Highest purchased customer who have salary<=50000*/
SELECT Gender,Age,EstimatedSalary,Purchased FROM customer_behaviour where EstimatedSalary<=50000 and Purchased=1 order by Purchased desc limit 1;

/*showing only the female gender which have age<=20 and salary<40000*/
select*from customer_behaviour where Gender='Female'and Age<=20 and EstimatedSalary<40000;

/*showing avg salary of male in the table*/ 
SELECT AVG(EstimatedSalary) FROM customer_behaviour WHERE gender = 'Male';

/*showing max age of customer who have purchased product*/
select max(Age) from customer_behaviour where Purchased=1;




