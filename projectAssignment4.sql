-- This is the official file we'll submit. Copy and paste material from
-- createTables, editTables, and writeQueries that we want to submit into 
-- this file.

-- Project Assignment 4: Database Manipulation
-- Group 16 Section BB
-- Shiina Sugioka, Jiyoon Kim, Sunghee Park

-- Q0 -------------------------------------------------------------------------------------
-- shiina12

-- Q1 -------------------------------------------------------------------------------------
drop table if exists 
	users, item, movieRatings, epRatings, 
	movies, series, season, episodes, 
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

create table productionCompany (
	name varchar(200) primary key,
	country varchar(200),
	DateFounded date
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
	productionCompany varchar(200) references productionCompany(name),
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
	primary key (itemTitle, seasonID)
);

create table episodes (
	itemTitle varchar(300),
	seasonID smallint,
	episodeID smallint,
	episodeTitle varchar(200),
	description text,
	episodeLength time,
	foreign key (itemTitle, seasonID)
		references season(itemTitle, seasonID),
	primary key (itemTitle, seasonID, episodeID, episodeTitle)
);

-- Ratings for each episode of a series
create table epRatings (
	userID serial references users(userID),
	itemTitle varchar(300),
	itemType varchar(100) check (itemType = 'Series'),
	seasonID smallint,
	episodeID smallint,
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

-- Q2 -------------------------------------------------------------------------------------

-- (1) When does my subscription renew ? (customer)
---    Let user ('my') be shiinaaaa@email.com for the sake of the query
select datejoined from users
where email = 'shiinaaaa@email.com';

--- (2) How many users in Japan watched 'the Dark Knight' ? (Netflix analyst)
with combined as (
	select u.userid, email, country, itemTitle, watched
	from users u, movieRatings r
	where u.userid = r.userid
), japan as (
	select email, country, itemtitle, watched
	from combined
	where country = 'Japan'
		and itemtitle = 'The Dark Knight'
		and watched = true
)
select count(*) as num_people
from japan;

--- (3) What episode did I leave off on for the show 'Breaking Bad' ? (customer)
---     Let user ('I') be shiinaaaa@email.com for the sake of the query.
---     Returns the last episode watched
with combined as (
	select email, itemtitle, seasonid, episodeid, watched
	from users u, epRatings r
	where u.userid = r.userid
), shiina as (
	select *
	from combined
	where email = 'shiinaaaa@email.com'
)
select itemtitle, seasonid, max(episodeid) as last_ep_watched from shiina
where itemtitle = 'Breaking Bad'
group by itemtitle, seasonid;

-- (4) How many people joined Netflix in 2022?
with year as(
	select userID, email, extract(year from dateJoined) as yearJoined
	from users
)
select count(*)
from users u, year y
where u.userid = y.userid and u.email = y.email
	and y.yearjoined = 2022;
	
-- (5) How many people has premium subscriptions among users in USA? (Netflix analyst)
select subscriptionType, count(*) as num
from users
where country = 'USA'
group by subscriptionType
order by num desc;

-- (6) What movies and TV shows have maturity ratings that are appropriate for children? (customer)
select itemTitle, itemType, genre1, primaryLanguage, maturityRating
from item
where maturityRating = 'TV-Y'
    or maturityRating = 'TV-Y7'
    or maturityRating = 'G'
    or maturityRating = 'TV-G'
    or maturityRating = 'PG'
    or maturityRating = 'TV-PG';

-- (7) What are some movies that Christian Bale starred in? (customer)
select cm.itemTitle, i.genre1, i.genre2, i.genre3, i.primaryLanguage, i.maturityRating
from castMember cm, item i
where cm.itemTitle = i.itemTitle
	and cm.itemType = i.itemType
	and cm.stageName = 'Christian Bale'
	and i.itemType = 'Movie';

-- Q3 -------------------------------------------------------------------------------------

-- Shiina
--- (3) What episode did I leave off on for the show 'Breaking Bad' ? (customer)
---     Let user ('I') be shiinaaaa@email.com for the sake of the query.
---     Returns the last episode watched
with combined as (
	select email, itemtitle, seasonid, episodeid, watched
	from users u, epRatings r
	where u.userid = r.userid
), shiina as (
	select *
	from combined
	where email = 'shiinaaaa@email.com'
)
select itemtitle, seasonid, max(episodeid) as last_ep_watched from shiina
where itemtitle = 'Breaking Bad'
group by itemtitle, seasonid;

-- Jiyoon
-- (4) How many people joined Netflix in 2022?
with year as(
	select userID, email, extract(year from dateJoined) as yearJoined
	from users
)
select count(*)
from users u, year y
where u.userid = y.userid and u.email = y.email
	and y.yearjoined = 2022;

-- Sunghee

