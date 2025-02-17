/* ASSIGNMENT FOR SQL MODULE - JAYANI JOSHI */

create schema Assignment;


--//////////////////////////////////////////////////////////////////////////////////////////--


create table Company
(
Company_ID int primary key,
Company_Name varchar(25) Not null,
Street varchar(25) not null,
City varchar(25) not null,
State varchar(25) not null,
ZIP varchar(25) not null
);

describe Company;

insert into company values
(144, 'Market-Co', 'MG Road', 'Bangalore', 'Karnataka', '560001'),
(147, 'Toll-Brothers', 'Vashi', 'Mumbai', 'Maharashtra', '400703'),
(148, 'Purtunes', 'Dindoli', 'Surat', 'Gujarat', '394210'),
(151, 'Lambonic Pvt. Ltd.', 'Baner', 'Pune', 'Maharashtra', '411045'),
(155, 'DiaTaire Jewels', 'CG Road', 'Ahmedabad', 'GUjarat', '380009');

select * from company;

update company set Company_Name = 'Murcate Pvt Ltd' ;

--//////////////////////////////////////////////////////////////////////////////////////////--

create table Contact
(
Contact_ID int primary key,
Company_ID int,
foreign key contact(Company_ID) references company(Company_ID),
First_Name varchar(25) Not null,
Last_Name varchar(25) Not null,
Street varchar(25) not null,
City varchar(25) not null,
State varchar(25) not null,
ZIP varchar(25) not null,
IsMain boolean,
Email varchar(55) not null,
Phone varchar(12)
);

describe contact;

insert into contact values (1, 144, 'Kshitij', 'Upadhyay', 'SBR', 'Ahmedabad', 'Gujarat', '380058', 1 , 'kshitij.upadhyay@gmail.com', '9648225790');
insert into contact values (2, 144, 'Sakshi', 'Patel' , 'Udyon Vihar', 'Gurgaon', 'Haryana', '122008', 0 , 'Sakship23@outlook.com', '5854466778');
insert into contact values (3, 144, 'Ditya', 'Chaudhary', 'Reti Bunder', 'Thane', 'Maharashtra', '421302', 0 , 'ditsz0607@gmail.com', '8824975833');
insert into contact values (4, 144, 'Param', 'Shah', 'Dumas Road', 'Surat', 'Gujarat', '395007', 1 , 'Param__Shah@gmail.com', '9658661296');
insert into contact values (5, 144, 'Het', 'Bhatt', 'Koegaon Park', 'Pune', 'Maharashra', '411001', 0  , 'BhattHet@outlook.com', '8672365904' );

select * from contact;

--//////////////////////////////////////////////////////////////////////////////////////////--

create table ContactEmployee
(
Contact_EmployeeID int not null unique,
ContactID int,
foreign key ContactEmployee(ContactID) references Contact(Contact_ID),
Employee_id int Primary Key,
Contact_Date date,
Description varchar(100)
);

describe ContactEmployee;

insert into ContactEmployee values (205, 1, 15, '2004-09-07', 'Admin Department');
insert into ContactEmployee values (222, 2, 23, '2006-11-09', 'Sales Department' );
insert into ContactEmployee values (315, 3, 48, '2009-12-05', 'Sales Department');
insert into ContactEmployee values (212, 4, 19, '2002-05-07', 'HR Department');
insert into ContactEmployee values (308, 5, 33, '2008-02-02', 'R&D Department');

select * from ContactEmployee;

--//////////////////////////////////////////////////////////////////////////////////////////--

create table Employee
(
Employee_id int,
foreign key employee(Employee_id) references ContactEmployee(Employee_id),
First_name varchar(45) not null,
Last_name varchar(45) not null,
Salary decimal(10,2) not null,
hire_date date not null,
Job_title varchar(25) not null,
Email varchar(45) not null,
Phone varchar(12)
);

describe Employee;

insert into employee values
(15, 'Kshitij', 'Upadhyay', 700000, '2004-09-07', 'Administrative Head', 'kshitij.upadhyay@gmail.com', '9648225790'),
(19, 'Sakshi', 'Patel', 50000, '2006-11-09', 'Sale Assistant', 'Sakship23@outlook.com', '5854466778' ),
(23, 'Ditya', 'Chaudhary', 30000, '2009-12-05', 'Sales Trainee', 'ditsz0607@gmail.com', '8824975833' ),
(33, 'Param', 'Shah', 250000, '2002-05-07', 'HR Executive', 'Param__Shah@gmail.com', '9658661296'),
(48, 'Nrusha', 'Tripathi', 75000, '2008-02-02', 'R&D Engineer', 'BhattHet@outlook.com', '8672365904' );

select * from employee;

update employee set phone = '9684235589' where employee_id = 33;

SELECT DISTINCT e.First_name, e.Last_name
FROM Employee e
JOIN ContactEmployee ce ON e.Employee_id = ce.Employee_id
JOIN Contact c ON ce.ContactID = c.Contact_ID
JOIN Company co ON c.Company_ID = co.Company_ID
WHERE co.Company_Name = 'Murcate Pvt Ltd';
/*******************************************************************************************/

	-- 1. Statement to create the Contact table --
    
	/*	
        The query to create Contact table -:

		create table Contact
		(
		Contact_ID int primary key,
		Company_ID int,
		foreign key Contact(Company_ID) references Company(Company_ID),
		First_Name varchar(25) Not null,
		Last_Name varchar(25) Not null,
		Street varchar(25) not null,
		City varchar(25) not null,
		State varchar(25) not null,
		ZIP varchar(25) not null,
		IsMain boolean,
		Email varchar(45) not null,
		Phone varchar(12)
		); 
	*/
    
	-- 2. Statement to create the Employee table --
  
	/*
        The query to create Employee table -:

		create table Employee
		(
		Employee_id int ,
		foreign key employee(Employee_id) references Contactemployee(Employee_id),
		First_name varchar(45) not null,
		Last_name varchar(45) not null,
		Salary decimal(10,2) not null,
		hire_date date not null,
		Job_title varchar(25) not null,
		Email varchar(45) not null,
		Phone varchar(12)
		);
	*/
  
  
    -- 3. Statement to create the ContactEmployee table --
    
    	/*
		The query to create contactemployee table -:
    
		create table ContactEmployee
		(
		Contact_EmployeeID int not null unique,
		ContactID int,
		foreign key ContactEmployee(ContactID) references Contact(Contact_ID),
		Employee_id int Primary Key,
		Contact_Date date,
		Description varchar(100)
		);
    	*/
  
  
    -- 4. In the Employee table, the statement that changes Param Shah's phone number to 9684235589 --
    
    	/* 
		The statement to change the phone number of Param Shah -:
		update employee set phone = '9684235589' where employee_id = 33; 
    	*/
    
	-- 5. In the Company table, the statement that changes the name of “Urban Outfitters, Inc.” to “Urban Outfitters™ . --
    
    	/* 
		This Statement to update the Company Name is -:
		update company set Company_Name = 'Murcate Pvt Ltd' ; 
	*/
    
    -- 6. In ContactEmployee table, the statement that removes Dianne Connor’s contact event with Jack Lee (one statement). (HINT: Use the primary key of the ContactEmployee table to specify the correct record to remove.) --
    
    /*
	delete from ContactEmployee where contact_employeeid = (select employee_id from employee where first_name = 'Param' and last_name = 'Shah' ) and 
	employee_id = (select employee_id from employee where first_name = 'Sakshi' and last_name = 'Patel');					 
    */
    
    -- 7. Write the SQL SELECT query that displays the names of the employees that have contacted Toll Brothers (one statement). Run the SQL SELECT query in MySQL Workbench. Copy the results below as well. -- 
    
    /*
	select e.first_name,e.last_name from contact e join company c on e.company_id = c.company_id where company_Name = 'Toll-Brothers';

	select e.* from contact e join company c on e.Company_id = c.Company_ID where company_name = 'Toll-Brothers';  -- Displays all details of the employee working for Toll-Brothers --
			
    */
    
    -- 8. What is the significance of “%” and “_” operators in the LIKE statement? --
    
    /* 
		ANS -:  
		1. The operator '%' signifies "Multiple chararacters", and can be used when the string needs to be filtered and has more than one character
		before and after the filter. Example : We want to get a row with string containing "ss" with multiple characters before and after the string from the 
		FIRST NAME column then '%ss%' will be executed. 
										Statement : select * from schools where firstname like '%SS%'
    
		2.  The operator '_' signifies "A single chararacter", and can be used when the string needs to be filtered with one character before and after the filter.
		For example -: When we need to get the entries with some character between string "S-n" then the 'S_n' will be executed and after all the result with 
		the string having any one character between 'S' and 'N' will be displayed. 
										Statement : select * from report where lastname like '%S_n%'
    */
    
    -- 9. Explain normalization in the context of databases. --

    /*
		"Normalization" is a process in which the messed up or unscrapped data is organized and converted into the scrapped data in such a way that 
	         the data is easily readable and can be used by client without any complexities. The basic pipeline of normalization forms is fixed and is :
		
		 Pipleine :- Data - 1NF - 2NF - 3NF - BCNF(optional)

		There are 3 Common types of Normalization used in Data World :-

		1 NF : 1st Normalization form segregates and displays the duplicate values in the table in seperate rows

		2 NF : 2nd Normalization form mean the table is already in 1NF and after passing from 1NF and data is properly arranged. Now the Two tables 
		       are created for two different coulmns and then tables are joined using JOIN and are assigned PRIMARY/Foreign Key.
		       Here the Dependent columns are made independent.

		3 NF : After successfully processing through the 1NF and 2NF, the data is now passes through 3NF where all the columns in a table are made 
		       totally dependent on the Primary Key only.

		BC NF : BC NF stands for Boyce-Codd Normalization Form. This is the 3NF only, but a more stricter and more disciplined form.

    */
    
    -- 10. What does a join in MySQL mean? --
    
    /*
    "JOIN" is clause of MySQL which is used we want to display multiple columns from different tables together in one output.
    */
    -- 11. What do you understand about DDL, DCL, and DML in MySQL? --

    /*
    "DDL" stands for DATA DEFINITION LANGUAGE. It is used to create data/databses, alter it, and drop it permanantly. The changes made using DDL Commands are always automatically
    committed and cannot be reverted back.
    Some common commnds of DDL are 'CREATE', 'DROP', 'ALTER', 'RENAME', 'DESCRIBE' etc.
    
    "DCL" stands for DATA CONTROL LANGUAGE. It is used to access the data or control access given of the data to make further changes.
    One of the main DCL command is 'GRANT'.
    And other is 'REVOKE'. 
    
    "DML" stands for DATA MANIPULATION LANGUGE. It's used when the data structures in the databases needs to be updated or modified after they are created using DDL commands. 
    Only the values inserted into the databses can be manipulated using DML commands and not the database itself. 
    Most commonly used DML commands are mainly 'INSERT', 'SET', 'DELETE', 'UPDATE'.
    
    NOTE :: DELETE and DROP are not to be confused with each other. Both have two entirely different function in MySQL. 
    "DROP" removes the database from the server 
    permanantly and cannot be retrieved back. (Just like deleting the file from storage using command SHIFT+DELETE.)
    WHILE
    "DELETE" ony=ly deletes the data structure or database objects temporarily,(if not committed) and can be reverted and the data can be retrieved back uscing DCL commands.
    (Just like deleting the files from a folder and storing in the 'Recycle Bin')
    */
    
    -- 12. What is the role of the MySQL JOIN clause in a query, and what are some common types of joins? --
    
    /*
    "JOIN" clause is used in MySQL when we want to display multiple columns from multiple tables in one output.(The condition to use the JOIN clause correctly, is to make
    sure that all the tables that we desired to display together "MUST" have atleast one common column, to be assinged as Foreign Key connecting with the the Primary Key 
    of the table.)
    
    TYPES OF JOINS :-
    There are 3 Types of JOINS in MySQL, namely "INNER JOIN", "NATURAL JOIN", "LEFT JOIN" and "RIGHT JOIN".
            
        NATURAL JOIN :- Pick all the common data from both the tables connected
		
        INNER JOIN :- Similar to natural join, but in this we can decide the column from a table

		LEFT JOIN :- Table name mentioned first is by default taken as left join takes all the data from left table and takes only common data of left table from right table. 
    
		RIGHT JOIN :- Takes all the data from right table and takes only common data of right table  from left table 
    */
