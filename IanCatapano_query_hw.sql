--- SQL DDL
--- Ian Catapano, 4/2019

--- Query #1 (List all the assets that are currently checked out)
SELECT ID, MANUFACTURER "Manufaturer", MODEL "Model"
FROM ASSETS
WHERE ID IN
  (SELECT ASSET FROM TRANSACTIONS
   WHERE IN_DATE IS NULL);

--- Query #2 (List the total number of contacts)
SELECT COUNT(*) "Number of Contacts"
FROM CONTACTS;

--- Query #3 (List the current value of assets in each category)
SELECT CATEG "Category", SUM(CUR_VALUE) "Total Value Per Category"
FROM ASSETS
GROUP BY CATEG;

--- (Or did you want each item like below?)

SELECT CATEG "Category", CUR_VALUE "Current Value"
FROM ASSETS
GROUP BY CATEG, CUR_VALUE;

--- Query #4 (List all the contacts and their corresponding number of outstanding assets that they have not checked in)
SELECT CONTACTS.ID, FNAME "First Name", LNAME "Last Name", COUNT(TRANSACTIONS.ASSET) "Number of Outstanding Assets"
FROM CONTACTS, TRANSACTIONS
WHERE TRANSACTIONS.IN_DATE IS NULL AND CONTACTS.ID = TRANSACTIONS.OUT_TO
GROUP BY CONTACTS.ID, FNAME, LNAME;

--- Query #5 (List the average number of days between check-out and check-in of all assets)
SELECT ASSETS.ID, MANUFACTURER "Manufacturer", MODEL "Model", AVG(IN_DATE - OUT_DATE) "Average Days Out"
FROM TRANSACTIONS, ASSETS
WHERE TRANSACTIONS.ASSET = ASSETS.ID
GROUP BY ASSETS.ID, MANUFACTURER, MODEL;

--- Query #6 (List the total number of retired assets and their value)
SELECT COUNT(*) "Total Number Retired Assets", SUM(CUR_VALUE) "Total Value"
FROM ASSETS
WHERE RET_DATE < SYSDATE;

--- Query #7 (List of overdue assets)
SELECT ASSETS.ID, MANUFACTURER "Manufacturer", MODEL "Model", DUE_DATE "Due Date"
FROM TRANSACTIONS, ASSETS
WHERE DUE_DATE > SYSDATE AND TRANSACTIONS.ASSET = ASSETS.ID;
