create database project1;
use project1;
select*from kerala;

/* show the PC_Name where communist party of india;*/
select PC_Name from kerala where Party = 'Communist Party Of India';

/*showing the no.of Electors from Poonani who votes for Communist Party Of India*/
select Electors from kerala where PC_Name='Poonani';

/*Showing the Winning_candidate who have got the large amount of votes*/ 
select Winning_candidate from kerala
order by Vote desc limit 1;

/*showing the party which got large no.of votes*/
SELECT Party FROM kerala ORDER BY Vote DESC limit 1;

/*list of pc_names whose turnout greater than or qual to 80*/
select PC_Name from kerala where Turnout>=80;

/*SHOWING THE TOTAL NO.OF PC_NAMES ARE PRESENT IN THE TABLE*/
SELECT COUNT(*) AS PC_Name FROM kerala;

/*SHOWING THE NO.OF PARTYS WHERE Type Sc  in year 1962*/ 
SELECT COUNT(*) AS Party FROM kerala WHERE Type='SC' AND Year=1962;

/*show the first Parliamentary Constituency Number and the details from the table*/
select*from kerala order by No asc limit 1;

/*SHOWING THE DIFFERENCE IN VALUE  BETWEEN THE NO.OF ELECTORS AND NO.OF VOTES FROM AMBALAPUZHA IN THE YEAR 1962*/
SELECT ABS(Electors - Vote) AS value_difference
FROM kerala where PC_Name='Ambalapuzha' AND Year=1962;

/*showing that which part have the major amount of participation*/
select Party,count(*)from kerala group by Party order by count(*) desc limit 1;

/*showing the party which have maximum amt of turnout*/
select Party from kerala order by Turnout desc limit 1;

/*Checking wheather the given staement 'Kodikunnil Suresh'is in'Communist Party Of India' if it is true print value 1 ,if it is false print value 2*/
select if('Kodikunnil Suresh'='Communist Party Of India',"value1","value2")as result;

/*Display PC_Name starting with the letter c and Having an independent party*/
select PC_Name,Party from kerala where PC_Name like 'C%' and Party='Independent';

/*Display the party which have winned more in the year 2019*/
select Party,count(*) from kerala where Year='2019' group by Party  order by count(*) desc limit 1;



