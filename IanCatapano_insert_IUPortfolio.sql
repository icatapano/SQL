--- SQL DDL
--- Ian Catapano, 4/2019

SET CONSTRAINTS ALL DEFERRED;

--- "USER"
INSERT INTO "USER" (id, first_name, middle_initial, last_name, title, "Professional_E-mail", "Personal_E-mail", phone, current_street_number, current_city, current_state, current_country, perm_street_number, perm_city, perm_state, perm_country)
VALUES (154, 'Tom', 'H', 'Smith', 'Sales', 'tsmith@acme.com', 'tsmith@aol.com', '999-980-9999', '333 North St.', 'Junction Town', 'Nebraska', 'USA', '333 North St.', 'Junction Town', 'Nebraska', 'USA');
INSERT INTO "USER" (id, first_name, middle_initial, last_name, title, "Professional_E-mail", "Personal_E-mail", phone, current_street_number, current_city, current_state, current_country, perm_street_number, perm_city, perm_state, perm_country)
VALUES (386, 'Sue', 'A', 'Brown', 'Finance Manager', 'sbrown@money.com', 'sbrown@gmail.com', '999-970-9809', '467 Fast Rd.', 'Lowville', 'Decay', 'Asia', '5429 Winter Rd.', 'Bristol', 'Liquid', 'Russia');
INSERT INTO "USER" (id, first_name, middle_initial, last_name, title, "Professional_E-mail", "Personal_E-mail", phone, current_street_number, current_city, current_state, current_country, perm_street_number, perm_city, perm_state, perm_country)
VALUES (608, 'Bill', 'Y', 'Johnson', 'Student', '', 'bjohnson@school.edu', '999-990-9784', '839 Rocky Rd.', 'Salem', 'Solid', 'Artic', '839 Rocky Rd.', 'Salem', 'Solid', 'Artic');
INSERT INTO "USER" (id, first_name, middle_initial, last_name, title, "Professional_E-mail", "Personal_E-mail", phone, current_street_number, current_city, current_state, current_country, perm_street_number, perm_city, perm_state, perm_country)
VALUES (793, 'Jill', 'N', 'Miller', 'Exec Secritary', 'jmiller@company.com', 'jmiller@aol.com', '999-980-2340', '977 Low St.', 'Boon Town', 'Decay', 'Asia', '977 Low St.', 'Boon Town', 'Decay', 'Asia');
INSERT INTO "USER" (id, first_name, middle_initial, last_name, title, "Professional_E-mail", "Personal_E-mail", phone, current_street_number, current_city, current_state, current_country, perm_street_number, perm_city, perm_state, perm_country)
VALUES (936, 'Aaron', 'S', 'Jones', 'Student', '', 'ajones@school.edu', '999-980-7856', '9762 South St.', 'Junction Town', 'Nebraska', 'USA', '9762 South St.', 'Junction Town', 'Nebraska', 'USA');

--- university
INSERT INTO UNIVERSITY (id, name, address, city, state, country, phone, "E-mail", url)
VALUES (17, 'Indiana University', '300 Main St.', 'Bloomington', 'Indiana', 'USA', '800-300-1000', 'iu@school.edu', 'hhtp://iu.edu');
INSERT INTO UNIVERSITY (id, name, address, city, state, country, phone, "E-mail", url)
VALUES (19, 'Ball State University', '4000 Main St.', 'Muncie', 'Indiana', 'USA', '800-900-1000', 'bsu@school.edu', 'hhtp://bsu.edu');
INSERT INTO UNIVERSITY (id, name, address, city, state, country, phone, "E-mail", url)
VALUES (25, 'Purdue University', '6000 Main St.', 'Lafayette', 'Indiana', 'USA', '800-800-1000', 'pu@school.edu', 'hhtp://pu.edu');

--- campus
INSERT INTO CAMPUS (id, univ_id, name, address, city, state, country, phone, "E-mail", url)
VALUES (5287, '17', 'Bloomington Campus', '300 Main St.', 'Bloomington', 'Indiana', 'USA', '800-300-1000', 'iu.bloomington@school.edu', 'http://iu.bloomington.edu');
INSERT INTO CAMPUS (id, univ_id, name, address, city, state, country, phone, "E-mail", url)
VALUES (9827, '17', 'South Bend Campus', '200 Main St.', 'South Bend', 'Indiana', 'USA', '800-400-1000', 'iu.southbend@school.edu', 'http://iu.southbend.edu');
INSERT INTO CAMPUS (id, univ_id, name, address, city, state, country, phone, "E-mail", url)
VALUES (7264, '17', 'Elkart Campus', '400 Main St.', 'Elkhart', 'Indiana', 'USA', '800-500-1000', 'iu.elkhart@school.edu', 'http://iu.elkhart.edu');
INSERT INTO CAMPUS (id, univ_id, name, address, city, state, country, phone, "E-mail", url)
VALUES (6243, '17', 'Fort Wayne Campus', '500 Main St.', 'Fort Wayne', 'Indiana', 'USA', '800-600-1000', 'iu.fortwayne@school.edu', 'http://iu.fortwayne.edu');

--- college
INSERT INTO COLLEGE (id, campus_id, name, address, city, state, country, phone, "E-mail", url)
VALUES (8975, 5287, 'IU Bloomington', '300 Main St.', 'Bloomington', 'Indiana', 'USA', '800-300-1000', 'iu.bloomington@school.edu', 'http://iu.bloomington.edu');
INSERT INTO COLLEGE (id, campus_id, name, address, city, state, country, phone, "E-mail", url)
VALUES (3455, 9827, 'IUSB', '200 Main St.', 'South Bend', 'Indiana', 'USA', '800-400-1000', 'iusb@school.edu', 'http://iusb.edu');
INSERT INTO COLLEGE (id, campus_id, name, address, city, state, country, phone, "E-mail", url)
VALUES (4523, 7264, 'IU Elkhart', '400 Main St.', 'Elkhart', 'Indiana', 'USA', '800-500-1000', 'iuelkhart@school.edu', 'http://iu.elkhart.edu');

--- faculty
INSERT INTO FACULTY (user_id, rank)
VALUES (386, 'Research Assistent');
INSERT INTO FACULTY (user_id, rank)
VALUES (608, 'Teacher Assistent');

--- student
INSERT INTO STUDENT (type, user_id)
VALUES ('Graduate', 154);
INSERT INTO STUDENT (type, user_id)
VALUES ('Graduate', 386);
INSERT INTO STUDENT (type, user_id)
VALUES ('Undergraduate', 608);
INSERT INTO STUDENT (type, user_id)
VALUES ('Graduate', 793);
INSERT INTO STUDENT (type, user_id)
VALUES ('Undergraduate', 936);

--- alumni
INSERT INTO ALUMNI (user_id)
VALUES (154);
INSERT INTO ALUMNI (user_id)
VALUES (386);
INSERT INTO ALUMNI (user_id)
VALUES (793);

--- undergraduate
INSERT INTO UNDERGRADUATE (student_user_id)
VALUES(608);
INSERT INTO UNDERGRADUATE (student_user_id)
VALUES(936);

--- graduate
INSERT INTO GRADUATE (student_user_id)
VALUES (154);
INSERT INTO GRADUATE (student_user_id)
VALUES (386);
INSERT INTO GRADUATE (student_user_id)
VALUES (793);

--- user_college
INSERT INTO USER_COLLEGE (user_id, college_id)
VALUES (154, 8975);
INSERT INTO USER_COLLEGE (user_id, college_id)
VALUES (386, 3455);
INSERT INTO USER_COLLEGE (user_id, college_id)
VALUES (608, 8975);
INSERT INTO USER_COLLEGE (user_id, college_id)
VALUES (793, 3455);
INSERT INTO USER_COLLEGE (user_id, college_id)
VALUES (936, 8975);

--- unit
INSERT INTO UNIT (campus_id, id, address, city, state, country, phone, "E-mail", url, type)
VALUES (5287, 4201, '350 Main St.', 'Bloomington', 'Indiana', 'USA', '800-300-2000', 'iu.sciece@school.edu', 'http://iu.science.edu', 'S');
INSERT INTO UNIT (campus_id, id, address, city, state, country, phone, "E-mail", url, type)
VALUES (9827, 4201, '225 Main St.', 'South Bend', 'Indiana', 'USA', '800-400-2000', 'iusb.sciece@school.edu', 'http://iusb.science.edu', 'S');
INSERT INTO UNIT (campus_id, id, address, city, state, country, phone, "E-mail", url, type)
VALUES (5287, 2301, '370 Main St.', 'Bloomington', 'Indiana', 'USA', '800-300-3000', 'iu.english@school.edu', 'http://iu.english.edu', 'E');
INSERT INTO UNIT (campus_id, id, address, city, state, country, phone, "E-mail", url, type)
VALUES (9827, 3501, '240 Main St.', 'South Bend', 'Indiana', 'USA', '800-300-4000', 'iusb.history@school.edu', 'http://iusb.history.edu', 'H');
INSERT INTO UNIT (campus_id, id, address, city, state, country, phone, "E-mail", url, type)
VALUES (5287, 5501, '390 Main St.', 'Bloomington', 'Indiana', 'USA', '800-300-5000', 'iu.math@school.edu', 'http://iu.math.edu', 'M');
INSERT INTO UNIT (campus_id, id, address, city, state, country, phone, "E-mail", url, type)
VALUES (7264, 5501, '410 Main St.', 'Elkhart', 'Indiana', 'USA', '800-300-5000', 'iuelk.math@school.edu', 'http://iuelk.math.edu', 'M');

--- programs
INSERT INTO PROGRAMS (code, name, degree_type)
VALUES (242, 'Science', 'BS');
INSERT INTO PROGRAMS (code, name, degree_type)
VALUES (265, 'Math', 'BM');
INSERT INTO PROGRAMS (code, name, degree_type)
VALUES (865, 'History', 'BH');
INSERT INTO PROGRAMS (code, name, degree_type)
VALUES (973, 'English', 'BE');

--- user_program
INSERT INTO USER_PROGRAM (programs_code, user_id)
VALUES (242, 154);
INSERT INTO USER_PROGRAM (programs_code, user_id)
VALUES (265, 386);
INSERT INTO USER_PROGRAM (programs_code, user_id)
VALUES (242, 608);
INSERT INTO USER_PROGRAM (programs_code, user_id)
VALUES (865, 793);
INSERT INTO USER_PROGRAM (programs_code, user_id)
VALUES (973, 936);

--- academic
INSERT INTO ACADEMIC (unit_id, unit_campus_id, name, college_id)
VALUES (4201, 5287, 'Something', 8975);
INSERT INTO ACADEMIC (unit_id, unit_campus_id, name, college_id)
VALUES (4201, 9827, 'Other', 3455);
INSERT INTO ACADEMIC (unit_id, unit_campus_id, name, college_id)
VALUES (2301, 5287, 'Then', 8975);
INSERT INTO ACADEMIC (unit_id, unit_campus_id, name, college_id)
VALUES (3501, 9827, 'That', 3455);
INSERT INTO ACADEMIC (unit_id, unit_campus_id, name, college_id)
VALUES (5501, 5287, 'Thing', 8975);
INSERT INTO ACADEMIC (unit_id, unit_campus_id, name, college_id)
VALUES (5501, 7264, 'There', 4523);

--- awards
INSERT INTO AWARDS (user_id, award)
VALUES (386, 'Bob Dole Award');
INSERT INTO AWARDS (user_id, award)
VALUES (154, 'Bob Dole Award');
INSERT INTO AWARDS (user_id, award)
VALUES (793, 'Some Other Award');

--- alumni_degree
---INSERT INTO ALUMNI_DEGREE (alumni_user_id, year_graduated, degree_program)
---VALUES ();

--- au_offers_programs
---INSERT INTO AU_OFFERS_PROGRAMS (programs_code, academic_name, academic_unit_id, academic_unit_campus_id)
---VALUES ();

--- user_au
---INSERT INTO USER_AU (user_id, academic_name, academic_unit_id, academic_unit_campus_id)
---VALUES ();

--- course
---INSERT INTO COURSE (code, "Number", academic_name, academic_unit_id, academic_unit_campus_id, title)
---VALUES ();

--- user_program_dates
---INSERT INTO USER_PROGRAM_DATES (start_date, user_program_program_code, user_program_user_id, end_date)
---VALUES ();

--- user_au_role
---INSERT INTO USER_AU_ROLE (role, user_au_user_id, user_au_acad_name, user_au_acad_unit_id, u_au_acad_unit_cam_id, c_au_org_id)
---VALUES ();

--- user_collage_role
---INSERT INTO USER_COLLAGE_ROLE (role, user_college_user_id, user_college_college_id, c_au_org_id)
---VALUES ();

--- non_academic
---INSERT INTO NON_ACADEMIC (unit_id, unit_campus_it, name)
---VALUES ();

--- passed
---INSERT INTO PASSED (semester, year, user_id, course_code, course_number, c_au_org_id, cp_t_cp_t)
---VALUES ();

--- programs_offers_course
---INSERT INTO PROGRAMS_OFFERS_COURSE (programs_code, course_code, course_number)
---VALUES ();

--- authors
---INSERT INTO AUTHORS (materials_name, materials_user_id, materials_cp_t_cp_t, author)
---VALUES ();

--- career_objectives
---INSERT INTO CAREER_OBJECTIVES (user_id, objective)
---VALUES ();

--- credentials
---INSERT INTO CREDENTIALS (user_id, credentials, type)
---VALUES ();


--- honors
---INSERT INTO HONORS (user_id, honor)
---VALUES ();

--- tags
---INSERT INTO TAGS (materials_name, materials_user_id, materials_cp_t_cp_t, tag)
---VALUES ();

--- tasks
---INSERT INTO TASKS (c_au_org_id, user_id, title, short_disc, time_period, skills_built, type_activity, role, additional_details, cp_t_cp_t)
---VALUES ();

--- testimonials
---INSERT INTO TESTIMONIALS (user_id, testimonial)
---VALUES ();

--- user_org_dates
---INSERT INTO USER_ORG_DATES (org_user_user_id, org_user_org_id, start_date, end_date)
---VALUES ();

--- user_urls
---INSERT INTO USER_URLS (url, user_id)
---VALUES ();

--- materials
---INSERT INTO MATERIALS (cp_t_cp_t, user_id, name, type, context, upload_name, upload_type, file_extension, date_created, date_modified, avaliable_location, upload_timestamp)
---VALUES ();

--- cp_t
---INSERT INTO CP_T (cp_t)
---VALUES ();

--- org_user
---INSERT INTO ORG_USER (organization_id, user_id, c_au_org_id)
---VALUES ();

--- organization
---INSERT INTO ORGANIZATION (id, name, location)
---VALUES ();

--- c_au_org
---INSERT INTO C_AU_ORG (id)
---VALUES ();

--- competencies
---INSERT INTO COMPETENCIES (user_id, competency, type)
---VALUES ();

commit;