/* 
   CS 195
   Patrick Rakowicz | Caleb Domenico
   Contact Info (Modified)
   Misc reading, Modified ContactInfo
*/

drop database if exists contactInfo;
create database contactInfo;
use contactInfo;
drop table if exists customersAndProducts;

# smallint allows -+32k integers (people)

create table friends (
	friendId smallint unsigned auto_increment not null primary key, 
    friendName varchar(20) not null
);

# Testing some stuff here
-- insert into friends (friendName)
-- 	values
--     ('Mike Lopez'),
--     ('Gary Hudson'),
--     ('Bruce Bradley'),
--     ('Barbara Johnson'),
--     ('James Black'),
--     ('jeremy White'),
--     ('Jack Riddler');
    
    
insert into friends (friendName)
values ('Mike Lopez');
insert into friends (friendName)
values ('Gary Hudson');
insert into friends (friendName)
values ('Bruce Bradley');
insert into friends (friendName)
values ('Barbara Johnson');
insert into friends (friendName)
values ('James Black');
insert into friends (friendName)
values ('jeremy White');
insert into friends (friendName)
values ('Jack Riddler');

select * from friends;
# Not sure what you are asking with using last_insert_id();
set @Mike_Lopez = last_insert_id(1); 
set @Gary_Hudson = last_insert_id(2);
set @Bruce_Bradley = last_insert_id(3);
set @Barbra_Johnson = last_insert_id(4);
set @Jame_Black = last_insert_id(5);
#select @id;

create table emails (
	emailId smallint unsigned auto_increment not null primary key,
    friendId smallint signed not null,
    email varchar(30) not null
);

insert into emails (friendId, email)
values (@Gary_Hudson, 'garyhudson@oldfriends.com');
insert into emails (friendId, email)
values (@Mike_Lopez, 'mikelopez@oldfriends.com');
insert into emails (friendId, email)
values (@Gary_Hudson, 'garyhudson@hudsonlaw.com');
insert into emails (friendId, email)
values (@Barbra_Johnson, 'nashvillebabs@aol.com');
insert into emails (friendId, email)
values (@Barbra_Johnson, 'seniorpartner1@hudsonlaw.com');
insert into emails (friendId, email)
values (@Bruce_Bradley, 'bruce@powerstart.com');
insert into emails (friendId, email)
values (@Gary_Hudson, 'ftlgary@punxhotany.com');

select * from emails;

create table phones (
	phoneId smallint unsigned auto_increment primary key not null,
    friendId smallint unsigned not null,
    phone varchar(13) not null
);

insert into phones (friendId, phone)
values (@Gary_Hudson, '123-123-1234');
insert into phones (friendId, phone)
values (@Gary_Hudson, '123-111-1111');
insert into phones (friendId, phone)
values (@Mike_Lopez, '111-222-1111');
insert into phones (friendId, phone)
values (@Barbra_Johnson, '123-111-1111');
insert into phones (friendId, phone)
values (@Bruce_Bradley, '321-321-3211');
insert into phones (friendId, phone)
values (@Bruce_Bradley, '456-111-1111');
insert into phones (friendId, phone)
values (@Barbra_Johnson, '909-808-1111');

select * from phones;
