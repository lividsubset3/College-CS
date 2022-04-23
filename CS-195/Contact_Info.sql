/* 
   CS 195
   Patrick Rakowicz
   Contact Info
*/

drop database if exists contactInfo;
create database contactInfo;
use contactInfo;
drop table if exists customersAndProducts;

# smallint allows -+32k integers (people)

create table friends (
	friendId smallint auto_increment not null primary key, 
    friendName varchar(20) not null
);

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
set @id = last_insert_id();
#select @id;

create table emails (
	emailId smallint unsigned auto_increment not null primary key,
    friendId smallint unsigned not null,
    email varchar(30) not null
);

insert into emails (friendId, email)
values (@id, 'garyhudson@oldfriends.com');
insert into emails (friendId, email)
values (@id, 'mikelopez@oldfriends.com');
insert into emails (friendId, email)
values (@id, 'garyhudson@hudsonlaw.com');
insert into emails (friendId, email)
values (@id, 'nashvillebabs@aol.com');
insert into emails (friendId, email)
values (@id, 'seniorpartner1@hudsonlaw.com');
insert into emails (friendId, email)
values (@id, 'bruce@powerstart.com');
insert into emails (friendId, email)
values (@id, 'ftlgary@punxhotany.com');

select * from emails;

create table phones (
	phoneId smallint unsigned auto_increment  primary key not null,
    friendId smallint unsigned not null,
    phone varchar(13) not null
);

insert into phones (friendId, phone)
values (@id, '123-123-1234');
insert into phones (friendId, phone)
values (@id, '123-111-1111');
insert into phones (friendId, phone)
values (@id, '111-222-1111');
insert into phones (friendId, phone)
values (@id, '123-111-1111');
insert into phones (friendId, phone)
values (@id, '321-321-3211');
insert into phones (friendId, phone)
values (@id, '456-111-1111');
insert into phones (friendId, phone)
values (@id, '909-808-1111');

select * from phones;
