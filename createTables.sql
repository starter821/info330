-- Create necessary tables for project here

drop table if exists 
	users, item, movieRatings, epRatings, movies,
	series, season, episodes,
	castMember, productionCompany;

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
		itemType in ('Movie', 'Series')
	),
	genre1 varchar(200) not null,
	genre2 varchar(200),
	genre3 varchar(200),
	-- Netlfix has over 27,000 genres due to some oddly specfic 
	-- categorizations ("Critically-acclaimed Violent Crime Movies on Blu-ray")
	-- so we limit the upper bound to 3 genres per item.
	-- Genres 2 & 3 can be null but genre 1 cannot be null.
	primaryLanguage varchar(200),
	director varchar(200),
	productionCompany varchar(200),
	maturityRating varchar(10) check (
		maturityRating in (
			'TV-Y', 'TV-Y7', 'G', 'TV-G', 'PG', 'TV-PG',  -- Kids
			'PG-13', 'TV-14',  -- Teens
			'R', 'TV-MA', 'NC-17'  -- Adults
		)
	),
	viewCount bigint,
	country varchar(200),
	UNIQUE (itemTitle, itemType)
);

create table movies (
	EIDR serial primary key,
	itemTitle varchar(300) UNIQUE,
	itemType varchar(100) check (itemType = 'Movie'),
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
	itemType varchar(100) check (itemType = 'Series'),
	description text,
	foreign key (EIDR)
		references item(EIDR),
	foreign key (itemTitle, itemType)
		references item(itemTitle, itemType)
);

-- Example: 'User XXX' 'has watched' the 'movie', titled 'XXX', and
--          rated it a 'thumbs up'.
create table movieRatings (
	userID serial references users(userID),
	itemTitle varchar(300),
	itemType varchar(100) check (itemType = 'Movie'),
	watched boolean,
	rating boolean,
	-- rating true = thumbs up, rating false = thumbs down, null = no vote
	primary key (userID, itemTitle),
	foreign key (itemTitle, itemType)
		references item(itemTitle, itemType)
);

create table season (
	itemTitle varchar(300) references series(itemTitle),
	seasonID smallint,
	seasonTitle varchar(200),
	primary key (itemTitle, seasonID, seasonTitle)
);

create table episodes (
	itemTitle varchar(300) references season(itemTitle),
	seasonID smallint references season(seasonID),
	episodeID smallint,
	episodeTitle varchar(200),
	description text,
	episodeLength time,
	primary key (itemTitle, episodeID, episodeTitle)
);

-- Ratings for each episode of a series
create table epRatings (
	userID serial references users(userID),
	itemTitle varchar(300),
	itemType varchar(100) check (itemType = 'Series'),
	seasonID smallint,
	episodeID smallint UNIQUE,
	watched boolean,
	rating boolean,
	-- rating true = thumbs up, rating false = thumbs down, null = no vote
	primary key (userID, itemTitle, seasonID, episodeID),
	foreign key (itemTitle, itemType)
		references item(itemTitle, itemType)
);

create table castMember (
	stageName varchar(300),
	name varchar(300),
	itemTitle varchar(300),
	itemType varchar(100),
	role varchar(300),
	primary key (stageName, name),
	foreign key (itemTitle, itemType) references item(itemTitle, itemType)
);

create table productionCompany (
	name varchar(200) primary key,
	DateFounded date
);




select * from epRatings;



