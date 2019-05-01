-- Generated by Oracle SQL Developer Data Modeler 18.4.0.339.1532
--   at:        2019-04-20 15:07:29 EDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE academic (
    unit_id          INTEGER NOT NULL,
    unit_campus_id   INTEGER NOT NULL,
    name             VARCHAR2(100) NOT NULL,
    college_id       INTEGER NOT NULL
);

ALTER TABLE academic
    ADD CONSTRAINT acad_pk PRIMARY KEY ( name,
                                         unit_id,
                                         unit_campus_id );

CREATE TABLE alumni (
    user_id INTEGER NOT NULL
);

ALTER TABLE alumni ADD CONSTRAINT alumni_pk PRIMARY KEY ( user_id );

CREATE TABLE alumni_degree (
    alumni_user_id   INTEGER NOT NULL,
    year_graduated   INTEGER NOT NULL,
    degree_program   VARCHAR2(200 CHAR)
);

ALTER TABLE alumni_degree ADD CONSTRAINT alumni_degree_pk PRIMARY KEY ( year_graduated,
                                                                        alumni_user_id );

CREATE TABLE au_offers_programs (
    programs_code             VARCHAR2(8) NOT NULL,
    academic_name             VARCHAR2(100) NOT NULL,
    academic_unit_id          INTEGER NOT NULL,
    academic_unit_campus_id   INTEGER NOT NULL
);

ALTER TABLE au_offers_programs
    ADD CONSTRAINT au_of_prog_pk PRIMARY KEY ( programs_code,
                                               academic_name,
                                               academic_unit_id,
                                               academic_unit_campus_id );

CREATE TABLE authors (
    materials_name        VARCHAR2(15) NOT NULL,
    materials_user_id     INTEGER NOT NULL,
    materials_cp_t_cp_t   VARCHAR2(100 CHAR) NOT NULL,
    author                VARCHAR2(500 CHAR) NOT NULL
);

ALTER TABLE authors
    ADD CONSTRAINT authors_pk PRIMARY KEY ( materials_name,
                                            materials_user_id,
                                            materials_cp_t_cp_t,
                                            author );

CREATE TABLE awards (
    user_id   INTEGER NOT NULL,
    award     VARCHAR2(500 CHAR) NOT NULL
);

ALTER TABLE awards ADD CONSTRAINT awards_pk PRIMARY KEY ( user_id,
                                                          award );

CREATE TABLE c_au_org (
    id INTEGER NOT NULL
);

ALTER TABLE c_au_org ADD CONSTRAINT c_au_org_pk PRIMARY KEY ( id );

CREATE TABLE campus (
    id         INTEGER NOT NULL,
    univ_id    INTEGER NOT NULL,
    name       VARCHAR2(100) NOT NULL,
    address    VARCHAR2(500),
    city       VARCHAR2(25),
    state      VARCHAR2(25),
    country    VARCHAR2(25),
    phone      VARCHAR2(15),
    "E-mail"   VARCHAR2(50),
    url        VARCHAR2(500)
);

ALTER TABLE campus ADD CONSTRAINT cam_pk PRIMARY KEY ( id );

CREATE TABLE career_objectives (
    user_id     INTEGER NOT NULL,
    objective   VARCHAR2(1000 CHAR) NOT NULL
);

ALTER TABLE career_objectives ADD CONSTRAINT career_objectives_pk PRIMARY KEY ( user_id,
                                                                                objective );

CREATE TABLE college (
    id          INTEGER NOT NULL,
    campus_id   INTEGER NOT NULL,
    name        VARCHAR2(100) NOT NULL,
    address     VARCHAR2(500),
    city        VARCHAR2(25),
    state       VARCHAR2(25),
    country     VARCHAR2(25),
    phone       VARCHAR2(15),
    "E-mail"    VARCHAR2(50),
    url         VARCHAR2(500)
);

ALTER TABLE college ADD CONSTRAINT coll_pk PRIMARY KEY ( id );

CREATE TABLE competencies (
    user_id      INTEGER NOT NULL,
    competency   VARCHAR2(500 CHAR) NOT NULL,
    type         VARCHAR2(500 CHAR)
);

ALTER TABLE competencies ADD CONSTRAINT competencies_pk PRIMARY KEY ( user_id,
                                                                      competency );

CREATE TABLE course (
    code                      VARCHAR2(4) NOT NULL,
    "Number"                  VARCHAR2(4) NOT NULL,
    academic_name             VARCHAR2(100) NOT NULL,
    academic_unit_id          INTEGER NOT NULL,
    academic_unit_campus_id   INTEGER NOT NULL,
    title                     VARCHAR2(15) NOT NULL
);

ALTER TABLE course ADD CONSTRAINT cour_pk PRIMARY KEY ( code,
                                                        "Number" );

CREATE TABLE cp_t (
    cp_t VARCHAR2(100 CHAR) NOT NULL
);

ALTER TABLE cp_t ADD CONSTRAINT cp_t_pkv1 PRIMARY KEY ( cp_t );

CREATE TABLE credentials (
    user_id       INTEGER NOT NULL,
    credentials   VARCHAR2(200 CHAR) NOT NULL,
    type          VARCHAR2(500 CHAR)
);

ALTER TABLE credentials ADD CONSTRAINT credentials_pk PRIMARY KEY ( user_id,
                                                                    credentials );

CREATE TABLE faculty (
    user_id   INTEGER NOT NULL,
    rank      VARCHAR2(25) NOT NULL
);

ALTER TABLE faculty ADD CONSTRAINT faculty_pk PRIMARY KEY ( user_id );

CREATE TABLE graduate (
    student_user_id INTEGER NOT NULL
);

ALTER TABLE graduate ADD CONSTRAINT graduate_pk PRIMARY KEY ( student_user_id );

CREATE TABLE honors (
    user_id   INTEGER NOT NULL,
    honor     VARCHAR2(500 CHAR) NOT NULL
);

ALTER TABLE honors ADD CONSTRAINT honors_pk PRIMARY KEY ( user_id,
                                                          honor );

CREATE TABLE materials (
    cp_t_cp_t            VARCHAR2(100 CHAR) NOT NULL,
    user_id              INTEGER NOT NULL,
    name                 VARCHAR2(15) NOT NULL,
    type                 VARCHAR2(25),
    context              VARCHAR2(500),
    upload_name          VARCHAR2(50),
    upload_type          VARCHAR2(100),
    file_extension       VARCHAR2(5),
    date_created         DATE,
    date_modified        DATE,
    avaliable_location   VARCHAR2(250),
    upload_timestamp     DATE
);

ALTER TABLE materials
    ADD CONSTRAINT materials_pk PRIMARY KEY ( name,
                                              user_id,
                                              cp_t_cp_t );

CREATE TABLE non_academic (
    unit_id          INTEGER NOT NULL,
    unit_campus_id   INTEGER NOT NULL,
    name             VARCHAR2(100) NOT NULL
);

ALTER TABLE non_academic
    ADD CONSTRAINT n_acad_pk PRIMARY KEY ( name,
                                           unit_id,
                                           unit_campus_id );

CREATE TABLE org_user (
    organization_id   INTEGER NOT NULL,
    user_id           INTEGER NOT NULL,
    c_au_org_id       INTEGER
);

ALTER TABLE org_user ADD CONSTRAINT org_user_association_pk PRIMARY KEY ( user_id,
                                                                          organization_id );

CREATE TABLE organization (
    id         INTEGER NOT NULL,
    name       VARCHAR2(25) NOT NULL,
    location   VARCHAR2(200)
);

ALTER TABLE organization ADD CONSTRAINT organization_pk PRIMARY KEY ( id );

CREATE TABLE passed (
    semester        VARCHAR2(10) NOT NULL,
    year            INTEGER NOT NULL,
    user_id         INTEGER NOT NULL,
    course_code     VARCHAR2(4) NOT NULL,
    course_number   VARCHAR2(4) NOT NULL,
    c_au_org_id     INTEGER,
    cp_t_cp_t       VARCHAR2(100 CHAR)
);

ALTER TABLE passed
    ADD CONSTRAINT passed_pk PRIMARY KEY ( user_id,
                                           semester,
                                           year,
                                           course_code,
                                           course_number );

CREATE TABLE programs (
    code          VARCHAR2(8) NOT NULL,
    name          VARCHAR2(15) NOT NULL,
    degree_type   VARCHAR2(15) NOT NULL
);

ALTER TABLE programs ADD CONSTRAINT programs_pk PRIMARY KEY ( code );

CREATE TABLE programs_offers_course (
    programs_code   VARCHAR2(8) NOT NULL,
    course_code     VARCHAR2(4) NOT NULL,
    course_number   VARCHAR2(4) NOT NULL
);

ALTER TABLE programs_offers_course
    ADD CONSTRAINT prog_of_cour_pk PRIMARY KEY ( programs_code,
                                                 course_code,
                                                 course_number );

CREATE TABLE student (
    type      VARCHAR2(15) NOT NULL,
    user_id   INTEGER NOT NULL
);

ALTER TABLE student ADD CONSTRAINT student_pk PRIMARY KEY ( user_id );

CREATE TABLE tags (
    materials_name        VARCHAR2(15) NOT NULL,
    materials_user_id     INTEGER NOT NULL,
    materials_cp_t_cp_t   VARCHAR2(100 CHAR) NOT NULL,
    tag                   VARCHAR2(200) NOT NULL
);

ALTER TABLE tags
    ADD CONSTRAINT tags_pk PRIMARY KEY ( materials_name,
                                         materials_user_id,
                                         materials_cp_t_cp_t,
                                         tag );

CREATE TABLE tasks (
    c_au_org_id          INTEGER NOT NULL,
    user_id              INTEGER NOT NULL,
    title                VARCHAR2(25) NOT NULL,
    short_disc           VARCHAR2(1000) NOT NULL,
    time_period          VARCHAR2(100) NOT NULL,
    skills_built         VARCHAR2(100),
    type_activity        VARCHAR2(100),
    role                 VARCHAR2(50),
    additional_details   VARCHAR2(500),
    cp_t_cp_t            VARCHAR2(100 CHAR)
);

ALTER TABLE tasks
    ADD CONSTRAINT tasks_pk PRIMARY KEY ( title,
                                          c_au_org_id,
                                          user_id );

CREATE TABLE testimonials (
    user_id       INTEGER NOT NULL,
    testimonial   VARCHAR2(500) NOT NULL
);

ALTER TABLE testimonials ADD CONSTRAINT testimonials_pk PRIMARY KEY ( user_id,
                                                                      testimonial );

CREATE TABLE undergraduate (
    student_user_id INTEGER NOT NULL
);

ALTER TABLE undergraduate ADD CONSTRAINT undergraduate_pk PRIMARY KEY ( student_user_id );

CREATE TABLE unit (
    campus_id   INTEGER NOT NULL,
    id          INTEGER NOT NULL,
    address     VARCHAR2(500),
    city        VARCHAR2(25),
    state       VARCHAR2(25),
    country     VARCHAR2(25),
    phone       VARCHAR2(15),
    "E-mail"    VARCHAR2(50),
    url         VARCHAR2(500),
    type        VARCHAR2(1) NOT NULL
);

ALTER TABLE unit ADD CONSTRAINT unit_pk PRIMARY KEY ( id,
                                                      campus_id );

CREATE TABLE university (
    id         INTEGER NOT NULL,
    name       VARCHAR2(100) NOT NULL,
    address    VARCHAR2(500),
    city       VARCHAR2(25),
    state      VARCHAR2(25),
    country    VARCHAR2(25),
    phone      VARCHAR2(15),
    "E-mail"   VARCHAR2(50),
    url        VARCHAR2(500)
);

ALTER TABLE university ADD CONSTRAINT univ_pk PRIMARY KEY ( id );

CREATE TABLE "USER" (
    id                      INTEGER NOT NULL,
    first_name              VARCHAR2(15) NOT NULL,
    middle_initial          VARCHAR2(1) NOT NULL,
    last_name               VARCHAR2(25) NOT NULL,
    title                   VARCHAR2(15),
    "Professional_E-mail"   VARCHAR2(50),
    "Personal_E-mail"       VARCHAR2(50),
    phone                   VARCHAR2(15),
    current_street_number   VARCHAR2(100),
    current_city            VARCHAR2(15),
    current_state           VARCHAR2(15),
    current_country         VARCHAR2(25),
    perm_street_number      VARCHAR2(100),
    perm_city               VARCHAR2(15),
    perm_state              VARCHAR2(15),
    perm_country            VARCHAR2(25)
);

ALTER TABLE "USER" ADD CONSTRAINT user_pk PRIMARY KEY ( id );

CREATE TABLE user_au (
    user_id                   INTEGER NOT NULL,
    academic_name             VARCHAR2(100) NOT NULL,
    academic_unit_id          INTEGER NOT NULL,
    academic_unit_campus_id   INTEGER NOT NULL
);

ALTER TABLE user_au
    ADD CONSTRAINT user_au_pk PRIMARY KEY ( user_id,
                                            academic_name,
                                            academic_unit_id,
                                            academic_unit_campus_id );

CREATE TABLE user_au_role (
    role                    VARCHAR2(100 CHAR) NOT NULL,
    user_au_user_id         INTEGER NOT NULL,
    user_au_acad_name       VARCHAR2(100) NOT NULL,
    user_au_acad_unit_id    INTEGER NOT NULL,
    u_au_acad_unit_cam_id   INTEGER NOT NULL,
    c_au_org_id             INTEGER
);

ALTER TABLE user_au_role
    ADD CONSTRAINT u_au_rol_pk PRIMARY KEY ( role,
                                             user_au_user_id,
                                             user_au_acad_name,
                                             user_au_acad_unit_id,
                                             u_au_acad_unit_cam_id );

CREATE TABLE user_collage_role (
    role                      VARCHAR2(50 CHAR) NOT NULL,
    user_college_user_id      INTEGER NOT NULL,
    user_college_college_id   INTEGER NOT NULL,
    c_au_org_id               INTEGER
);

ALTER TABLE user_collage_role
    ADD CONSTRAINT u_coll_role_pk PRIMARY KEY ( user_college_user_id,
                                                user_college_college_id,
                                                role );

CREATE TABLE user_college (
    user_id      INTEGER NOT NULL,
    college_id   INTEGER NOT NULL
);

ALTER TABLE user_college ADD CONSTRAINT u_coll_pk PRIMARY KEY ( user_id,
                                                                college_id );

CREATE TABLE user_org_dates (
    org_user_user_id   INTEGER NOT NULL,
    org_user_org_id    INTEGER NOT NULL,
    start_date         DATE NOT NULL,
    end_date           DATE
);

ALTER TABLE user_org_dates
    ADD CONSTRAINT user_org_dates_pk PRIMARY KEY ( start_date,
                                                   org_user_user_id,
                                                   org_user_org_id );

CREATE TABLE user_program (
    programs_code   VARCHAR2(8) NOT NULL,
    user_id         INTEGER NOT NULL
);

ALTER TABLE user_program ADD CONSTRAINT u_prog_pk PRIMARY KEY ( programs_code,
                                                                user_id );

CREATE TABLE user_program_dates (
    start_date                   DATE NOT NULL,
    user_program_programs_code   VARCHAR2(8) NOT NULL,
    user_program_user_id         INTEGER NOT NULL,
    end_date                     DATE
);

ALTER TABLE user_program_dates
    ADD CONSTRAINT user_prog_date_pk PRIMARY KEY ( start_date,
                                                   user_program_programs_code,
                                                   user_program_user_id );

CREATE TABLE user_urls (
    url       VARCHAR2(500 CHAR) NOT NULL,
    user_id   INTEGER NOT NULL
);

ALTER TABLE user_urls ADD CONSTRAINT user_urls_pk PRIMARY KEY ( url,
                                                                user_id );

ALTER TABLE academic
    ADD CONSTRAINT acad_coll_fk FOREIGN KEY ( college_id )
        REFERENCES college ( id );

ALTER TABLE academic
    ADD CONSTRAINT acad_unit_fk FOREIGN KEY ( unit_id,
                                              unit_campus_id )
        REFERENCES unit ( id,
                          campus_id );

ALTER TABLE alumni_degree
    ADD CONSTRAINT alumni_degree_alumni_fk FOREIGN KEY ( alumni_user_id )
        REFERENCES alumni ( user_id );

ALTER TABLE alumni
    ADD CONSTRAINT alumni_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE au_offers_programs
    ADD CONSTRAINT au_of_prog_acad_fk FOREIGN KEY ( academic_name,
                                                    academic_unit_id,
                                                    academic_unit_campus_id )
        REFERENCES academic ( name,
                              unit_id,
                              unit_campus_id );

ALTER TABLE au_offers_programs
    ADD CONSTRAINT au_of_prog_prog_fk FOREIGN KEY ( programs_code )
        REFERENCES programs ( code );

ALTER TABLE authors
    ADD CONSTRAINT authors_materials_fk FOREIGN KEY ( materials_name,
                                                      materials_user_id,
                                                      materials_cp_t_cp_t )
        REFERENCES materials ( name,
                               user_id,
                               cp_t_cp_t );

ALTER TABLE awards
    ADD CONSTRAINT awards_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE campus
    ADD CONSTRAINT cam_univ_fk FOREIGN KEY ( univ_id )
        REFERENCES university ( id );

ALTER TABLE career_objectives
    ADD CONSTRAINT career_objectives_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE college
    ADD CONSTRAINT coll_cam_fk FOREIGN KEY ( campus_id )
        REFERENCES campus ( id );

ALTER TABLE competencies
    ADD CONSTRAINT competencies_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE course
    ADD CONSTRAINT cour_acad_fk FOREIGN KEY ( academic_name,
                                              academic_unit_id,
                                              academic_unit_campus_id )
        REFERENCES academic ( name,
                              unit_id,
                              unit_campus_id );

ALTER TABLE credentials
    ADD CONSTRAINT credentials_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE faculty
    ADD CONSTRAINT faculty_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE graduate
    ADD CONSTRAINT graduate_student_fk FOREIGN KEY ( student_user_id )
        REFERENCES student ( user_id );

ALTER TABLE honors
    ADD CONSTRAINT honors_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE materials
    ADD CONSTRAINT materials_cp_t_fk FOREIGN KEY ( cp_t_cp_t )
        REFERENCES cp_t ( cp_t );

ALTER TABLE materials
    ADD CONSTRAINT materials_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE non_academic
    ADD CONSTRAINT n_acad_unit_fk FOREIGN KEY ( unit_id,
                                                unit_campus_id )
        REFERENCES unit ( id,
                          campus_id );

ALTER TABLE org_user
    ADD CONSTRAINT org_user_c_au_org_fk FOREIGN KEY ( c_au_org_id )
        REFERENCES c_au_org ( id );

ALTER TABLE org_user
    ADD CONSTRAINT org_user_organization_fk FOREIGN KEY ( organization_id )
        REFERENCES organization ( id );

ALTER TABLE org_user
    ADD CONSTRAINT org_user_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE passed
    ADD CONSTRAINT passed_c_au_org_fk FOREIGN KEY ( c_au_org_id )
        REFERENCES c_au_org ( id );

ALTER TABLE passed
    ADD CONSTRAINT passed_course_fk FOREIGN KEY ( course_code,
                                                  course_number )
        REFERENCES course ( code,
                            "Number" );

ALTER TABLE passed
    ADD CONSTRAINT passed_cp_t_fk FOREIGN KEY ( cp_t_cp_t )
        REFERENCES cp_t ( cp_t );

ALTER TABLE passed
    ADD CONSTRAINT passed_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE programs_offers_course
    ADD CONSTRAINT prog_of_cour_cour_fk FOREIGN KEY ( course_code,
                                                      course_number )
        REFERENCES course ( code,
                            "Number" );

ALTER TABLE programs_offers_course
    ADD CONSTRAINT prog_of_cour_prog_fk FOREIGN KEY ( programs_code )
        REFERENCES programs ( code );

ALTER TABLE student
    ADD CONSTRAINT student_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE tags
    ADD CONSTRAINT tags_materials_fk FOREIGN KEY ( materials_name,
                                                   materials_user_id,
                                                   materials_cp_t_cp_t )
        REFERENCES materials ( name,
                               user_id,
                               cp_t_cp_t );

ALTER TABLE tasks
    ADD CONSTRAINT tasks_c_au_org_fk FOREIGN KEY ( c_au_org_id )
        REFERENCES c_au_org ( id );

ALTER TABLE tasks
    ADD CONSTRAINT tasks_cp_t_fk FOREIGN KEY ( cp_t_cp_t )
        REFERENCES cp_t ( cp_t );

ALTER TABLE tasks
    ADD CONSTRAINT tasks_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE testimonials
    ADD CONSTRAINT testimonials_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE user_au_role
    ADD CONSTRAINT u_au_r_c_au_o_fk FOREIGN KEY ( c_au_org_id )
        REFERENCES c_au_org ( id );

ALTER TABLE user_au_role
    ADD CONSTRAINT u_au_r_u_au_fk FOREIGN KEY ( user_au_user_id,
                                                user_au_acad_name,
                                                user_au_acad_unit_id,
                                                u_au_acad_unit_cam_id )
        REFERENCES user_au ( user_id,
                             academic_name,
                             academic_unit_id,
                             academic_unit_campus_id );

ALTER TABLE user_college
    ADD CONSTRAINT u_coll_coll_fk FOREIGN KEY ( college_id )
        REFERENCES college ( id );

ALTER TABLE user_collage_role
    ADD CONSTRAINT u_coll_role_u_coll_fk FOREIGN KEY ( user_college_user_id,
                                                       user_college_college_id )
        REFERENCES user_college ( user_id,
                                  college_id );

ALTER TABLE user_college
    ADD CONSTRAINT u_coll_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE user_program_dates
    ADD CONSTRAINT u_prog_d_u_prog_fk FOREIGN KEY ( user_program_programs_code,
                                                    user_program_user_id )
        REFERENCES user_program ( programs_code,
                                  user_id );

ALTER TABLE undergraduate
    ADD CONSTRAINT undergraduate_student_fk FOREIGN KEY ( student_user_id )
        REFERENCES student ( user_id );

ALTER TABLE unit
    ADD CONSTRAINT unit_campus_fk FOREIGN KEY ( campus_id )
        REFERENCES campus ( id );

ALTER TABLE user_au
    ADD CONSTRAINT user_au_acad_fk FOREIGN KEY ( academic_name,
                                                 academic_unit_id,
                                                 academic_unit_campus_id )
        REFERENCES academic ( name,
                              unit_id,
                              unit_campus_id );

ALTER TABLE user_au
    ADD CONSTRAINT user_au_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE user_collage_role
    ADD CONSTRAINT user_collage_role_c_au_org_fk FOREIGN KEY ( c_au_org_id )
        REFERENCES c_au_org ( id );

ALTER TABLE user_org_dates
    ADD CONSTRAINT user_org_dates_org_user_fk FOREIGN KEY ( org_user_user_id,
                                                            org_user_org_id )
        REFERENCES org_user ( user_id,
                              organization_id );

ALTER TABLE user_program
    ADD CONSTRAINT user_prog_prog_fk FOREIGN KEY ( programs_code )
        REFERENCES programs ( code );

ALTER TABLE user_program
    ADD CONSTRAINT user_prog_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

ALTER TABLE user_urls
    ADD CONSTRAINT user_urls_user_fk FOREIGN KEY ( user_id )
        REFERENCES "USER" ( id );

CREATE OR REPLACE TRIGGER fknto_passed BEFORE
    UPDATE OF c_au_org_id ON passed
    FOR EACH ROW
BEGIN
    IF :old.c_au_org_id IS NOT NULL THEN
        raise_application_error(-20225, 'Non Transferable FK constraint PASSED_C_AU_ORG_FK on table PASSED is violated');
    END IF;
END;
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            40
-- CREATE INDEX                             0
-- ALTER TABLE                             90
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           1
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0