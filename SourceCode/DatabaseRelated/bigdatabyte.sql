-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: BigDatabyte
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `agent` (
  `agent_id` int(11) NOT NULL,
  `agent_Fname` varchar(20) DEFAULT NULL,
  `agent_Lname` varchar(20) DEFAULT NULL,
  `agent_salary` decimal(10,2) DEFAULT NULL,
  `home_address` varchar(50) DEFAULT NULL,
  `primary_office` int(11) DEFAULT NULL,
  PRIMARY KEY (`agent_id`),
  KEY `primary_office` (`primary_office`),
  CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`primary_office`) REFERENCES `office` (`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES (1,'Luz','Compton',121633.42,'2 Thackeray Point',9),(2,'Hilly','De Bell',191452.93,'8 Tony Road',1),(3,'Tommie','Sawood',213302.54,'992 Blaine Point',8),(4,'Georgeta','Thirwell',211661.36,'834 Valley Edge Lane',4),(5,'Carilyn','Sprake',72260.33,'14746 Dexter Plaza',5),(6,'Jacquelin','Whyard',129123.68,'94555 Reinke Terrace',1),(7,'Nancey','Wonfor',76147.88,'62814 Manitowish Crossing',2),(8,'Quinn','Juhruke',64274.86,'081 Sachtjen Avenue',7),(9,'Crystie','Cochran',204784.96,'63 4th Parkway',4),(10,'Sinclair','Oaks',169419.30,'558 Atwood Pass',3),(11,'Guendolen','Close',228232.06,'17 Arizona Center',9),(12,'Tamiko','Codman',200793.32,'4506 Superior Drive',1),(13,'Morley','Oby',82021.34,'94033 5th Alley',10),(14,'Marketa','Morrill',191831.86,'8835 Jana Junction',8),(15,'Sadie','Dunseath',55159.83,'652 Cody Lane',6),(16,'Lynnett','Whinray',66497.14,'0 Dunning Terrace',2),(17,'Allin','Topping',69081.47,'0759 Farmco Avenue',9),(18,'Lily','Goakes',111961.34,'28 Carberry Road',1),(19,'Zebulen','Boarleyson',181148.55,'811 Almo Drive',3),(20,'Loreen','Antonat',127969.57,'1 Gale Park',6),(21,'Umberto','Pasquale',92757.51,'14 Golden Leaf Way',7),(22,'Abigale','Mastrantone',147510.24,'40 Green Crossing',9),(23,'Isadora','Cloutt',242825.47,'042 Golf View Trail',7),(24,'Kania','Dowman',104662.70,'0 Bobwhite Place',10),(25,'Henry','Grosvenor',60187.42,'7 Elka Trail',4),(26,'Levin','Corpes',53274.02,'47081 Lakewood Court',6),(27,'Clayborn','Quogan',71782.76,'986 Ridgeview Way',9),(28,'Danya','McCullock',96277.72,'4 Merrick Terrace',2),(29,'Guglielmo','Tomaino',149247.28,'89747 Forest Hill',3),(30,'Barde','Almon',233125.67,'9733 Rowland Parkway',7),(31,'Carlen','Tidey',172196.26,'64282 Hansons Trail',5),(32,'Moreen','Lace',55966.15,'448 Grayhawk Alley',4),(33,'Rosy','Dummett',225906.45,'5817 Clove Drive',5),(34,'Doe','Grestye',226248.65,'02847 Oxford Plaza',6),(35,'Sukey','Caley',76907.08,'53 Park Meadow Place',7),(36,'Melamie','Elcocks',97549.97,'63220 Bluejay Way',1),(37,'Aveline','Biggam',107766.67,'9202 Lotheville Point',5),(38,'Kathryn','Monnery',138926.15,'8 Heffernan Park',4),(39,'Mufinella','Perrot',106162.16,'5 Oakridge Lane',6),(40,'Turner','Barwell',113448.70,'74 Crest Line Alley',4),(41,'Roderich','Eggle',168608.48,'9257 Roth Lane',10),(42,'Stacy','Keming',132790.27,'690 3rd Center',1),(43,'Myrilla','Goulbourne',188667.28,'105 Manitowish Point',1),(44,'Dayle','Thowes',209381.00,'5 Cody Park',6),(45,'Guthrey','Mordon',68834.17,'7 Redwing Road',7),(46,'Arabela','Carp',98289.83,'4222 Straubel Lane',2),(47,'Laurene','Cawthry',64830.76,'6674 Norway Maple Avenue',9),(48,'Rosemarie','Etter',196289.83,'8057 Vahlen Place',1),(49,'Joice','Lurner',169125.57,'6504 Hanson Road',9),(50,'Sher','Tampin',157662.22,'1 Center Lane',3),(51,'Flore','Janowski',246608.47,'49058 Hanover Avenue',2),(52,'Celeste','Shimmings',114130.48,'64275 Esker Road',5),(53,'Shelley','Labusch',198044.30,'6 Crest Line Way',3),(54,'Lockwood','Lilley',177292.03,'84 Ruskin Alley',1),(55,'Oliy','Giacobo',61071.98,'493 Troy Drive',6),(56,'Antony','Battyll',78958.16,'9 Kinsman Place',9),(57,'Olympie','Alenin',53626.18,'30617 Kings Park',7),(58,'Sawyer','Pollak',237605.83,'79023 Summer Ridge Way',6),(59,'Karoly','Pinck',201272.31,'891 Ridge Oak Court',6),(60,'Bourke','Locke',52813.81,'66 Haas Way',10),(61,'Stanleigh','Tuberfield',159465.96,'2520 Washington Parkway',2),(62,'Dyana','Fonzone',176035.61,'32 Trailsway Street',7),(63,'Stefano','Saintpierre',199853.56,'7217 Elgar Crossing',5),(64,'Jodi','Lohmeyer',207152.49,'1915 Pleasure Park',10),(65,'Niki','Yakovlev',200421.86,'82 Delaware Point',6),(66,'Taryn','Stute',145807.55,'5747 Hoepker Park',4),(67,'Othelia','Benjafield',84573.41,'19711 Mitchell Point',8),(68,'Jeanie','Dallinder',67193.88,'1375 Carpenter Park',6),(69,'Angeline','Mustill',187877.82,'0128 Fairview Drive',1),(70,'Ardisj','Lovat',150272.45,'350 Kim Park',7),(71,'Wilbert','Fleetwood',195305.70,'0133 Starling Street',4),(72,'Marven','Cloney',219581.85,'0496 Lakeland Center',4),(73,'Royal','Victory',175529.93,'58038 Goodland Road',6),(74,'Travis','Ferreras',192218.72,'51 Eliot Point',9),(75,'Mozelle','Banton',249589.72,'41282 Spaight Alley',4),(76,'Lezlie','Stanmore',226852.10,'80409 Dwight Way',3),(77,'Scarlett','Fallawe',177191.70,'2 High Crossing Lane',1),(78,'Brewer','Tillot',110077.45,'2410 Killdeer Lane',7),(79,'Artur','Palfrey',239952.46,'466 Goodland Alley',6),(80,'Cobb','Olohan',239348.78,'054 Anzinger Plaza',2),(81,'Morry','Strewther',158272.90,'36944 Crowley Park',10),(82,'Rochester','Mulberry',61738.31,'00409 Debra Circle',9),(83,'Allene','Freezer',215947.65,'25 Veith Drive',2),(84,'Shanan','Benettelli',229385.38,'8864 Hudson Court',10),(85,'Sheffie','Crawshaw',71568.63,'88097 Pearson Street',7),(86,'Jamil','Maryska',173183.97,'86354 Hoffman Drive',8),(87,'Mathias','Fleischer',235689.78,'39537 Chive Trail',8),(88,'Becca','Bartolomeu',209482.54,'7598 Hudson Avenue',6),(89,'Margarethe','Naris',165321.56,'33 Ludington Pass',6),(90,'Gracie','Bonhome',190771.67,'00292 Lindbergh Center',1),(91,'Richardo','Bachnic',77805.47,'6717 Cordelia Court',7),(92,'Wang','Faltskog',147205.66,'116 Swallow Circle',6),(93,'Cherilynn','Hands',154441.07,'64526 Golf View Place',7),(94,'Nolie','Dibbin',82750.94,'51 Eagle Crest Terrace',8),(95,'Winston','Crowcombe',156716.00,'0 Walton Junction',5),(96,'Rodd','Perell',183786.50,'948 Lyons Avenue',9),(97,'Perri','Skaife',130882.00,'32 West Way',10),(98,'Melesa','Todeo',123204.97,'940 Linden Drive',6),(99,'Wilmar','Tohill',181818.50,'307 Gulseth Hill',3),(100,'Kathryne','Carrier',134245.80,'73 Bunker Hill Point',2);
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `agentlist`
--

DROP TABLE IF EXISTS `agentlist`;
/*!50001 DROP VIEW IF EXISTS `agentlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `agentlist` AS SELECT 
 1 AS `agent_id`,
 1 AS `office`,
 1 AS `agent_Fname`,
 1 AS `agent_Lname`,
 1 AS `agent_salary`,
 1 AS `home_address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `availableproperty`
--

DROP TABLE IF EXISTS `availableproperty`;
/*!50001 DROP VIEW IF EXISTS `availableproperty`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `availableproperty` AS SELECT 
 1 AS `property_id`,
 1 AS `office`,
 1 AS `asking_price`,
 1 AS `no_bedrooms`,
 1 AS `sq_footage`,
 1 AS `has_balcony`,
 1 AS `pets_allowed`,
 1 AS `parking_spaces`,
 1 AS `garage_spaces`,
 1 AS `no_baths`,
 1 AS `property_name`,
 1 AS `property_description`,
 1 AS `owner_Fname`,
 1 AS `owner_Lname`,
 1 AS `property_address`,
 1 AS `city_name`,
 1 AS `last_posting_date`,
 1 AS `on_the_market`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) DEFAULT NULL,
  `country_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `city_ibfk_1` (`country_id`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'GREECE','US'),(2,'HENRIETTA','US'),(3,'IRONDEQUOIT','US'),(4,'OGDEN','US'),(5,'PENFIELD','US'),(6,'PERINTON','US'),(7,'PITTSFORD','US'),(8,'ROCHESTER','US'),(9,'RUSH','US'),(10,'WEBSTER','US'),(11,'SWEDEN','US'),(12,'BRIGHTON','US'),(13,'CHILI','US'),(14,'CLARKSON','US');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clientlist`
--

DROP TABLE IF EXISTS `clientlist`;
/*!50001 DROP VIEW IF EXISTS `clientlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `clientlist` AS SELECT 
 1 AS `client_id`,
 1 AS `office`,
 1 AS `client_primary_address`,
 1 AS `client_type`,
 1 AS `client_Fname`,
 1 AS `client_Lname`,
 1 AS `client_phone_number`,
 1 AS `client_email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `client_primary_address` varchar(50) DEFAULT NULL,
  `client_Fname` varchar(20) DEFAULT NULL,
  `client_Lname` varchar(20) DEFAULT NULL,
  `client_phone_number` varchar(12) DEFAULT NULL,
  `client_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'9 Evergreen Circle','Allister','Ebbs','603-950-3778','aebbs0@sciencedaily.com'),(2,'35237 Shopko Lane','Sileas','Wash','893-967-1950','swash1@issuu.com'),(3,'540 Gateway Parkway','Dinnie','Hardes','595-817-7853','dhardes2@weibo.com'),(4,'786 Loftsgordon Circle','Dee','Crebott','378-229-3987','dcrebott3@google.ru'),(5,'4 Sycamore Park','Mortie','Bullion','776-878-5427','mbullion4@dailymail.co.uk'),(6,'82 Rusk Point','Katerine','Spofforth','303-861-2375','kspofforth5@prnewswire.com'),(7,'8 Ramsey Crossing','Kiel','Rieger','671-227-4822','krieger6@uiuc.edu'),(8,'89257 Russell Plaza','Adriano','Winckworth','989-710-1532','awinckworth7@macromedia.com'),(9,'628 Commercial Street','Klaus','Tommei','957-176-6095','ktommei8@narod.ru'),(10,'73954 Mendota Circle','Alf','Rieflin','265-809-9623','arieflin9@behance.net'),(11,'0598 Michigan Pass','Derek','McKenny','766-154-8778','dmckennya@merriam-webster.com'),(12,'8428 Cordelia Park','Bobina','Gaye','119-905-9073','bgayeb@aol.com'),(13,'8125 Lakewood Gardens Road','Kerry','Heggie','617-444-9243','kheggiec@creativecommons.org'),(14,'99802 Mallard Street','Gav','MacMichael','353-346-5537','gmacmichaeld@nifty.com'),(15,'59925 Village Road','Allan','Nelmes','769-568-7640','anelmese@smh.com.au'),(16,'616 Brentwood Drive','Elicia','Iston','763-373-5802','eistonf@angelfire.com'),(17,'975 Village Green Hill','Karlee','Tregidgo','945-456-9945','ktregidgog@newyorker.com'),(18,'3 Basil Road','Franny','Buckett','266-961-3454','fbucketth@smugmug.com'),(19,'42140 Charing Cross Junction','Grethel','Marshfield','287-562-6778','gmarshfieldi@nationalgeographic.com'),(20,'8996 Stoughton Park','Rik','Posse','758-181-7946','rpossej@examiner.com'),(21,'1016 Portage Pass','Biron','Vanns','409-222-7584','bvannsk@biblegateway.com'),(22,'96373 Atwood Center','Coleen','Gerhartz','309-342-7904','cgerhartzl@g.co'),(23,'55 Northport Circle','Deni','Bresman','326-833-8444','dbresmanm@pen.io'),(24,'47 Caliangt Plaza','Eleonore','Dayce','327-299-5423','edaycen@mit.edu'),(25,'4 Del Mar Avenue','Klaus','Vern','630-856-1579','kverno@tripadvisor.com'),(26,'490 Rowland Terrace','Nobie','Jeanin','878-805-5799','njeaninp@globo.com'),(27,'57 Melody Point','Fawne','Reiner','812-645-2490','freinerq@columbia.edu'),(28,'7 Lakeland Terrace','Lotta','Yanez','245-333-2125','lyanezr@chicagotribune.com'),(29,'547 Rutledge Pass','Jess','Popworth','349-883-7183','jpopworths@vistaprint.com'),(30,'9 Vidon Circle','Boniface','Dilkes','698-653-4194','bdilkest@sohu.com'),(31,'4590 Golden Leaf Hill','Algernon','Trigwell','412-618-8399','atrigwellu@blogs.com'),(32,'640 Northport Parkway','Xavier','Kilgour','604-771-3177','xkilgourv@rediff.com'),(33,'5 Boyd Terrace','Michale','Gawler','145-457-2470','mgawlerw@ovh.net'),(34,'0318 Menomonie Alley','Celisse','Cutten','998-353-2462','ccuttenx@goo.ne.jp'),(35,'744 Fair Oaks Court','Tammie','Averay','872-704-6291','taverayy@tmall.com'),(36,'7 Maple Wood Trail','Abelard','Symcox','860-582-6412','asymcoxz@dyndns.org'),(37,'85539 Barby Park','Brose','Jarmaine','279-296-5195','bjarmaine10@reddit.com'),(38,'5 Arizona Avenue','Kincaid','Matelaitis','279-630-6197','kmatelaitis11@tamu.edu'),(39,'01 Annamark Alley','Noellyn','Jedrachowicz','889-172-1099','njedrachowicz12@sciencedaily.com'),(40,'1 Doe Crossing Alley','Giusto','Maghull','320-911-8238','gmaghull13@irs.gov'),(41,'6 Lillian Center','Flore','Dosdell','725-125-4188','fdosdell14@ed.gov'),(42,'6 Tomscot Avenue','Earlie','Siddell','624-552-8763','esiddell15@wp.com'),(43,'590 Basil Hill','Taddeusz','Buglass','495-825-1783','tbuglass16@diigo.com'),(44,'668 Grover Road','Nichole','Skydall','516-527-7310','nskydall17@mashable.com'),(45,'4 Bunting Crossing','Giffer','MacUchadair','631-680-7913','gmacuchadair18@usnews.com'),(46,'19 Quincy Crossing','Brade','Takos','967-463-9000','btakos19@who.int'),(47,'9007 Fair Oaks Circle','Dania','Lawtie','636-560-5034','dlawtie1a@lycos.com'),(48,'6 Kropf Street','Miller','Elham','710-732-0663','melham1b@amazon.com'),(49,'4607 Spenser Alley','Dolf','Moncreiffe','315-750-8294','dmoncreiffe1c@blogs.com'),(50,'71221 Schurz Road','Sollie','Wedlock','855-868-8332','swedlock1d@phpbb.com'),(51,'1 Florence Alley','Geraldine','Astley','527-257-0600','gastley1e@fastcompany.com'),(52,'9 Wayridge Center','Tamara','Edie','101-334-1976','tedie1f@msn.com'),(53,'494 Artisan Street','Klement','Mechem','972-465-2199','kmechem1g@i2i.jp'),(54,'30648 Mccormick Alley','Fred','Dullingham','164-861-4161','fdullingham1h@bluehost.com'),(55,'24 Farwell Point','Hyacinthia','Billiard','933-526-0289','hbilliard1i@nymag.com'),(56,'554 Sherman Alley','Ilsa','Alstead','638-549-4037','ialstead1j@cam.ac.uk'),(57,'93818 Schmedeman Hill','Gretel','Accombe','505-307-2546','gaccombe1k@unblog.fr'),(58,'9 Meadow Ridge Trail','Sloan','MacCaughey','241-781-3156','smaccaughey1l@tamu.edu'),(59,'68 Dakota Road','Vanna','Borrow','443-132-5948','vborrow1m@discuz.net'),(60,'4 1st Place','Harrietta','Leyborne','102-619-3161','hleyborne1n@cnet.com'),(61,'430 Pepper Wood Junction','Ginger','Foulis','373-742-0629','gfoulis1o@ow.ly'),(62,'5 Kropf Trail','Flory','Greensides','747-397-2463','fgreensides1p@chron.com'),(63,'5846 Golf Course Place','Montague','Bladge','389-583-4450','mbladge1q@constantcontact.com'),(64,'36633 Ramsey Plaza','Falito','Crebbin','391-694-4527','fcrebbin1r@biglobe.ne.jp'),(65,'9 Porter Parkway','Christal','Woolen','261-727-9087','cwoolen1s@ihg.com'),(66,'2 Pennsylvania Alley','Joellyn','Bauser','854-139-3854','jbauser1t@google.fr'),(67,'46276 Continental Drive','Pieter','McCurdy','404-732-1684','pmccurdy1u@goodreads.com'),(68,'0706 North Crossing','Simone','Godlonton','120-557-6945','sgodlonton1v@hud.gov'),(69,'40 Spaight Hill','Merridie','Gudgin','322-653-3871','mgudgin1w@amazon.co.uk'),(70,'3 Susan Alley','Stacy','Domniney','638-453-7640','sdomniney1x@pcworld.com'),(71,'63827 Independence Way','Guthry','Hamstead','155-939-4798','ghamstead1y@ca.gov'),(72,'0441 Hudson Center','Ilsa','Treen','983-414-3602','itreen1z@cisco.com'),(73,'1384 Macpherson Point','Rosie','Geldeford','466-468-9017','rgeldeford20@live.com'),(74,'7381 Homewood Hill','Debby','McEneny','790-255-4742','dmceneny21@tuttocitta.it'),(75,'394 Macpherson Hill','Penny','Hasser','282-537-7334','phasser22@naver.com'),(76,'79 Fuller Street','Brita','Guyton','247-457-2392','bguyton23@privacy.gov.au'),(77,'85 Stuart Way','Bink','McAteer','303-190-3523','bmcateer24@tinyurl.com'),(78,'96 Prairieview Parkway','Heloise','Pilipyak','194-491-5804','hpilipyak25@biglobe.ne.jp'),(79,'55 Muir Crossing','Benedikta','Jordeson','179-168-6414','bjordeson26@com.com'),(80,'31533 Merchant Plaza','Olimpia','Beaman','900-551-8630','obeaman27@disqus.com'),(81,'034 Mayer Park','Powell','Titchmarsh','708-658-1589','ptitchmarsh28@fastcompany.com'),(82,'4163 Butternut Park','Sioux','Barff','811-963-5849','sbarff29@pinterest.com'),(83,'22744 Pennsylvania Road','Katleen','Wharby','243-940-9655','kwharby2a@google.com.hk'),(84,'9 American Court','Flss','Southers','834-944-5817','fsouthers2b@ihg.com'),(85,'4937 Rowland Lane','Isaac','Blanpein','793-383-3562','iblanpein2c@guardian.co.uk'),(86,'27 Trailsway Street','Ruperto','Roswarne','683-215-4164','rroswarne2d@mac.com'),(87,'3727 Namekagon Avenue','Dorie','Lombard','802-544-0937','dlombard2e@tripod.com'),(88,'8 Mayfield Street','Jo-ann','Eacott','306-241-8109','jeacott2f@quantcast.com'),(89,'89 Sommers Court','Retha','Harmeston','712-961-3800','rharmeston2g@devhub.com'),(90,'78923 Forest Parkway','Emelyne','Leon','343-787-7073','eleon2h@ameblo.jp'),(91,'116 Grim Crossing','Florie','Prisk','168-925-4717','fprisk2i@fema.gov'),(92,'67 Huxley Way','Kaleb','Seacombe','682-960-5424','kseacombe2j@about.me'),(93,'521 West Crossing','Cassy','Schechter','101-938-7470','cschechter2k@chronoengine.com'),(94,'1 Ridgeway Street','Dolley','Bownd','279-235-7428','dbownd2l@hao123.com'),(95,'5 Victoria Lane','Adriana','Kift','973-448-2397','akift2m@cloudflare.com'),(96,'723 Melby Point','Wye','Lukins','908-658-3733','wlukins2n@wikia.com'),(97,'647 Northport Point','Aurelea','Brahms','540-968-9710','abrahms2o@ftc.gov'),(98,'577 Everett Place','Timofei','Burtonwood','297-245-6618','tburtonwood2p@rambler.ru'),(99,'1 Mockingbird Way','Faun','Rimour','384-150-3070','frimour2q@huffingtonpost.com'),(100,'57 Golden Leaf Center','Stan','Nicholson','158-487-1266','snicholson2r@storify.com'),(101,'46517 Dovetail Park','Jareb','Mark','334-762-9627','jmark2s@cmu.edu'),(102,'3 Laurel Park','Marlene','Romke','442-458-3299','mromke2t@youku.com'),(103,'773 Lawn Alley','Filmore','Gatteridge','356-236-2055','fgatteridge2u@soundcloud.com'),(104,'11 Pond Circle','Julie','Eim','497-400-8251','jeim2v@hugedomains.com'),(105,'93 Oneill Crossing','Marlane','Karpenya','388-481-4268','mkarpenya2w@deviantart.com'),(106,'0040 Sachs Court','Malcolm','Ilyas','325-856-4249','milyas2x@fastcompany.com'),(107,'69 Schmedeman Road','Analiese','Ellens','664-660-7700','aellens2y@w3.org'),(108,'12302 Melody Alley','Anet','Turbitt','516-750-8321','aturbitt2z@jugem.jp'),(109,'506 Butternut Road','Lea','Cars','907-275-1617','lcars30@bing.com'),(110,'5480 Columbus Parkway','Gavan','Officer','853-285-5898','gofficer31@infoseek.co.jp'),(111,'107 Kinsman Court','Mignon','Sorsbie','960-114-7277','msorsbie32@digg.com'),(112,'84476 Blaine Point','Burg','Durtnel','674-984-1130','bdurtnel33@indiegogo.com'),(113,'5 Manley Circle','Adelbert','Lammerts','400-569-4198','alammerts34@nyu.edu'),(114,'5 Lien Lane','Raye','Heinicke','764-314-8469','rheinicke35@studiopress.com'),(115,'7 Sloan Trail','Mechelle','Arcase','527-838-7711','marcase36@paginegialle.it'),(116,'82 Amoth Hill','Ketti','Gidden','296-148-7000','kgidden37@boston.com'),(117,'825 Claremont Junction','Wyndham','Segrave','198-431-9265','wsegrave38@oaic.gov.au'),(118,'01085 Southridge Park','Alasteir','Butrimovich','688-943-8997','abutrimovich39@cmu.edu'),(119,'37852 Utah Parkway','Parsifal','Jindra','933-787-7659','pjindra3a@canalblog.com'),(120,'54 Merchant Drive','Edik','Gaffney','149-254-0893','egaffney3b@tripod.com'),(121,'22 Eastwood Drive','Andy','Prayer','414-415-0283','aprayer3c@mit.edu'),(122,'422 Hintze Alley','Estell','Mayler','884-714-8086','emayler3d@dell.com'),(123,'40 Prentice Terrace','Benjamin','Garrity','742-650-8865','bgarrity3e@typepad.com'),(124,'9 Sunnyside Way','Steffane','Bickersteth','309-172-1236','sbickersteth3f@irs.gov'),(125,'0 6th Road','Clara','Corbridge','212-695-6425','ccorbridge3g@prlog.org'),(126,'8926 Barby Drive','Elenore','Shackelton','380-554-0852','eshackelton3h@ted.com'),(127,'202 Mccormick Place','Ced','Claiden','319-270-0352','cclaiden3i@dailymail.co.uk'),(128,'08 Fair Oaks Hill','Gina','Howerd','886-451-5201','ghowerd3j@forbes.com'),(129,'3175 Moose Alley','Gerhardine','Blasik','670-647-1335','gblasik3k@oaic.gov.au'),(130,'647 Melody Court','Holly','Clampe','554-483-6600','hclampe3l@shutterfly.com'),(131,'7969 Pierstorff Pass','Meghann','Armal','860-529-6321','marmal3m@nbcnews.com'),(132,'134 Hollow Ridge Drive','Ofella','Masterton','143-565-3592','omasterton3n@desdev.cn'),(133,'5917 Glacier Hill Road','Gaynor','Gianelli','717-603-0634','ggianelli3o@wordpress.org'),(134,'58839 Heffernan Park','Ashely','Giovani','631-719-0937','agiovani3p@sourceforge.net'),(135,'1 Doe Crossing Way','Archibald','Sharma','450-521-5725','asharma3q@altervista.org'),(136,'8832 Quincy Way','Luke','Robertis','383-864-1328','lrobertis3r@dell.com'),(137,'26490 Service Street','Carney','MacGilpatrick','754-741-5428','cmacgilpatrick3s@mac.com'),(138,'138 Homewood Pass','Lin','Mathers','790-507-7942','lmathers3t@dedecms.com'),(139,'8 Lunder Terrace','Kissee','Cesconi','276-185-6221','kcesconi3u@zimbio.com'),(140,'54567 Commercial Court','Errol','Brownjohn','869-490-6999','ebrownjohn3v@cbc.ca'),(141,'27 Buell Parkway','Sybille','Hayton','286-321-5474','shayton3w@1und1.de'),(142,'6268 Comanche Hill','Doris','Shall','889-717-2734','dshall3x@istockphoto.com'),(143,'689 Carioca Street','Erina','Barfoot','995-736-5096','ebarfoot3y@newyorker.com'),(144,'3306 Eastlawn Pass','Danyette','Agius','563-460-1020','dagius3z@reverbnation.com'),(145,'3 Hintze Hill','Analise','Schwandermann','909-876-2536','aschwandermann40@tinyurl.com'),(146,'9571 Schiller Pass','Dela','Overlow','920-239-4634','doverlow41@slideshare.net'),(147,'7472 Buhler Place','Spence','Ivanenko','921-850-9501','sivanenko42@craigslist.org'),(148,'0634 Grim Plaza','Greggory','De Benedetti','311-535-8806','gdebenedetti43@domainmarket.com'),(149,'52 Prentice Trail','Olva','Mendoza','650-495-1049','omendoza44@topsy.com'),(150,'59 Hintze Terrace','Stefa','Trevithick','479-945-3066','strevithick45@vkontakte.ru'),(151,'55 Ridgeview Circle','Tailor','Sedgebeer','254-973-8570','tsedgebeer46@google.pl'),(152,'318 Drewry Junction','Nancy','Balcon','767-540-2184','nbalcon47@zimbio.com'),(153,'01432 Rusk Road','Kennith','Maliffe','691-871-7298','kmaliffe48@hhs.gov'),(154,'53098 Merry Plaza','Kris','Clampett','158-454-9343','kclampett49@blinklist.com'),(155,'17 Lyons Point','Piggy','Michel','211-827-1293','pmichel4a@google.cn'),(156,'1 Forest Run Way','Ebonee','Crix','252-956-5370','ecrix4b@dmoz.org'),(157,'771 Hollow Ridge Court','Ronnie','Gingel','523-558-3987','rgingel4c@istockphoto.com'),(158,'8 Elmside Junction','Clarie','Ford','439-601-9830','cford4d@rakuten.co.jp'),(159,'7 Tony Pass','Nell','Jansa','882-583-4071','njansa4e@de.vu'),(160,'6 7th Road','Barn','Hanhart','173-155-8192','bhanhart4f@macromedia.com'),(161,'174 Washington Court','Pier','Lum','331-920-1178','plum4g@nps.gov'),(162,'6222 Old Gate Trail','Austin','Jeffers','368-399-4022','ajeffers4h@yelp.com'),(163,'11 Pankratz Terrace','Garrott','McCome','688-919-3961','gmccome4i@prweb.com'),(164,'8 Pennsylvania Hill','Dorthy','Folker','501-502-7830','dfolker4j@intel.com'),(165,'8 Ridgeway Pass','Brittney','Commusso','684-444-3049','bcommusso4k@shutterfly.com'),(166,'343 Pearson Court','Thom','O\'Gormley','452-315-0891','togormley4l@mit.edu'),(167,'0 Beilfuss Hill','Phillie','Mallinder','273-613-9010','pmallinder4m@vk.com'),(168,'69665 Mcbride Alley','Rooney','Norcliff','893-742-7227','rnorcliff4n@ehow.com'),(169,'7 Mallory Park','Hermann','Sparrowe','804-893-5709','hsparrowe4o@reference.com'),(170,'65 Katie Park','Yorke','Karel','444-893-1960','ykarel4p@dell.com'),(171,'5 Thompson Park','Wallie','Pietz','990-400-5635','wpietz4q@twitter.com'),(172,'6509 Spohn Court','Carter','Castledine','309-602-5766','ccastledine4r@ihg.com'),(173,'177 Kropf Street','Kirby','Gentiry','182-643-0290','kgentiry4s@icq.com'),(174,'90 Burning Wood Terrace','Melisent','McCullough','443-484-7700','mmccullough4t@oakley.com'),(175,'334 Kinsman Point','Blayne','Kelleher','581-574-2744','bkelleher4u@123-reg.co.uk'),(176,'82063 Sunnyside Pass','Guthry','Alejandri','158-505-1798','galejandri4v@tripadvisor.com'),(177,'34588 Porter Pass','Eleanore','Macklam','226-345-3160','emacklam4w@homestead.com'),(178,'53 Dawn Crossing','Fan','Schaben','685-917-1752','fschaben4x@lycos.com'),(179,'4230 Claremont Place','Kristan','D\'Ambrosi','289-872-3036','kdambrosi4y@fda.gov'),(180,'04 North Junction','Wilie','Iddison','549-854-7965','widdison4z@purevolume.com'),(181,'0 Thackeray Circle','Baxy','Ambrosch','681-219-0636','bambrosch50@comsenz.com'),(182,'4 Manley Park','Marna','Gisbye','972-990-7665','mgisbye51@1und1.de'),(183,'7989 Pawling Place','Sibeal','Roof','182-391-8247','sroof52@ed.gov'),(184,'22478 Maryland Junction','Kaila','Hacking','114-676-6892','khacking53@seesaa.net'),(185,'55 Kedzie Plaza','Pier','Donnachie','288-967-9219','pdonnachie54@cbc.ca'),(186,'92852 Petterle Way','Mattie','Alf','990-216-4392','malf55@buzzfeed.com'),(187,'86964 Moulton Circle','Kaja','Bandy','860-139-1253','kbandy56@biglobe.ne.jp'),(188,'634 Dottie Center','Jillana','Tropman','844-955-9584','jtropman57@geocities.com'),(189,'1508 Raven Alley','Abby','Giercke','422-996-3234','agiercke58@sfgate.com'),(190,'86 Iowa Alley','Tilda','Harral','992-413-9173','tharral59@smh.com.au'),(191,'0351 Algoma Center','Melli','Cauldwell','885-491-7477','mcauldwell5a@fastcompany.com'),(192,'673 Towne Point','Charline','Wenham','845-379-4891','cwenham5b@hp.com'),(193,'84 Carioca Terrace','Clevie','Pargent','724-343-3379','cpargent5c@g.co'),(194,'9262 Shelley Place','Wendie','von Grollmann','276-749-5327','wvongrollmann5d@huffingtonpost.com'),(195,'44844 American Ash Pass','Elfreda','Fradgley','832-938-3635','efradgley5e@pagesperso-orange.fr'),(196,'5 Burrows Alley','Job','Stirling','963-279-4606','jstirling5f@telegraph.co.uk'),(197,'73 Trailsway Place','Marjory','Overland','848-148-9797','moverland5g@histats.com'),(198,'91 Boyd Terrace','Lana','Keough','273-127-5301','lkeough5h@nationalgeographic.com'),(199,'44479 Meadow Vale Park','Lalo','Morshead','726-870-6177','lmorshead5i@apache.org'),(200,'03276 Evergreen Point','Aeriell','Dalrymple','318-330-9729','adalrymple5j@vimeo.com');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commissions`
--

DROP TABLE IF EXISTS `commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `commissions` (
  `sale_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `commission_percent` decimal(2,2) DEFAULT NULL,
  `client_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`sale_id`,`agent_id`),
  KEY `agent_id` (`agent_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `commissions_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`),
  CONSTRAINT `commissions_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`agent_id`),
  CONSTRAINT `commissions_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commissions`
--

LOCK TABLES `commissions` WRITE;
/*!40000 ALTER TABLE `commissions` DISABLE KEYS */;
INSERT INTO `commissions` VALUES (1,63,86,0.08,1),(2,42,44,0.02,1),(3,69,42,0.02,1),(4,92,89,0.03,0),(5,25,67,0.04,1),(6,87,50,0.08,1),(7,95,76,0.09,1),(8,23,25,0.03,1),(9,22,21,0.03,0),(10,23,32,0.08,0),(11,100,27,0.02,1),(12,50,47,0.08,1),(13,47,69,0.05,1),(14,23,90,0.09,0),(15,54,16,0.06,0),(16,54,87,0.01,1),(17,76,64,0.01,0),(18,85,41,0.08,1),(19,70,18,0.04,1),(20,57,78,0.02,1),(21,88,30,0.03,1),(22,39,3,0.07,1),(23,61,30,0.02,0),(24,75,77,0.03,1),(25,83,42,0.09,0),(26,20,50,0.04,1),(27,81,93,0.08,1),(28,93,20,0.07,0),(29,8,88,0.04,0),(30,65,68,0.02,1),(31,97,27,0.09,1),(32,76,25,0.02,0),(33,95,14,0.08,0),(34,44,23,0.08,1),(35,50,70,0.08,1),(36,32,24,0.01,1),(37,72,27,0.08,1),(38,1,18,0.08,1),(39,96,63,0.01,0),(40,4,97,0.06,1),(41,94,28,0.03,1),(42,35,42,0.05,1),(43,11,31,0.06,1),(44,22,83,0.05,1),(45,66,39,0.03,0),(46,25,57,0.07,0),(47,55,18,0.01,1),(48,98,27,0.07,1),(49,81,36,0.02,0),(50,80,60,0.02,0),(51,46,15,0.03,0),(52,32,81,0.05,1),(53,15,47,0.09,1),(54,50,24,0.09,0),(55,1,50,0.01,1),(56,39,34,0.02,1),(57,11,98,0.06,1),(58,8,83,0.07,0),(59,76,94,0.05,1),(60,58,51,0.02,0),(61,80,71,0.09,1),(62,25,57,0.04,0),(63,40,96,0.10,0),(64,22,27,0.04,0),(65,64,64,0.09,0),(66,13,80,0.10,1),(67,96,15,0.08,0),(68,16,32,0.07,1),(69,42,7,0.03,0),(70,85,65,0.06,1),(71,95,71,0.03,1),(72,13,38,0.08,1),(73,70,74,0.09,1),(74,52,97,0.04,1),(75,80,78,0.02,1),(76,43,68,0.07,0),(77,39,81,0.09,1),(78,47,44,0.06,0),(79,47,57,0.04,1),(80,32,10,0.08,0),(81,31,21,0.04,1),(82,36,15,0.05,1),(83,92,16,0.04,0),(84,25,65,0.08,0),(85,23,100,0.08,1),(86,15,71,0.05,0),(87,50,13,0.07,1),(88,12,16,0.09,1),(89,36,12,0.06,0),(90,50,9,0.02,1),(91,8,58,0.09,0),(92,60,100,0.01,1),(93,76,86,0.05,0),(94,60,73,0.10,0),(95,1,57,0.07,0),(96,99,49,0.05,0),(97,58,16,0.04,0),(98,15,1,0.09,0),(99,92,31,0.05,1),(100,97,23,0.08,0);
/*!40000 ALTER TABLE `commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `country` (
  `country_id` varchar(10) NOT NULL,
  `country_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('CA','Canada'),('US','United States of America');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `for_sale`
--

DROP TABLE IF EXISTS `for_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `for_sale` (
  `property_id` int(11) NOT NULL,
  `date_put_on_market` date NOT NULL,
  `asking_price` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`property_id`,`date_put_on_market`),
  CONSTRAINT `for_sale_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `for_sale`
--

LOCK TABLES `for_sale` WRITE;
/*!40000 ALTER TABLE `for_sale` DISABLE KEYS */;
INSERT INTO `for_sale` VALUES (5,'2018-04-21',7130635.00),(7,'2018-05-19',2174114.38),(12,'2018-05-13',616123.35),(14,'2018-03-16',8169471.00),(14,'2018-03-20',935055.16),(14,'2018-05-19',1759613.93),(21,'2018-04-01',6842119.00),(27,'2018-03-06',875264.21),(27,'2018-06-03',1649742.70),(32,'2018-03-31',7649990.00),(34,'2018-04-22',8723286.00),(37,'2018-04-07',6747267.00),(49,'2018-02-09',7745742.05),(51,'2018-03-28',3074355.42),(52,'2018-02-26',6581740.00),(55,'2018-05-23',1719653.52),(55,'2018-05-24',8316292.11),(56,'2018-03-15',6532686.72),(56,'2018-05-28',1196142.00),(58,'2018-05-17',1003283.72),(58,'2018-05-30',7372375.00),(60,'2018-06-04',1099931.41),(61,'2018-05-17',2169367.00),(66,'2018-02-19',5381736.03),(75,'2018-04-18',6760227.00),(77,'2018-03-19',2894458.59),(84,'2018-02-22',8034023.06),(92,'2018-04-23',8496654.00),(95,'2018-05-30',152355.73),(99,'2018-02-10',3948475.70);
/*!40000 ALTER TABLE `for_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `office` (
  `office_id` int(11) NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`office_id`),
  KEY `manager_id` (`manager_id`),
  CONSTRAINT `office_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `agent` (`agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office`
--

LOCK TABLES `office` WRITE;
/*!40000 ALTER TABLE `office` DISABLE KEYS */;
INSERT INTO `office` VALUES (1,'Jaskolski, Lakin and Nienow','863 Green Street',40),(2,'Bradtke-Corwin','48690 Stone Corner Park',20),(3,'Cole LLC','07723 Fairview Center',47),(4,'Glover LLC','811 Pleasure Court',49),(5,'Mante-Barrows','382 Waxwing Point',17),(6,'Davis-Stroman','02 Jenifer Place',1),(7,'Cremin Group','0 School Avenue',84),(8,'Davis-Cummings','25645 Coleman Center',35),(9,'Jacobs LLC','806 Fairfield Center',50),(10,'O\'Conner, Nikolaus and Osinski','10 Oak Valley Drive',77),(11,'Friesen-Romaguera','5 Springs Circle',34),(12,'Walsh-Cassin','39 Erie Plaza',31),(13,'Beier, Zemlak and Ziemann','8535 Arizona Road',52),(14,'Ryan and Sons','72657 Scott Avenue',1),(15,'Bruen and Sons','55 Upham Crossing',49),(16,'D\'Amore, Jakubowski and Becker','5820 Morrow Park',17),(17,'Lemke Inc','26895 Stang Plaza',78),(18,'Grady Inc','82637 Chive Crossing',53),(19,'Herman, Witting and O\'Reilly','60 Morningstar Junction',73),(20,'Boyle and Sons','81329 Russell Pass',60),(21,'Kautzer, Ankunding and White','2 Oak Valley Trail',63),(22,'Hermann, Kutch and Ebert','179 Union Terrace',78),(23,'Kovacek-Fadel','2969 Coolidge Plaza',8),(24,'Oberbrunner, Blick and Russel','5 Moland Crossing',93),(25,'Heaney, Wisozk and Rogahn','30 Vermont Court',56),(26,'Schultz LLC','5083 Bartillon Road',20),(27,'Denesik-Zemlak','6192 Nelson Pass',17),(28,'Toy-Mante','538 Fairfield Street',28),(29,'Schowalter, Erdman and Effertz','53807 Gulseth Alley',65),(30,'Nikolaus-Nolan','4 Eagle Crest Lane',96),(31,'Kiehn-Kreiger','324 Huxley Road',54),(32,'Luettgen, Steuber and Brakus','5591 Sycamore Alley',58),(33,'Hermann, Bailey and Fritsch','839 Annamark Point',48),(34,'Weimann, Cole and Collier','84447 Kedzie Drive',76),(35,'Bartell, Robel and Johnson','4 Alpine Circle',44),(36,'Morar-Prosacco','6 Sauthoff Circle',27),(37,'Nolan-Runolfsdottir','708 Hagan Crossing',76),(38,'Harvey, Kertzmann and Hackett','07438 Scott Street',73),(39,'O\'Kon-Zboncak','38 Leroy Way',25),(40,'Gislason, Hegmann and Upton','35 Washington Circle',54),(41,'MacGyver-Hilll','7964 Morrow Alley',61),(42,'Kilback-Ledner','42069 Transport Alley',98),(43,'Berge LLC','41 Algoma Plaza',14),(44,'Dicki, Beer and McKenzie','62461 Debra Plaza',31),(45,'Turcotte-Walsh','333 Delladonna Point',32),(46,'Jacobson LLC','498 Lukken Center',67),(47,'Mitchell, Schultz and Schmidt','5 Hermina Trail',27),(48,'Metz-Howe','7990 Heffernan Lane',56),(49,'Walker-Lesch','73 Jenna Avenue',75),(50,'Kris and Sons','2083 Bunting Parkway',6),(51,'Breitenberg and Sons','18148 Elmside Circle',95),(52,'Stroman Group','08104 Mallard Street',58),(53,'Conroy, Nicolas and Fay','617 Goodland Road',45),(54,'Leannon-McClure','5748 Badeau Point',59),(55,'Emmerich Inc','4 Merrick Avenue',33),(56,'Rolfson, Ankunding and Stehr','06515 Caliangt Street',42),(57,'Macejkovic-Muller','6 Arkansas Park',66),(58,'Nolan and Sons','9 Mendota Junction',49),(59,'Kuhn, Wintheiser and Glover','38 Becker Park',53),(60,'Feil, Mueller and Fadel','88823 Pearson Pass',11),(61,'Schaefer, Hoeger and Denesik','7300 School Alley',36),(62,'Barrows-Gorczany','53 Amoth Avenue',28),(63,'Schaefer-Robel','9 Monica Circle',72),(64,'Price-Hills','6953 Spenser Center',66),(65,'Schultz-Renner','246 Stuart Way',62),(66,'Willms LLC','79 Forest Run Circle',5),(67,'Schulist Inc','1531 Roxbury Point',80),(68,'Sipes, Keebler and Kirlin','4739 Johnson Way',15),(69,'Stracke, Rosenbaum and Gutmann','2 Annamark Parkway',80),(70,'Lueilwitz-VonRueden','70790 Declaration Junction',27),(71,'Schowalter-Fahey','4734 Artisan Pass',80),(72,'Labadie, Spencer and Aufderhar','8 Delaware Plaza',10),(73,'Hayes-Lind','5010 Fairview Point',32),(74,'Ward Inc','1833 Mcguire Point',51),(75,'Stracke-Littel','1 Clemons Avenue',62),(76,'Hayes LLC','057 Scott Hill',39),(77,'Ziemann-Predovic','32111 Arizona Street',20),(78,'MacGyver-Jaskolski','0 Portage Place',78),(79,'Orn LLC','1871 Novick Crossing',12),(80,'Mosciski, O\'Hara and Beier','41 Paget Point',16),(81,'Von, Ullrich and Hintz','1340 Di Loreto Park',61),(82,'Bailey-Wolff','15962 Bashford Road',8),(83,'Romaguera-Beatty','099 Monica Way',63),(84,'Cummerata, Hodkiewicz and Pollich','400 Doe Crossing Pass',40),(85,'Mueller Inc','82724 Pond Place',1),(86,'Hudson, Spencer and Jenkins','6289 Forest Run Place',38),(87,'Wiegand LLC','83 Anderson Place',62),(88,'Howell Group','80369 Arapahoe Alley',36),(89,'Kulas-Wisoky','4 Pankratz Park',49),(90,'Morar-Quigley','1061 Florence Trail',47),(91,'Rodriguez Group','134 New Castle Parkway',57),(92,'Stokes-Marks','05 Gulseth Hill',50),(93,'Doyle LLC','1527 Kinsman Junction',5),(94,'Waters, Greenfelder and Jakubowski','9 Packers Place',71),(95,'Rodriguez-Schmeler','74 Dayton Way',1),(96,'Kuhlman-Kutch','405 Gale Way',67),(97,'Toy, Koss and Gusikowski','17478 Moulton Circle',37),(98,'Baumbach-Baumbach','4 Moulton Terrace',65),(99,'Breitenberg, Deckow and Legros','855 Oak Valley Road',26),(100,'Dooley-Jast','9738 Moose Place',52);
/*!40000 ALTER TABLE `office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `property` (
  `property_id` int(11) NOT NULL,
  `no_bedrooms` tinyint(1) DEFAULT NULL,
  `sq_footage` int(11) DEFAULT NULL,
  `has_balcony` tinyint(1) DEFAULT NULL,
  `pets_allowed` tinyint(1) DEFAULT NULL,
  `parking_spaces` int(11) DEFAULT NULL,
  `garage_spaces` tinyint(1) DEFAULT NULL,
  `no_baths` int(11) DEFAULT NULL,
  `property_name` varchar(20) DEFAULT NULL,
  `property_description` varchar(200) DEFAULT NULL,
  `property_owner_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `property_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`property_id`),
  KEY `city_id` (`city_id`),
  KEY `property_owner_id` (`property_owner_id`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `property_ibfk_2` FOREIGN KEY (`property_owner_id`) REFERENCES `clients` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,3,2703,0,1,5,0,2,'Stronghold','congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo',63,14,'61015 Little Fleur Avenue'),(2,6,5788,1,0,4,1,4,'Vagram','et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum',54,7,'71631 Starling Way'),(3,2,723,1,1,1,1,1,'Zathin','ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla',16,14,'92 Butternut Terrace'),(4,1,2070,0,0,2,0,4,'Bitwolf','tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien',1,3,'00575 Stang Point'),(5,5,2137,0,0,1,0,1,'Sonair','ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla',28,9,'9 Basil Street'),(6,1,7213,0,0,5,0,2,'It','ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi',34,5,'88437 Daystar Trail'),(7,5,3966,1,1,2,1,2,'Alpha','amet cursus id turpis integer aliquet massa id lobortis convallis',46,6,'8 Graceland Park'),(8,1,5654,1,1,5,1,2,'It','in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed',12,1,'415 Grasskamp Lane'),(9,4,910,1,0,3,1,6,'Y-Solowarm','augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus',94,12,'23415 Mockingbird Hill'),(10,1,6995,0,0,5,1,6,'Wrapsafe','lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla',26,3,'7069 Pepper Wood Hill'),(11,2,776,1,0,5,0,2,'Cardguard','quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat',28,1,'9 Elka Junction'),(12,5,1065,0,0,6,0,4,'Otcom','posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend',12,14,'4337 Daystar Drive'),(13,4,7827,1,1,1,1,1,'Alpha','molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse',79,6,'9 Westridge Hill'),(14,5,4577,1,1,6,0,4,'Daltfresh','accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi',99,13,'92 Elgar Lane'),(15,2,5322,0,0,4,0,1,'Flexidy','et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque',36,12,'27877 Graedel Way'),(16,1,4305,1,0,3,0,3,'Prodder','risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci',91,1,'37 Del Mar Center'),(17,4,6145,1,0,4,0,3,'Treeflex','in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti',13,2,'8 Comanche Trail'),(18,1,4091,1,0,2,0,2,'Tempsoft','nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean',7,14,'6429 Huxley Terrace'),(19,1,2072,1,1,1,0,3,'Zamit','adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum',46,9,'2 Pawling Circle'),(20,3,5731,1,0,6,0,5,'Sonsing','nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer',23,1,'26 Grayhawk Junction'),(21,6,1122,0,1,1,0,1,'Hatity','semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh',74,2,'6942 Granby Avenue'),(22,1,6021,0,0,4,0,6,'Ventosanzap','sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris',38,1,'1 Magdeline Road'),(23,3,3093,1,0,4,0,1,'Ronstring','varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus',64,9,'574 2nd Point'),(24,6,4268,0,1,6,1,4,'Vagram','nulla integer pede justo lacinia eget tincidunt eget tempus vel',7,5,'8459 Johnson Place'),(25,1,1951,1,0,2,0,5,'Pannier','mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy',21,10,'57 Bobwhite Parkway'),(26,6,4917,0,1,2,0,2,'Kanlam','arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst',81,5,'00612 Twin Pines Lane'),(27,6,7231,0,1,5,0,3,'Namfix','et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent',65,4,'3 Daystar Pass'),(28,6,6306,1,0,3,0,4,'Zathin','lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi',15,9,'1801 Norway Maple Place'),(29,4,1868,0,1,2,0,6,'Andalax','vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac',44,7,'1 Scofield Hill'),(30,6,3163,0,0,6,1,6,'Veribet','ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum',48,6,'56 Green Place'),(31,2,4592,0,1,1,0,1,'Sonsing','praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante',8,10,'26 Lillian Hill'),(32,5,5963,0,1,2,1,1,'Bigtax','venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et',97,5,'449 Thompson Parkway'),(33,1,5409,1,1,6,0,6,'Bamity','et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat',61,4,'44 Muir Parkway'),(34,1,1383,1,0,5,1,1,'It','ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus',12,7,'771 Basil Parkway'),(35,3,7853,1,1,4,0,5,'It','natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien',50,2,'4665 Mayer Trail'),(36,5,7119,1,0,4,0,6,'Konklab','lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat',96,14,'29285 Havey Place'),(37,1,2925,1,1,4,0,5,'Tampflex','dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo',91,14,'5945 Eliot Crossing'),(38,6,7675,0,1,5,0,2,'Holdlamis','interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet',18,4,'06 Buell Junction'),(39,1,7223,1,1,6,0,1,'Bitchip','proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing',27,8,'5754 Mccormick Circle'),(40,2,6637,0,0,2,1,4,'Overhold','eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper',79,3,'90 Becker Alley'),(41,2,2841,0,0,6,1,6,'Cookley','justo etiam pretium iaculis justo in hac habitasse platea dictumst',85,9,'3380 Caliangt Avenue'),(42,2,443,0,1,4,0,3,'Toughjoyfax','id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in',59,9,'40064 Mayer Hill'),(43,5,3498,0,1,4,1,3,'Cookley','pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non',16,3,'665 Vermont Parkway'),(44,2,4587,1,1,1,1,5,'Home Ing','nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum',51,9,'01 Truax Crossing'),(45,5,2756,1,1,3,0,4,'Namfix','phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla',19,14,'264 Gale Junction'),(46,2,3488,0,0,2,0,1,'Treeflex','dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur',97,7,'2 Roxbury Place'),(47,3,6842,1,0,6,1,3,'Bitchip','diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget',13,11,'46 Jenifer Park'),(48,6,3122,1,1,2,1,1,'Ronstring','maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas',76,6,'8250 Del Sol Alley'),(49,4,4271,0,0,3,1,4,'Fixflex','eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero',60,5,'7208 Jay Center'),(50,6,4268,1,0,6,1,2,'Konklab','parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque',24,14,'31490 Hintze Hill'),(51,3,4065,1,0,2,1,2,'Alpha','viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam',66,5,'9353 Golden Leaf Avenue'),(52,4,7243,0,0,1,0,5,'Bigtax','ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero',84,9,'81323 Mayfield Lane'),(53,5,1696,1,0,3,0,2,'Greenlam','erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit',47,3,'22 Dexter Place'),(54,6,3095,1,1,2,1,2,'Sonsing','in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing',30,13,'72 Annamark Crossing'),(55,4,3741,1,1,1,0,1,'Home Ing','eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui',52,13,'9 3rd Trail'),(56,5,2045,0,1,2,1,4,'Y-find','in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat',24,1,'9 Cambridge Trail'),(57,6,4062,1,1,5,0,5,'Bitchip','sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia',8,8,'7920 Barnett Road'),(58,3,5280,1,0,6,1,4,'Namfix','iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut',85,13,'494 Kipling Circle'),(59,6,4449,1,1,3,0,6,'Y-Solowarm','nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla',76,11,'471 Cardinal Court'),(60,1,874,1,1,5,1,6,'Otcom','aliquet maecenas leo odio condimentum id luctus nec molestie sed',51,3,'53 Cardinal Plaza'),(61,5,7237,1,0,2,1,4,'Lotlux','convallis eget eleifend luctus ultricies eu nibh quisque id justo sit',85,9,'724 Kipling Court'),(62,4,7346,1,1,5,0,4,'Bigtax','iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id',21,3,'458 Welch Hill'),(63,1,3444,1,0,4,0,4,'Konklux','et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus',2,12,'44 Kennedy Place'),(64,3,855,0,1,2,1,4,'Stringtough','gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras',60,2,'87648 Surrey Trail'),(65,2,5547,0,1,1,0,5,'It','ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula',59,6,'121 Maple Crossing'),(66,1,4869,0,0,4,0,4,'Tin','in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis',56,5,'980 Dayton Parkway'),(67,5,2147,0,0,2,0,4,'Treeflex','vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id',26,1,'3 Dryden Road'),(68,5,2495,1,0,6,1,2,'Gembucket','posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel',96,4,'8 Thompson Avenue'),(69,6,5843,1,1,6,0,2,'Alpha','praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam',33,4,'619 Hallows Avenue'),(70,4,7234,0,1,4,1,4,'Stronghold','luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis',51,3,'43000 Dayton Court'),(71,6,2112,1,1,2,0,6,'Wrapsafe','dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et',24,6,'97757 Iowa Circle'),(72,1,4013,1,0,3,0,3,'Redhold','eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti',10,13,'74860 Bowman Trail'),(73,4,1556,0,0,2,0,5,'Cardguard','et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient',98,5,'880 Blue Bill Park Point'),(74,5,3614,0,0,2,0,1,'Sonair','vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id',33,13,'65280 Kenwood Drive'),(75,5,3300,0,1,1,0,6,'Flowdesk','vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit',63,10,'5760 Mariners Cove Place'),(76,4,6156,0,1,1,1,1,'Alphazap','sit amet eleifend pede libero quis orci nullam molestie nibh in',63,14,'72191 Sloan Street'),(77,5,4123,1,1,5,0,2,'Holdlamis','nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse',76,12,'31133 Thierer Hill'),(78,6,6558,1,0,2,0,5,'Tampflex','dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida',67,14,'50 Artisan Avenue'),(79,5,3078,0,0,2,1,6,'It','habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla',97,14,'5755 Kropf Avenue'),(80,5,2309,1,0,6,0,4,'Wrapsafe','convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo',25,11,'60077 Mallory Drive'),(81,1,5335,1,1,5,1,6,'It','ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit',19,7,'306 Killdeer Circle'),(82,3,3688,1,0,2,0,1,'Stringtough','sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus',70,13,'0464 Alpine Circle'),(83,6,4169,1,1,3,1,6,'Bytecard','venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est',13,3,'0 Pawling Avenue'),(84,1,6328,1,1,2,1,3,'Otcom','ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus',5,12,'61149 Russell Avenue'),(85,2,4504,1,1,6,1,2,'Alphazap','dui vel sem sed sagittis nam congue risus semper porta volutpat quam',100,11,'7532 Toban Alley'),(86,1,4639,0,1,2,1,4,'Konklux','penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean',50,11,'47737 Walton Junction'),(87,6,6279,1,0,1,1,3,'Vagram','ut mauris eget massa tempor convallis nulla neque libero convallis eget',63,8,'5602 Graedel Crossing'),(88,5,4511,0,1,6,1,6,'Zontrax','ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur',91,1,'08 Northview Center'),(89,2,547,1,0,3,0,4,'Y-find','vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus',53,11,'0267 Eagle Crest Plaza'),(90,3,5167,1,1,5,0,4,'Y-Solowarm','purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in',42,12,'03735 Hintze Place'),(91,4,2785,0,0,2,1,1,'Tin','amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et',76,7,'89 Talisman Junction'),(92,3,4993,0,0,5,1,1,'Andalax','duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse',86,3,'2092 Fair Oaks Crossing'),(93,4,6147,0,1,4,1,5,'Redhold','eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam',56,11,'575 Raven Court'),(94,3,6095,0,1,3,1,5,'Lotstring','eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse',54,4,'7877 Monument Street'),(95,6,7101,0,1,6,1,4,'Cookley','felis eu sapien cursus vestibulum proin eu mi nulla ac enim',20,7,'31306 Carioca Terrace'),(96,3,4506,1,1,5,1,1,'Tres-Zap','mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum',13,2,'095 Tomscot Point'),(97,4,5315,0,1,5,1,6,'Sub-Ex','sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere',13,14,'9347 Sunbrook Pass'),(98,5,5050,0,0,2,0,6,'Flowdesk','proin interdum mauris non ligula pellentesque ultrices phasellus id sapien',96,11,'3274 Bobwhite Place'),(99,1,2566,0,0,4,1,5,'Hatity','nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non',31,4,'13587 Waywood Junction'),(100,2,1671,0,1,3,1,3,'Fix San','nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a',77,13,'7 La Follette Road');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `salehistory`
--

DROP TABLE IF EXISTS `salehistory`;
/*!50001 DROP VIEW IF EXISTS `salehistory`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `salehistory` AS SELECT 
 1 AS `sale_id`,
 1 AS `office`,
 1 AS `date_signed`,
 1 AS `property_name`,
 1 AS `client_Fname`,
 1 AS `client_Lname`,
 1 AS `client_type`,
 1 AS `agent_Fname`,
 1 AS `agent_Lname`,
 1 AS `sale_price`,
 1 AS `commission_percent`,
 1 AS `commission_amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `date_signed` date DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `sale_location` int(11) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `property_id` (`property_id`),
  KEY `sales_ibfk_5` (`sale_location`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`),
  CONSTRAINT `sales_ibfk_5` FOREIGN KEY (`sale_location`) REFERENCES `office` (`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'2017-12-19',13,7,705752.55),(2,'2017-09-01',49,5,102574.42),(3,'2018-01-26',80,3,866306.00),(4,'2017-11-11',22,8,862965.42),(5,'2017-10-09',26,3,789629.00),(6,'2017-07-18',45,2,417072.77),(7,'2017-11-10',1,10,406985.84),(8,'2017-12-23',65,7,527934.00),(9,'2017-12-09',33,7,708817.89),(10,'2018-05-26',14,8,786599.32),(11,'2017-07-21',31,1,881576.61),(12,'2018-06-11',94,10,546780.84),(13,'2018-02-19',70,10,541627.04),(14,'2018-01-28',17,8,456387.87),(15,'2018-01-28',29,10,952997.63),(16,'2017-09-22',17,1,568385.19),(17,'2017-08-06',5,6,571882.35),(18,'2018-05-28',91,8,604493.21),(19,'2018-03-05',57,7,393002.32),(20,'2018-03-27',39,4,96787.54),(21,'2018-03-28',24,1,217728.94),(22,'2017-10-27',9,3,927639.95),(23,'2017-12-08',87,6,441183.33),(24,'2017-12-27',43,5,461416.07),(25,'2017-12-01',15,5,876163.38),(26,'2018-01-26',61,5,910387.41),(27,'2017-09-04',58,6,689260.21),(28,'2017-08-29',33,3,568970.96),(29,'2018-05-11',90,6,126806.80),(30,'2017-09-17',17,8,385427.41),(31,'2018-05-02',12,7,449016.97),(32,'2018-02-05',75,6,447660.41),(33,'2017-06-28',25,8,776574.81),(34,'2017-12-11',65,8,522771.32),(35,'2017-12-15',67,1,212481.60),(36,'2018-02-27',57,9,223671.64),(37,'2018-05-02',12,7,117559.94),(38,'2017-09-02',72,5,167312.54),(39,'2017-08-19',43,4,617334.03),(40,'2018-05-12',58,4,131320.42),(41,'2017-07-23',39,1,600014.12),(42,'2017-10-07',51,10,592501.31),(43,'2018-04-11',70,3,292202.31),(44,'2018-02-17',12,1,117846.59),(45,'2018-03-20',15,2,746095.26),(46,'2017-07-18',81,8,471755.26),(47,'2018-04-27',13,5,140455.73),(48,'2017-06-26',99,6,970456.94),(49,'2018-04-25',18,9,497292.59),(50,'2017-07-11',30,8,716983.20),(51,'2017-07-11',67,1,397170.49),(52,'2018-05-05',67,5,510230.44),(53,'2017-12-21',99,2,250227.66),(54,'2017-10-03',75,3,318709.28),(55,'2017-07-19',66,10,584544.34),(56,'2018-02-11',4,1,804460.45),(57,'2018-04-15',88,9,887560.09),(58,'2017-06-20',5,7,382480.37),(59,'2018-04-15',52,1,721046.57),(60,'2017-10-18',14,2,844830.06),(61,'2017-12-08',91,10,968754.52),(62,'2018-06-07',90,5,117100.16),(63,'2018-04-11',65,5,657662.02),(64,'2017-07-24',49,2,131459.17),(65,'2017-09-22',11,8,265839.63),(66,'2017-12-07',60,5,550580.88),(67,'2018-03-01',13,1,310200.53),(68,'2018-01-23',65,2,885060.40),(69,'2018-02-28',65,5,142306.04),(70,'2017-12-07',11,2,640555.39),(71,'2017-09-14',40,6,334321.13),(72,'2018-06-09',61,7,864431.22),(73,'2018-03-15',54,8,232244.29),(74,'2017-08-25',17,6,412089.32),(75,'2017-12-29',63,6,432259.53),(76,'2018-06-01',72,2,203378.09),(77,'2017-06-22',33,7,472708.22),(78,'2017-09-26',59,5,833653.27),(79,'2017-11-29',60,8,614948.46),(80,'2017-08-23',3,2,960198.60),(81,'2018-04-08',61,10,813174.51),(82,'2018-01-09',25,9,932214.18),(83,'2017-07-25',69,1,233124.44),(84,'2018-05-08',98,5,875183.70),(85,'2017-09-16',71,1,767834.90),(86,'2017-09-16',49,7,957917.07),(87,'2018-06-07',19,1,766719.86),(88,'2018-05-21',100,4,554538.92),(89,'2018-05-22',86,9,216017.14),(90,'2017-09-03',2,1,993488.20),(91,'2017-11-19',50,6,174711.92),(92,'2018-06-13',12,7,189393.00),(93,'2018-06-10',37,7,530411.18),(94,'2017-09-15',37,10,814720.84),(95,'2017-08-07',86,9,875026.15),(96,'2017-09-04',35,8,618752.62),(97,'2017-10-21',58,5,264405.65),(98,'2018-02-27',36,7,935361.83),(99,'2017-10-11',25,3,143294.43),(100,'2017-09-17',13,4,181100.82);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `soldproperty`
--

DROP TABLE IF EXISTS `soldproperty`;
/*!50001 DROP VIEW IF EXISTS `soldproperty`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `soldproperty` AS SELECT 
 1 AS `property_id`,
 1 AS `office`,
 1 AS `sale_price`,
 1 AS `no_bedrooms`,
 1 AS `sq_footage`,
 1 AS `has_balcony`,
 1 AS `pets_allowed`,
 1 AS `parking_spaces`,
 1 AS `garage_spaces`,
 1 AS `no_baths`,
 1 AS `property_name`,
 1 AS `property_description`,
 1 AS `owner_Fname`,
 1 AS `owner Lname`,
 1 AS `agent_Fname`,
 1 AS `agent_Lname`,
 1 AS `property_address`,
 1 AS `city_name`,
 1 AS `date_signed`,
 1 AS `on_the_market`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `agentlist`
--

/*!50001 DROP VIEW IF EXISTS `agentlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `agentlist` AS select `agent`.`agent_id` AS `agent_id`,`office`.`location` AS `office`,`agent`.`agent_Fname` AS `agent_Fname`,`agent`.`agent_Lname` AS `agent_Lname`,`agent`.`agent_salary` AS `agent_salary`,`agent`.`home_address` AS `home_address` from (`agent` join `office` on((`agent`.`primary_office` = `office`.`office_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `availableproperty`
--

/*!50001 DROP VIEW IF EXISTS `availableproperty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `availableproperty` AS select `for_sale`.`property_id` AS `property_id`,`office`.`location` AS `office`,`for_sale`.`asking_price` AS `asking_price`,`property`.`no_bedrooms` AS `no_bedrooms`,`property`.`sq_footage` AS `sq_footage`,`property`.`has_balcony` AS `has_balcony`,`property`.`pets_allowed` AS `pets_allowed`,`property`.`parking_spaces` AS `parking_spaces`,`property`.`garage_spaces` AS `garage_spaces`,`property`.`no_baths` AS `no_baths`,`property`.`property_name` AS `property_name`,`property`.`property_description` AS `property_description`,`clients`.`client_Fname` AS `owner_Fname`,`clients`.`client_Lname` AS `owner_Lname`,`property`.`property_address` AS `property_address`,`city`.`city_name` AS `city_name`,max(`for_sale`.`date_put_on_market`) AS `last_posting_date`,(max(`for_sale`.`date_put_on_market`) > max(`sales`.`date_signed`)) AS `on_the_market` from (((((`for_sale` join `sales` on((`for_sale`.`property_id` = `sales`.`property_id`))) join `property` on((`for_sale`.`property_id` = `property`.`property_id`))) join `office` on((`sales`.`sale_location` = `office`.`office_id`))) join `clients` on((`property`.`property_owner_id` = `clients`.`client_id`))) join `city` on((`property`.`city_id` = `city`.`city_id`))) group by `for_sale`.`property_id` having (`on_the_market` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientlist`
--

/*!50001 DROP VIEW IF EXISTS `clientlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientlist` AS select `clients`.`client_id` AS `client_id`,`office`.`location` AS `office`,`clients`.`client_primary_address` AS `client_primary_address`,`commissions`.`client_type` AS `client_type`,`clients`.`client_Fname` AS `client_Fname`,`clients`.`client_Lname` AS `client_Lname`,`clients`.`client_phone_number` AS `client_phone_number`,`clients`.`client_email` AS `client_email` from (((`clients` join `commissions` on((`clients`.`client_id` = `commissions`.`client_id`))) join `sales` on((`commissions`.`sale_id` = `sales`.`sale_id`))) join `office` on((`sales`.`sale_location` = `office`.`office_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salehistory`
--

/*!50001 DROP VIEW IF EXISTS `salehistory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salehistory` AS select `sales`.`sale_id` AS `sale_id`,`office`.`location` AS `office`,`sales`.`date_signed` AS `date_signed`,`property`.`property_name` AS `property_name`,`clients`.`client_Fname` AS `client_Fname`,`clients`.`client_Lname` AS `client_Lname`,`commissions`.`client_type` AS `client_type`,`agent`.`agent_Fname` AS `agent_Fname`,`agent`.`agent_Lname` AS `agent_Lname`,`sales`.`sale_price` AS `sale_price`,`commissions`.`commission_percent` AS `commission_percent`,(`commissions`.`commission_percent` * `sales`.`sale_price`) AS `commission_amount` from (((((`sales` join `commissions` on((`sales`.`sale_id` = `commissions`.`sale_id`))) join `clients` on((`commissions`.`client_id` = `clients`.`client_id`))) join `agent` on((`commissions`.`agent_id` = `agent`.`agent_id`))) join `property` on((`sales`.`property_id` = `property`.`property_id`))) join `office` on((`sales`.`sale_location` = `office`.`office_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `soldproperty`
--

/*!50001 DROP VIEW IF EXISTS `soldproperty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `soldproperty` AS select `for_sale`.`property_id` AS `property_id`,`office`.`location` AS `office`,`sales`.`sale_price` AS `sale_price`,`property`.`no_bedrooms` AS `no_bedrooms`,`property`.`sq_footage` AS `sq_footage`,`property`.`has_balcony` AS `has_balcony`,`property`.`pets_allowed` AS `pets_allowed`,`property`.`parking_spaces` AS `parking_spaces`,`property`.`garage_spaces` AS `garage_spaces`,`property`.`no_baths` AS `no_baths`,`property`.`property_name` AS `property_name`,`property`.`property_description` AS `property_description`,`clients`.`client_Fname` AS `owner_Fname`,`clients`.`client_Lname` AS `owner Lname`,`agent`.`agent_Fname` AS `agent_Fname`,`agent`.`agent_Lname` AS `agent_Lname`,`property`.`property_address` AS `property_address`,`city`.`city_name` AS `city_name`,`sales`.`date_signed` AS `date_signed`,(max(`for_sale`.`date_put_on_market`) < max(`sales`.`date_signed`)) AS `on_the_market` from (((((((`for_sale` join `sales` on((`for_sale`.`property_id` = `sales`.`property_id`))) join `commissions` on((`sales`.`sale_id` = `commissions`.`sale_id`))) join `agent` on((`commissions`.`agent_id` = `agent`.`agent_id`))) join `property` on((`for_sale`.`property_id` = `property`.`property_id`))) join `office` on((`sales`.`sale_location` = `office`.`office_id`))) join `clients` on((`property`.`property_owner_id` = `clients`.`client_id`))) join `city` on((`property`.`city_id` = `city`.`city_id`))) group by `for_sale`.`property_id` having (`on_the_market` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-27 21:51:47
