-- Project Assignment 4: Database Implementation
-- Shiina

drop table if exists users, item, ratings;

create table users (
	userID serial primary key,
	email varchar(100) UNIQUE,
	dateJoined date,
	subscriptionType varchar(100),
	country varchar(100)
);

create table item (
	EIDR serial primary key,
	-- the Entertainment Identifier Registry, unique number
	itemTitle varchar(300),
	itemType varchar(100),
	genre1 varchar(200) not null,
	genre2 varchar(200),
	genre3 varchar(200),
	-- Netlfix has over 27,000 genres due to some oddly specfic 
	-- categorizations ("Critically-acclaimed Violent Crime Movies on Blu-ray")
	-- so we limit the upper bound to 3 genres per item.
	-- Genres can be null but genre1 cannot be null.
	primaryLanguage varchar(200),
	director varchar(200),
	maturityRating varchar(10),
	viewCount int,
	country varchar(200),
	UNIQUE (itemTitle, itemType)
);

-- Example: 'User XXX' 'has watched' the 'movie', titled 'XXX', and
--          rated it a 'thumbs up'.
create table ratings (
	userID serial references users(userID),
	itemTitle varchar(300),
	itemType varchar(100),
	watched boolean,
	rating boolean,
	-- rating true = thumbs up, rating false = thumbs down, null = no vote
	primary key (userID, itemTitle),
	foreign key (itemTitle, itemType)
		references item(itemTitle, itemType)
);

select * from users;
select * from item;
select * from ratings;

