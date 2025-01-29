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