DROP SCHEMA Lab1 CASCADE; 							
CREATE SCHEMA Lab1;									

ALTER ROLE cnhahn SET SEARCH_PATH to Lab1;

CREATE TABLE TaxReturns(
taxpayerID integer,
taxYear integer,
kind char(1),
dateFiled date,
income decimal(9,2),
taxOwed decimal(9,2),
PRIMARY key(taxpayerID, taxYear)
);

CREATE TABLE Payments(
taxpayerID integer,
datePaid date,
amountPaid decimal(9,2),
Primary Key(taxpayerID, datePaid)
);

CREATE TABLE Individuals(
taxpayerID integer,
name varchar(30),
address varchar(30),
spouseID integer,
lastDateFiled date,
lastDatePaid date,
totalTaxOwed decimal(9,2),
Primary Key(taxpayerID)
);

CREATE TABLE Businesses(
taxpayerID integer,
name varchar(30),
address varchar(30),
businessesType char(1),
lastDateFiled date,
lastDatePaid date,
totalTaxOwed decimal(9,2),
Primary Key(taxpayerID)
);

CREATE TABLE IRSagents(
IRSagentID integer,
taxpayerID integer,
jobLevel integer,
active boolean,
Primary key(IRSagentID)
);

CREATE TABLE Delinquents(
taxpayerID integer,
IRSagentID char(6),
collectionAgencyID integer,
Primary key(taxpayerID)
);
