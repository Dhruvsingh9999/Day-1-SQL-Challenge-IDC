select * from patient where age >=60;

select * from patient where service = 'emergency';

select week , patients_request from services_weekly where patients_request >=100;

select patient_id, name, age, satisfaction from patient where service = 'surgery' AND satisfaction <=70;

-- ||Extra Practice Questions ||

-- 1.Select the names and ages of patients whose service is 'ICU' OR their age is less than 18.	
 select name , age from patient where service = 'ICU' OR age <=18;

-- 2.Find the name, arrival_date, and departure_date for patients who arrived BETWEEN '2025-01-01' and '2025-06-30'.
select name , arrival_date , departure_date from patient where arrival_date BETWEEN '2025-01-01' AND '2025-06-30';

-- 3.Retrieve all records from services_weekly where the staff_morale is NOT 81 and the patients_admitted is greater than 50.
select * from services_weekly where staff_morale != 81 AND patients_admitted >=50;

-- 4.Show the patient_id and service for patients who have an age greater than 60 AND a satisfaction score less than 65.
select patient_id , service from patient where age >= 60 AND satisfaction <=65;

-- 5.List the names of all patients whose service is NOT 'general_medicine'.
select name from patient where service != 'general_medicine';
