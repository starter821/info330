-- Insert data and manipulate table information here

-- item
insert into item
values
	('80040810', 'The Dark Knight',				'Movie', 'Action & Adventure', 		'Film Noir', 					NULL, 			  'English',			'Christopher Nolan', 	'Warner Bros. Pictures', 	'PG-13',	935734222, 		'USA'),
	('70305956', 'This is Where I Leave You',	'Movie', 'Movie Based on Books', 	'Comedies', 					'Dramas', 		  'English', 			'Shawn Levy', 			'21 Laps Entertainment', 	'R',	 	4576892112, 	'USA'),
	('80993401', 'Tara Vs. Bilal',				'Movie', 'Romantic Comedies', 		'Indian',						NULL,			  'Hindi',   			'Samar Iqbal',			'T-Series Films',		 	'TV-MA',	668790832,		'India'),
	('70295172', 'The Imitation Game',			'Movie', 'British',					'Movies Based on Real Life',	'Drama',		  'English',			'Morten Tyldum',		'Black Bear Pictures',		'PG-13',	7896573245,		'USA'),
	('70206672', 'The Hunger Games',			'Movie', 'Sci-Fi Movies',			'Teen',							'Based on Books', 'English', 			'Gary Ross',			'Color Force Lionsgate',	'PG-13',	65495362875,	'USA'),
	
	('80020578', 'Breaking Bad', 					'Series', 	'Crime TV Shows',   		'TV Thriller', 				'TV Dramas', 				'English',	 'Vince Gilligan', 		 'High Bridge Entertainment', 	     'TV-MA', 	4275677345, 'USA'),
	('80061343', 'BoJack Horseman', 				'Series', 	'Sitcoms', 					'TV Comedies', 				'Adult Animation', 			'English', 	 'Raphael Bob-Waksberg', 'Tornante Television Boxer', 		 'TV-MA', 	135875424,	'USA'),
	('81222255', 'First Love', 						'Series', 	'Japanese', 				'Romantic TV Dramas', 		'TV Dramas', 				'Japanese',	 'Yuri Kanchiku', 		 'C&I Entertainment', 				 'TV-MA', 	14235678, 	'Japan'),
	('80212201', 'You', 							'Series', 	'TV Shows Based on Books', 	'TV Thrillers', 			'TV Dramas', 				'English', 	 'Greg Berlanti', 		 'Man Sewing Dinosaur', 			 'TV-MA', 	234587651, 	'USA'),
	('80236528', 'Outer Banks', 					'Series', 	'Teen TV Shows', 			'TV Dramas',				NULL, 						'English', 	 'Shannon Burke', 		 'Rock Fish Red Canoe Productions',  'TV-MA', 	7169870442, 'USA'),
	('81403033', 'Kleo', 							'Series', 	'German', 					'TV Thrillers',				'TV Dramas', 				'German', 	 'Hanno Hackfort', 		 'Zeitsprung Pictures', 			 'TV-MA', 	3890076378, 'Germany'),
	('70291894', 'Barbie: Life in the Dreamhouse',  'Series', 	'Kids TV', 					'TV Cartoons',				'TV Comedies',				'English', 	 NULL, 					 'Arc Productions',					 'TV-Y', 	2378892135, 'USA'),
	('81567044', 'Next in Fashion', 				'Series', 	'Reality TV', 				NULL,						NULL, 						'English', 	 NULL, 					 'The Oldschool', 					 'TV-14', 	9765445340, 'USA'),
	('81589506', 'Physical 100', 					'Series', 	'Korean',					'Competition Reality TV', 	'Reality TV',				'Korean', 	 'Jang Ho-gi', 			 'MBC',								 'TV-14',   5114698442, 'Korea'),
	('70296632', 'Hunter X Hunter', 				'Series', 	'Japanese', 				'Anime Series', 			'TV Shows Based on Manga', 	'Japanese',  NULL, 					'Nippon Animation',				 	 'TV-14', 	8176537321, 'Japan');

;

	
select * from item;