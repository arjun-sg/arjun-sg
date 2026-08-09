use skill_ledger;

select * from students;

select * from courses;

select * from enrollments;

-- Business Questions, Insights & Recommendations :-

-- 1) How many students have signed up on the platform?

select count(*) as Total_Students_SignedUp from students;

-- Business Insights :-
-- This analysis provides the total number of students who have registered on the learning platform.
-- It serves as a key indicator of the platform's overall user base and adoption.
-- Stakeholders can monitor this metric to measure business growth over time.
-- The result also helps evaluate the effectiveness of student acquisition initiatives.

-- Business Recommendations :-
-- Continue monitoring student registrations on a monthly basis.
-- Compare growth trends against marketing campaigns.
-- Identify periods of high and low registrations.
-- Use these insights to improve customer acquisition strategies.


-- 2) How many courses are available under each category?

select category as Course_Category, count(course_name) as No_of_Courses from courses group by category;

-- Business Insights :-
-- This analysis shows how courses are distributed across different categories.
-- It helps determine whether the platform offers a balanced course catalog.
-- Categories with fewer courses may indicate potential expansion opportunities.
-- The findings support strategic planning for future course development.

-- Business Recommendations :-
-- Introduce more courses in underrepresented categories.
-- Regularly review category-wise demand.
-- Maintain a balanced learning portfolio.
-- Expand categories with growing learner interest.


-- 3) What is the average course fee for each course category?

select category as Course_Category, round(avg(Course_fee),2) as Avg_Fee_by_Category from courses group by category;

-- Business Insights :-
-- This analysis compares average pricing across course categories.
-- It helps identify premium and budget-friendly categories.
-- Stakeholders can evaluate whether pricing aligns with course value.
-- The findings support pricing and revenue strategies.

-- Business Recommendations :-
-- Review pricing for categories with unusually high or low fees.
-- Benchmark pricing against competitors.
-- Offer discounts where appropriate.
-- Optimize pricing based on demand.


-- 4) How many students prefer each learning mode?

select learning_mode, count(learning_mode) from students group by Learning_Mode;

-- Business Insights :-
-- This analysis identifies students' preferred learning modes.
-- It helps determine whether learners favor Live, Recorded, or Hybrid classes.
-- The findings support better content delivery planning.
-- Understanding learner preferences improves overall learning experience.

-- Business Recommendations :-
-- Increase investment in the most preferred learning mode.
-- Improve content quality for less popular modes.
-- Collect learner feedback regularly.
-- Continuously optimize course delivery methods.


-- 5) How many certificates have been issued?

select count(Certificate_Issued) as No_of_Certificates_Issues from Enrollments where Certificate_Issued = "Issued";

-- Business Insights :-
-- This analysis measures the total number of certificates issued.
-- It reflects successful course completion by learners.
-- Higher certification numbers indicate better learner engagement.
-- The findings help evaluate the effectiveness of the platform.

-- Business Recommendations :-
-- Encourage students to complete certification requirements.
-- Introduce completion reminders.
-- Monitor certification trends over time.
-- Improve learner engagement initiatives.


-- 6) Which education level has enrolled in the highest number of courses?

select education_level, count(Enrollment_ID) as No_of_Courses_Enrollment from Students S inner join Enrollments E on S.Student_ID = E.Student_ID group by education_level;

-- Business Insights :-
-- This analysis identifies which educational backgrounds contribute the most enrollments.
-- It helps understand the platform's primary learner segments.
-- The results reveal which groups are most engaged in online learning.
-- These insights support targeted course offerings and marketing strategies.

-- Business Recommendations :-
-- Design specialized learning paths for high-engagement education groups.
-- Create awareness campaigns for underrepresented learner segments.
-- Tailor course content based on educational backgrounds.
-- Improve outreach strategies to attract a diverse learner base.


-- 7) What is the average final score achieved by students from each education level?

select education_level, round(avg(final_score),3) as Avg_Final_Score from students s inner join enrollments e on s.student_id = e.student_id group by education_level;

-- Business Insights :-
-- This analysis compares academic performance across different education levels.
-- It highlights how educational backgrounds influence learner outcomes.
-- The results identify groups that perform consistently well or require support.
-- These findings assist in improving learner success rates.

-- Business Recommendations :-
-- Provide additional learning resources for lower-performing groups.
-- Offer advanced content to high-performing learners.
-- Monitor score improvements over time.
-- Personalize learning support where needed.


-- 8) Which referral source has brought the highest number of enrolled students?

select Referral_Source, count(*) as Total_Enrollment from Enrollments e left join Students s on e.student_id = s.student_id group by s.Referral_source;

-- Business Insights :-
-- This analysis evaluates the effectiveness of different student acquisition channels.
-- It identifies the referral sources generating the highest enrollments.
-- The results measure the success of marketing initiatives.
-- These insights help optimize future promotional activities.

-- Business Recommendations :-
-- Increase investment in high-performing referral channels.
-- Review the effectiveness of low-performing campaigns.
-- Track referral performance regularly.
-- Allocate marketing budgets based on measurable results.


-- 9) How many enrollments have been recorded for each course level?

select course_level, count(Enrollment_ID) as No_of_Enrollments from Courses c inner join Enrollments e on c.course_id = e.course_id group by course_level;

-- Business Insights :-
-- This analysis compares enrollments across Basic, Intermediate, and Advanced courses.
-- It identifies learner preferences for different course levels.
-- The findings indicate how students progress through learning paths.
-- These insights support future curriculum planning.

-- Business Recommendations :-
-- Expand course levels with consistently high demand.
-- Promote advanced courses to existing learners.
-- Review course progression strategies.
-- Balance the course portfolio across all levels.


-- 10) Which cities have produced the highest number of enrollments?

select city, count(Enrollment_ID) as No_of_Enrollments from students s inner join enrollments e on s.student_id = e.student_id group by city order by No_of_Enrollments desc;

-- Business Insights :-
-- This analysis identifies the cities that contribute the highest number of course enrollments on the learning platform.
-- It helps stakeholders understand the geographical distribution of learner demand across different regions.
-- The findings highlight high-performing markets where the platform has established a strong presence.
-- These insights support data-driven decisions for regional marketing, business expansion, and resource allocation.

-- Business Recommendations :-
-- Increase marketing investments in cities with consistently high enrollment volumes to maximize business growth.
-- Develop targeted promotional campaigns for cities with lower enrollments to improve learner acquisition.
-- Analyze the factors contributing to strong performance in top-performing cities and replicate successful strategies elsewhere.
-- Continuously monitor city-wise enrollment trends to support regional planning and optimize business expansion initiatives.


-- 11) How many students have scored higher than the overall average final score across all enrolled students?

select count(*) as Above_Average_Score_Students from enrollments where Final_Score > (select avg(Final_Score) from enrollments) ;

-- Business Insights :-
-- This analysis identifies students who have performed above the platform's overall average final score.
-- It helps stakeholders recognize high-performing learners and measure academic excellence.
-- The findings provide a benchmark for evaluating individual student performance.
-- These insights support learner recognition and performance monitoring initiatives.

-- Business Recommendations :-
-- Recognize high-performing students through certificates, badges, or reward programs.
-- Encourage these learners to enroll in advanced courses to continue their learning journey.
-- Analyze common characteristics of top performers to improve student success strategies.
-- Monitor performance trends regularly to identify future high-achieving learners.


-- 12) Which course category has generated the highest total revenue from enrollments?

with Category_Revenue AS (
	select Category, sum(Course_Fee) as Total_Revenue from courses c inner join enrollments e on c.course_id = e.course_id group by category
)
select Category, Total_Revenue from Category_Revenue order by Total_Revenue desc;

-- Business Insights :-
-- This analysis calculates the total revenue generated by each course category.
-- It identifies the business areas contributing the most to the platform's overall income.
-- The findings highlight categories with the strongest commercial performance.
-- These insights support strategic investment and future course development decisions.

-- Business Recommendations :-
-- Continue expanding high-revenue course categories with additional learning paths.
-- Review low-performing categories to identify pricing or marketing improvements.
-- Allocate promotional budgets based on revenue contribution rather than enrollment volume alone.
-- Monitor category-wise revenue trends to support long-term business growth.


-- 13) Rank all courses within each category based on the total number of enrollments.

select category, course_name, count(enrollment_id) as total_enrollments, 
rank() over (
partition by category order by count(enrollment_id) desc
) as course_rank from courses c inner join enrollments e on c.course_id = e.course_id group by category, course_name order by category, course_rank;

-- Business Insights :-
-- This analysis ranks courses within each category according to their enrollment performance.
-- It helps stakeholders compare similar courses rather than comparing unrelated subject areas.
-- The findings identify category leaders and reveal opportunities for improving lower-ranked courses.
-- These insights support informed decisions on course planning and portfolio optimization.

-- Business Recommendations :-
-- Promote top-ranked courses as flagship offerings within their respective categories.
-- Review lower-ranked courses to improve content quality, pricing, or marketing.
-- Expand successful courses with advanced modules or certifications.
-- Periodically review rankings to ensure course offerings remain competitive.


-- 14) Develop a stored procedure that displays enrollment statistics for a selected course.

Delimiter //
create procedure GetCourseEnrollmentStatistics (
in p_course_id varchar(10))
begin 
select c.course_id, course_name, course_level, category, count(enrollment_id) as Total_Enrollments, round(avg(final_score),2) as Average_Score from courses c inner join enrollments e
on c.course_id = e.course_id where c.course_id = p_course_id group by c.course_id, c.course_name, c.category, c.course_level;
end //
Delimiter ;

call GetCourseEnrollmentStatistics('SGSG31');

-- Business Insights :-
-- This analysis enables stakeholders to retrieve key enrollment statistics for any course on demand.
-- It improves reporting efficiency by eliminating the need to repeatedly write similar SQL queries.
-- The procedure provides consistent and standardized reporting across different courses.
-- These insights support operational reporting and quicker business decision-making.

-- Business Recommendations :-
-- Use stored procedures to automate frequently requested business reports.
-- Standardize reporting logic to improve consistency across teams.
-- Expand procedures to include additional performance metrics as business requirements evolve.
-- Schedule periodic execution of important procedures for management reporting.


-- 15) Classify students based on their final scores into Performance Categories (Excellent, Good, Average, Needs Improvement).

select case
		when Final_Score >= 9 then 'Excellent'
		when Final_Score >= 7.5 then 'Good'
		when Final_Score >= 6 then 'Average'
		else 'Needs Improvement'
	end as Performance_Category, count(*) as Total_Students from Enrollments group by Performance_Category order by Total_Students desc;
    
-- Business Insights :-
-- This analysis categorizes students into different performance groups based on their final scores.
-- It provides stakeholders with a clear understanding of the overall academic performance distribution.
-- The findings help identify groups requiring additional support as well as high-achieving learners.
-- These insights support targeted learning interventions and performance improvement initiatives.

-- Business Recommendations :-
-- Provide additional mentoring and support for students in lower performance categories.
-- Recognize high-performing learners through rewards and advanced learning opportunities.
-- Continuously monitor performance distribution to measure the effectiveness of academic interventions.
-- Use performance categories to personalize learner engagement and course recommendations.