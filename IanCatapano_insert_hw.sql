--- SQL DDL
--- Ian Catapano, 4/2019 

SET CONSTRAINTS ALL DEFERRED;

--- Contacts Inserts
INSERT INTO CONTACTS (ID, COMPANY, LNAME, FNAME, EMAIL, JOB_TITLE, BUS_PHONE, HOM_PHONE, MOB_PHONE, FAX_NUM, ADDRESS, CITY, STAT, ZIP, COUNTRY, WEB_PAGE, NOTES)
VALUES (00001, 'ACME, INC.', 'Smith', 'Al', 'asmith@acme.com', 'salesman', '999-399-0000', '999-850-7689', '999-530-3153', '999-399-5000', '487 South St.', 'Jamestown', 'Anywhere', '88888', 'USA', 'http://acme.com/asmith_sales', '');

INSERT INTO CONTACTS (ID, COMPANY, LNAME, FNAME, EMAIL, JOB_TITLE, BUS_PHONE, HOM_PHONE, MOB_PHONE, FAX_NUM, ADDRESS, CITY, STAT, ZIP, COUNTRY, WEB_PAGE, NOTES)
VALUES (00021, 'Wonder, Inc.', 'Brown', 'Betty', 'bbrown@wonder.com', 'CFO', '999-488-0000', '999-839-4545', '999-535-8758', '999-488-9000', '500 1st St.', 'NoPlace', 'Here', '44444', 'Everywhere', 'http://wonder.com', 'VIP');

INSERT INTO CONTACTS (ID, COMPANY, LNAME, FNAME, EMAIL, JOB_TITLE, BUS_PHONE, HOM_PHONE, MOB_PHONE, FAX_NUM, ADDRESS, CITY, STAT, ZIP, COUNTRY, WEB_PAGE, NOTES)
VALUES (00450, 'Ultra Co.', 'Jefferson', 'Dave', 'djefferson@ultra.com', 'web designer', '999-`100-0000', '999-936-8720', '999-567-9867', '999-100-2000', '333 Some St.', 'Slowville', 'There', '33333', 'Space', 'http://ultra.com', 'Owes money');

INSERT INTO CONTACTS (ID, COMPANY, LNAME, FNAME, EMAIL, JOB_TITLE, BUS_PHONE, HOM_PHONE, MOB_PHONE, FAX_NUM, ADDRESS, CITY, STAT, ZIP, COUNTRY, WEB_PAGE, NOTES)
VALUES ('60291', 'RIC', 'Somebody', 'Anna', 'asomebody@ric.com', 'engineer', '999-320-0000', '999-738-2340', '999-521-8972', '999-320-9000', '78 That St.', 'Sun City', 'NoWhere', '11111', 'Orbit', 'http://ric.com', '');

INSERT INTO CONTACTS (ID, COMPANY, LNAME, FNAME, EMAIL, JOB_TITLE, BUS_PHONE, HOM_PHONE, MOB_PHONE, FAX_NUM, ADDRESS, CITY, STAT, ZIP, COUNTRY, WEB_PAGE, NOTES)
VALUES ('09003', 'Games Co.', 'Nobody', 'Steve', 'snobody@games.com', 'developer', '999-255-0000', '999-976-9748', '999-592-5256', '999-255-6000', '9832 This Rd.', 'SomePlace', 'Here', '77777', 'Here', 'http://games.com', '');

--- Assets Inserts
INSERT INTO ASSETS (ID, ITEM, DESCRIPTION, CATEG, CONDITION, ACQ_DATE, PUR_PRICE, CUR_VALUE, LOCATION, MANUFACTURER, MODEL, OWNER, RET_DATE)
VALUES (23577, 'Luxury SUV', 'Silver Lexus SUV', 'SUV', 'Excellent', TO_DATE('2018-11-20', 'yyyy-mm-dd'), 49499.00, 45000.00, 'NoPlace, Here', 'Lexus', 'RX450h F Sport', 00021, TO_DATE('2022-01-01', 'yyyy-mm-dd'));

INSERT INTO ASSETS (ID, ITEM, DESCRIPTION, CATEG, CONDITION, ACQ_DATE, PUR_PRICE, CUR_VALUE, LOCATION, MANUFACTURER, MODEL, OWNER, RET_DATE)
VALUES (19280, 'Economy Compact', 'Orange Ford 4 door', 'Car', 'Good', TO_DATE('2017-06-10', 'yyyy-mm-dd'), 21350.00, 12600.00, 'Slowville, There', 'Ford', 'Fiesta ST', 00450, TO_DATE('2021-01-01', 'yyyy-mm-dd'));

INSERT INTO ASSETS (ID, ITEM, DESCRIPTION, CATEG, CONDITION, ACQ_DATE, PUR_PRICE, CUR_VALUE, LOCATION, MANUFACTURER, MODEL, OWNER, RET_DATE)
VALUES (07920, 'Off-Road', 'Yellow 4x4 Jeep', 'SUV', 'Poor', TO_DATE('2015-03-19', 'yyyy-mm-dd'), 25000.00, 10000.00, 'Jamestown, Anywhere', 'Jeep', 'Wrangler JK Sport', 00001, TO_DATE('2019-01-01', 'yyyy-mm-dd'));

INSERT INTO ASSETS (ID, ITEM, DESCRIPTION, CATEG, CONDITION, ACQ_DATE, PUR_PRICE, CUR_VALUE, LOCATION, MANUFACTURER, MODEL, OWNER, RET_DATE)
VALUES (59234, 'Sport Car', 'Blue KIA Sport', 'Car', 'Excellent', TO_DATE('2019-02-24', 'yyyy-mm-dd'), 39500.00, 38000.00, 'Sun City, NoWhere', 'KIA', 'Stinger Premium', 60291, TO_DATE('2024-01-01', 'yyyy-mm-dd'));

INSERT INTO ASSETS (ID, ITEM, DESCRIPTION, CATEG, CONDITION, ACQ_DATE, PUR_PRICE, CUR_VALUE, LOCATION, MANUFACTURER, MODEL, OWNER, RET_DATE)
VALUES (30282, 'Electric Car', 'Black Electric Car', 'Car', 'Good', TO_DATE('2018-12-20', 'yyyy-mm-dd'), 45000.00, 39000.00, 'SomePlace, Here', 'BMW', 'i3', 09003, TO_DATE('2023-01-01', 'yyyy-mm-dd'));

--- Transactions Inserts
INSERT INTO TRANSACTIONS (ID, ASSET, OUT_TO, OUT_DATE, DUE_DATE, IN_DATE, IN_CONDITION, NOTES, OUT_CONDITION)
VALUES (00320, '07920', '09003', TO_DATE('2015-04-01', 'yyyy-mm-dd'), TO_DATE('2016-01-01', 'yyyy-mm-dd'), TO_DATE('2015-12-30', 'yyyy-mm-dd'), 'Excellent', 'Seat ripped', 'Good');

INSERT INTO TRANSACTIONS (ID, ASSET, OUT_TO, OUT_DATE, DUE_DATE, IN_DATE, IN_CONDITION, NOTES, OUT_CONDITION)
VALUES (00389, '19280', '00001', TO_DATE('2017-07-01', 'yyyy-mm-dd'), TO_DATE('2017-11-01', 'yyyy-mm-dd'), TO_DATE('2017-10-25', 'yyyy-mm-dd'), 'Excellent', '', 'Excellent');

INSERT INTO TRANSACTIONS (ID, ASSET, OUT_TO, OUT_DATE, DUE_DATE, IN_DATE, IN_CONDITION, NOTES, OUT_CONDITION)
VALUES (00423, '07920', '60291', TO_DATE('2016-04-21', 'yyyy-mm-dd'), TO_DATE('2016-11-01', 'yyyy-mm-dd'), TO_DATE('2016-11-05', 'yyyy-mm-dd'), 'Good', 'Returned Late', 'Good');

INSERT INTO TRANSACTIONS (ID, ASSET, OUT_TO, OUT_DATE, DUE_DATE, IN_DATE, IN_CONDITION, NOTES, OUT_CONDITION)
VALUES (00479, '19280', '00021', TO_DATE('2018-01-01', 'yyyy-mm-dd'), TO_DATE('2018-06-01', 'yyyy-mm-dd'), TO_DATE('2018-06-01', 'yyyy-mm-dd'), 'Excellent', 'Damage to rear bumper', 'Good');

INSERT INTO TRANSACTIONS (ID, ASSET, OUT_TO, OUT_DATE, DUE_DATE, IN_DATE, IN_CONDITION, NOTES, OUT_CONDITION)
VALUES (00538, '07920', '00450', TO_DATE('2018-03-01', 'yyyy-mm-dd'), TO_DATE('2018-10-25', 'yyyy-mm-dd'), TO_DATE('2018-10-24', 'yyyy-mm-dd'), 'Good', 'Damage to diver side fender', 'Poor');

INSERT INTO TRANSACTIONS (ID, ASSET, OUT_TO, OUT_DATE, DUE_DATE, IN_DATE, IN_CONDITION, NOTES, OUT_CONDITION)
VALUES (00592, '23577', '00021', TO_DATE('2018-12-01', 'yyyy-mm-dd'), TO_DATE('2019-06-01', 'yyyy-mm-dd'), TO_DATE('', 'yyyy-mm-dd'), '', '', 'Excellent');

INSERT INTO TRANSACTIONS (ID, ASSET, OUT_TO, OUT_DATE, DUE_DATE, IN_DATE, IN_CONDITION, NOTES, OUT_CONDITION)
VALUES (00632, '19280', '00450', TO_DATE('2018-10-25', 'yyyy-mm-dd'), TO_DATE('2019-04-30', 'yyyy-mm-dd'), TO_DATE('', 'yyyy-mm-dd'), '', '', 'Good');

INSERT INTO TRANSACTIONS (ID, ASSET, OUT_TO, OUT_DATE, DUE_DATE, IN_DATE, IN_CONDITION, NOTES, OUT_CONDITION)
VALUES (00687, '07920', '00001', TO_DATE('2019-01-01', 'yyyy-mm-dd'), TO_DATE('2019-02-05', 'yyyy-mm-dd'), TO_DATE('', 'yyyy-mm-dd'), '', '', 'Poor');

INSERT INTO TRANSACTIONS (ID, ASSET, OUT_TO, OUT_DATE, DUE_DATE, IN_DATE, IN_CONDITION, NOTES, OUT_CONDITION)
VALUES (00792, '59234', '60291', TO_DATE('2019-02-01', 'yyyy-mm-dd'), TO_DATE('2019-08-20', 'yyyy-mm-dd'), TO_DATE('', 'yyyy-mm-dd'), '', '', 'Excellent');

INSERT INTO TRANSACTIONS (ID, ASSET, OUT_TO, OUT_DATE, DUE_DATE, IN_DATE, IN_CONDITION, NOTES, OUT_CONDITION)
VALUES (00893, '30282', '09003', TO_DATE('2019-03-01', 'yyyy-mm-dd'), TO_DATE('2019-10-27', 'yyyy-mm-dd'), TO_DATE('', 'yyyy-mm-dd'), '', '', 'Good');

commit;