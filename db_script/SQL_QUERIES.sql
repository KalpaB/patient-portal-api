CREATE DATABASE db_patient_records;



CREATE TABLE db_patient_records.patient_info(
primary_phone VARCHAR(10) NOT NULL UNIQUE,
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
secondary_phone VARCHAR(10),
mobile_phone VARCHAR(10),
contact_method_id INT,
home_email VARCHAR(35) NOT NULL,
work_email VARCHAR(35) NOT NULL,
communicate_email_id INT,
dob DATE,
age INT,
ssn VARCHAR(9),
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


--sample data enter


--In MySQL -> INT(10) does not mean a 10-digit number, it means an integer with a display width of 10 digits. The maximum value for an INT in MySQL is 2147483647 (or 4294967295 if unsigned).

You can use a BIGINT instead of INT to store it as a numeric. Using BIGINT will save you 3 bytes per row over VARCHAR(10).

If you want to Store "Country + area + number separately". Try using a VARCHAR(20). This allows you the ability to store international phone numbers properly, should that need arise.

SELECT * FROM db_patient_records.patient_info;

describe db_patient_records.patient_info;

INSERT INTO db_patient_records.patient_info VALUES('8178752796', 'Mr', 'Uvindu', null, 'Adhi', NULL, NULL, 1, 1, 1, 6, '3604 Nandina Dr', NULL, 'Flower Mound', 'TX', '75022', null, '8178752796', 1, 'uviadhi@gmail.com', 'uviadhi@gmail.com', 2, '1996/12/30', 25, '817875279', NULL);

--ALTER TABLE db_patient_records.patient_info MODIFY primary_phone BIGINT;

--ALTER TABLE db_patient_records.patient_info MODIFY mobile_phone BIGINT; 




--patient race table
SELECT * FROM db_patient_records.patient_race;

INSERT INTO db_patient_records.patient_race(race_type) VALUES('White');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Asian');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Japanese');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Samoan');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Black/African American');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Asian Indian');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Korean');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Guamanian or Chamorro');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Hispanic');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Chinese');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Vietnamese');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Other');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('American Indian/Alaskan Native');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Fillipino');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Native Havaiian or other Pacific Island');
INSERT INTO db_patient_records.patient_race(race_type) VALUES('Choose not to specify');


--patient_marital_status
SELECT * FROM db_patient_records.patient_marital_status;

INSERT INTO db_patient_records.patient_marital_status(marital_status_type) VALUES('Single');
INSERT INTO db_patient_records.patient_marital_status(marital_status_type) VALUES('Married');
INSERT INTO db_patient_records.patient_marital_status(marital_status_type) VALUES('Other');

--patient_gender
SELECT * FROM db_patient_records.patient_gender;

INSERT INTO db_patient_records.patient_gender(gender_type) VALUES('Male');
INSERT INTO db_patient_records.patient_gender(gender_type) VALUES('Female');
INSERT INTO db_patient_records.patient_gender(gender_type) VALUES('Unspecified');

--employment_status
SELECT * FROM db_patient_records.patient_employment_status;

INSERT INTO db_patient_records.patient_employment_status(employment_status_type) VALUES('Employed');
INSERT INTO db_patient_records.patient_employment_status(employment_status_type) VALUES('FT Student');
INSERT INTO db_patient_records.patient_employment_status(employment_status_type) VALUES('PT Student');
INSERT INTO db_patient_records.patient_employment_status(employment_status_type) VALUES('Other');
INSERT INTO db_patient_records.patient_employment_status(employment_status_type) VALUES('Retired');
INSERT INTO db_patient_records.patient_employment_status(employment_status_type) VALUES('Self Employed
');


--patient_contact_method
SELECT * FROM db_patient_records.patient_contact_method;

INSERT INTO db_patient_records.patient_contact_method(contact_method_type) VALUES('Primary Phone');
INSERT INTO db_patient_records.patient_contact_method(contact_method_type) VALUES('Secondary Phone');
INSERT INTO db_patient_records.patient_contact_method(contact_method_type) VALUES('Mobile Phone');
INSERT INTO db_patient_records.patient_contact_method(contact_method_type) VALUES('Home Email');
INSERT INTO db_patient_records.patient_contact_method(contact_method_type) VALUES('Work Email');



--patient_communicate_email_types
SELECT * FROM db_patient_records.patient_communicate_email_type;

INSERT INTO db_patient_records.patient_communicate_email_type(communicate_email_type) VALUES('Home');
INSERT INTO db_patient_records.patient_communicate_email_type(communicate_email_type) VALUES('Work');















