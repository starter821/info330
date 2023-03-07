-- Write query manipulation here

select * from users;

-- shiina's queries

--- (1) When does my subscription renew ? (customer)
---     Let user ('my') be Shiina for the sake of the query
select email, datejoined from users
where email = 'shiinaaaa@email.com';

--- (2) How many users in Japan watched 'the Imitation Game' ? (Netflix analyst)

--- (3) What episode did I leave off on for the show 'Physical 100' ? (customer)
---     Let user ('I') be Shiina for the sake of the query.
---     Return the next episode to watch


-- Jiyoon's queries

-- (15) What is the percentage of premium subscriptions among users in USA? (Netflix analyst)
select 

-- (20) What movies and TV shows have maturity ratings that are appropriate for children? (customer)
select itemTitle, itemType, genre1, primaryLanguage, maturityRating
from item
where maturityRating = 'TV-Y'
    or maturityRating = 'TV-Y7'
    or maturityRating = 'G'
    or maturityRating = 'TV-G'
    or maturityRating = 'PG'
    or maturityRating = 'TV-PG';

-- (21) What are some movies that Leonardo DiCaprio starred in? (customer)
with ci as (
    from cast c join item i
    where c.itemTitle = i.itemTitle and c.itemType = i.itemType
)
select item, genre1, genre2, genre3, primaryLanguage, maturityRating
from ci
where ci.stageName = 'Leonardo DiCaprio'
    and ci.itemType = 'Movie';