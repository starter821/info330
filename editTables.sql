-- -- Insert data and manipulate table information here

-- delete from users;
-- delete from series;
-- delete from movies;
-- delete from item;

-- -- user
-- -- delete statement to clear tables and re-add values for the sake of testing output
-- -- don't copy into final project file
-- -- delete from users;

-- insert into users
-- values
-- 	(872563419, 'shiinaaaa@email.com',                  '07-22-2018', 'Standard',       'Japan'),
-- 	(443786521, 'jiyoooon@email.com',                   '11-14-2016', 'Basic',          'Korea'),
-- 	(987654321, 'sungheeeee@email.com',                 '03-08-2019', 'Basic with ads', 'Korea'),
-- 	(246801357, 'somenameidk@email.com',                '10-02-2017', 'Premium',        'USA'),
-- 	(345678912, 'applesbananas@email.com',              '06-01-2015', 'Basic',          'Japan'),
-- 	(769832145, 'oolongmilktea@email.com',              '12-29-2020', 'Basic',          'USA'),
-- 	(890120056, 'chairtable@email.com',                 '09-17-2018', 'Premium',        'USA'),
-- 	(654739218, 'lmao@email.com',                       '01-25-2017', 'Basic with ads', 'USA'),
-- 	(321098765, 'catdogmouse@email.com',                '04-11-2022', 'Basic',          'Canada'),
-- 	(287487470, 'somesuperlongemailaddress@email.com',  '08-07-2019', 'Premium',        'Italy');

-- -- item
-- delete from item;

-- -- select * from item;

-- insert into item
-- values
-- 	-- movies (5)
-- 	('80040810', 'The Dark Knight',             'Movie', 'Action',             'Film Noir',                  NULL,               'English',    'Christopher Nolan',  'Warner Bros. Pictures',  'PG-13',  935734222,   'USA'),
-- 	('70305956', 'This is Where I Leave You',   'Movie', 'Based on Books',     'Comedies',                   'Dramas',           'English',    'Shawn Levy',         '21 Laps Entertainment',  'R',      4576892112,  'USA'),
-- 	('80993401', 'Tara Vs. Bilal',              'Movie', 'Romance',            'Indian',                     'Dramas',           'Hindi',      'Samar Iqbal',        'T-Series Films',         'TV-MA',  668790832,   'India'),
-- 	('70295172', 'The Imitation Game',          'Movie', 'British',            'Movies Based on Real Life',  'Dramas',           'English',    'Morten Tyldum',      'Black Bear Pictures',    'PG-13',  7896573245,  'USA'),
-- 	('70206672', 'The Hunger Games',            'Movie', 'Sci-Fi',             'Teen',                       'Based on Books',   'English',    'Gary Ross',          'Color Force Lionsgate',  'PG-13',  65495362875, 'USA'),
	
-- 	-- series (11)
-- 	('80020578', 'Breaking Bad',                    'Series',   'Crime',                'Thriller',                 'Dramas',               'English',   'Vince Gilligan',          'High Bridge Entertainment',        'TV-MA',   4275677345, 'USA'),
-- 	('80061343', 'BoJack Horseman',                 'Series',   'Cartoons',             'Comedies',                 'Adult Animation',      'English',   'Raphael Bob-Waksberg',    'Tornante Television Boxer',        'TV-MA',   135875424,  'USA'),
-- 	('81222255', 'First Love',                      'Series',   'Japanese',             'Romance',                  'Dramas',               'Japanese',  'Yuri Kanchiku',           'C&I Entertainment',                'TV-MA',   14235678,   'Japan'),
-- 	('80212201', 'You',                             'Series',   'Based on Books',       'Thriller',                 'Dramas',               'English',   'Greg Berlanti',           'Man Sewing Dinosaur',              'TV-MA',   234587651,  'USA'),
-- 	('80236528', 'Outer Banks',                     'Series',   'Teen',                 'Dramas',                   NULL,                   'English',   'Shannon Burke',           'Rock Fish Red Canoe Productions',  'TV-MA',   7169870442, 'USA'),
-- 	('81403033', 'Kleo',                            'Series',   'German',               'Thriller',                 'Dramas',               'German',    'Hanno Hackfort',          'Zeitsprung Pictures',              'TV-MA',   3890076378, 'Germany'),
-- 	('70291894', 'Barbie: Life in the Dreamhouse',  'Series',   'Kids',                 'Cartoons',                 'Comedies',             'English',   NULL,                      'Arc Productions',                  'TV-Y',    2378892135, 'USA'),
-- 	('81567044', 'Next in Fashion',                 'Series',   'Reality',              NULL,                       NULL,                   'English',   NULL,                      'The Oldschool',                    'TV-14',   9765445340, 'USA'),
-- 	('81589506', 'Physical 100',                    'Series',   'Korean',               'Competition Reality',      'Reality',              'Korean',    'Jang Ho-gi',              'MBC',                              'TV-14',   5114698442, 'Korea'),
-- 	('70296632', 'Hunter X Hunter',                 'Series',   'Japanese',             'Anime',                    'Based on Manga',       'Japanese',  NULL,                      'Nippon Animation',                 'TV-14',   8176537321, 'Japan'),
-- 	('81012921', 'Inventing Anna',                  'Series',   'Drama',                'Based on Real Life',       NULL,                   'English',   'Shonda Rhimes',           'Shondaland',                       'TV-MA',   6741239870, 'USA');

-- -- movies
-- -- delete from movies;

-- insert into movies
-- values
-- 	('80040810', 'The Dark Knight',             'Movie', '02:32:00', 'Batman, Lieutenant Gordon and District Attorney Harvey Dent go up against the Joker, a criminal mastermind in ghoulish makeup terrorizing Gotham City.'),
-- 	('70305956', 'This is Where I Leave You',   'Movie', '01:43:00', 'When their father dies, four siblings return home for a week, but mourning quickly takes a back seat to bickering and opportunistic backstabbing.'),
-- 	('80993401', 'Tara Vs. Bilal',              'Movie', '02:06:00', 'Sparks fly when vivacious yet sensitive Tara collides with reclusive charmer Bilal in this slice of life story set in a vibrant and diverse London.'),
-- 	('70295172', 'The Imitation Game',          'Movie', '01:53:00', 'During World War II, a mathematician leads a team of cryptanalysts as they work feverishly to break the Germans’ notorious Enigma code.'),
-- 	('70206672', 'The Hunger Games',            'Movie', '02:16:00', 'In a dystopian future, teens Katniss and Peeta are drafted for a televised event pitting young competitors against each other in a fight to the death.');
	
-- -- series
-- delete from series;

-- insert into series
-- values
-- 	('80020578', 'Breaking Bad',                    'Series', 'A high school chemistry teacher dying of cancer teams with a former student to secure his family’s future by manufacturing and selling crystal meth.'),
-- 	('80061343', 'BoJack Horseman',                 'Series', 'Meet the most beloved sitcom horse of the ’90s, 20 years later. He’s a curmudgeon with a heart of...not quite gold...but something like gold. Copper?'),
-- 	('81222255', 'First Love',                      'Series', 'Young, free and madly in love. As teenagers, the world was their oyster — but as adults, their lives seem dimmer, like a very important piece is missing.'),
-- 	('80212201', 'You',                             'Series', 'A dangerously charming, intensely obsessive young man goes to extreme measures to insert himself into the lives of those he is transfixed by.'),
-- 	('80236528', 'Outer Banks',                     'Series', 'On an island of haves and have-nots, teen John B enlists his three best friends to hunt for a legendary treasure linked to his father’s disappearance.'),
-- 	('81403033', 'Kleo',                            'Series', 'After the fall of the Berlin Wall, a former East German spy resolves to find out who betrayed her and why — and use her lethal skills to exact revenge.'),
-- 	('70291894', 'Barbie: Life in the Dreamhouse',  'Series', 'Join blond icon Barbie and her fabulous friends as their behind-the-scenes adventures are revealed in this animated Web series.'),
-- 	('81567044', 'Next in Fashion',                 'Series', 'Up-and-coming designers compete to impress expert judges, hoping to win career-changing prize money and a chance to become the next big thing in fashion.'),
-- 	('81589506', 'Physical 100',                    'Series', 'One hundred contestants in top physical shape compete in a series of grueling challenges to claim the honor — and cash reward — as the last one standing.'),
-- 	('70296632', 'Hunter X Hunter',                 'Series', 'To fulfill his dreams of becoming a legendary Hunter like his dad, a young boy must pass a rigorous examination and find his missing father.'),
-- 	('81012921', 'Inventing Anna',                  'Series', 'Audacious entrepreneur or con artist? A journalist chases down the story of Anna Delvey, who convinced New York''s elite she was a German heiress.');

-- -- movieRatings
-- delete from movieRatings;

-- insert into movieRatings
-- values
-- 	('872563419', 'The Dark Knight', 		   'Movie', 'True',  'True' ),
-- 	('872563419', 'This is Where I Leave You', 'Movie', 'True',  'False'),
-- 	('443786521', 'The Dark Knight', 		   'Movie', 'True',  'False'),
-- 	('443786521', 'The Imitation Game', 	   'Movie', 'True',  'True'),
-- 	('987654321', 'The Hunger Games', 		   'Movie', 'False', 'False'),
-- 	('246801357', 'This is Where I Leave You', 'Movie', 'True',  'True');
	

-- -- season
-- delete from season;

-- insert into season
-- values
-- 	('')



-- castMember
-- delete from castMember;

-- insert into castMember
-- values ()


-- select * from users;
