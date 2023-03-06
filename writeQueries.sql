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

-- (15) What is the percentage of premium subscriptions among users? (Netflix analyst)

-- (20) What shows have maturity ratings that are appropriate for children? (customer)

-- (21) What are some movies that Leonardo DiCaprio starred in? (customer)