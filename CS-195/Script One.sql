# Set up the customersAndProducts database and the
# customerContacts table
/*
   Patrick Rakowicz
   CS 195
   First Database
*/

 

drop database if exists customersAndProducts;   # perhaps left over from previous
create database customersAndProducts;   		-- note the blank after --
use customersAndProducts;   					# switch to the customerAndProducts database

drop table if exists customerContacts; 			#left over?

create table customerContacts (
	customerContactId int primary key,
	customerId varchar(12),
	fname varchar(10),
	lname varchar(15),
	email varchar(40)
);

select "-------------------------------------------------------------------------------------------------";

insert into customerContacts
values (1, 'MXLDR',  'Abraham',  'Lincoln',  'lincoln@MXLDR.com');

insert into customerContacts
values (2, 'MXLDR',  'Richard', 'Nixon',  'nixon@MXLDR.com');

insert into customerContacts
values (3, 'MXLDR',  'Franklin',  'Roosevelt',  'fdr@MXLDR.com');

insert into customerContacts
values (4, 'MXLDR',  'Theodore',  'Roosevelt',  'roosevelt@MXLDR.com');

insert into customerContacts
values (5, 'SCI2000',  'Albert',  'Einstein',  'einstein@SCI2000.com');

insert into customerContacts
values (6, 'SCI2000',  'Charles',  'Darwin',  'darwin@SCI2000.com');

insert into customerContacts
values (7, 'SCI2000',  'Marie',  'Curie',  'curie@SCI2000.com');

insert into customerContacts
values (8, 'SCI2000',  'Benjamin',  'Franklin',  'franklin@SCI2000.com');

insert into customerContacts
values (9, 'MSCRUS',  'George',  'Gershwin',  'gershwin@MSCRUS.com');

insert into customerContacts
values (10, 'MSCRUS',  'Benjamin',  'Britten',  'britten@MSCRUS.com');

insert into customerContacts
values (11, 'MSCRUS',  'John',  'Lennon',  'lennon@MSCRUS.com');
 
select "************************************************************";

select * from customerContacts;