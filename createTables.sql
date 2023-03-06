-- Create necessary tables for project here

drop table if exists 
	users, item, ratings, movies,
	series, season, episodes;

create table users (
	userID serial primary key,
	email varchar(100) UNIQUE,
	dateJoined date,
	subscriptionType varchar(100) check (
		subscriptionType in (
			'Basic with ads', 'Basic', 'Standard', 'Premium'
		)
	),
	country varchar(100)
);

create table item (
	EIDR serial primary key,
	-- the Entertainment Identifier Registry, unique number
	itemTitle varchar(300),
	itemType varchar(100) check (
		itemType in ('movie', 'TV show')
	),
	genre1 varchar(200) not null,
	genre2 varchar(200),
	genre3 varchar(200),
	-- Netlfix has over 27,000 genres due to some oddly specfic 
	-- categorizations ("Critically-acclaimed Violent Crime Movies on Blu-ray")
	-- so we limit the upper bound to 3 genres per item.
	-- Genres can be null but genre1 cannot be null.
	primaryLanguage varchar(200),
	director varchar(200),
	maturityRating varchar(10) check (
		maturityRating in (
			'TV-Y', 'TV-Y7', 'G', 'TV-G', 'PG', 'TV-PG',  -- Kids
			'PG-13', 'TV-14',  -- Teens
			'R', 'TV-MA', 'NC-17'  -- Adults
		)
	),
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

create table movies (
	EIDR serial primary key,
	itemTitle varchar(300) UNIQUE,
	itemType varchar(100) check (itemType = 'movie'),
	movieLength time,
	description text,
	foreign key (EIDR)
		references item(EIDR),
	foreign key (itemTitle, itemType)
		references item(itemTitle, itemType)
);

create table series (
	EIDR serial primary key,
	itemTitle varchar(300) UNIQUE,
	itemType varchar(100) check (itemType = 'TV show'),
	description text,
	foreign key (EIDR)
		references item(EIDR),
	foreign key (itemTitle, itemType)
		references item(itemTitle, itemType)
);

create table season (
	itemTitle varchar(300) UNIQUE references series(itemTitle),
	seasonID smallint UNIQUE,
	seasonTitle varchar(200),
	description text,
	primary key (itemTitle, seasonID, seasonTitle)
);

create table episodes (
	itemTitle varchar(300) UNIQUE references season(itemTitle),
	episodeID smallint UNIQUE,
	episodeTitle varchar(200),
	description text,
	episodeLength time,
	primary key (itemTitle, episodeID, episodeTitle)
);

select * from episodes;

