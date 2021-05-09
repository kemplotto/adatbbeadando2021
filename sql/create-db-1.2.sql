ALTER SESSION SET NLS_DATE_LANGUAGE = HUNGARIAN;
ALTER SESSION SET NLS_DATE_FORMAT = 'YY-MON-DD';


CREATE TABLE user_profile (
   	ID int,
    user_type_id int,
    email varchar2(255),
    password varchar2(255),
    date_of_birth DATE,
    active NUMbER(1,0),
	contact_number varchar2(255),
	login_date DATE,
	first_name varchar2(255),
	last_name varchar2 (255),
	CONSTRAINT pk_user_profile PRIMARY KEY (ID)
);
/

CREATE SEQUENCE user_profile_seq
START WITH 1
INCREMENT BY 1
CACHE 100;
/

CREATE OR REPLACE TRIGGER user_profile_increment
BEFORE INSERT ON user_profile
FOR EACH ROW

BEGIN
	SELECT user_profile_seq.NEXTVAL
	INTO :new.id
	FROM dual;
END;
/

CREATE TABLE user_type (
   	ID int PRIMARY KEY,
	user_type_name varchar2(255),
);
/

CREATE TABLE company_profile (
id int,
admin_id int,
company_name varchar2 (255),
company_description varchar2(255),
contact_email varchar2(255),
contact_phone varchar2(255),
location varchar2(255),
 CONSTRAINT pk_company_profile PRIMARY KEY (id)
);
/

CREATE SEQUENCE company_profile_seq
START WITH 1
INCREMENT BY 1
CACHE 100;
/

CREATE OR REPLACE TRIGGER company_profile_increment
BEFORE INSERT ON company_profile
FOR EACH ROW

BEGIN
	SELECT company_profile_seq.NEXTVAL
	INTO :new.id
	FROM dual;
END;
/

CREATE TABLE job (
id int,
posted_by_id int,
job_desc varchar2(255),
cr_date DATE,
expiration DATE,
is_active NUMBER(1,0),
location varchar2(255),
company_id int,
country varchar2(255),
field varchar2(255),
job_title varchar2(255),
position varchar2(255),
yrs_req varchar2(255),
CONSTRAINT pk_job PRIMARY KEY (id),
CONSTRAINT fk_job1 FOREIGN KEY company_id REFERENCES company_profile(company_id),
CONSTRAINT fk_job2 FOREIGN KEY posted_by_id REFERENCES user_profile(id)
);
/

CREATE SEQUENCE job_seq
START WITH 1
INCREMENT BY 1
CACHE 100;
/

CREATE OR REPLACE TRIGGER job_increment
BEFORE INSERT ON job
FOR EACH ROW

BEGIN
	SELECT job_seq.NEXTVAL
	INTO :new.id
	FROM dual;
END;
/

CREATE SEQUENCE skill_set_seq
START WITH 1
INCREMENT BY 1
CACHE 100;
/

CREATE OR REPLACE TRIGGER skill_set_increment
BEFORE INSERT ON SKILL_SET
FOR EACH ROW

BEGIN
	SELECT skill_set_seq.NEXTVAL
	INTO :new.id
	FROM dual;
END;
/

CREATE TABLE skill_set (
id int,
skill_set_name varchar2(255);
);
/

CREATE TABLE job_req_skill (
id int,
skill_set_id int,
skill_level varchar2(255),
CONSTRAINT pk_job_req_skill PRIMARY KEY (id),
CONSTRAINT fk_job_req_skill FOREIGN KEy skill_set_id REFERENCES skill_set(id)
);
/

CREATE TABLE user_skill(
user_id int;
skill_set_id int;
skill_level varchar2(255),
CONSTRAINT fk_user_skill FOREIGN KEy user_id REFERENCES user_profile(id),
CONSTRAINT fk_user_skill2 FOREIGN KEY skill_set_id REFERENCES skill_set(id)
);
/

CREATE TABLE education (
user_profile_id int,
degree_name varchar2(255),
degree_id int,
degree_level int,
start_date DATE,
end_date DATE,
CONSTRAINT fk_education FOREIGN KEY user_profile_id REFERENCES user_profile(id)
);
/