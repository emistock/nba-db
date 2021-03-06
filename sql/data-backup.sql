/*pre populated data from 2016-2017 season*/

/*insert conferences, only two conferences in NBA*/

INSERT INTO conference VALUES(1,'Western'), (2,'Eastern');

/*insert current NBA teams with 2016-2017 stats */
INSERT INTO team VALUES(1,1,1,'Golden State Warriors',1,67,15,115.9,104.3),
(2,2,1,'San Antonio Spurs',2,61,21,105.3,98.1),
(3,3,1,'Houston Rockets',3,55,27,115.3,109.6),
(4,4,1,'Los Angeles Clippers',4,51,31,108.7,104.4),
(5,5,1,'Utah Jazz',5,51,31,100.7,96.8),
(6,6,1,'Oklahoma City Thunder',6,47,35,106.6,105.8),
(7,7,1,'Memphis Grizzlies',7,43,39,100.5,100.0),
(8,8,1,'Portland Trail Blazers',8,41,41,107.9,108.5),
(9,9,1,'Denver Nuggets',9,40,42,111.7,111.2),
(10,10,1,'New Orleans Pelicans',10,34,48,104.3,106.4),
(11,11,1,'Dallas Mavericks',11,33,49,97.9,100.8),
(12,12,1,'Sacramento Kings',12,32,50,102.8,106.7),
(13,13,1,'Minnesota Timberwolves',13,31,51,105.6,106.7),
(14,14,1,'Los Angeles Lakers',14,26,56,104.6,111.5),
(15,15,1,'Phoenix Suns',15,24,58,107.7,113.3),
(16,16,2,'Boston Celtics',1,53,29,108.0,105.4),
(17,17,2,'Cleveland Cavaliers',2,51,31,110.3,107.2),
(18,18,2,'Toronto Raptors',3,51,31,106.9,102.6),
(19,19,2,'Washington Wizards',4,49,33,109.2,107.4),
(20,20,2,'Alanta Hawks',5,43,39,103.2,104.0),
(21,21,2,'Milwaukee Bucks',6,42,40,103.6,103.8),
(22,22,2,'Indiana Pacers',7,42,40,105.1,105.3),
(23,23,2,'Chicago Bulls',8,41,41,102.9,102.4),
(24,24,2,'Miami Heat',9,41,41,103.2,102.1),
(25,25,2,'Detroit Pistons',10,37,45,101.3,102.5),
(26,26,2,'Charlotte Hornets',11,36,46,104.9,104.7),
(27,27,2,'New York Knicks',12,31,51,104.3,108.0),
(28,28,2,'Orlando Magic',13,29,53,101.1,107.6),
(29,29,2,'Philadelphia 76ers',14,28,54,102.4,108.1),
(30,30,2,'Brooklyn Nets',15,20,62,105.8,112.5);

/*insert current NBA head coaches*/
INSERT INTO head_coach VALUES(1,1,'Steve','Kerr',52,4),
(2,2,'Gregg','Popovich',69,22),
(3,3,'Mike','D''Antoni',66,14),
(4,4,'Doc','Rivers',56,19),
(5,5,'Quin','Snyder',51,4),
(6,6,'Billy','Donovan',52,3),
(7,7,'David','Fizdale',43,2),
(8,8,'Terry','Stots',60,10),
(9,9,'Mike','Malone',46,5),
(10,10,'Alvin','Gentry',63,15),
(11,11,'Rick','Carlisle',58,16),
(12,12,'Dave','Joerger',44,5),
(13,13,'Tom','Thibodeau',60,7),
(14,14,'Luke','Walton',37,2),
(15,15,'Earl','Watson',38,3),
(16,16,'Brad','Stevens',41,5),
(17,17,'Tyronn','Lue',40,3),
(18,18,'Dwane','Casey',60,9),
(19,19,'Scott','Brooks',52,9),
(20,20,'Mike','Budenholzer',48,5),
(21,21,'Jason','Kidd',44,5),
(22,22,'Nate','McMillan',53,14),
(23,23,'Fred','Hoiberg',45,3),
(24,24,'Erik','Spoelstra',47,10),
(25,25,'Stan','Gundy',58,12),
(26,26,'Steve','Clifford',56,5),
(27,27,'Jeff','Hornacek',54,5),
(28,28,'Frank','Vogel',44,8),
(29,29,'Brett','Brown',57,5),
(30,30,'Kenny','Atkinson',50,2);

/*NBA players from 2016-2017*/
INSERT INTO player (team_id, fname, lname, age, fg, ppg) VALUES(1,'Stephen','Curry',28,.468,25.3),
(1,'Kevin', 'Durant',28,.537,25.1),
(1,'Draymond', 'Green',26,.418,10.2),
(1,'Andre', 'Iguodala',33,.528,7.6),
(1,'Matt', 'Barnes',36,.422,5.7),
(1,'Zaza', 'Pachulia',32,.534,6.1),
(1,'Shaun', 'Livingston',31,.547,5.1),
(1,'Patrick', 'McCaw',21,.433,4.0),
(1,'Ian', 'Clark',25,.487,6.8),
(1,'David', 'West',36,.536,4.6),
(1,'JaVale', 'McGee',29,.652,6.1),
(1,'James', 'McAdoo',24,.530,2.8),
(1,'Damian', 'Jones',21,.500,1.9),
(1,'Kevon', 'Looney',20,.523,2.5),
(1,'Anderson', 'Varejao',34,.357,1.3),
(1,'Briante', 'Weber',24,.357,1.7),
(2,'Kawhi', 'Leonard',25,.485,25.5),
(2,'LaMarcus', 'Aldridge',31,.477,17.3),
(2,'Danny', 'Green',29,.392,7.3),
(2,'Pau','Gasol',36,.502,12.4),
(2,'Tony', 'Parker',34,.466,10.1),
(2,'Patty', 'Mills',28,.440,9.5),
(2,'Manu', 'Ginobili',39,.390,7.5),
(2,'David', 'Lee',33,.590,7.3),
(2,'Jonathon', 'Simmons',27,.420,6.2),
(2,'Dewayne', 'Dedmon',27,.622,5.1),
(2,'Kyle', 'Anderson',23,.445,3.4),
(2,'Davis', 'Bertans',24,.440,4.5),
(2,'Nicolas', 'Laprovittola',27,.426,3.3),
(2,'Dejounte', 'Murray',20,.431,3.4),
(2,'Bryn', 'Forbes',23,.364,2.6),
(2,'Joel', 'Anthony',34,.625,1.3),
(3,'James', 'Harden',27,.440,29.1),
(3,'Trevor', 'Ariza',31,.409,11.7),
(3,'Eric', 'Gordon',28,.406,16.2),
(3,'Patrick', 'Beverley',28,.420,9.5),
(3,'Ryan', 'Anderson',28,.418,13.6),
(3,'Lou', 'Williams',30,.386,14.9),
(3,'Clint', 'Capela',22,.643,12.6),
(3,'Troy', 'Williams',22,.500,9.7),
(3,'Sam', 'Dekker',22,.473,6.5),
(3,'Montrezl', 'Harrell',23,.652,9.1),
(3,'Nene','Hilario',34,.617,9.1),
(3,'Corey','Brewer',30,.414,4.2),
(3,'Isaiah' ,'Taylor',22,.143,0.8),
(3,'Chinanu', 'Onuaku',20,.714,2.8),
(3,'K.J.' ,'McDaniels',23,.456,2.8),
(3,'Tyler','Ennis',22,.391,1.9),
(3,'Bobby', 'Brown',32,.383,2.5),
(3,'Kyle', 'Wiltjer',24,.286,0.9),
(4,'Blake', 'Griffin',27,.493,21.6),
(4,'DeAndre', 'Jordan',28,.714,12.7),
(4,'Chris', 'Paul',31,.476,18.1),
(4,'J.J.', 'Redick',32,.445,15.0),
(4,'Austin', 'Rivers',24,.442,12.0),
(4,'Jamal', 'Crawford',36,.413,12.3),
(4,'Luc', 'Mbah a Moute',30,.505,6.1),
(4,'Raymond', 'Felton',32,.430,6.7),
(4,'Marreese', 'Speights',29,.445,8.7),
(4,'Wesley', 'Johnson',29,.365,2.7),
(4,'Brandon', 'Bass',31,.575,5.6),
(4,'Paul', 'Pierce',39,.400,3.2),
(4,'Alan' ,'Anderson',34,.375,2.9),
(4,'Diamond', 'Stone',19,.231,1.4),
(4,'Brice','Johnson',22,.286,1.3),
(5,'Gordon', 'Hayward',26,.471,21.9),
(5,'Rudy', 'Gobert',24,.661,14.0),
(5,'George', 'Hill',30,.477,16.9),
(5,'Rodney', 'Hood',24,.408,12.7),
(5,'Joe', 'Ingles',29,.452,7.1),
(5,'Derrick', 'Favors',25,.487,9.5),
(5,'Joe', 'Johnson',35,.436,9.2),
(5,'Shelvin', 'Mack',26,.446,7.8),
(5,'Dante', 'Exum',21,.427,6.2),
(5,'Boris', 'Diaw',34,.446,4.6),
(5,'Trey', 'Lyles',21,.362,6.2),
(5,'Alec', 'Burks',25,.399,6.7),
(5,'Raul', 'Neto',24,.451,2.5),
(5,'Jeff', 'Withey',26,.534,2.9),
(5,'Joel', 'Bolomboy',23,.563,1.8),
(6,'Russell', 'Westbrook',28,.425,31.6),
(6,'Victor', 'Oladipo',24,.442,15.9),
(6,'Andre', 'Roberson',25,.464,6.6),
(6,'Steven', 'Adams',23,.571,11.3),
(6,'Enes', 'Kanter',24,.545,14.3),
(6,'Taj', 'Gibson',31,.497,9.0),
(6,'Ersan', 'Ilyasova',29,.375,5.0),
(6,'Domantas', 'Sabonis',20,.399,5.9),
(6,'Doug', 'McDermott',25,.452,6.6),
(6,'Jerami', 'Grant',22,.469,5.4),
(6,'Cameron', 'Payne',22,.331,5.3),
(6,'Anthony', 'Morrow',31,.386,5.8),
(6,'Josh', 'Huestis',25,.545,7.0),
(6,'Alex', 'Abrines',23,.393,6.0),
(6,'Semaj', 'Christon',24,.345,2.9),
(6,'Joffrey', 'Lauvergne',25,.455,5.7),
(6,'Kyle', 'Singler',28,.410,2.8),
(6,'Norris', 'Cole',28,.308,3.3),
(6,'Nick', 'Collison',36,.609,1.7),
(7,'Marc', 'Gasol',32,.459,19.5),
(7,'Mike', 'Conley',29,.460,20.5),
(7,'JaMychal', 'Green',26,.500,8.9),
(7,'Tony', 'Allen',35,.461,9.1),
(7,'Vince', 'Carter',40,.394,8.0),
(7,'Zach', 'Randolph',35,.449,14.1),
(7,'James', 'Ennis',26,.455,6.7),
(7,'Andrew', 'Harrison',22,.325,5.9),
(7,'Chandler', 'Parsons',28,.338,6.2),
(7,'Troy', 'Daniels',25,.374,8.2),
(7,'Troy', 'Williams',22,.415,5.3),
(7,'Wayne', 'Selden',22,.400,5.0),
(7,'Toney', 'Douglas',30,.368,4.9),
(7,'Brandan', 'Wright',29,.615,6.8),
(7,'Jarell', 'Martin',22,.384,3.9),
(7,'Wade', 'Baldwin',20,.313,3.2),
(7,'Deyonta', 'Davis',20,.511,1.6),
(8,'Damian', 'Lillard',26,.444,27.0),
(8,'C.J.', 'McCollum',25,.480,23.0),
(8,'Jusuf', 'Nurkic',22,.508,15.2),
(8,'Al-Farouq', 'Aminu',26,.393,8.7),
(8,'Maurice', 'Harkless',23,.503,10.0),
(8,'Allen', 'Crabbe',24,.468,10.7),
(8,'Mason', 'Plumlee',26,.532,11.1),
(8,'Evan', 'Turner',28,.426,9.0),
(8,'Ed', 'Davis',27,.528,4.3),
(8,'Noah', 'Vonleh',21,.481,4.4),
(8,'Meyers', 'Leonard',24,.386,5.4),
(8,'Shabazz', 'Napier',25,.399,4.1),
(8,'Pat', 'Connaughton',24,.514,2.5),
(8,'Jake', 'Layman',22,.292,2.2),
(8,'Tim', 'Quarterman',22,.448,1.9),
(9,'Danilo', 'Gallinari',28,.447,18.2),
(9,'Gary', 'Harris',22,.502,14.9),
(9,'Wilson', 'Chandler',29,.461,15.7),
(9,'Will', 'Barton',26,.443,13.7),
(9,'Nikola', 'Jokic',21,.578,16.7),
(9,'Jameer', 'Nelson',34,.444,9.2),
(9,'Emmanuel', 'Mudiay',20,.377,11.0),
(9,'Mason', 'Plumlee',26,.547,9.1),
(9,'Jamal', 'Murray',19,.404,9.9),
(9,'Kenneth', 'Faried',27,.548,9.6),
(9,'Jusuf', 'Nurkic',22,.507,8.0),
(9,'Darrell', 'Arthur',28,.442,6.4),
(9,'Juan', 'Hernangomez',21,.451,4.9),
(9,'Mike', 'Miller',36,.391,1.4),
(9,'Malik', 'Beasley',20,.452,3.8),
(9,'Alonzo', 'Gee',29,.214,0.8),
(9,'Johnny', 'O''Bryant',23,.467,2.9),
(9,'Jarnell', 'Stokes',23,1.000,1.5),
(9,'Roy', 'Hibbert',30,.667,0.7),
(10,'Anthony', 'Davis',23,.505,28.0),
(10,'DeMarcus', 'Cousins',26,.452,24.4),
(10,'Jrue', 'Holiday',26,.454,15.4),
(10,'Solomon', 'Hill',25,.383,7.0),
(10,'Lance', 'Stephenson',26,.473,9.7),
(10,'Dante', 'Cunningham',29,.485,6.6),
(10,'E''Twaun', 'Moore',27,.457,9.6),
(10,'Terrence', 'Jones',25,.472,11.5),
(10,'Omri', 'Casspi',28,.556,12.0),
(10,'Tim', 'Frazier',26,.403,7.1),
(10,'Jordan', 'Crawford',28,.482,14.1),
(10,'Hollis', 'Thompson',25,.268,3.8),
(10,'Axel', 'Toupane',24,.625,5.5),
(10,'Langston', 'Galloway',25,.374,8.6),
(10,'Buddy', 'Hield',23,.393,8.6),
(10,'Tyreke', 'Evans',27,.401,9.5),
(10,'Jarrett', 'Jack',33,.667,3.0),
(10,'Anthony', 'Brown',24,.341,3.8),
(10,'Wayne', 'Selden',22,.625,5.3),
(10,'Omer', 'Asik',30,.477,2.7),
(10,'Alexis', 'Ajinca',28,.500,5.3),
(10,'Donatas', 'Motiejunas',26,.413,4.4),
(10,'Reggie', 'Williams',30,.348,4.5),
(10,'Quinn', 'Cook',23,.537,5.8),
(10,'Cheick', 'Diallo',20,.474,5.1),
(10,'Archie', 'Goodwin',22,.400,5.0),
(11,'Harrison', 'Barnes',24,.468,19.2),
(11,'Wesley', 'Matthews',30,.393,13.5),
(11,'Deron', 'Williams',32,.430,13.1),
(11,'Yogi', 'Ferrell',23,.412,11.3),
(11,'Seth', 'Curry',26,.481,12.8),
(11,'Dirk', 'Nowitzki',38,.437,14.2),
(11,'DeAndre', 'Liggins',28,.500,8.0),
(11,'Andrew', 'Bogut',32,.469,3.0),
(11,'Nerlens', 'Noel',22,.575,8.5),
(11,'J.J.', 'Barea',32,.414,10.9),
(11,'Dorian', 'Finney-Smith',23,.372,4.3),
(11,'Dwight', 'Powell',25,.515,6.7),
(11,'Devin', 'Harris',33,.399,6.7),
(11,'Quinn', 'Cook',23,.440,5.4),
(11,'Justin', 'Anderson',23,.401,6.5),
(11,'Jonathan', 'Gibson',29,.368,6.2),
(11,'Jarrod', 'Uthoff',23,.421,4.4),
(11,'Salah', 'Mejri',30,.642,2.9),
(11,'Pierre', 'Jackson',25,.333,4.4),
(11,'Nicolas', 'Brussino',23,.369,2.8),
(11,'Quincy', 'Acy',26,.294,2.2),
(11,'A.J.', 'Hammons',24,.405,2.2),
(11,'Manny', 'Harris',27,.200,2.0),
(11,'Ben', 'Bentil',21,.000,0.0),
(12,'Rudy', 'Gay',30,.455,18.7),
(12,'Darren', 'Collison',29,.476,13.2),
(12,'Buddy', 'Hield',23,.480,15.1),
(12,'Garrett', 'Temple',30,.424,7.8),
(12,'Arron', 'Afflalo',31,.440,8.4),
(12,'Matt', 'Barnes',36,.384,7.6),
(12,'Ty', 'Lawson',29,.454,9.9),
(12,'Anthony', 'Tolliver',31,.442,7.1),
(12,'Tyreke', 'Evans',27,.413,11.6),
(12,'Kosta', 'Koufos',27,.551,6.6),
(12,'Langston', 'Galloway',25,.404,6.0),
(12,'Ben', 'McLemore',23,.430,8.1),
(12,'Willie', 'Cauley-Stein',23,.530,8.1),
(12,'Skal', 'Labissiere',20,.537,8.8),
(12,'Omri', 'Casspi',28,.453,5.9),
(12,'Jordan', 'Farmar',30,.333,6.0),
(12,'Georgios', 'Papagiannis',19,.549,5.6),
(12,'Malachi', 'Richardson',21,.412,3.6),
(13,'Andrew', 'Wiggins',21,.452,23.6),
(13,'Zach', 'LaVine',21,.459,18.9),
(13,'Karl-Anthony', 'Towns',21,.542,25.1),
(13,'Ricky', 'Rubio',26,.402,11.1),
(13,'Gorgui', 'Dieng',27,.502,10.0),
(13,'Brandon', 'Rush',31,.374,4.2),
(13,'Shabazz', 'Muhammad',24,.482,9.9),
(13,'Nemanja', 'Bjelica',28,.424,6.2),
(13,'Kris', 'Dunn',22,.377,3.8),
(13,'Omri', 'Casspi',28,.500,3.5),
(13,'Tyus', 'Jones',20,.414,3.5),
(13,'Lance', 'Stephenson',26,.476,3.5),
(13,'Cole', 'Aldrich',28,.523,1.7),
(13,'Adreian', 'Payne',25,.426,3.5),
(13,'Jordan', 'Hill',29,.385,1.7),
(13,'John', 'Lucas III',34,.250,0.4),
(14,'Jordan', 'Clarkson',24,.445,14.7),
(14,'Julius', 'Randle',22,.488,13.2),
(14,'Brandon', 'Ingram',19,.402,9.4),
(14,'D''Angelo', 'Russell',20,.405,15.6),
(14,'Luol', 'Deng',31,.387,7.6),
(14,'Nick', 'Young',31,.430,13.2),
(14,'Lou', 'Williams',30,.444,18.6),
(14,'Larry', 'Nance',24,.526,7.1),
(14,'Timofey', 'Mozgov',30,.515,7.4),
(14,'David', 'Nwaba',24,.580,6.0),
(14,'Tyler', 'Ennis',22,.451,7.7),
(14,'Tarik', 'Black',25,.510,5.7),
(14,'Ivica', 'Zubac',19,.529,7.5),
(14,'Corey', 'Brewer',30,.438,5.4),
(14,'Jose', 'Calderon',35,.416,3.3),
(14,'Thomas', 'Robinson',25,.536,5.0),
(14,'Marcelo', 'Huertas',33,.368,2.7),
(14,'Metta', 'World Peace',37,.279,2.3),
(15,'Devin', 'Booker',20,.423,22.1),
(15,'Eric', 'Bledsoe',27,.434,21.1),
(15,'T.J.', 'Warren',23,.495,14.4),
(15,'P.J.', 'Tucker',31,.415,7.0),
(15,'Tyson', 'Chandler',34,.671,8.4),
(15,'Marquese', 'Chriss',19,.449,9.2),
(15,'Jared', 'Dudley',31,.454,6.8),
(15,'Brandon', 'Knight',25,.398,11.0),
(15,'Alex', 'Len',23,.497,8.0),
(15,'Tyler', 'Ulis',21,.421,7.3),
(15,'Derrick', 'Jones',19,.562,5.3),
(15,'Alan', 'Williams',24,.517,7.4),
(15,'Leandro', 'Barbosa',34,.439,6.3),
(15,'Dragan', 'Bender',19,.354,3.4),
(15,'Jarell', 'Eddie',25,.316,4.8),
(15,'Elijah', 'Millsap',29,.143,1.5),
(15,'Ronnie', 'Price',33,.167,1.0),
(15,'John', 'Jenkins',25,.400,1.8),
(16,'Isaiah', 'Thomas',27,.463,28.9),
(16,'Avery', 'Bradley',26,.463,16.3),
(16,'Jae', 'Crowder',26,.463,13.9),
(16,'Al', 'Horford',30,.473,14.0),
(16,'Marcus', 'Smart',22,.359,10.6),
(16,'Kelly', 'Olynyk',25,.512,9.0),
(16,'Amir', 'Johnson',29,.576,6.5),
(16,'Jaylen', 'Brown',20,.454,6.6),
(16,'Terry', 'Rozier',22,.367,5.5),
(16,'Jonas', 'Jerebko',29,.435,3.8),
(16,'Gerald', 'Green',31,.409,5.6),
(16,'Tyler', 'Zeller',27,.494,3.5),
(16,'James', 'Young',21,.431,2.3),
(16,'Jordan', 'Mickey',22,.441,1.5),
(16,'Demetrius', 'Jackson',22,.750,2.0),
(17,'LeBron', 'James',32,.548,26.4),
(17,'Kyrie', 'Irving',24,.473,25.2),
(17,'Kevin', 'Love',28,.427,19.0),
(17,'Tristan', 'Thompson',25,.600,8.1),
(17,'J.R.', 'Smith',31,.346,8.6),
(17,'Iman', 'Shumpert',26,.411,7.5),
(17,'Kyle', 'Korver',35,.487,10.7),
(17,'Edy', 'Tavares',24,.750,6.0),
(17,'Richard', 'Jefferson',36,.446,5.7),
(17,'Deron', 'Williams',32,.463,7.5),
(17,'Channing', 'Frye',33,.458,9.1),
(17,'Derrick', 'Williams',25,.505,6.2),
(17,'Mike', 'Dunleavy',36,.400,4.6),
(17,'DeAndre', 'Liggins',28,.382,2.4),
(17,'Dahntay', 'Jones',36,.375,9.0),
(17,'Jordan', 'McRae',25,.387,4.4),
(17,'Chris', 'Andersen',38,.409,2.3),
(17,'Kay', 'Felder',21,.392,4.0),
(17,'James', 'Jones',36,.478,2.8),
(17,'Larry', 'Sanders',28,.250,0.8),
(17,'Andrew', 'Bogut',32,.000,0.0),
(18,'Kyle', 'Lowry',30,.464,22.4),
(18,'DeMar', 'DeRozan',27,.467,27.3),
(18,'Serge', 'Ibaka',27,.459,14.2),
(18,'DeMarre', 'Carroll',30,.400,8.9),
(18,'Jonas', 'Valanciunas',24,.557,12.0),
(18,'P.J.', 'Tucker',31,.406,5.8),
(18,'Cory', 'Joseph',25,.452,9.3),
(18,'Patrick', 'Patterson',27,.401,6.8),
(18,'Terrence', 'Ross',25,.441,10.4),
(18,'Lucas', 'Nogueira',24,.660,4.4),
(18,'Norman', 'Powell',23,.449,8.4),
(18,'Delon', 'Wright',24,.422,5.6),
(18,'Pascal', 'Siakam',22,.502,4.2),
(18,'Jakob', 'Poeltl',21,.583,3.1),
(18,'Jared', 'Sullinger',24,.319,3.4),
(18,'Fred', 'VanVleet',22,.351,2.9),
(18,'Bruno', 'Caboclo',21,.375,1.6),
(19,'John', 'Wall',26,.451,23.1),
(19,'Bradley', 'Beal',23,.482,23.1),
(19,'Otto', 'Porter',23,.516,13.4),
(19,'Markieff', 'Morris',27,.457,14.0),
(19,'Marcin', 'Gortat',32,.579,10.8),
(19,'Bojan', 'Bogdanovic',27,.457,12.7),
(19,'Kelly', 'Oubre',21,.421,6.3),
(19,'Ian', 'Mahinmi',30,.586,5.6),
(19,'Marcus', 'Thornton',29,.400,6.6),
(19,'Brandon', 'Jennings',27,.274,3.5),
(19,'Jason', 'Smith',30,.529,5.7),
(19,'Tomas', 'Satoransky',25,.415,2.7),
(19,'Trey', 'Burke',24,.455,5.0),
(19,'Sheldon', 'Mac',24,.400,3.0),
(19,'Andrew', 'Nicholson',27,.390,2.5),
(19,'Chris', 'McCullough',21,.000,0.5),
(19,'Daniel', 'Ochefu',23,.444,1.3),
(19,'Danuel', 'House',23,.000,0.0),
(20,'Paul', 'Millsap',31,.442,18.1),
(20,'Dennis', 'Schroder',23,.451,17.9),
(20,'Dwight', 'Howard',31,.633,13.5),
(20,'Kyle', 'Korver',35,.439,9.5),
(20,'Tim', 'Hardaway',24,.455,14.5),
(20,'Kent', 'Bazemore',27,.409,11.0),
(20,'Thabo', 'Sefolosha',32,.441,7.2),
(20,'Ersan', 'Ilyasova',29,.412,10.4),
(20,'Mike', 'Muscala',25,.504,6.2),
(20,'Malcolm', 'Delaney',27,.374,5.4),
(20,'Taurean', 'Waller-Prince',22,.400,5.7),
(20,'Mike', 'Dunleavy',36,.438,5.6),
(20,'Jose', 'Calderon',35,.404,3.6),
(20,'Kris', 'Humphries',31,.407,4.6),
(20,'Mike', 'Scott',28,.288,2.5),
(20,'DeAndre', 'Bembry',22,.480,2.7),
(20,'Gary', 'Neal',32,.000,2.0),
(20,'Lamar', 'Patterson',25,.200,1.8),
(20,'Ryan', 'Kelly',25,.286,1.6),
(20,'Edy', 'Tavares',24,1.000,2.0),
(21,'Giannis', 'Antetokounmpo',22,.521,22.9),
(21,'Jabari', 'Parker',21,.490,20.1),
(21,'Khris', 'Middleton',25,.450,14.7),
(21,'Tony', 'Snell',25,.455,8.5),
(21,'Malcolm', 'Brogdon',24,.457,10.2),
(21,'Matthew', 'Dellavedova',26,.390,7.6),
(21,'Greg', 'Monroe',26,.533,11.7),
(21,'John', 'Henson',26,.515,6.8),
(21,'Jason', 'Terry',39,.432,4.1),
(21,'Michael', 'Beasley',28,.532,9.4),
(21,'Gary', 'Payton',24,.364,3.3),
(21,'Mirza', 'Teletovic',31,.373,6.4),
(21,'Rashad', 'Vaughn',20,.365,3.5),
(21,'Thon', 'Maker',19,.459,4.0),
(21,'Miles', 'Plumlee',28,.441,2.6),
(21,'Spencer', 'Hawes',28,.508,4.4),
(21,'Axel', 'Toupane',24,.000,0.0),
(21,'Steve', 'Novak',33,.286,0.6),
(21,'Terrence', 'Jones',25,.000,0.0),
(22,'Paul', 'George',26,.461,23.7),
(22,'Jeff', 'Teague',28,.442,15.3),
(22,'Myles', 'Turner',20,.511,14.5),
(22,'Thaddeus', 'Young',28,.527,11.0),
(22,'Monta', 'Ellis',31,.443,8.5),
(22,'C.J.', 'Miles',29,.434,10.7),
(22,'Lance', 'Stephenson',26,.409,7.2),
(22,'Glenn', 'Robinson',23,.467,6.1),
(22,'Rodney', 'Stuckey',30,.373,7.2),
(22,'Lavoy', 'Allen',27,.458,2.9),
(22,'Al', 'Jefferson',32,.499,8.1),
(22,'Aaron', 'Brooks',32,.403,5.0),
(22,'Kevin', 'Seraphin',27,.551,4.7),
(22,'Rakeem', 'Christmas',25,.442,2.0),
(22,'Joe', 'Young',24,.361,2.1),
(22,'Georges', 'Niang',23,.250,0.9),
(23,'Jimmy', 'Butler',27,.455,23.9),
(23,'Dwyane', 'Wade',35,.434,18.3),
(23,'Robin', 'Lopez',28,.493,10.4),
(23,'Taj', 'Gibson',31,.521,11.6),
(23,'Rajon', 'Rondo',30,.408,7.8),
(23,'Doug', 'McDermott',25,.445,10.2),
(23,'Nikola', 'Mirotic',25,.413,10.6),
(23,'Paul', 'Zipser',22,.398,5.5),
(23,'Michael', 'Carter-Williams',25,.366,6.6),
(23,'Denzel', 'Valentine',23,.354,5.1),
(23,'Jerian', 'Grant',24,.425,5.9),
(23,'Cristiano', 'Felicio',24,.579,4.8),
(23,'Bobby', 'Portis',21,.488,6.8),
(23,'Isaiah', 'Canaan',25,.364,4.6),
(23,'Cameron', 'Payne',22,.333,4.9),
(23,'Joffrey', 'Lauvergne',25,.402,4.5),
(23,'Anthony', 'Morrow',31,.414,4.6),
(23,'R.J.', 'Hunter',23,.000,0.0),
(24,'Justise', 'Winslow',20,.356,10.9),
(24,'Goran', 'Dragic',30,.475,20.3),
(24,'Hassan', 'Whiteside',27,.557,17.0),
(24,'Josh', 'Richardson',23,.394,10.2),
(24,'Dion', 'Waiters',25,.424,15.8),
(24,'Tyler', 'Johnson',24,.433,13.7),
(24,'James', 'Johnson',29,.479,12.8),
(24,'Rodney', 'McGruder',25,.413,6.4),
(24,'Wayne', 'Ellington',29,.416,10.5),
(24,'Josh', 'McRoberts',29,.373,4.9),
(24,'Luke', 'Babbitt',27,.402,4.8),
(24,'Derrick', 'Williams',25,.394,5.9),
(24,'Willie', 'Reed',26,.568,5.3),
(24,'Okaro', 'White',24,.379,2.8),
(24,'Udonis', 'Haslem',36,.478,1.9),
(25,'Kentavious', 'Caldwell-Pope',23,.399,13.8),
(25,'Marcus', 'Morris',27,.418,14.0),
(25,'Tobias', 'Harris',24,.481,16.1),
(25,'Andre', 'Drummond',23,.530,13.6),
(25,'Reggie', 'Jackson',26,.419,14.5),
(25,'Jon', 'Leuer',27,.480,10.2),
(25,'Ish', 'Smith',28,.439,9.4),
(25,'Stanley', 'Johnson',20,.353,4.4),
(25,'Aron', 'Baynes',30,.513,4.9),
(25,'Reggie', 'Bullock',25,.422,4.5),
(25,'Beno', 'Udrih',34,.467,5.8),
(25,'Darrun', 'Hilliard',23,.373,3.3),
(25,'Boban', 'Marjanovic',28,.545,5.5),
(25,'Henry', 'Ellenson',20,.359,3.2),
(25,'Michael', 'Gbinije',24,.100,0.4),
(26,'Kemba', 'Walker',26,.444,23.2),
(26,'Nicolas', 'Batum',28,.403,15.1),
(26,'Marvin', 'Williams',30,.422,11.2),
(26,'Michael', 'Kidd-Gilchrist',23,.477,9.2),
(26,'Cody', 'Zeller',24,.571,10.3),
(26,'Frank', 'Kaminsky',23,.399,11.7),
(26,'Marco', 'Belinelli',30,.429,10.5),
(26,'Jeremy', 'Lamb',24,.460,9.7),
(26,'Spencer', 'Hawes',28,.477,7.3),
(26,'Ramon', 'Sessions',30,.380,6.2),
(26,'Roy', 'Hibbert',30,.542,5.2),
(26,'Miles', 'Plumlee',28,.583,2.4),
(26,'Mike', 'Tobey',22,.250,1.0),
(26,'Briante', 'Weber',24,.435,3.8),
(26,'Brian', 'Roberts',31,.377,3.5),
(26,'Johnny', 'O''Bryant',23,.533,4.5),
(26,'Christian', 'Wood',21,.522,2.7),
(26,'Treveon', 'Graham',23,.475,2.1),
(26,'Aaron', 'Harrison',22,.000,0.2),
(27,'Carmelo', 'Anthony',32,.433,22.4),
(27,'Kristaps', 'Porzingis',21,.450,18.1),
(27,'Derrick', 'Rose',28,.471,18.0),
(27,'Courtney', 'Lee',31,.456,10.8),
(27,'Brandon', 'Jennings',27,.380,8.6),
(27,'Joakim', 'Noah',31,.490,5.0),
(27,'Lance', 'Thomas',28,.398,6.0),
(27,'Justin', 'Holiday',27,.433,7.7),
(27,'Willy', 'Hernangomez',22,.529,8.2),
(27,'Ron', 'Baker',23,.378,4.1),
(27,'Kyle', 'O''Quinn',26,.521,6.3),
(27,'Mindaugas', 'Kuzminskas',27,.428,6.3),
(27,'Chasson', 'Randle',23,.389,5.3),
(27,'Maurice', 'Ndour',24,.453,3.1),
(27,'Sasha', 'Vujacic',32,.309,3.0),
(27,'Marshall', 'Plumlee',24,.533,1.9),
(28,'Evan', 'Fournier',24,.439,17.2),
(28,'Terrence', 'Ross',25,.431,12.5),
(28,'Serge', 'Ibaka',27,.488,15.1),
(28,'Elfrid', 'Payton',22,.471,12.8),
(28,'Nikola', 'Vucevic',26,.468,14.6),
(28,'Aaron', 'Gordon',21,.454,12.7),
(28,'Jeff', 'Green',30,.394,9.2),
(28,'Bismack', 'Biyombo',24,.528,6.0),
(28,'Jodie', 'Meeks',29,.402,9.1),
(28,'D.J.', 'Augustin',29,.377,7.9),
(28,'C.J.', 'Watson',32,.387,4.5),
(28,'Mario', 'Hezonja',21,.355,4.9),
(28,'Marcus', 'Georges-Hunt',22,.286,2.8),
(28,'Patricio', 'Garino',23,.000,0.0),
(28,'Anthony', 'Brown',24,.444,4.5),
(28,'Damjan', 'Rudez',30,.352,1.8),
(28,'Stephen', 'Zimmerman',20,.323,1.2),
(28,'C.J.', 'Wilcox',26,.258,1.0),
(28,'Arinze', 'Onuaku',29,.500,0.5),
(29,'Robert', 'Covington',26,.399,12.9),
(29,'Nik', 'Stauskas',23,.396,9.5),
(29,'Ersan', 'Ilyasova',29,.440,14.8),
(29,'Dario', 'Saric',22,.411,12.8),
(29,'T.J.', 'McConnell',24,.461,6.9),
(29,'Alex', 'Poythress',23,.463,10.7),
(29,'Joel', 'Embiid',22,.466,20.2),
(29,'Jerryd', 'Bayless',28,.344,11.0),
(29,'Gerald', 'Henderson',29,.423,9.2),
(29,'Jahlil', 'Okafor',21,.514,11.8),
(29,'Sergio', 'Rodriguez',30,.392,7.8),
(29,'Justin', 'Anderson',23,.463,8.5),
(29,'Richaun', 'Holmes',23,.558,9.8),
(29,'Jerami', 'Grant',22,.353,8.0),
(29,'Nerlens', 'Noel',22,.611,8.9),
(29,'Hollis', 'Thompson',25,.415,5.5),
(29,'Timothe', 'Luwawu-Cabarrot',21,.402,6.4),
(29,'Shawn', 'Long',24,.560,8.2),
(29,'Justin', 'Harper',27,.417,4.0),
(29,'Tiago', 'Splitter',32,.452,4.9),
(29,'Chasson', 'Randle',23,.462,5.3),
(30,'Brook', 'Lopez',28,.474,20.5),
(30,'Bojan', 'Bogdanovic',27,.440,14.2),
(30,'Sean', 'Kilpatrick',27,.415,13.1),
(30,'Trevor', 'Booker',29,.516,10.0),
(30,'Jeremy', 'Lin',28,.438,14.5),
(30,'Rondae', 'Hollis-Jefferson',22,.434,8.7),
(30,'Spencer', 'Dinwiddie',23,.444,7.3),
(30,'Isaiah', 'Whitehead',21,.402,7.4),
(30,'Joe', 'Harris',25,.425,8.2),
(30,'Caris', 'LeVert',22,.450,8.2),
(30,'Randy', 'Foye',33,.363,5.2),
(30,'Justin', 'Hamilton',26,.459,6.9),
(30,'Quincy', 'Acy',26,.425,6.5),
(30,'Archie', 'Goodwin',22,.557,7.9),
(30,'Yogi', 'Ferrell',23,.367,5.4),
(30,'K.J.', 'McDaniels',23,.455,6.3),
(30,'Greivis', 'Vasquez',30,.250,2.3),
(30,'Luis', 'Scola',36,.470,5.1),
(30,'Anthony', 'Bennett',23,.413,5.0),
(30,'Andrew', 'Nicholson',27,.382,3.0),
(30,'Chris', 'McCullough',21,.516,2.5);

/*NBA playoffs*/
INSERT INTO playoffs (id, name) VALUES
(1,'Western Conference Quarterfinals'),
(2,'Eastern Conference Quarterfinals'),
(3,'Western Conference Semi-finals'),
(4,'Eastern Conference Semi-finals'),
(5,'Western Conference Finals'),
(6,'Eastern Conference Finals'),
(7,'NBA Finals');

/*NOTE: user never enters ids directly but instead selects from drop down and the id of the corresponding query is chosen
for manipulating data, I refer to this as a select rather than input in the following queries*/

/* TEAMS */
/*populate tables and dropdown lists*/
SELECT id, CONCAT(fname,' ',lname) AS name FROM head_coach;

SELECT id, name FROM conference;

SELECT team.id, team.name, conference.name AS conference_id,
standing, CONCAT(head_coach.fname,' ',head_coach.lname) AS coach_id,
wins, losses, ppg, oppg FROM team
INNER JOIN conference ON conference_id = conference.id
INNER JOIN head_coach ON coach_id = head_coach.id;

SELECT team.id, team.name, conference_id, standing, coach_id, wins, losses, ppg, oppg FROM team WHERE team.id = [idSelect];

/*maipulate data based on user form submissions*/
INSERT INTO team (name, conference_id, standing, coach_id, wins, losses, ppg, oppg) VALUES ([nameInput],[conferenceSelect],[standingInput],[coachSelect],[winsInput],[lossesInput],[ppgInput],[oppgInput]);

UPDATE team SET name=[nameInput], conference_id=[conferenceSelect], standing=[standingInput], coach_id=[coachSelect], wins=[winsInput], losses=[lossesInput], ppg=[ppgInput], oppg=[oppgInput] WHERE id=[idSelect];

DELETE FROM team WHERE id = [userSelect];

/*PLAYERS*/
/*populate tables and dropdown lists*/
SELECT id, name FROM team;

SELECT player.id, CONCAT(player.fname,' ',player.lname) AS combinedname,
team.name AS team_id, age, fg, player.ppg FROM player
INNER JOIN team ON team_id = team.id;

SELECT player.id, player.fname, player.lname, team_id, age, fg, ppg FROM player WHERE id = [idSelect];

/*maipulate data based on user form submissions*/
INSERT INTO player (fname, lname, team_id, age, fg, ppg) VALUES ([fnameInput],[lnameInput],[teamSelect],[ageInput],[fgInput],[ppgInput]);

UPDATE player SET fname=[fnameInput], lname=[lnameInput], team_id=[teamSelect], age=[ageInput], fg=[fgInput], ppg=[ppgInput] WHERE id=[idSelect];

DELETE FROM player WHERE id = [idSelect];

/*CONFERENCES*/
/*populate tables and dropdown lists*/
SELECT id, name FROM conference;

SELECT id, name FROM conference WHERE id = [idSelect];

/*maipulate data based on user form submissions*/
INSERT INTO `conference`(`name`) VALUES (nameInput);

UPDATE conference SET name=[nameInput] WHERE id=[idSelect];

/*HEAD COACHES*/
/*populate tables and dropdown lists*/
SELECT id, name FROM team;

SELECT head_coach.id, CONCAT(head_coach.fname,' ',head_coach.lname) AS combinedname,
team.name AS team_id, age, years FROM head_coach
INNER JOIN team ON team_id = team.id;

SELECT head_coach.id,head_coach.fname, head_coach.lname, team_id, age, years FROM head_coach WHERE id = [idSelect];

/*maipulate data based on user form submissions*/
INSERT INTO head_coach (fname, lname, team_id, age, years) VALUES ([fnameInput],[lnameInput],[teamSelect],[ageInput],[yearsInput]);

UPDATE head_coach SET fname=[fnameInput], lname=[lnameInput], team_id=[teamSelect], age=[ageInput], years=[yearsInput] WHERE id=[idSelect];

DELETE FROM head_coach WHERE id = [idSelect];


/*PLAYOFFS*/
/*populate tables and dropdown lists*/
SELECT id, name FROM playoffs;

SELECT id, name FROM playoffs WHERE id = [idSelect];

/*maipulate data based on user form submissions*/
INSERT INTO `playoffs`(`name`) VALUES ([userInput]);

UPDATE playoffs SET name=[nameInput] WHERE id=[idSelect];

DELETE FROM playoffs WHERE id = [idSelect];

/*TEAMS AND PLAYOFFS*/
/*populate tables and dropdown lists*/
SELECT id, name FROM team;

SELECT id, name FROM playoffs;

SELECT id, name FROM team WHERE id = [idSelect];

SELECT id, name FROM playoffs WHERE id = [idSelect];

SELECT playoff_id, team_id, team.name AS team_name, playoffs.name AS playoff_name FROM team INNER JOIN teams_playoffs on team.id = teams_playoffs.team_id INNER JOIN playoffs on playoffs.id = teams_playoffs.playoff_id ORDER BY team_name, playoff_name;

/*maipulate data based on user form submissions*/
INSERT INTO teams_playoffs (team_id, playoff_id) VALUES ([teamSelect],[playoffSelect]);

UPDATE teams_playoffs SET team_id = [teamSelect], playoff_id = [playoffSelect]  WHERE team_id = [teamSelect]  AND playoff_id = [playoffSelect];

DELETE FROM teams_playoffs WHERE playoff_id = [playoffSelect] AND team_id = [teamSelect];

/*SEARCH BAR */

SELECT player.id, CONCAT(player.fname,' ',player.lname) AS combinedname,
team.name AS team_id, age, fg, player.ppg  FROM player INNER JOIN
team ON team_id = team.id WHERE player.fname LIKE [userInput] OR player.lname LIKE [userInput]
OR CONCAT(player.fname,' ',player.lname) = [userInput];
