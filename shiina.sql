-- Project Assignment 4: Database Implementation
-- Shiina

drop table if exists users;

create table users (
	userID serial,
	email varchar(100),
	dateJoined date,
	subscriptionType varchar(100),
	country varchar(100),
	primary key (userID, email)
);