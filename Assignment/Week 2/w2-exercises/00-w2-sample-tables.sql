USE source_db;

DROP TABLE IF EXISTS OFFICES;
CREATE TABLE OFFICES (
  OFFICECODE varchar(50) collate latin1_general_cs NOT NULL default '',
  CITY varchar(50) collate latin1_general_cs NOT NULL default '',
  PHONE varchar(50) collate latin1_general_cs NOT NULL default '',
  ADDRESSLINE1 varchar(50) collate latin1_general_cs NOT NULL default '',
  ADDRESSLINE2 varchar(50) collate latin1_general_cs default NULL,
  STATE varchar(50) collate latin1_general_cs default NULL,
  COUNTRY varchar(50) collate latin1_general_cs NOT NULL default '',
  POSTALCODE varchar(10) collate latin1_general_cs NOT NULL default '',
  TERRITORY varchar(10) collate latin1_general_cs NOT NULL default '',
  PRIMARY KEY  (OFFICECODE)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table OFFICES
--


/*!40000 ALTER TABLE OFFICES DISABLE KEYS */;
LOCK TABLES OFFICES WRITE;
INSERT INTO OFFICES VALUES ('1','San Francisco','+1 650 219 4782','100 Market Street','Suite 300','CA','USA','94080','NA'),('2','Boston','+1 215 837 0825','1550 Court Place','Suite 102','MA','USA','02107','NA'),('3','NYC','+1 212 555 3000','523 East 53rd Street','apt. 5A','NY','USA','10022','NA'),('4','Paris','+33 14 723 4404','43 Rue Jouffroy D\'abbans',NULL,'','France','75017','EMEA'),('5','Tokyo','+81 33 224 5000','4-1 Kioicho',NULL,'Chiyoda-Ku','Japan','102-8578','Japan'),('6','Sydney','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2',NULL,'Australia','NSW 2010','APAC'),('7','London','+44 20 7877 2041','25 Old Broad Street','Level 7',NULL,'UK','EC2N 1HN','EMEA');
UNLOCK TABLES;
/*!40000 ALTER TABLE OFFICES ENABLE KEYS */;

DROP TABLE IF EXISTS PRODUCTS;
CREATE TABLE PRODUCTS (
  PRODUCTCODE varchar(50) collate latin1_general_cs NOT NULL default '',
  PRODUCTNAME varchar(70) collate latin1_general_cs NOT NULL default '',
  PRODUCTLINE varchar(50) collate latin1_general_cs NOT NULL default '',
  PRODUCTSCALE varchar(10) collate latin1_general_cs NOT NULL default '',
  PRODUCTVENDOR varchar(50) collate latin1_general_cs NOT NULL default '',
  PRODUCTDESCRIPTION mediumtext collate latin1_general_cs NOT NULL,
  QUANTITYINSTOCK smallint(6) NOT NULL default '0',
  BUYPRICE decimal(17,0) NOT NULL default '0',
  MSRP decimal(17,0) NOT NULL default '0',
  PRIMARY KEY  (PRODUCTCODE)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;



--
-- Dumping data for table PRODUCTS
--


/*!40000 ALTER TABLE PRODUCTS DISABLE KEYS */;
LOCK TABLES PRODUCTS WRITE;
INSERT INTO PRODUCTS VALUES ('S10_1678','1969 Harley Davidson Ultimate Chopper','Motorcycles','1:10','Min Lin Diecast','This replica features working kickstand, front suspension, gear-shift lever, footbrake lever, drive chain, wheels and steering. All parts are particularly delicate due to their precise scale and require special care and attention.',7933,'49','96'),('S10_1949','1952 Alpine Renault 1300','Classic Cars','1:10','Classic Metal Creations','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',7305,'99','214'),('S10_2016','1996 Moto Guzzi 1100i','Motorcycles','1:10','Highway 66 Mini Classics','Official Moto Guzzi logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.',6625,'69','119'),('S10_4698','2003 Harley-Davidson Eagle Drag Bike','Motorcycles','1:10','Red Start Diecast','Model features, official Harley Davidson logos and insignias, detachable rear wheelie bar, heavy diecast metal with resin parts, authentic multi-color tampo-printed graphics, separate engine drive belts, free-turning front fork, rotating tires and rear racing slick, certificate of authenticity, detailed engine, display standu000du000a, precision diecast replica, baked enamel finish, 1:10 scale model, removable fender, seat and tank cover piece for displaying the superior detail of the v-twin engine',5582,'91','194'),('S10_4757','1972 Alfa Romeo GTA','Classic Cars','1:10','Motor City Art Classics','Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',3252,'86','136'),('S10_4962','1962 LanciaA Delta 16V','Classic Cars','1:10','Second Gear Diecast','Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',6791,'103','148'),('S12_1099','1968 Ford Mustang','Classic Cars','1:12','Autoart Studio Design','Hood, doors and trunk all open to reveal highly detailed interior features. Steering wheel actually turns the front wheels. Color dark green.',68,'95','195'),('S12_1108','2001 Ferrari Enzo','Classic Cars','1:12','Second Gear Diecast','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',3619,'96','208'),('S12_1666','1958 Setra Bus','Trucks and Buses','1:12','Welly Diecast Productions','Model features 30 windows, skylights & glare resistant glass, working steering system, original logos',1579,'78','137'),('S12_2823','2002 Suzuki XREO','Motorcycles','1:12','Unimax Art Galleries','Official logos and insignias, saddle bags located on side of motorcycle, detailed engine, working steering, working suspension, two leather seats, luggage rack, dual exhaust pipes, small saddle bag located on handle bars, two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand, diecast metal with plastic parts and baked enamel finish.',9997,'66','151'),('S12_3148','1969 Corvair Monza','Classic Cars','1:18','Welly Diecast Productions','1:18 scale die-cast about 10 long doors open, hood opens, trunk opens and wheels roll',6906,'89','151'),('S12_3380','1968 Dodge Charger','Classic Cars','1:12','Welly Diecast Productions','1:12 scale model of a 1968 Dodge Charger. Hood, doors and trunk all open to reveal highly detailed interior features. Steering wheel actually turns the front wheels. Color black',9123,'75','117'),('S12_3891','1969 Ford Falcon','Classic Cars','1:12','Second Gear Diecast','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',1049,'83','173'),('S12_3990','1970 Plymouth Hemi Cuda','Classic Cars','1:12','Studio M Art Models','Very detailed 1970 Plymouth Cuda model in 1:12 scale. The Cuda is generally accepted as one of the fastest original muscle cars from the 1970s. This model is a reproduction of one of the orginal 652 cars built in 1970. Red color.',5663,'32','80'),('S12_4473','1957 Chevy Pickup','Trucks and Buses','1:12','Exoto Designs','1:12 scale die-cast about 20 long Hood opens, Rubber wheels',6125,'56','119'),('S12_4675','1969 Dodge Charger','Classic Cars','1:12','Welly Diecast Productions','Detailed model of the 1969 Dodge Charger. This model includes finely detailed interior and exterior features. Painted in red and white.',7323,'59','115'),('S18_1097','1940 Ford Pickup Truck','Trucks and Buses','1:18','Studio M Art Models','This model features soft rubber tires, working steering, rubber mud guards, authentic Ford logos, detailed undercarriage, opening doors and hood,  removable split rear gate, full size spare mounted in bed, detailed interior with opening glove box',2613,'58','117'),('S18_1129','1993 Mazda RX-7','Classic Cars','1:18','Highway 66 Mini Classics','This model features, opening hood, opening doors, detailed engine, rear spoiler, opening trunk, working steering, tinted windows, baked enamel finish. Color red.',3975,'84','142'),('S18_1342','1937 Lincoln Berline','Vintage Cars','1:18','Motor City Art Classics','Features opening engine cover, doors, trunk, and fuel filler cap. Color black',8693,'61','103'),('S18_1367','1936 Mercedes-Benz 500K Special Roadster','Vintage Cars','1:18','Studio M Art Models','This 1:18 scale replica is constructed of heavy die-cast metal and has all the features of the original: working doors and rumble seat, independent spring suspension, detailed interior, working steering system, and a bifold hood that reveals an engine so accurate that it even includes the wiring. All this is topped off with a baked enamel finish. Color white.',8635,'24','54'),('S18_1589','1965 Aston Martin DB5','Classic Cars','1:18','Classic Metal Creations','Die-cast model of the silver 1965 Aston Martin DB5 in silver. This model includes full wire wheels and doors that open with fully detailed passenger compartment. In 1:18 scale, this model measures approximately 10 inches/20 cm long.',9042,'66','124'),('S18_1662','1980s Black Hawk Helicopter','Planes','1:18','Red Start Diecast','1:18 scale replica of actual Army\'s UH-60L BLACK HAWK Helicopter. 100% hand-assembled. Features rotating rotor blades, propeller blades and rubber wheels.',5330,'77','158'),('S18_1749','1917 Grand Touring Sedan','Vintage Cars','1:18','Welly Diecast Productions','This 1:18 scale replica of the 1917 Grand Touring car has all the features you would expect from museum quality reproductions: all four doors and bi-fold hood opening, detailed engine and instrument panel, chrome-look trim, and tufted upholstery, all topped off with a factory baked-enamel finish.',2724,'87','170'),('S18_1889','1948 Porsche 356-A Roadster','Classic Cars','1:18','Gearbox Collectibles','This precision die-cast replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',8826,'54','77'),('S18_1984','1995 Honda Civic','Classic Cars','1:18','Min Lin Diecast','This model features, opening hood, opening doors, detailed engine, rear spoiler, opening trunk, working steering, tinted windows, baked enamel finish. Color yellow.',9772,'94','142'),('S18_2238','1998 Chrysler Plymouth Prowler','Classic Cars','1:18','Gearbox Collectibles','Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',4724,'102','164'),('S18_2248','1911 Ford Town Car','Vintage Cars','1:18','Motor City Art Classics','Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system',540,'33','61'),('S18_2319','1964 Mercedec Tour Bus','Trucks and Buses','1:18','Unimax Art Galleries','Exact replica. 100+ parts. working steering system, original logos',8258,'75','123'),('S18_2325','1932 Model A Ford J-Coupe','Vintage Cars','1:18','Autoart Studio Design','This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system, chrome-covered spare, opening doors, detailed and wired engine',9354,'58','127'),('S18_2432','1926 Ford Fire Engine','Trucks and Buses','1:18','Carousel DieCast Legends','Gleaming red handsome appearance. Everything is here the fire hoses, ladder, axes, bells, lanterns, ready to fight any inferno.',2018,'25','61'),('S18_2581','P-51-D Mustang','Planes','1:72','Gearbox Collectibles','Has retractable wheels and comes with a stand',992,'49','84'),('S18_2625','1936 Harley Davidson El Knucklehead','Motorcycles','1:18','Welly Diecast Productions','Intricately detailed with chrome accents and trim, official die-struck logos and baked enamel finish.',4357,'24','61'),('S18_2795','1928 Mercedes-Benz SSK','Vintage Cars','1:18','Gearbox Collectibles','This 1:18 replica features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system, chrome-covered spare, opening doors, detailed and wired engine. Color black.',548,'73','169'),('S18_2870','1999 Indy 500 Monte Carlo SS','Classic Cars','1:18','Red Start Diecast','Features include opening and closing doors. Color: Red',8164,'57','132'),('S18_2949','1913 Ford Model T Speedster','Vintage Cars','1:18','Carousel DieCast Legends','This 250 part reproduction includes moving handbrakes, clutch, throttle and foot pedals, squeezable horn, detailed wired engine, removable water, gas, and oil cans, pivoting monocle windshield, all topped with a baked enamel red finish. Each replica comes with an Owners Title and Certificate of Authenticity. Color red.',4189,'61','101'),('S18_2957','1934 Ford V8 Coupe','Vintage Cars','1:18','Min Lin Diecast','Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System',5649,'34','62'),('S18_3029','1999 Yamaha Speed Boat','Ships','1:18','Min Lin Diecast','Exact replica. Wood and Metal. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.',4259,'52','86'),('S18_3136','18th Century Vintage Horse Carriage','Vintage Cars','1:18','Red Start Diecast','Hand crafted diecast-like metal horse carriage is re-created in about 1:18 scale of antique horse carriage. This antique style metal Stagecoach is all hand-assembled with many different parts.u000du000au000du000aThis collectible metal horse carriage is painted in classic Red, and features turning steering wheel and is entirely hand-finished.',5992,'61','105'),('S18_3140','1903 Ford Model A','Vintage Cars','1:18','Unimax Art Galleries','Features opening trunk,  working steering system',3913,'68','137'),('S18_3232','1992 Ferrari 360 Spider red','Classic Cars','1:18','Unimax Art Galleries','his replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',8347,'78','169'),('S18_3233','1985 Toyota Supra','Classic Cars','1:18','Highway 66 Mini Classics','This model features soft rubber tires, working steering, rubber mud guards, authentic Ford logos, detailed undercarriage, opening doors and hood, removable split rear gate, full size spare mounted in bed, detailed interior with opening glove box',7733,'57','108'),('S18_3259','Collectable Wooden Train','Trains','1:18','Carousel DieCast Legends','Hand crafted wooden toy train set is in about 1:18 scale, 25 inches in total length including 2 additional carts, of actual vintage train. This antique style wooden toy train model set is all hand-assembled with 100% wood.',6450,'68','101'),('S18_3278','1969 Dodge Super Bee','Classic Cars','1:18','Min Lin Diecast','This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',1917,'49','80'),('S18_3320','1917 Maxwell Touring Car','Vintage Cars','1:18','Exoto Designs','Features Gold Trim, Full Size Spare Tire, Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System',7913,'58','99'),('S18_3482','1976 Ford Gran Torino','Classic Cars','1:18','Gearbox Collectibles','Highly detailed 1976 Ford Gran Torino Starsky and Hutch diecast model. Very well constructed and painted in red and white patterns.',9127,'73','147'),('S18_3685','1948 Porsche Type 356 Roadster','Classic Cars','1:18','Gearbox Collectibles','This model features working front and rear suspension on accurately replicated and actuating shock absorbers as well as opening engine cover, rear stabilizer flap,  and 4 opening doors.',8990,'62','141'),('S18_3782','1957 Vespa GS150','Motorcycles','1:18','Studio M Art Models','Features rotating wheels , working kick stand. Comes with stand.',7689,'33','62'),('S18_3856','1941 Chevrolet Special Deluxe Cabriolet','Vintage Cars','1:18','Exoto Designs','Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system, leather upholstery. Color black.',2378,'65','106'),('S18_4027','1970 Triumph Spitfire','Classic Cars','1:18','Min Lin Diecast','Features include opening and closing doors. Color: White.',5545,'92','144'),('S18_4409','1932 Alfa Romeo 8C2300 Spider Sport','Vintage Cars','1:18','Exoto Designs','This 1:18 scale precision die cast replica features the 6 front headlights of the original, plus a detailed version of the 142 horsepower straight 8 engine, dual spares and their famous comprehensive dashboard. Color black.',6553,'43','92'),('S18_4522','1904 Buick Runabout','Vintage Cars','1:18','Exoto Designs','Features opening trunk,  working steering system',8290,'53','88'),('S18_4600','1940s Ford truck','Trucks and Buses','1:18','Motor City Art Classics','This 1940s Ford Pick-Up truck is re-created in 1:18 scale of original 1940s Ford truck. This antique style metal 1940s Ford Flatbed truck is all hand-assembled. This collectible 1940\'s Pick-Up truck is painted in classic dark green color, and features rotating wheels.',3128,'85','121'),('S18_4668','1939 Cadillac Limousine','Vintage Cars','1:18','Studio M Art Models','Features completely detailed interior including Velvet flocked drapes,deluxe wood grain floor, and a wood grain casket with seperate chrome handles',6645,'23','50'),('S18_4721','1957 Corvette Convertible','Classic Cars','1:18','Classic Metal Creations','1957 die cast Corvette Convertible in Roman Red with white sides and whitewall tires. 1:18 scale quality die-cast with detailed engine and underbvody. Now you can own The Classic Corvette.',1249,'70','149'),('S18_4933','1957 Ford Thunderbird','Classic Cars','1:18','Studio M Art Models','This 1:18 scale precision die-cast replica, with its optional porthole hardtop and factory baked-enamel Thunderbird Bronze finish, is a 100% accurate rendition of this American classic.',3209,'34','71'),('S24_1046','1970 Chevy Chevelle SS 454','Classic Cars','1:24','Unimax Art Galleries','This model features rotating wheels, working streering system and opening doors. All parts are particularly delicate due to their precise scale and require special care and attention. It should not be picked up by the doors, roof, hood or trunk.',1005,'49','73'),('S24_1444','1970 Dodge Coronet','Classic Cars','1:24','Highway 66 Mini Classics','1:24 scale die-cast about 18 long doors open, hood opens and rubber wheels',4074,'32','58'),('S24_1578','1997 BMW R 1100 S','Motorcycles','1:24','Autoart Studio Design','Detailed scale replica with working suspension and constructed from over 70 parts',7003,'61','113'),('S24_1628','1966 Shelby Cobra 427 S/C','Classic Cars','1:24','Carousel DieCast Legends','This diecast model of the 1966 Shelby Cobra 427 S/C includes many authentic details and operating parts. The 1:24 scale model of this iconic lighweight sports car from the 1960s comes in silver and it\'s own display case.',8197,'29','50'),('S24_1785','1928 British Royal Navy Airplane','Planes','1:24','Classic Metal Creations','Official logos and insignias',3627,'67','109'),('S24_1937','1939 Chevrolet Deluxe Coupe','Vintage Cars','1:24','Motor City Art Classics','This 1:24 scale die-cast replica of the 1939 Chevrolet Deluxe Coupe has the same classy look as the original. Features opening trunk, hood and doors and a showroom quality baked enamel finish.',7332,'23','33'),('S24_2000','1960 BSA Gold Star DBD34 1960','Motorcycles','1:24','Highway 66 Mini Classics','Detailed scale replica with working suspension and constructed from over 70 parts',15,'37','76'),('S24_2011','18th century schooner','Ships','1:24','Carousel DieCast Legends','All wood with canvas sails. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with 4 masts, all square-rigged.',1898,'82','123'),('S24_2022','1938 Cadillac V-16 Presidential Limousine','Vintage Cars','1:24','Classic Metal Creations','This 1:24 scale precision die cast replica of the 1938 Cadillac V-16 Presidential Limousine has all the details of the original, from the flags on the front to an opening back seat compartment complete with telephone and rifle. Features factory baked-enamel black finish, hood goddess ornament, working jump seats.',2847,'21','45'),('S24_2300','1962 Volkswagen Microbus','Trucks and Buses','1:24','Autoart Studio Design','This 1:18 scale die cast replica of the 1962 Microbus is loaded with features: A working steering system, opening front doors and tailgate, and famous two-tone factory baked enamel finish, are all topped of by the sliding, real fabric, sunroof.',2327,'61','128'),('S24_2360','1982 Ducati 900 Monster','Motorcycles','1:24','Highway 66 Mini Classics','Features two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand',6840,'47','69'),('S24_2766','1949 Jaguar XK 120','Classic Cars','1:24','Classic Metal Creations','Precision-engineered from original Jaguar specification in perfect scale ratio. Features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',2350,'47','91'),('S24_2840','1958 Chevy Corvette Limited Edition','Classic Cars','1:24','Carousel DieCast Legends','The operating parts of this 1958 Chevy Corvette Limited Edition are particularly delicate due to their precise scale and require special care and attention. Features rotating wheels, working streering, opening doors and trunk. Color dark green.',2542,'16','35'),('S24_2841','1900s Vintage Bi-Plane','Planes','1:24','Autoart Studio Design','Hand crafted diecast-like metal bi-plane is re-created in about 1:24 scale of antique pioneer airplane. All hand-assembled with many different parts. Hand-painted in classic yellow and features correct markings of original airplane.',5942,'34','69'),('S24_2887','1952 Citroen-15CV','Classic Cars','1:24','Exoto Designs','Precision crafted hand-assembled 1:18 scale reproduction of the 1952 15CV, with its independent spring suspension, working steering system, opening doors and hood, detailed engine and instrument panel, all topped of with a factory fresh baked enamel finish.',1452,'73','117'),('S24_2972','1982 Lamborghini Diablo','Classic Cars','1:24','Second Gear Diecast','This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',7723,'16','38'),('S24_3151','1912 Ford Model T Delivery Wagon','Vintage Cars','1:24','Min Lin Diecast','This model features chrome trim and grille, opening hood, opening doors, opening trunk, detailed engine, working steering system. Color white.',9173,'47','89'),('S24_3191','1969 Chevrolet Camaro Z28','Classic Cars','1:24','Exoto Designs','1969 Z/28 Chevy Camaro 1:24 scale replica. The operating parts of this limited edition 1:24 scale diecast model car 1969 Chevy Camaro Z28- hood, trunk, wheels, streering, suspension and doors- are particularly delicate due to their precise scale and require special care and attention.',4695,'51','86'),('S24_3371','1971 Alpine Renault 1600s','Classic Cars','1:24','Welly Diecast Productions','This 1971 Alpine Renault 1600s replica Features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',7995,'39','61'),('S24_3420','1937 Horch 930V Limousine','Vintage Cars','1:24','Autoart Studio Design','Features opening hood, opening doors, opening trunk, wide white wall tires, front door arm rests, working steering system',2902,'26','66'),('S24_3432','2002 Chevy Corvette','Classic Cars','1:24','Gearbox Collectibles','The operating parts of this limited edition Diecast 2002 Chevy Corvette 50th Anniversary Pace car Limited Edition are particularly delicate due to their precise scale and require special care and attention. Features rotating wheels, poseable streering, opening doors and trunk.',9446,'62','107'),('S24_3816','1940 Ford Delivery Sedan','Vintage Cars','1:24','Carousel DieCast Legends','Chrome Trim, Chrome Grille, Opening Hood, Opening Doors, Opening Trunk, Detailed Engine, Working Steering System. Color black.',6621,'49','84'),('S24_3856','1956 Porsche 356A Coupe','Classic Cars','1:18','Classic Metal Creations','Features include: Turnable front wheels; steering function; detailed interior; detailed engine; opening hood; opening trunk; opening doors; and detailed chassis.',6600,'98','140'),('S24_3949','Corsair F4U ( Bird Cage)','Planes','1:24','Second Gear Diecast','Has retractable wheels and comes with a stand. Official logos and insignias.',6812,'29','68'),('S24_3969','1936 Mercedes Benz 500k Roadster','Vintage Cars','1:24','Red Start Diecast','This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system and rubber wheels. Color black.',2081,'22','41'),('S24_4048','1992 Porsche Cayenne Turbo Silver','Classic Cars','1:24','Exoto Designs','This replica features opening doors, superb detail and craftsmanship, working steering system, opening forward compartment, opening rear trunk with removable spare, 4 wheel independent spring suspension as well as factory baked enamel finish.',6582,'70','118'),('S24_4258','1936 Chrysler Airflow','Vintage Cars','1:24','Second Gear Diecast','Features opening trunk,  working steering system. Color dark green.',4710,'57','97'),('S24_4278','1900s Vintage Tri-Plane','Planes','1:24','Unimax Art Galleries','Hand crafted diecast-like metal Triplane is Re-created in about 1:24 scale of antique pioneer airplane. This antique style metal triplane is all hand-assembled with many different parts.',2756,'36','72'),('S24_4620','1961 Chevrolet Impala','Classic Cars','1:18','Classic Metal Creations','This 1:18 scale precision die-cast reproduction of the 1961 Chevrolet Impala has all the features-doors, hood and trunk that open; detailed 409 cubic-inch engine; chrome dashboard and stick shift, two-tone interior; working steering system; all topped of with a factory baked-enamel finish.',7869,'32','81'),('S32_1268','1980u0092s GM Manhattan Express','Trucks and Buses','1:32','Motor City Art Classics','This 1980u0092s era new look Manhattan express is still active, running from the Bronx to mid-town Manhattan. Has 35 opeining windows and working lights. Needs a battery.',5099,'54','96'),('S32_1374','1997 BMW F650 ST','Motorcycles','1:32','Exoto Designs','Features official die-struck logos and baked enamel finish. Comes with stand.',178,'67','100'),('S32_2206','1982 Ducati 996 R','Motorcycles','1:32','Gearbox Collectibles','Features rotating wheels , working kick stand. Comes with stand.',9241,'24','40'),('S32_2509','1954 Greyhound Scenicruiser','Trucks and Buses','1:32','Classic Metal Creations','Model features bi-level seating, 50 windows, skylights & glare resistant glass, working steering system, original logos',2874,'26','54'),('S32_3207','1950\'s Chicago Surface Lines Streetcar','Trains','1:32','Gearbox Collectibles','This streetcar is a joy to see. It has 80 separate windows, electric wire guides, detailed interiors with seats, poles and drivers controls, rolling and turning wheel assemblies, plus authentic factory baked-enamel finishes (Green Hornet for Chicago and Cream and Crimson for Boston).',8601,'27','62'),('S32_3522','1996 Peterbilt 379 Stake Bed with Outrigger','Trucks and Buses','1:32','Red Start Diecast','This model features, opening doors, detailed engine, working steering, tinted windows, detailed interior, die-struck logos, removable stakes operating outriggers, detachable second trailer, functioning 360-degree self loader, precision molded resin trailer and trim, baked enamel finish on cab',814,'34','65'),('S32_4289','1928 Ford Phaeton Deluxe','Vintage Cars','1:32','Highway 66 Mini Classics','This model features grille-mounted chrome horn, lift-up louvered hood, fold-down rumble seat, working steering system',136,'33','69'),('S32_4485','1974 Ducati 350 Mk3 Desmo','Motorcycles','1:32','Second Gear Diecast','This model features two-tone paint with chrome accents, superior die-cast detail , rotating wheels , working kick stand',3341,'56','102'),('S50_1341','1930 Buick Marquette Phaeton','Vintage Cars','1:50','Studio M Art Models','Features opening trunk,  working steering system',7062,'27','44'),('S50_1392','Diamond T620 Semi-Skirted Tanker','Trucks and Buses','1:50','Highway 66 Mini Classics','This limited edition model is licensed and perfectly scaled for Lionel Trains. The Diamond T620 has been produced in solid precision diecast and painted with a fire baked enamel finish. It comes with a removable tanker and is a perfect model to add authenticity to your static train or car layout or to just have on display.',1016,'68','116'),('S50_1514','1962 City of Detroit Streetcar','Trains','1:50','Classic Metal Creations','This streetcar is a joy to see. It has 99 separate windows, electric wire guides, detailed interiors with seats, poles and drivers controls, rolling and turning wheel assemblies, plus authentic factory baked-enamel finishes (Green Hornet for Chicago and Cream and Crimson for Boston).',1645,'37','59'),('S50_4713','2002 Yamaha YZR M1','Motorcycles','1:50','Autoart Studio Design','Features rotating wheels , working kick stand. Comes with stand.',600,'34','81'),('S700_1138','The Schooner Bluenose','Ships','1:700','Autoart Studio Design','All wood with canvas sails. Measures 31 1/2 inches in Length, 22 inches High and 4 3/4 inches Wide. Many extras.u000du000aThe schooner Bluenose was built in Nova Scotia in 1921 to fish the rough waters off the coast of Newfoundland. Because of the Bluenose racing prowess she became the pride of all Canadians. Still featured on stamps and the Canadian dime, the Bluenose was lost off Haiti in 1946.',1897,'34','67'),('S700_1691','American Airlines: B767-300','Planes','1:700','Min Lin Diecast','Exact replia with official logos and insignias and retractable wheels',5841,'51','91'),('S700_1938','The Mayflower','Ships','1:700','Studio M Art Models','Measures 31 1/2 inches Long x 25 1/2 inches High x 10 5/8 inches Wideu000du000aAll wood with canvas sail. Extras include long boats, rigging, ladders, railing, anchors, side cannons, hand painted, etc.u000du000au000du000aThe Mayfower was already old in 1620, when the pilgrims charted her to bring their band of 103 to North America.',737,'43','87'),('S700_2047','HMS Bounty','Ships','1:700','Unimax Art Galleries','Measures 30 inches Long x 27 1/2 inches High x 4 3/4 inches Wide. u000du000aMany extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.',3501,'40','91'),('S700_2466','America West Airlines B757-200','Planes','1:700','Motor City Art Classics','Official logos and insignias. Working steering system. Rotating jet engines',9653,'69','100'),('S700_2610','The USS Constitution Ship','Ships','1:700','Red Start Diecast','All wood with canvas sails. Measures 31 1/2 Length x 22 3/8 High x 8 1/4 Width. Extras include 4 boats on deck, sea sprite on bow, anchors, copper railing, pilot houses, etc.u000du000au000du000aThis was one of six warships commissioned by George Washington and launched in 1797. The nickname Old Ironsides was given the ship when British cannonballs bounced off the 21-inch oak planking of the American frigate\'s hull. The Constitution has been restored and now resides in Boston Harbor.',7083,'34','72'),('S700_2824','1982 Camaro Z28','Classic Cars','1:18','Carousel DieCast Legends','Features include opening and closing doors. Color: White. u000du000aMeasures approximately 9 1/2 Long.',6934,'47','101'),('S700_2834','ATA: B757-300','Planes','1:700','Highway 66 Mini Classics','Exact replia with official logos and insignias and retractable wheels',7106,'59','119'),('S700_3167','F/A 18 Hornet 1/72','Planes','1:72','Motor City Art Classics','10 Wingspan with retractable landing gears.Comes with pilot',551,'54','80'),('S700_3505','The Titanic','Ships','1:700','Carousel DieCast Legends','Completed model measures 19 1/2 inches long, 9 inches high, 3inches wide and is in barn red/black. All wood and metal.',1956,'51','100'),('S700_3962','The Queen Mary','Ships','1:700','Welly Diecast Productions','Exact replica. Wood and Metal. Many extras including rigging, long boats, pilot house, anchors, etc. Comes with three masts, all square-rigged.',5088,'54','99'),('S700_4002','American Airlines: MD-11S','Planes','1:700','Second Gear Diecast','Polished finish. Exact replia with official logos and insignias and retractable wheels',8820,'36','74'),('S72_1253','Boeing X-32A JSF','Planes','1:72','Motor City Art Classics','10 Wingspan with retractable landing gears.Comes with pilot',4857,'33','50'),('S72_3212','Pont Yacht','Ships','1:72','Unimax Art Galleries','Measures 38 inches Long x 33 3/4 inches High. Includes a stand.u000du000aMany extras including rigging, long boats, pilot house, anchors, etc. Comes with 2 masts, all square-rigged',414,'33','55');
UNLOCK TABLES;
/*!40000 ALTER TABLE PRODUCTS ENABLE KEYS */;

--
-- Table structure for table EMPLOYEES
--

DROP TABLE IF EXISTS EMPLOYEES;
CREATE TABLE EMPLOYEES (
  EMPLOYEENUMBER int(11) NOT NULL default '0',
  LASTNAME varchar(50) collate latin1_general_cs NOT NULL default '',
  FIRSTNAME varchar(50) collate latin1_general_cs NOT NULL default '',
  EXTENSION varchar(10) collate latin1_general_cs NOT NULL default '',
  EMAIL varchar(100) collate latin1_general_cs NOT NULL default '',
  OFFICECODE varchar(20) collate latin1_general_cs NOT NULL default '',
  REPORTSTO int(11) default NULL,
  JOBTITLE varchar(50) collate latin1_general_cs NOT NULL default '',
  PRIMARY KEY  (EMPLOYEENUMBER)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table EMPLOYEES
--


/*!40000 ALTER TABLE EMPLOYEES DISABLE KEYS */;
LOCK TABLES EMPLOYEES WRITE;
INSERT INTO EMPLOYEES VALUES (1002,'Murphy','Diane','x5800','dmurphy@classicmodelcars.com','1',NULL,'President'),(1056,'Patterson','Mary','x4611','mpatterso@classicmodelcars.com','1',1002,'VP Sales'),(1076,'Firrelli','Jeff','x9273','jfirrelli@classicmodelcars.com','1',1002,'VP Marketing'),(1088,'Patterson','William','x4871','wpatterson@classicmodelcars.com','6',1056,'Sales Manager (JAPAN, APAC)'),(1102,'Bondur','Gerard','x5408','athompson@classicmodelcars.com','4',1056,'Sale Manager (EMEA)'),(1143,'Bow','Anthony','x5428','bhoward@classicmodelcars.com','1',1056,'Sales Manager (NA)'),(1165,'Jennings','Leslie','x3291','ljennings@classicmodelcars.com','1',1143,'Sales Rep'),(1166,'Thompson','Leslie','x4065','lthompson@classicmodelcars.com','1',1143,'Sales Rep'),(1188,'Firrelli','Julie','x2173','jfirrelli@classicmodelcars.com','2',1143,'Sales Rep'),(1216,'Patterson','Steve','x4334','spatterso@classicmodelcars.com','2',1143,'Sales Rep'),(1286,'Tseng','Foon Yue','x2248','ftseng@classicmodelcars.com','3',1143,'Sales Rep'),(1323,'Vanauf','George','x4102','gvanauf@classicmodelcars.com','3',1143,'Sales Rep'),(1337,'Bondur','Loui','x6493','lbondur@classicmodelcars.com','4',1102,'Sales Rep'),(1370,'Hernandez','Gerard','x2028','ghernande@classicmodelcars.com','4',1102,'Sales Rep'),(1401,'Castillo','Pamela','x2759','pcastillo@classicmodelcars.com','4',1102,'Sales Rep'),(1501,'Bott','Larry','x2311','lbott@classicmodelcars.com','7',1102,'Sales Rep'),(1504,'Jones','Barry','x102','bjones@classicmodelcars.com','7',1102,'Sales Rep'),(1611,'Fixter','Andy','x101','afixter@classicmodelcars.com','6',1088,'Sales Rep'),(1612,'Marsh','Peter','x102','pmarsh@classicmodelcars.com','6',1088,'Sales Rep'),(1619,'King','Tom','x103','tking@classicmodelcars.com','6',1088,'Sales Rep'),(1621,'Nishi','Mami','x101','mnishi@classicmodelcars.com','5',1088,'Sales Rep'),(1625,'Kato','Yoshimi','x102','ekato@classicmodelcars.com','5',1088,'Sales Rep'),(1702,'Gerard','Martin','x2312','gmartin@classicmodelcars.com','4',1102,'Sales Rep');
UNLOCK TABLES;
/*!40000 ALTER TABLE EMPLOYEES ENABLE KEYS */;

/*
SQLyog Community v12.18 (64 bit)
MySQL - 5.7.10-log : Database - source_db
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`source_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `outdoor_categories` */

DROP TABLE IF EXISTS `outdoor_categories`;

CREATE TABLE `outdoor_categories` (
  `id_category` int(11) NOT NULL,
  `category` tinytext,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `outdoor_categories` */

insert  into `outdoor_categories`(`id_category`,`category`) values 

(1,'kitchen'),

(2,'lights'),

(3,'sleeping bags'),

(4,'tents'),

(5,'tools');

/*Table structure for table `outdoor_products` */

DROP TABLE IF EXISTS `outdoor_products`;

CREATE TABLE `outdoor_products` (
  `id_product` int(11) DEFAULT NULL,
  `desc_product` tinytext,
  `price` double DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `outdoor_products` */

insert  into `outdoor_products`(`id_product`,`desc_product`,`price`,`id_category`) values 

(1,'Swedish Firesteel - Army Model',19.97,1),

(2,'Mountain House #10 Can Freeze-Dried Food',53.5,1),

(3,'Lodge Logic L9OG3 Pre-Seasoned 10-1/2-Inch Round Griddle',14.97,1),

(4,'Lodge Logic L5SK3 Pre-Seasoned Cast-Iron 8-Inch Skillet',12.99,1),

(5,'Coleman 70-Quart Xtreme Cooler (Blue)',59.99,1),

(6,'Kelsyus Floating Cooler',26.99,1),

(7,'Lodge LCC3 Logic Pre-Seasoned Combo Cooker',41.99,1),

(8,'Guyot Designs SplashGuard-Universal',7.96,1),

(9,'Coleman 62-Quart Xtreme Wheeled Cooler (Blue)',62.88,1),

(10,'Coleman RoadTrip Accessory Stove Grate',16.99,1),

(11,'Coleman PerfectFlow InstaStart 2-Burner Stove',69.99,1),

(12,'Coleman High-Pressure Propane Hose and Adapter',24.99,1),

(13,'Coleman Speckled Enamelware Dining Kit',38.54,1),

(14,'Light My Fire Titanium Spork',10.74,1),

(15,'California Innovations Eco Blend 45 Can Freezer Tote',17.49,1),

(16,'Insulated Thermal Cooler Bag Lunch Box (PVC FREE Material) Navy Blue 6 CAN OR 24 CAN',8,1),

(17,'Coleman Cooler Hinges',5.99,1),

(18,'Swedish Firesteel- Scout Model',19.95,1),

(19,'Columbia 50 Can High Performance Rolling Cooler',44.99,1),

(20,'Coleman 100-Quart Xtreme Wheeled Cooler (Blue)',79.7,1),

(21,'Coleman Road Trip Cast-Iron Griddle',26.99,1),

(22,'Sigg Classic Bottle - Traveller (1.0-Liters)',24.99,1),

(23,'Light My Fire Spork 4-Pack',13.99,1),

(24,'Kwik Tek Airhead Aqua Oasis',29.99,1),

(25,'Rayovac SE3DLN Sportsman Extreme 300-Lumen 3D-Battery LED Lantern',25,2),

(26,'Petzl E97 PP Tikka Plus 2 Headlamp, Pistachio',39.94,2),

(27,'Streamlight 66118 Stylus Pro Black LED Pen Flashlight with Holster',18.15,2),

(28,'Neiko Super-Bright 9 LED Heavy-Duty Compact Aluminum Flashlight - Cool Blue Color',4.5,2),

(29,'Neiko Super-Bright 9 LED Heavy-Duty Compact Aluminum Flashlight - Gunmetal Silver',4.5,2),

(30,'Dorcy 41-4750 180-Lumen 4AA High Flux LED Cyber Light Flashlight',21.48,2),

(31,'Mag-Lite ST3D016 3-D Cell LED Flashlight, Black',22.75,2),

(32,'Coleman 4D Rugged Personal Size Rugged Lantern',17.99,2),

(33,'Super-Bright 9 LED Heavy-Duty Compact Aluminum Flashlight - Jet Black',4.5,2),

(34,'Petzl E41 PBY Tikkina 2-LED Headlamp, Black and Yellow',19.95,2),

(35,'Streamlight 73001 Nano Light Miniature Keychain LED Flashlight, Black',8.49,2),

(36,'Petzl E49P TacTikka Plus 4-LED Headlamp, Black',43.95,2),

(37,'Duracell Daylite 80-Lumens, 3-Watt LED Flashlight with 2-AA Alkaline Batteries',28.24,2),

(38,'Fenix LD 20 6 Level High Performance Cree LED Flashlight, Black, 6- Inch, Maximum 180 Lumens',54.94,2),

(39,'Streamlight 66318 MicroStream LED Pen Flashlight',16.99,2),

(40,'Suisse Sport Adult Adventurer Mummy Ultra-Compactable Sleeping Bag',34,3),

(41,'Eureka Grasshopper Kids 30-Degree Sleeping Bag',32.12,3),

(42,'Eureka! Lady Bug Sleeping Bag',28.94,3),

(43,'Teton Sports Celsius XL 0-Degree Sleeping Bag',89.99,3),

(44,'Coleman Palmetto Cool-Weather Sleeping Bag',24.99,3),

(45,'Stansport Redwood Ultra Light Sleeping Bag (Green, 45-Degree)',22.99,3),

(46,'Coleman Red Canyon 17-Foot by 10-Foot 8-Person Modified Dome Tent',99.99,4),

(47,'Coleman Instant 14- by 10- Foot 8- Person Two Room Tent',183.17,4),

(48,'Coleman SunDome 7-Foot by 7-Foot 3-Person Dome Tent (Orange/Gray)',56.95,4),

(49,'Eureka Apex 2XT Adventure 7\' 5\" by 4\' 11\" Two-Person Tent',104.49,4),

(50,'Wenzel Alpine 8.5 X 8-Feet Dome Tent (Light Grey/Blue/Gold)',45.46,4),

(51,'Coleman Hooligan 2 Backpacking Tent',49.49,4),

(52,'Coleman WeatherMaster 8 Tent',206.99,4),

(53,'Coleman Sundome Tent (10-Feet x 10-Feet)',98.96,4),

(54,'Wenzel Pine Ridge 10-by-8 Foot Four-to-Five-Person 2-Room Dome Tent',47.39,4),

(55,'Wenzel Twin Peaks Sport Dome Tent, Red/Black',38.75,4),

(56,'Eureka Solo Backcountry 1 Tent',122.37,4),

(57,'Kelty Grand Mesa 2-Person Tent (Ruby/Tan)',107.96,4),

(58,'Victorinox Swiss Army Classic Pocket Knife',20.95,5),

(59,'Victorinox Swiss Army Tinker and Classic Knife Combo',17.45,5),

(60,'Victorinox Swiss Army Champion Plus Pocket Knife',34.99,5),

(61,'Leatherman 830039 New Wave Multitool with Leather/Nylon Combination Sheath',93,5),

(62,'Leatherman 931009 Bit Driver Extension',10,5),

(63,'Leatherman 831207 Style CS Clip-On Multi-Tool with Scissors',16.08,5),

(64,'Victorinox Swiss Army Climber II Pocket Knife',16.44,5),

(65,'Gerber 01471 Suspension Butterfly Opening Multi-Plier, with Sheath',25.62,5),

(66,'Leatherman 830040 New Wave Multi-Tool with Nylon Sheath',93,5),

(67,'Leatherman 831195 Squirt PS4 Black Keychain Tool with Plier',23.44,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

USE target_db;

DROP TABLE IF EXISTS category;
CREATE TABLE category (
  category_key BIGINT(20) NOT NULL DEFAULT -1,
  category VARCHAR(256) NOT NULL DEFAULT '-',
  PRIMARY KEY (category_key),
  UNIQUE KEY idx_category_pk (category_key)
) ENGINE=MYISAM;

DROP TABLE IF EXISTS product;
CREATE TABLE product (
  product_key BIGINT(20) NOT NULL DEFAULT -1,
  product_desc VARCHAR(256) DEFAULT NULL,
  unit_price DOUBLE DEFAULT NULL,
  category_key BIGINT(20) DEFAULT NULL,
  KEY idx_product_lookup (product_key)
) ENGINE=MYISAM;

DROP TABLE IF EXISTS product_v2;
CREATE TABLE product_v2 (
  product_key BIGINT(20) NOT NULL DEFAULT -1,
  prod_code INT(11) DEFAULT NULL,
  prod_desc VARCHAR(256) DEFAULT NULL,
  price DOUBLE DEFAULT NULL,
  category_key BIGINT(20) DEFAULT NULL,
  PRIMARY KEY (product_key),
  KEY idx_product_v2_lookup (prod_code)
) ENGINE=MYISAM;