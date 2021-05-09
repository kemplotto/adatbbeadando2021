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

insert into SKILL_SET (SKILL_SET_NAME) values ('Hygiene');
insert into SKILL_SET (SKILL_SET_NAME) values ('Data Integration');
insert into SKILL_SET (SKILL_SET_NAME) values ('ICP-MS');
insert into SKILL_SET (SKILL_SET_NAME) values ('DMPK');
insert into SKILL_SET (SKILL_SET_NAME) values ('VW');
insert into SKILL_SET (SKILL_SET_NAME) values ('Storage');
insert into SKILL_SET (SKILL_SET_NAME) values ('Soft Skills');
insert into SKILL_SET (SKILL_SET_NAME) values ('Business Valuation');
insert into SKILL_SET (SKILL_SET_NAME) values ('IKB');
insert into SKILL_SET (SKILL_SET_NAME) values ('Iptables');
insert into SKILL_SET (SKILL_SET_NAME) values ('Zillow');
insert into SKILL_SET (SKILL_SET_NAME) values ('Roofers');
insert into SKILL_SET (SKILL_SET_NAME) values ('Microsoft Dynamics NAV');
insert into SKILL_SET (SKILL_SET_NAME) values ('Geology');
insert into SKILL_SET (SKILL_SET_NAME) values ('PWS');
insert into SKILL_SET (SKILL_SET_NAME) values ('Title Insurance');
insert into SKILL_SET (SKILL_SET_NAME) values ('Leave of Absence');
insert into SKILL_SET (SKILL_SET_NAME) values ('CBT');
insert into SKILL_SET (SKILL_SET_NAME) values ('Kohana Framework');
insert into SKILL_SET (SKILL_SET_NAME) values ('ODBC');
insert into SKILL_SET (SKILL_SET_NAME) values ('FTR');
insert into SKILL_SET (SKILL_SET_NAME) values ('XQuery');
insert into SKILL_SET (SKILL_SET_NAME) values ('JBL');
insert into SKILL_SET (SKILL_SET_NAME) values ('Asset Allocation');
insert into SKILL_SET (SKILL_SET_NAME) values ('Cash Management');
insert into SKILL_SET (SKILL_SET_NAME) values ('IOT');
insert into SKILL_SET (SKILL_SET_NAME) values ('Aspen HYSYS');
insert into SKILL_SET (SKILL_SET_NAME) values ('Akka');
insert into SKILL_SET (SKILL_SET_NAME) values ('Joomla');
insert into SKILL_SET (SKILL_SET_NAME) values ('Process Efficiency');
insert into SKILL_SET (SKILL_SET_NAME) values ('LVM');
insert into SKILL_SET (SKILL_SET_NAME) values ('IOT');
insert into SKILL_SET (SKILL_SET_NAME) values ('NBAP');
insert into SKILL_SET (SKILL_SET_NAME) values ('Urban');
insert into SKILL_SET (SKILL_SET_NAME) values ('JavaSE');
insert into SKILL_SET (SKILL_SET_NAME) values ('Business Overhead Expense');
insert into SKILL_SET (SKILL_SET_NAME) values ('Kaspersky');
insert into SKILL_SET (SKILL_SET_NAME) values ('Vulnerability Scanning');
insert into SKILL_SET (SKILL_SET_NAME) values ('Entrust PKI');
insert into SKILL_SET (SKILL_SET_NAME) values ('WHMIS');
insert into SKILL_SET (SKILL_SET_NAME) values ('Tour Management');
insert into SKILL_SET (SKILL_SET_NAME) values ('Anti Money Laundering');
insert into SKILL_SET (SKILL_SET_NAME) values ('Tortoise CVS');
insert into SKILL_SET (SKILL_SET_NAME) values ('Time-efficient');
insert into SKILL_SET (SKILL_SET_NAME) values ('Luxury Goods');
insert into SKILL_SET (SKILL_SET_NAME) values ('SBR');
insert into SKILL_SET (SKILL_SET_NAME) values ('Knowledge Transfer');
insert into SKILL_SET (SKILL_SET_NAME) values ('Key Person Insurance');
insert into SKILL_SET (SKILL_SET_NAME) values ('Aftersales');
insert into SKILL_SET (SKILL_SET_NAME) values ('Telecommunications');
insert into SKILL_SET (SKILL_SET_NAME) values ('Interior Design');
insert into SKILL_SET (SKILL_SET_NAME) values ('EBSCO');
insert into SKILL_SET (SKILL_SET_NAME) values ('SMT Kingdom');
insert into SKILL_SET (SKILL_SET_NAME) values ('Brand Architecture');
insert into SKILL_SET (SKILL_SET_NAME) values ('Zoomerang');
insert into SKILL_SET (SKILL_SET_NAME) values ('WTT');
insert into SKILL_SET (SKILL_SET_NAME) values ('Etching');
insert into SKILL_SET (SKILL_SET_NAME) values ('Creative Non-fiction');
insert into SKILL_SET (SKILL_SET_NAME) values ('OMT');
insert into SKILL_SET (SKILL_SET_NAME) values ('Political Economy');

insert into education (degree_name, degree_id, degree_level) values ('Nurse', 1, 2);
insert into education (degree_name, degree_id, degree_level) values ('Dental Hygienist', 2, 3);
insert into education (degree_name, degree_id, degree_level) values ('Software Consultant', 3, 1);
insert into education (degree_name, degree_id, degree_level) values ('Sales Representative', 4, 2);
insert into education (degree_name, degree_id, degree_level) values ('Physical Therapy Assistant', 5, 1);
insert into education (degree_name, degree_id, degree_level) values ('Software Test Engineer II', 6, 3);
insert into education (degree_name, degree_id, degree_level) values ('Actuary', 7, 1);
insert into education (degree_name, degree_id, degree_level) values ('Senior Editor', 8, 2);
insert into education (degree_name, degree_id, degree_level) values ('Speech Pathologist', 9, 2);
insert into education (degree_name, degree_id, degree_level) values ('Marketing Assistant', 10, 2);
insert into education (degree_name, degree_id, degree_level) values ('Internal Auditor', 11, 3);
insert into education (degree_name, degree_id, degree_level) values ('Graphic Designer', 12, 2);
insert into education (degree_name, degree_id, degree_level) values ('Help Desk Technician', 13, 1);
insert into education (degree_name, degree_id, degree_level) values ('Internal Auditor', 14, 3);
insert into education (degree_name, degree_id, degree_level) values ('General Manager', 15, 2);
insert into education (degree_name, degree_id, degree_level) values ('Technical Writer', 16, 2);
insert into education (degree_name, degree_id, degree_level) values ('Programmer IV', 17, 1);
insert into education (degree_name, degree_id, degree_level) values ('Community Outreach Specialist', 18, 2);
insert into education (degree_name, degree_id, degree_level) values ('Structural Engineer', 19, 2);
insert into education (degree_name, degree_id, degree_level) values ('Mechanical Systems Engineer', 20, 2);

insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Jones-Senger', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'bgiacomi0@home.pl', '(758) 9558918', 'Pingwang');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Kihn LLC', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'jmcanulty1@columbia.edu', '(501) 7099702', 'Terangun');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Bergnaum-Balistreri', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'lhasselby2@si.edu', '(293) 2331733', 'Tabūk');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Gusikowski, Mayer and Kessler', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'kbuxsey3@ox.ac.uk', '(456) 9955106', 'Raofeng');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Streich Group', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'ewallice4@booking.com', '(266) 4759544', 'Mabugang');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Pacocha LLC', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'tbut5@gmpg.org', '(840) 9078922', 'Ankou');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('West LLC', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'lbartalini6@pinterest.com', '(886) 8753701', 'Győr');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Walsh-Schroeder', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'abreakwell7@jimdo.com', '(201) 4919087', 'Wręczyca Wielka');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Cormier Inc', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'jyesichev8@infoseek.co.jp', '(212) 3143673', 'Colón');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Miller, MacGyver and Smitham', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'tlauderdale9@g.co', '(301) 6336815', 'São Pedro de Muel');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Pacocha-Littel', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'cbena@latimes.com', '(315) 7836840', 'Niutian');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Harber LLC', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'egoncalob@topsy.com', '(325) 2029204', 'Vratsa');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Schaefer-Orn', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'blindroosc@google.co.jp', '(501) 2914284', 'Paragominas');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Zieme-Pagac', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'sbotlyd@fotki.com', '(744) 8496843', 'Oliveira');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Ryan-Ledner', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'lgratrixe@hp.com', '(599) 3466662', 'Tojal');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Cole-Altenwerth', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'hchristiensenf@omniture.com', '(738) 9035377', 'Touho');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Willms Group', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'yochterlonyg@google.ru', '(734) 8895722', 'Lenchwe Le Tau');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('O''Connell-Mann', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'mmengoh@ihg.com', '(360) 1428350', 'Vancouver');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Yost, Ruecker and Goldner', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'rsparhami@hao123.com', '(540) 7528160', 'Safakulevo');
insert into COMPANY_PROFILE (company_name, company_description, contact_email, contact_phone, location) values ('Jaskolski and Sons', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'hrittmeyerj@unesco.org', '(593) 3129384', 'Bantul');

insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 1, 'Junkou', 'China', 'Accounting', 'Senior Developer', 'Project Manager', 4);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 0, 'Cikawunggading', 'Indonesia', 'Research and Development', 'Geological Engineer', 'Payment Adjustment Coordinator', 6);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 0, 'Xincheng', 'China', 'Sales', 'Human Resources Assistant I', 'Geological Engineer', 10);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 1, 'Kuaro', 'Indonesia', 'Services', 'Operator', 'Sales Associate', 2);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 1, 'Kouvola', 'Finland', 'Services', 'Pharmacist', 'Geologist III', 10);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 0, 'Kuzovatovo', 'Russia', 'Services', 'Human Resources Assistant II', 'Health Coach II', 2);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 0, 'Uychi', 'Uzbekistan', 'Marketing', 'General Manager', 'Product Engineer', 1);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 0, 'Greda', 'Croatia', 'Services', 'Recruiter', 'Research Associate', 5);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 0, 'Chengfeng', 'China', 'Marketing', 'Safety Technician III', 'Statistician III', 4);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 0, 'Gōdo', 'Japan', 'Support', 'Dental Hygienist', 'Environmental Tech', 0);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 1, 'Olszanica', 'Poland', 'Accounting', 'Associate Professor', 'Financial Analyst', 6);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 1, 'Tomaszów Mazowiecki', 'Poland', 'Business Development', 'Senior Sales Associate', 'Senior Quality Engineer', 2);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 1, 'Carman', 'Canada', 'Engineering', 'Senior Sales Associate', 'Marketing Manager', 3);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('In congue. Etiam justo. Etiam pretium iaculis justo.', 1, 'Neftegorsk', 'Russia', 'Product Management', 'Cost Accountant', 'Chemical Engineer', 4);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 1, 'Norcasia', 'Colombia', 'Services', 'Business Systems Development Analyst', 'Staff Scientist', 9);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 0, 'Pocrí', 'Panama', 'Research and Development', 'Senior Developer', 'VP Quality Control', 10);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 1, 'Pakisaji', 'Indonesia', 'Training', 'Professor', 'Software Engineer I', 5);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 1, 'Maralal', 'Kenya', 'Business Development', 'Desktop Support Technician', 'Pharmacist', 4);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 0, 'Okaya', 'Japan', 'Business Development', 'Accounting Assistant IV', 'Accountant II', 8);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 1, 'Haykashen', 'Armenia', 'Research and Development', 'Human Resources Assistant I', 'Physical Therapy Assistant', 0);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 0, 'Rostov', 'Russia', 'Accounting', 'Quality Control Specialist', 'Sales Associate', 1);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 1, 'Potosí', 'Bolivia', 'Sales', 'Quality Engineer', 'Research Nurse', 10);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 0, 'Kharp', 'Russia', 'Legal', 'Graphic Designer', 'Desktop Support Technician', 6);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 1, 'Yaypan', 'Uzbekistan', 'Product Management', 'Engineer IV', 'Assistant Professor', 4);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 0, 'Černá Hora', 'Czech Republic', 'Accounting', 'VP Sales', 'Developer II', 5);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 1, 'Biaoshan', 'China', 'Accounting', 'Biostatistician IV', 'Sales Associate', 7);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 0, 'Madimba', 'Tanzania', 'Business Development', 'Quality Control Specialist', 'Tax Accountant', 1);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 1, 'Xinming', 'China', 'Engineering', 'Research Nurse', 'Social Worker', 8);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 0, 'Mozelos', 'Portugal', 'Marketing', 'Pharmacist', 'Accounting Assistant IV', 6);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 0, 'Xishaqiao', 'China', 'Accounting', 'Developer IV', 'Environmental Tech', 3);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 0, 'Sanshui', 'China', 'Accounting', 'Junior Executive', 'Cost Accountant', 5);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 0, 'Kaka', 'Turkmenistan', 'Sales', 'Editor', 'Account Coordinator', 6);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 0, 'Covão', 'Portugal', 'Human Resources', 'Environmental Specialist', 'Developer I', 10);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 0, 'Coyah', 'Guinea', 'Sales', 'Food Chemist', 'Assistant Media Planner', 6);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 1, 'Hronov', 'Czech Republic', 'Human Resources', 'Software Test Engineer I', 'Senior Developer', 0);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 1, 'Cergy-Pontoise', 'France', 'Research and Development', 'Community Outreach Specialist', 'Graphic Designer', 4);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 1, 'Telhado', 'Portugal', 'Research and Development', 'Pharmacist', 'Desktop Support Technician', 4);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 1, 'Zeqin', 'China', 'Product Management', 'Research Assistant III', 'Business Systems Development Analyst', 7);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 1, 'Jiangwan', 'China', 'Training', 'Electrical Engineer', 'Nurse', 5);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 0, 'Shangdongjie', 'China', 'Accounting', 'Recruiter', 'Nurse', 10);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 0, 'Youxi Chengguanzhen', 'China', 'Engineering', 'Quality Engineer', 'Software Engineer II', 9);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 1, 'Marseille', 'France', 'Accounting', 'Design Engineer', 'Senior Editor', 4);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 1, 'Hāgere Hiywet', 'Ethiopia', 'Human Resources', 'Clinical Specialist', 'Operator', 7);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 1, 'Burqah', 'Palestinian Territory', 'Human Resources', 'Quality Control Specialist', 'Quality Control Specialist', 10);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 1, 'Arganil', 'Portugal', 'Legal', 'Computer Systems Analyst I', 'Senior Quality Engineer', 7);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 1, 'Isfara', 'Tajikistan', 'Support', 'General Manager', 'Nurse Practicioner', 3);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 0, 'Dal’neye Konstantinovo', 'Russia', 'Training', 'Software Consultant', 'Nurse Practicioner', 9);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 0, 'Hovd', 'Mongolia', 'Sales', 'Help Desk Technician', 'Structural Engineer', 4);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 0, 'Saint-Constant', 'Canada', 'Business Development', 'Financial Analyst', 'General Manager', 3);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 0, 'Xindu', 'China', 'Business Development', 'Tax Accountant', 'Assistant Manager', 8);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 1, 'Boden', 'Sweden', 'Legal', 'Nurse', 'Recruiting Manager', 10);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Sed ante. Vivamus tortor. Duis mattis egestas metus.', 0, 'Chalaco', 'Peru', 'Legal', 'Sales Associate', 'Paralegal', 10);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 0, 'Al Fayyūm', 'Egypt', 'Accounting', 'Account Executive', 'Professor', 10);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 0, 'Shataping', 'China', 'Legal', 'Help Desk Operator', 'Environmental Specialist', 5);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 0, 'Sāh', 'Yemen', 'Engineering', 'Media Manager IV', 'Community Outreach Specialist', 9);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 0, 'Shuangpu', 'China', 'Training', 'General Manager', 'Design Engineer', 2);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 1, 'Bang Nam Priao', 'Thailand', 'Marketing', 'Financial Advisor', 'Food Chemist', 4);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 1, 'Sumbergayam', 'Indonesia', 'Marketing', 'Teacher', 'Professor', 0);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 1, 'Malanay', 'Philippines', 'Sales', 'Sales Associate', 'Financial Analyst', 0);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 1, 'Bahe', 'China', 'Marketing', 'Administrative Assistant II', 'Structural Analysis Engineer', 2);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 1, 'Psyzh', 'Russia', 'Human Resources', 'Chief Design Engineer', 'Human Resources Assistant III', 10);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 1, 'Cilampuyang', 'Indonesia', 'Research and Development', 'Chemical Engineer', 'Design Engineer', 7);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('In congue. Etiam justo. Etiam pretium iaculis justo.', 1, 'Sines', 'Portugal', 'Marketing', 'Financial Advisor', 'Quality Control Specialist', 8);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 0, 'Gunajaya', 'Indonesia', 'Business Development', 'Assistant Media Planner', 'Media Manager II', 5);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 0, 'Cobre', 'Portugal', 'Support', 'Paralegal', 'Environmental Specialist', 9);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Sed ante. Vivamus tortor. Duis mattis egestas metus.', 1, 'Lidköping', 'Sweden', 'Human Resources', 'Chief Design Engineer', 'Software Consultant', 0);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 1, 'Huamali', 'Peru', 'Business Development', 'Structural Analysis Engineer', 'Information Systems Manager', 10);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 0, 'Wonorejo', 'Indonesia', 'Business Development', 'Health Coach II', 'Budget/Accounting Analyst IV', 3);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 1, 'Freiria', 'Portugal', 'Sales', 'Automation Specialist II', 'Environmental Tech', 2);
insert into job (job_desc, is_active, location, country, field, job_title, position, yrs_req) values ('Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 0, 'Songculan', 'Philippines', 'Services', 'Help Desk Operator', 'Senior Sales Associate', 9);


