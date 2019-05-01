--- SQL DDL
--- Ian Catapano, 4/2019

--- Query 1: A query involving one table to demonstrate select, project, and rename
--- Query 1: Returns all Users with current country of USA and renames columns.
SELECT FIRST_NAME "First Name", LAST_NAME "Last Name", TITLE "Job Title"
FROM "USER"
WHERE CURRENT_COUNTRY = 'USA';

--- Query 2: A query involving two tables to demonstrate equi-join
--- Query 2: Returns all Campuses and the Units associated to them.
SELECT *
FROM CAMPUS JOIN UNIT
ON CAMPUS.ID = UNIT.CAMPUS_ID;

--- Query 3: A query involving two or more tables to demonstrate aggregation
--- Query 3: Returns the count of students attending Bloomington College.
SELECT COUNT(*) "Number of students at Bloomington College"
FROM "USER"
WHERE ID IN
	(SELECT USER_ID
	 FROM USER_COLLEGE
	 WHERE COLLEGE_ID = 8975);

--- Query 4: A query involving two or more tables to demonstrate division
--- Query 4: Returns all graduate students who have the same honors as user Sue Brown
--- Doesn't work, I will keep trying till deadline.
SELECT FIRST_NAME "First Name", LAST_NAME "Last Name"
FROM "USERS"
WHERE NOT EXISTS
	(SELECT AL.USER_ID FROM ALUMNI AL JOIN AWARDS AW WHERE AL.USER_ID = AW.USER_ID
	 MINUS
	 SELECT USER_ID FROM AWARDS WHERE AWARDS.AWARD = 'Bob Dole Award');

--- Query 5: A query involving three or more tables to demonstrate grouping
--- Query 5: Returns a list of all the programs and the count of users in each program.
SELECT P.NAME "Program", COUNT(UP.USER_ID)
FROM PROGRAMS P
WHERE EXISTS
	(SELECT PROGRAMS_CODE, UP.USER_ID
	 FROM "USER", USER_PROGRAM UP
	 WHERE "USER".ID = UP.USER_ID)
GROUP BY UP.PROGRAMS_CODE;

--- I could only get it to work with 2 tables and not three.

SELECT PROGRAMS_CODE, COUNT(USER_ID)
FROM "USER", USER_PROGRAM
WHERE ID = USER_ID
GROUP BY PROGRAMS_CODE;
	 
--- Query 6: A query involving three or more tables to demonstrate outer join/outer union
--- Query 6: Returns a list all the universities in the database. If there are associated campuses, and associated units if there are any.
SELECT U.ID "University ID", U.NAME "Univeristy", C.ID "Campus ID", C.NAME "Campus", UN.ID "Unit ID", UN.TYPE "Unit Type"
FROM UNIVERSITY U LEFT OUTER JOIN CAMPUS C
ON U.ID = C.UNIV_ID
LEFT OUTER JOIN UNIT UN
ON C.ID = UN.CAMPUS_ID
ORDER BY U.ID, C.ID;
	 
