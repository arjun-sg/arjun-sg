create database Skill_Ledger;

use Skill_Ledger;

create table students (
	Student_ID varchar (10) primary key,
	Student_Name varchar (40) not null,
	Gender varchar (10),
	Signup_Date datetime,
	Age int,
	Education_Level varchar(20),
	Employment_Status varchar(20),
	Referral_Source varchar(20),
	Learning_Mode varchar(20),
	City varchar(20) );
    
create table Courses (
	Course_ID varchar (10) primary key,
	Course_Name varchar (20) not null,
	Course_Level varchar (15),
	Category varchar (25),
	Duration_Hours int,
	Course_Fee int,
	constraint check_fee check (Course_Fee between 2500 and 15000) ) ;
        
create table Enrollments (
	Enrollment_ID varchar(10) primary key,
	Student_ID varchar (10),
	Course_ID varchar (10),
	Enrollment_Date datetime,
	Final_Score decimal (3,1),
	Grade_Earned varchar (15) Not Null,
	Certificate_Issued varchar (10),
	Foreign key (Student_ID) references Students(Student_id),
	Foreign key (Course_ID) references Courses(Course_id),
	Constraint Check_Score check (Final_Score between 4 and 10) );
    
select * from students;

select * from courses;

select * from enrollments;

show tables;

Describe students;

Describe Courses;

Describe Enrollments;