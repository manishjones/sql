create database ams;

----------------------------------------------------------- REGISTERED CUSTOMER POLICY
create table registered_customer_policy ( customer_id varchar(5) ,FOREIGN KEY (customer_id) REFERENCES CUSTOMER (id) ,
policy_id varchar(5) ,FOREIGN KEY (policy_id) REFERENCES POLICY (ID) ,policy_number varchar(5),
date_of_booking date, agent_id varchar(5), nominee_name varchar(255),
 nominee_relationship varchar(255), nominee_date_of_birth date,
 total_sum_assured float, payment_mode varchar(10), commission_type varchar(5));

----------------------------------------------------------- CUSTOMER LOGIN


create table customer_login (customer_id varchar(10) PRIMARY KEY, username varchar(255), customer_password varchar(255)); 

-----------------------------------------------------------POLICY


create table policy (id varchar(10) PRIMARY KEY , name varchar(255), company_name varchar(255),company_id varchar(5),company_address varchar(255),key_contact_name varchar(255), key_contact_number varchar(10),company_email varchar(255), licence_registration_date date,licence_expiry_date date ); 

-----------------------------------------------------------ADMIN_LOGIN
create table admin_login (admin_id varchar(10) PRIMARY KEY, adminname varchar(255), admin_password varchar(255));
-----------------------------------------------------------AGENT_LICENCE
create table agent_licence (agent_id varchar(10) PRIMARY KEY, licence_id varchar (10))

----------------------------------------------------------- APPOINTMENTS

create table appointments ( customer_id varchar(10) PRIMARY KEY,agent_id varchar(10), time_slot varchar(255),date date);




--------CUSTOMER TABLE--------

CREATE TABLE CUSTOMER(
ID VARCHAR(10) PRIMARY KEY,
NAME VARCHAR(255),
DATE_OF_BIRTH DATE,
CONTACT_NUMBER VARCHAR(10),
EMAIL_ADDRESS VARCHAR(25), ADDRESS VARCHAR(255), ZIP_CODE VARCHAR(6),
CITY VARCHAR(50), STATE VARCHAR(50), HEIGHT FLOAT, WEIGHT FLOAT,
IDENTIFICATION_MARK VARCHAR(255),ANNUAL_INCOME FLOAT
)

---------AGENT TABLE--------

CREATE TABLE AGENT(
ID VARCHAR(10) PRIMARY KEY,
NAME VARCHAR(255),
DATE_OF_BIRTH DATE,
CONTACT_NUMBER VARCHAR(10),
EMAIL_ADDRESS VARCHAR(25), ADDRESS VARCHAR(255), ZIP_CODE VARCHAR(6),
CITY VARCHAR(50), STATE VARCHAR(50), DATE_OF_JOIN DATE, AGENT_TYPE VARCHAR(255)
)

---------ADMIN TABLE-------------
CREATE TABLE ADMIN(
ID VARCHAR(10) PRIMARY KEY,
NAME VARCHAR(255),
DATE_OF_BIRTH DATE,
CONTACT_NUMBER VARCHAR(10),
EMAIL_ADDRESS VARCHAR(25),
ADDRESS VARCHAR(255), ZIP_CODE VARCHAR(6),
CITY VARCHAR(50), STATE VARCHAR(50)
)

-----------




----------------------------------------------------------- END




,FOREIGN KEY () REFERENCES  ()