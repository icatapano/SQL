--- SQL DDL
--- Ian Catapano, 4/2019 

CREATE TABLE Contacts
 (
   ID 				NUMBER(5) NOT NULL,
   company			VARCHAR2(25),
   lname			VARCHAR2(20) NOT NULL,
   fname			VARCHAR2(15) NOT NULL,
   email			VARCHAR2(50),
   job_title		VARCHAR2(15),
   bus_phone		VARCHAR2(15),
   hom_phone		VARCHAR2(15),
   mob_phone		VARCHAR2(15),
   fax_num			VARCHAR2(15),
   address			VARCHAR2(50),
   city				VARCHAR2(20),
   stat				VARCHAR2(15),
   zip				NUMBER(5),
   country			VARCHAR2(15),
   web_page			VARCHAR2(500),
   notes			VARCHAR2(500),
   CONSTRAINT CONTACTS_PK PRIMARY KEY (ID)
 );
  
CREATE TABLE Assets
 (
   ID				NUMBER(5) NOT NULL,
   item				VARCHAR2(25),
   description		VARCHAR2(50),
   categ			VARCHAR2(15),
   condition		VARCHAR2(15),
   acq_date			DATE,
   pur_price	    DECIMAL(10,2) DEFAULT (0.0) CHECK (pur_price >= 0.0),
   cur_value	    DECIMAL(10,2) DEFAULT (0.0) CHECK (cur_value >= 0.0),
   location			VARCHAR2(25),
   manufacturer		VARCHAR2(25),
   model			VARCHAR2(25),
   owner			NUMBER(5) NOT NULL,
   ret_date			DATE,
   CONSTRAINT ASSESTS_PK PRIMARY KEY (ID),
   CONSTRAINT ASSESTS_CONTACTS_FK FOREIGN KEY (owner) REFERENCES CONTACTS(ID) ON DELETE SET NULL
 );
  
CREATE TABLE Transactions
 (
   ID				NUMBER(5) NOT NULL,
   asset			NUMBER(5) NOT NULL,
   out_to			NUMBER(5) NOT NULL,
   out_date			DATE,
   due_date			DATE,
   in_date			DATE,
   in_condition		VARCHAR2(15),
   notes			VARCHAR2(500),
   out_condition 	VARCHAR2(15),
   CONSTRAINT TRANSACTIONS_PK PRIMARY KEY (ID),
   CONSTRAINT TRANSACTIONS_ASSESTS_FK FOREIGN KEY (asset) REFERENCES ASSETS(ID) ON DELETE SET NULL,
   CONSTRAINT TRANSACTIONS_CONTACTS_FK FOREIGN KEY (out_to) REFERENCES CONTACTS(ID) ON DELETE SET NULL
 );