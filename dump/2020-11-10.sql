-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: gamecenter
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Gamer Paradise'),(2,'Retro Entertainment'),(3,'Game Changers'),(4,'1337 Gamers'),(5,'FunGame');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `game_center`
--

LOCK TABLES `game_center` WRITE;
/*!40000 ALTER TABLE `game_center` DISABLE KEYS */;
INSERT INTO `game_center` VALUES (1,'44986 Corbin Forks Suite 670\nNorth Norwoodfort, UT 19516','1@gamerparadise.com','+05(7)444483565',1),(2,'89150 Jillian Mount\nSouth Brigitte, OH 65930','1@retroentertainment.com','920-222-6001',2),(3,'33397 Barton Views\nLake Drake, FL 31326','1@gamechangers.com','1-470-979-9247',3),(4,'076 Landen Spring\nDwightmouth, NJ 81917','1@1337games.com','787-182-6533x08',4),(5,'54801 Effertz Landing\nWuckertburgh, VT 46404-3608','1@fungame.com','+31(0)655201005',5),(6,'930 Boyer Glens Apt. 655\nSouth Kenton, FL 03911','2@gamerparadise.com','842-200-5696x51',1),(7,'83150 Obie Ford Apt. 565\nNew Estell, CT 10454-4653','2@retroentertainment.com','1-599-078-2827x',2),(8,'912 Libby Pines\nNorth Kody, WY 25769','2@gamechangers.com','1-808-065-3573',3),(9,'8723 Stanley Crescent\nHansenhaven, HI 08595','2@1337games.com','1-865-720-4743',4),(10,'875 Chloe Cape Suite 332\nAngelitaview, WV 80094','2@fungame.com','898.116.9465x62',5),(11,'38591 Nyah Avenue\nScottiebury, MD 45790-3485','3@gamerparadise.com','1-163-369-2286x',1),(12,'7794 Madisen Point Apt. 375\nNew Reganshire, WV 45167-0848','3@retroentertainment.com','972.372.6345x56',2),(13,'5816 Dicki Dam\nNorth Alexandraport, IA 71903','3@gamechangers.com','+54(7)621371675',3),(14,'2295 Hane Ports\nTreutelhaven, NE 67487-9044','3@1337games.com','012-470-9690',4),(15,'2949 Jacinthe Club Suite 304\nNorth Donato, DE 82809','3@fungame.com','469.433.9076',5);
/*!40000 ALTER TABLE `game_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Buck','Dicki','cbechtelar@example.org',4574,'1-828-930-4006x',NULL,88),(2,'Dejon','Nader','abbie.ankunding@example.com',8398,'017-430-7669x67',NULL,3138),(3,'Katrine','Schiller','hulda.stiedemann@example.org',6803,'062-209-9553x95',NULL,8288),(4,'Harmony','Prosacco','elisa.lockman@example.com',8924,'1-361-625-6410x',NULL,1248),(5,'Deontae','Streich','leland.gorczany@example.org',7510,'762.804.2825',NULL,5111),(6,'Emmy','White','hbaumbach@example.com',4803,'030-416-2391x63',NULL,8695),(7,'Justus','Lang','will.novella@example.com',56,'(213)849-4935x3',NULL,8626),(8,'Alta','Harvey','laury61@example.org',3045,'364.392.4430',NULL,888),(9,'Christian','Watsica','lrunolfsson@example.com',113,'452-173-0041',NULL,4169),(10,'Gillian','Little','murray.unique@example.com',5270,'791-564-3698x21',NULL,6174),(11,'Ray','Considine','marshall90@example.org',1890,'1-812-979-4678',NULL,8189),(12,'Hildegard','Jakubowski','gaylord.brandi@example.org',6270,'(513)817-6992',NULL,446),(13,'Meda','Dooley','gerardo.leuschke@example.net',6026,'+84(6)374848510',NULL,3941),(14,'Annamae','Schneider','isom43@example.net',4068,'995.894.1469x59',NULL,5583),(15,'Carmela','Langosh','tomasa52@example.org',8450,'717-236-4557',NULL,3228),(16,'Eusebio','Brakus','vwalter@example.net',4072,'(291)751-9141x3',NULL,7628),(17,'Tyshawn','Pfannerstill','kade.wunsch@example.org',4519,'923.910.0646',NULL,5390),(18,'Oma','Bernier','janice45@example.net',1592,'704-753-2616',NULL,9001),(19,'Blanca','Monahan','gus.macejkovic@example.net',320,'(364)797-5091x6',NULL,2796),(20,'Haleigh','Ernser','broderick.jaskolski@example.net',938,'1-127-463-4516x',NULL,6119),(21,'Rhea','Waters','fritsch.charles@example.com',2565,'1-667-892-8701',NULL,2597),(22,'Dahlia','O\'Conner','jeremy62@example.com',3479,'04537443762',NULL,269),(23,'Germaine','Weber','runolfsdottir.ollie@example.com',361,'1-162-846-5235x',NULL,710),(24,'Jovan','Jacobson','casper66@example.com',4424,'846-653-6779',NULL,1692),(25,'Verla','Walsh','antonette16@example.org',1307,'+42(9)476491867',NULL,2232),(26,'Lucy','Hegmann','luis.dicki@example.net',4040,'09260947276',NULL,2946),(27,'Colt','Lindgren','qbayer@example.net',5859,'(977)089-2428x2',NULL,1181),(28,'Bernice','Hahn','ukulas@example.net',3309,'(141)223-3655x6',NULL,3144),(29,'Talon','Johnston','henri.yost@example.net',2795,'1-761-855-9430',NULL,3944),(30,'Lacey','Crist','makenna.labadie@example.org',1323,'02221816581',NULL,7980),(31,'Misael','Watsica','hickle.cicero@example.net',695,'1-421-767-3876x',NULL,4590),(32,'Bradly','Dickens','feeney.bernice@example.com',8428,'415-705-0203',NULL,5772),(33,'Matteo','Cronin','kihn.pamela@example.org',5913,'1-488-779-3677',NULL,3002),(34,'Jaden','Ward','bobby47@example.net',8471,'1-931-724-7193',NULL,7638),(35,'Mary','Zieme','baumbach.selmer@example.net',7931,'(605)575-9878x2',NULL,5703),(36,'Lorenza','Heller','nkerluke@example.net',297,'1-990-309-3032x',NULL,3644),(37,'Margaret','Hackett','natalie.beer@example.net',8235,'(997)218-6518',NULL,906),(38,'Libbie','Rempel','mcdermott.freda@example.org',9242,'439.652.0349x36',NULL,4409),(39,'Ardith','Hermann','sadie.goldner@example.net',2048,'1-753-173-1845',NULL,525),(40,'Destany','Morissette','verdie.jones@example.org',1958,'(714)565-8739',NULL,5171),(41,'Lessie','Hudson','durgan.imogene@example.com',8113,'1-908-953-8519x',NULL,6209),(42,'Christop','Hahn','raheem15@example.org',4913,'(244)833-9608x1',NULL,3953),(43,'Alexa','Schamberger','emmanuel.smith@example.org',95,'04483495040',NULL,1174),(44,'Erin','Fritsch','jade98@example.com',1958,'1-500-176-8464x',NULL,5945),(45,'Nick','Hoeger','bradly.metz@example.com',8445,'+22(1)517099358',NULL,6298),(46,'Viviane','Schneider','jaquan50@example.com',890,'(418)387-4958x3',NULL,4402),(47,'Donavon','Mertz','salma.hand@example.org',962,'1-216-693-5945',NULL,5540),(48,'Adan','Douglas','bettye33@example.net',1247,'1-460-429-1506x',NULL,4103),(49,'Salma','Gutkowski','o\'connell.carissa@example.net',8917,'1-111-206-0755x',NULL,8025),(50,'Abbey','Reynolds','gail.graham@example.org',7822,'+25(0)922843644',NULL,9679),(51,'Abdullah','Morar','camryn.kessler@example.net',6203,'506-808-4221x44',NULL,5778),(52,'Polly','Yundt','jeanne26@example.org',3071,'1-539-221-2653x',NULL,3624),(53,'Geovany','Jerde','trantow.dessie@example.net',3022,'314.597.5204',NULL,2323),(54,'Marina','Mosciski','wolf.winston@example.com',9164,'+91(0)955176942',NULL,7056),(55,'Karli','O\'Hara','dibbert.yessenia@example.com',2756,'915-202-1943',NULL,3283),(56,'Arvel','Pollich','prince81@example.com',6129,'434-518-1538',NULL,3312),(57,'Sadie','Denesik','columbus09@example.com',6838,'688-770-8056x99',NULL,2276),(58,'Eliane','Ortiz','bartell.lourdes@example.com',8481,'890-927-7692x49',NULL,9863),(59,'Ona','Maggio','alvena.prosacco@example.net',4028,'(445)220-4803',NULL,8197),(60,'Tiana','Williamson','janie.pfeffer@example.net',2517,'1-394-959-4419x',NULL,7556),(61,'Briana','Robel','haag.trisha@example.com',711,'397.571.7519x89',NULL,2638),(62,'Brigitte','Lebsack','hollis.bogisich@example.com',2757,'+17(0)141704958',NULL,8763),(63,'Camron','Jast','gconnelly@example.org',1572,'251.641.5809x04',NULL,7573),(64,'Lonnie','Koelpin','cecil.bernier@example.com',1836,'729.652.6791x85',NULL,6736),(65,'Carmine','Huels','nkoelpin@example.org',9599,'03302038404',NULL,7673),(66,'Dominique','Spencer','pfeffer.fausto@example.com',3317,'328-808-0813x22',NULL,1111),(67,'Viviane','Erdman','zboncak.holden@example.com',3647,'06296780094',NULL,3699),(68,'Sigrid','Wolff','esta59@example.com',6181,'(401)068-9559x0',NULL,5406),(69,'Clarabelle','Mann','pmayert@example.com',1742,'928-722-6591',NULL,8434),(70,'Kayli','Greenfelder','gerhold.raegan@example.com',7081,'1-290-117-7430',NULL,5338),(71,'Angie','Hickle','bechtelar.aliyah@example.org',3580,'(895)740-4573x5',NULL,7027),(72,'Dustin','Parisian','thompson.angela@example.org',6094,'1-681-322-0796x',NULL,2718),(73,'Jamil','Koss','witting.willow@example.net',1902,'1-858-082-6063',NULL,3118),(74,'Ashly','Lemke','mitchell.lorena@example.com',5141,'(569)673-8585x3',NULL,721),(75,'Aurelie','Stoltenberg','daren.veum@example.net',9321,'05039473905',NULL,7256),(76,'Delphine','Nicolas','deshawn.adams@example.net',6086,'865-116-1225x31',NULL,1417),(77,'Terrill','Skiles','jdenesik@example.com',4131,'02632742958',NULL,3267),(78,'Laron','Williamson','zvon@example.net',8714,'(296)227-5141',NULL,3161),(79,'Kamron','Murray','ytreutel@example.org',4893,'537.430.2195x03',NULL,9853),(80,'Karen','Weimann','pfannerstill.johnson@example.net',1045,'(215)860-8877x4',NULL,4203),(81,'Harmon','Conn','clovis13@example.net',3336,'1-970-870-7864',NULL,5188),(82,'Annabel','Hermiston','aparisian@example.com',1604,'982.089.3647x63',NULL,5788),(83,'Mikayla','Lowe','marcellus71@example.net',6523,'242-726-7914x03',NULL,6040),(84,'Jazmyn','Lueilwitz','tabernathy@example.net',3633,'182-489-9266',NULL,6475),(85,'Thomas','Rempel','shirley.waelchi@example.org',4871,'1-660-615-0574',NULL,5474),(86,'Rebeca','Sporer','kay.dare@example.net',8031,'07248381479',NULL,6201),(87,'Dayana','Hahn','obreitenberg@example.net',303,'865-339-2154x60',NULL,5120),(88,'Leta','Runolfsson','percival08@example.org',2056,'078.285.3404',NULL,9207),(89,'Reina','Herman','orrin.rice@example.net',6323,'626.968.3063x96',NULL,2744),(90,'Daphne','Durgan','hortense.lebsack@example.com',5865,'676.559.0310x78',NULL,746),(91,'Stewart','Leannon','geovany81@example.net',956,'05486460722',NULL,4168),(92,'Clara','Grimes','turner.germaine@example.com',4771,'(214)742-7520x5',NULL,6859),(93,'Sonia','Jerde','jessyca.hartmann@example.org',6985,'(775)642-7864x3',NULL,9781),(94,'Delaney','Crooks','goodwin.armando@example.net',3796,'(167)883-6894',NULL,7450),(95,'Laverna','Fritsch','dax85@example.net',170,'+95(3)110710704',NULL,2954),(96,'Ian','Dare','jbogisich@example.com',8225,'06323141506',NULL,9302),(97,'Nathanael','Wolf','bkling@example.org',7052,'851.971.4605x80',NULL,6626),(98,'Genoveva','Heidenreich','wayne.gislason@example.com',1538,'(483)457-6677x1',NULL,7375),(99,'Jadon','Dickinson','gerhold.chasity@example.net',7840,'1-291-317-3620x',NULL,8113),(100,'Stone','Pfeffer','kquitzon@example.org',6255,'1-760-146-0425x',NULL,3013);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'gamecenter'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-17 21:19:43
