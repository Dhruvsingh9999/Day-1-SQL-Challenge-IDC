-- 1. List all patients sorted by age in descending order.
select * from patient order by age desc;

-- 2. Show all services_weekly data sorted by week number ascending and patients_request descending.
select * from services_weekly order by week asc, patients_request desc;


create table staff(
staff_id VARCHAR(50) Primary key,
staff_name Char(50) NOT NULL,
role VARCHAR(50) NOT NULL,
service VARCHAR(50) NOT NULL
);
-- 3. Display staff members sorted alphabetically by their names.
select * from staff order by staff_name asc;

/* 4. Retrieve the top 5 weeks with the highest patient refusals across all services, showing week, service, 
   patients_refused, and patients_request. Sort by patients_refused in descending order. */
select week, service, patients_refused, patients_request from services_weekly order by patients_refused desc limit 5;
-- 5.
select service, avg(satisfaction) from patient group by service having avg(satisfaction)>40;
-- 6.
select service, avg(age) ,sum(satisfaction), count(patient_id) as total_patient from patient group by service ;

-- 7.Retrieve the name, age, and satisfaction score of all patients, sorted primarily by their satisfaction score 
--   in descending order ($\text{highest first}$), and secondarily by age in ascending order ($\text{youngest first}$) to break ties
select name , age , satisfaction from patient order by satisfaction desc, age asc;

-- 8.List the patient ID, service, and arrival date for all patients. Order the results first by service alphabetically 
--  ($\text{ASC}$), and then by arrival date chronologically ($\text{oldest first}$).
select patient_id , service , arrival_date from patient order by service asc , arrival_date desc;

-- 9.Find the patient ID and departure date for the 20 patients who had the shortest hospital stay 
--   (i.e., the earliest departure_date), sorted by the departure date in ascending order.
select patient_id , departure_date from patient order by departure_date asc limit 20;

-- 10.Identify the service departments that have treated more than 100 patients AND have an average satisfaction score less than 80. 
--   List the service name, total patient count, and average satisfaction score.
select service ,count(patient_id) as total_patient_count, avg(satisfaction) as satisfaction_score from patient group by service having COUNT(patient_id) > 100 and avg(satisfaction) <80;