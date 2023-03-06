-- Insert data and manipulate table information here

-- user
-- delete statement to clear tables and re-add values for the sake of testing output
-- don't copy into final project file
delete from users;

insert into users
values
	(872563419, 'shiinaaaa@email.com',				 	'07-22-2018', 'Standard',		'Japan'),
	(443786521, 'jiyoooon@email.com',					'11-14-2016', 'Basic',			'Korea'),
	(987654321, 'sungheeeee@email.com',				 	'03-08-2019', 'Basic with ads', 'Korea'),
	(246801357, 'somenameidk@email.com',				'10-02-2017', 'Premium', 		'USA'),
	(345678912, 'applesbananas@email.com',			 	'06-01-2015', 'Basic', 			'Japan'),
	(769832145, 'oolongmilktea@email.com', 			 	'12-29-2020', 'Basic', 			'USA'),
	(890120056, 'chairtable@email.com', 				'09-17-2018', 'Premium', 		'USA'),
	(654739218, 'lmao@email.com', 					 	'01-25-2017', 'Basic with ads', 'USA'),
	(321098765, 'catdogmouse@email.com', 				'04-11-2022', 'Basic', 			'Canada'),
	(287487470, 'somesuperlongemailaddress@email.com', 	'08-07-2019', 'Premium', 		'Italy');

-- item
delete from item;

insert into item
values
	-- movies (5)
	('80040810', 'The Dark Knight',             'Movie', 'Action',             'Film Noir',                  NULL,               'English',    'Christopher Nolan',  'Warner Bros. Pictures',  'PG-13', 935734222,   'USA'),
	('70305956', 'This is Where I Leave You',   'Movie', 'Based on Books',     'Comedies',                   'Dramas',           'English',    'Shawn Levy',         '21 Laps Entertainment',  'R',     4576892112,  'USA'),
	('80993401', 'Tara Vs. Bilal',              'Movie', 'Romance',            'Indian',                     'Dramas',           'Hindi',      'Samar Iqbal',        'T-Series Films',         'TV-MA',	668790832,   'India'),
	('70295172', 'The Imitation Game',          'Movie', 'British',            'Movies Based on Real Life',  'Dramas',           'English',    'Morten Tyldum',      'Black Bear Pictures',    'PG-13',	7896573245,  'USA'),
	('70206672', 'The Hunger Games',            'Movie', 'Sci-Fi',             'Teen',                       'Based on Books',   'English',    'Gary Ross',          'Color Force Lionsgate',  'PG-13',	65495362875, 'USA'),
	
	-- series (10)
	('80020578', 'Breaking Bad', 					'Series', 	'Crime',   				'Thriller', 				'Dramas', 				'English',	 'Vince Gilligan', 		 	'High Bridge Entertainment', 	    'TV-MA', 	4275677345, 'USA'),
	('80061343', 'BoJack Horseman', 				'Series', 	'Cartoons', 			'Comedies', 				'Adult Animation', 		'English', 	 'Raphael Bob-Waksberg', 	'Tornante Television Boxer', 		'TV-MA', 	135875424,	'USA'),
	('81222255', 'First Love', 						'Series', 	'Japanese', 			'Romance', 					'Dramas', 				'Japanese',	 'Yuri Kanchiku', 		 	'C&I Entertainment', 				'TV-MA', 	14235678, 	'Japan'),
	('80212201', 'You', 							'Series', 	'Based on Books', 		'Thriller', 				'Dramas', 				'English', 	 'Greg Berlanti', 		 	'Man Sewing Dinosaur', 			 	'TV-MA', 	234587651, 	'USA'),
	('80236528', 'Outer Banks', 					'Series', 	'Teen', 				'Dramas',					NULL, 					'English', 	 'Shannon Burke', 		 	'Rock Fish Red Canoe Productions',  'TV-MA', 	7169870442, 'USA'),
	('81403033', 'Kleo', 							'Series', 	'German', 				'Thriller',					'Dramas', 				'German', 	 'Hanno Hackfort', 		 	'Zeitsprung Pictures', 			 	'TV-MA', 	3890076378, 'Germany'),
	('70291894', 'Barbie: Life in the Dreamhouse',  'Series', 	'Kids', 				'Cartoons',					'Comedies',				'English', 	 NULL, 					 	'Arc Productions',					'TV-Y', 	2378892135, 'USA'),
	('81567044', 'Next in Fashion', 				'Series', 	'Reality', 				NULL,						NULL, 					'English', 	 NULL, 					 	'The Oldschool', 					'TV-14', 	9765445340, 'USA'),
	('81589506', 'Physical 100', 					'Series', 	'Korean',				'Competition Reality', 		'Reality',				'Korean', 	 'Jang Ho-gi', 			 	'MBC',								'TV-14',    5114698442, 'Korea'),
	('70296632', 'Hunter X Hunter', 				'Series', 	'Japanese', 			'Anime', 					'Based on Manga', 		'Japanese',  NULL, 						'Nippon Animation',				 	'TV-14', 	8176537321, 'Japan');


select * from users;