-- ASSESSMENT 1 by Jayani Joshi--
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
        
		/* Using "Order By" Clause */
        	select * from assessment_1_Q1 order by first_name;  -- Sorting worker details by first_name ascending --
		select * from assessment_1_Q1 order by department desc;  -- Sorting worker details by department descending --
		
-- B : Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.--
			
            	/* Using "IN" Clause */
        	select * from assessment_1_Q1 where first_name in ('Vipul', 'Satish');
        
-- C : Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. --
		/* Using " _ " filter */
		select * from assessment_1_Q1 where first_name like '_____h';
        
-- D : Write an SQL query to print details of the Workers whose SALARY lies between 50000 to 250000. --
		/* Using "AND" clause */
		select * from assessment_1_Q1 where salary>=50000 and salary<=250000;
		
-- E : Write an SQL query to fetch duplicate records having matching data in some fields of a table. --
		/* Using "GROUP BY" , "COUNT" and "HAVING" */
		select worker_id,first_name,last_name,salary,joining_date,department, COUNT(*) as duplicates from assessment_1_q1 group by worker_id,first_name,last_name,salary,joining_date,department having COUNT(*) > 1;
        
-- F : Write an SQL query to show the top 6 records of a table. --
		/* Using "limit" clause */
		select * from assessment_1_Q1 limit 6;
        
-- G : Write an SQL query to fetch the departments that have less than five people in them. --
		/* Using "GORUP BY" , "COUNT" & "HAVING" clause */
		select department from assessment_1_Q1 group by department having count(*) < 5;
        
-- H : Write an SQL query to show all departments along with the number of people in there. --
		/* Using "GORUP BY" & "COUNT" clause */
		select department, count(*) as Total_staff from assessment_1_q1 group by department;

-- I : Write an SQL query to print the name of employees having the highest salary in each department. --
		/* Using "GORUP BY" , "MAX" & "HAVING" clause */
		select department,max(salary) from assessment_1_q1 group by department having max(salary);

        
/********************************************************************************************************************************************/
	
    -- QUESTION 2 --
    
    create table assessment_1_q2
    (
    std_id int not null unique,
    std_name varchar(30) not null,
    sex varchar(10) not null,
    percentage int not null,
    class int not null,
    section varchar(2) not null,
    stream varchar(15) not null,
    DOB text not null
    );
    
    select * from assessment_1_q2;
    
    insert into assessment_1_q2 values (1001,'Surekha Joshi', 'Female', 82, 12, 'A', 'Science', '3/8/1998' );
    insert into assessment_1_q2 values (1002, 'Maahi Agarwal', 'Female', 56, 11, 'C', 'Commerce', '11/23/2008'  );
    insert into assessment_1_q2 values (1003, 'Sanam Verma', 'Male', 59, 11, 'C', 'Commerce', '6/29/2006');
    insert into assessment_1_q2 values (1004, 'Ronit Kumar', 'Male', 63, 11, 'C', 'Commerce', '11/5/1997');
    insert into assessment_1_q2 values (1005, 'Dipesh Pulkit', 'Male', 78, 11, 'B', 'Science', '14/09/2003');
    insert into assessment_1_q2 values (1006, 'Jahnavi Puri', 'Female', 60, 11, 'B', 'Commerce', '11/7/2008');
    insert into assessment_1_q2 values (1007, 'Sanam Kumar', 'Male', 23, 12, 'F', 'Commerce', '3/8/1998');
    insert into assessment_1_q2 values (1008, 'Sahil Saras', 'Male', 23, 11, 'C', 'Commerce', '11/7/2008');
    insert into assessment_1_q2 values (1009, 'Akshara Agarwal', 'Female', 72, 12, 'B', 'Commerce', '10/1/1996');
    insert into assessment_1_q2 values (1010, 'Stuti Mishra', 'Female', 39, 11, 'F', 'Science', '11/23/2008');
    insert into assessment_1_q2 values (1011, 'Harsh Agarwal', 'Male', 42, 11, 'C', 'Science', '3/8/1998');
    insert into assessment_1_q2 values (1012, 'Nikunj Agarwal', 'Male', 49, 11, 'C', 'Commerce', '28/06/1998' );
    insert into assessment_1_q2 values (1013, 'Akriti Saxena', 'Female', 89, 12, 'A', 'Science', '11/23/2008');
    insert into assessment_1_q2 values (1014, 'Tani Rastogi', 'Female', 82, 12, 'A', 'Science', '11/23/2008');
    
    
    
    
		-- A : To display all the records form STUDENT table. --
    	select * from assessment_1_q2;    
	
		-- B : To display any name and date of birth from the table STUDENT. --
	select std_name,DOB from assessment_1_q2;
	select std_name,DOB from assessment_1_q2 where std_name='Jahnavi Puri';  -- Displaying any random name with details --    

		-- C : To display all students record where percentage is greater or equal to 80 FROM student table. --
	select * from assessment_1_q2 where percentage>=80;
    
        	-- D : To display student name, stream and percentage where percentage of student is more than 80 --
	select std_name,stream,percentage from assessment_1_q2 where percentage>80;
        
		-- E : To display all records of science students whose percentage is more than 75 from student table. --
	select * from assessment_1_q2 where stream='Science' And percentage>75;
