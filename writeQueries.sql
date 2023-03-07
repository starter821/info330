-- Write query manipulation here

select * from users;

-- shiina's queries

--- (1) When does my subscription renew ? (customer)
---     Let user ('my') be Shiina for the sake of the query
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

--- (3) What episode did I leave off on for the show 'Physical 100' ? (customer)
---     Let user ('I') be Shiina for the sake of the query.
---     Return the next episode to watch


-- Jiyoon's queries

-- -- (7) How many people joined Netflix in 2022?
-- with year as(
-- 	select userID, email, extract(year from dateJoined) as yearJoined
-- 	from users
-- )
-- select count(*)
-- from users u, year y
-- where u.userid = y.userid and u.email = y.email
-- 	and y.yearjoined = 2022;


-- -- (8) How many people has premium subscriptions among users in USA? (Netflix analyst)
-- select subscriptionType, count(*) as num
-- from users
-- where country = 'USA'
-- group by subscriptionType
-- order by num desc;

-- (9) What movies and TV shows have maturity ratings that are appropriate for children? (customer)
-- select itemTitle, itemType, genre1, primaryLanguage, maturityRating
-- from item
-- where maturityRating = 'TV-Y'
--     or maturityRating = 'TV-Y7'
--     or maturityRating = 'G'
--     or maturityRating = 'TV-G'
--     or maturityRating = 'PG'
--     or maturityRating = 'TV-PG';

-- -- (10) What are some movies that Christian Bale starred in? (customer)
-- select cm.itemTitle, i.genre1, i.genre2, i.genre3, i.primaryLanguage, i.maturityRating
-- from castMember cm, item i
-- where cm.itemTitle = i.itemTitle
-- 	and cm.itemType = i.itemType
-- 	and cm.stageName = 'Christian Bale'
-- 	and i.itemType = 'Movie';
