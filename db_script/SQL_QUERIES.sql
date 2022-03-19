CREATE DATABASE db_patient_records;



CREATE TABLE db_patient_records.patient_info(
primary_phone INT(10) NOT NULL UNIQUE,
title VARCHAR(5),
f_name VARCHAR(10) NOT NULL,
n_name VARCHAR(10) ,
l_name VARCHAR(20) NOT NULL,
m_name VARCHAR(10) ,
suffix VARCHAR(5) ,
gender_id INT,
marital_status_id INT,
employment_status_id INT,
race_id INT,
address_line_1 VARCHAR(30) NOT NULL,
address_line_2 VARCHAR(30) ,
city VARCHAR(20) NOT NULL,
state VARCHAR(20) NOT NULL,
zip_code INT NOT NULL,
secondary_phone INT(10),
mobile_phone INT(10),
contact_method_id INT,
home_email VARCHAR(35) NOT NULL,
work_email VARCHAR(35) NOT NULL,
communicate_email_id INT,
dob DATE,
age INT,
ssn int(9),
signature TEXT,
PRIMARY KEY(primary_phone),
FOREIGN KEY(communicate_email_id) REFERENCES db_patient_records.patient_communicate_email_type(communicate_email_id),
FOREIGN KEY(contact_method_id) REFERENCES db_patient_records.patient_contact_method(contact_method_id),
FOREIGN KEY (gender_id) REFERENCES db_patient_records.patient_gender(gender_id),
FOREIGN KEY(marital_status_id) REFERENCES db_patient_records.patient_marital_status(marital_status_id),
FOREIGN KEY (employment_status_id) REFERENCES db_patient_records.patient_employment_status(employment_status_id),
FOREIGN KEY(race_id) REFERENCES db_patient_records.patient_race(race_id)
);


-1-done
CREATE TABLE db_patient_records.patient_communicate_email_type(
communicate_email_id INT AUTO_INCREMENT PRIMARY KEY,
communicate_email_type VARCHAR(15) NOT NULL
);

-2-done
CREATE TABLE db_patient_records.patient_contact_method(
contact_method_id INT AUTO_INCREMENT PRIMARY KEY,
contact_method_type VARCHAR(25) NOT NULL 
);

-3-DONE
CREATE TABLE db_patient_records.patient_gender(
gender_id INT AUTO_INCREMENT PRIMARY KEY,
gender_type VARCHAR(20) NOT NULL
);

-4-DONE
CREATE TABLE db_patient_records.patient_marital_status(
marital_status_id INT AUTO_INCREMENT PRIMARY KEY,
marital_status_type VARCHAR(10) NOT NULL
);

-5-DONE
CREATE TABLE db_patient_records.patient_employment_status(
employment_status_id INT AUTO_INCREMENT PRIMARY KEY,
employment_status_type VARCHAR(20) NOT NULL
);

-6-DONE
CREATE TABLE db_patient_records.patient_race(
race_id INT AUTO_INCREMENT PRIMARY KEY,
race_type VARCHAR(50)NOT NULL
);



