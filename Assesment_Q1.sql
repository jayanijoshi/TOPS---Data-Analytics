	-- QUESTION 1 --
		create table assessment_1_Q1
		(
		worker_id int not null unique,
		first_name varchar(25) not null,
		last_name varchar(25) not null,
		salary int not null,
		joining_date text,
		department varchar(25)
		);
    
    
    select * from assessment_1_Q1;
    insert into assessment_1_Q1 values (1, 'Monika', 'Arora', 100000, '2/20/2014 09:00', 'HR');
	insert into assessment_1_Q1 values (2, 'Niharika', 'Verma', 80000, '6/11/2014 09:00', 'Admin');
	insert into assessment_1_Q1 values (3, 'Vishal', 'Singhal', 300000, '2/20/2014 09:00', 'HR');
	insert into assessment_1_Q1 values (4, 'Amitabh', 'Singh', 500000, '2/20/2014 09:00', 'Admin');
	insert into assessment_1_Q1 values (5, 'Vivek', 'Bhati', 500000, '6/11/2014 09:00', 'Admin');
	insert into assessment_1_Q1 values (6, 'Vipul', 'Diwan', 200000, '6/11/2014 09:00', 'Accountant');
	insert into assessment_1_Q1 values (7, 'Satish', 'Kumar', 75000, '1/20/2014 09:00', 'Accountant');
	insert into assessment_1_Q1 values (8, 'Geetika', 'Chauhan', 90000, '4/11/2014 09:00', 'Admin');



-- A : Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending -- 
        
			/* Using Order By Clause */
        select * from assessment_1_Q1 order by first_name;  -- Sorting worker details by first_name ascending --
		select * from assessment_1_Q1 order by department desc;  -- Sorting worker details by department descending --
		
-- B : Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.--
			
            /* Using IN Clause */
        select * from assessment_1_Q1 where first_name in ('Vipul', 'Satish');
        
-- C : Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. --
		   /* Using " %_% " filter */
		select * from assessment_1_Q1 where first_name like '_____h';
        
-- D : Write an SQL query to print details of the Workers whose SALARY lies between 50000 to 250000. --
		   /* Using "AND" clause */
		select * from assessment_1_Q1 where salary>=50000 and salary<=250000;
		
-- E : Write an SQL query to fetch duplicate records having matching data in some fields of a table. --
		   /* Using "GROUP BY" and "HAVING" */
select worker_id,first_name,last_name,salary,joining_date,department, COUNT(*) as duplicates from assessment_1_q1 group by worker_id,first_name,last_name,salary,joining_date,department having COUNT(*) > 1;
        
-- F : Write an SQL query to show the top 6 records of a table. --
		   /* Using "limit" clause */
		select * from assessment_1_Q1 limit 6;
        
-- G : Write an SQL query to fetch the departments that have less than five people in them. --
		   /* Using "GORUP BY" , "COUNT" & "HAVING" clause */
		select department from assessment_1_Q1 group by department having count(*) < 5;
        
-- H : Write an SQL query to show all departments along with the number of people in there. --
		   /* Using "GORUP BY" , "COUNT" & "HAVING" clause */
		select department, count(*) as Total_staff from assessment_1_q1 group by department;

-- I : Write an SQL query to print the name of employees having the highest salary in each department. --
		   /* Using "GORUP BY" & "HAVING" clause */
		select department,max(salary) from assessment_1_q1 group by department having max(salary);
