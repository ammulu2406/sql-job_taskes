create schema job_tasks;

use job_tasks;

create table requriment_survey(
     S_No int auto_increment primary key,
     Project_Name varchar(50) not null,
     Requestor_position Varchar(50) not null,
	 Mandatory_skills nvarchar(300) not null,
     Experience_range nvarchar(100) not null,
     Delivery_manager varchar(50) not null,
     Engagement_mangement varchar(50) not null
);

select * from job_tasks.requriment_survey;



create table Candidates_details(
     S_No int auto_increment primary key,
     First_Name varchar(50) not null,
     Last_Name Varchar(50) not null,
	 Gender nvarchar(300) not null,
	 Email nvarchar(100) not null,
     Mobile_number nvarchar(100) not null,
     Experience_Range nvarchar(50) not null,
     Primary_skills nvarchar(200) not null,
     Secondary_Skills nvarchar(200) not null
);



select * from job_tasks.candidates_details;


create table Feedback_details(
     S_No int auto_increment primary key,
     First_Name varchar(50) not null,
     Last_Name Varchar(50) not null,
	 Recruiter_feedback nvarchar(300) not null,
	 Level_1_Feedback nvarchar(100) not null,
     Level_2_Feedback nvarchar(100) not null,
     Hr_Feedback  nvarchar(50) not null,
     Offer_Status  varchar(50) not null,
     Final_feedback varchar(50) not null
);


select * from job_tasks.feedback_details;

select * from job_tasks.candidates_details where Experience_Range >= 5;

select job_tasks.candidates_details.first_name,job_tasks.candidates_details.last_name,email,mobile_number,recruiter_feedback,offer_status from job_tasks.candidates_details,feedback_details;

select first_name,Last_name,recruiter_feedback from job_tasks.feedback_details;


select first_name,Last_name,Level_1_Feedback from job_tasks.feedback_details;

select S_No,First_Name,Last_name,Level_2_Feedback from job_tasks.feedback_details;

select first_name,Last_name,Offer_Status from job_tasks.feedback_details;

select first_name,Last_name,Hr_Feedback from job_tasks.feedback_details;

select S_No,first_name,Last_name,Final_feedback from job_tasks.feedback_details;

select * from job_tasks.candidates_details;

select job_tasks.candidates_details.S_No,job_tasks.candidates_details.First_Name,job_tasks.candidates_details.Last_Name,email,job_tasks.feedback_details.Offer_Status from job_tasks.candidates_details, job_tasks.feedback_details;



 






















