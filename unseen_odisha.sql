-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: unseen_odisha
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` varchar(5) NOT NULL,
  `city_name` char(20) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES ('c1','Cuttack','Cuttack, a hidden gem for travelers, unfolds a tapestry of enchanting experiences blending history, culture, and local vibrancy. Dive into the mystical Barabati Fort\'s ancient secrets, immerse yourself in the dazzling festivities of Durga Puja, and discover the artistry of Silver Filigree, a treasure trove for unique souvenirs.\n\nFeel the spiritual aura at the Cuttack Chandi Temple and embark on a maritime journey through Odisha\'s nautical history at the Odisha Maritime Museum. As the sun sets, stroll along the Mahanadi River\'s picturesque banks, offering a tranquil escape amidst the hustle and bustle.\n\nDelight your taste buds with authentic Odia cuisine, savoring the flavors of seafood delicacies and sweet temptations like Rasagola. Engage with the friendly locals, absorbing the warmth of their hospitality, and explore the Ravenshaw University campus, a historical and architectural marvel.\n\nCuttack\'s accessibility, coupled with its captivating attractions, beckons adventurous souls seeking a unique and immersive travel experience off the beaten path.'),('c2','Bhubaneswar','Bhubaneswar, a city that whispers ancient tales while dancing to the beat of modernity, is a treasure trove for intrepid travelers. Step into a realm of divine aesthetics at Lingaraj and Mukteshwar temples, where centuries-old stories come alive in stone carvings. Feel the rhythmic pulse of Odissi dance during enchanting Ekamra Walks, an ode to the city\'s cultural heartbeat.\n\nFor the sports aficionado, Kalinga Stadium echoes with the cheers of history, having hosted the Men\'s Hockey World Cup. Nature beckons at Nandankanan Zoo, where majestic white tigers and roaring lions create a wild symphony.\n\nDive into the vibrant tapestry of tribal heritage at the Museum of Tribal Arts, where every artifact narrates a story untold. Seek solace and witness the profound history at Dhauli Giri Shanti Stupa, standing tall against the backdrop of the ancient Kalinga War.\n\nIndulge your senses in Ekamra Haat, where the colors of Odisha burst forth in traditional handlooms and crafts. Culinary adventures await as you savor the flavors of Dalma, Pakhala, and the freshest seafood.\n\nAmidst the ancient stones, discover the heartbeat of Bhubaneswar, where every corner whispers tales of resilience, spirituality, and cultural opulence. Let the city unfold its layers, offering a unique blend of history, art, and contemporary allure for an unforgettable sojourn.'),('c3','Puri','Puri, a coastal gem, invites with spiritual grandeur at the Jagannath Temple\'s Rath Yatra and the tranquil Golden Beach. Discover ancient myths at Konark Sun Temple, explore artistic vibrancy in Raghurajpur, and glide through the avian symphony of Chilika Lake. Indulge in street food delights, shop for traditional treasures, and find solace in spiritual retreats. Puri is a captivating blend of spirituality, art, and nature, promising a rich tapestry of experiences for every wanderer.');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `place_id` varchar(5) NOT NULL,
  `place_name` char(50) DEFAULT NULL,
  `city_id` varchar(5) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`place_id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `places_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES ('p1','Barabati Fort','c1','Barabati Fort is a historical fort located on the banks of the Mahanadi River. It dates back to the 14th century and has witnessed various historical events. The fort offers panoramic views of the river and the surrounding area.Attractions: The well-preserved ruins, the moat, and the layout of the fort provide insights into its architectural and strategic significance.'),('p2','Cuttack Chandi Temple','c1','The Cuttack Chandi Temple is dedicated to Goddess Chandi, a revered deity in the region. The temple is known for its religious significance and architectural beauty.Attractions:The temple\'s vibrant festivals, especially Durga Puja, attract devotees and tourists alike. The intricate carvings and artwork within the temple are noteworthy.'),('p3','Odisha Maritime Museum','c1','The Odisha Maritime Museum is a unique attraction showcasing the maritime history and cultural heritage of the state. It provides insights into Odisha\'s connection with the sea and its rich maritime traditions.Attractions: The museum features various artifacts, models of ships, and exhibits related to maritime activities, making it an informative and engaging destination.'),('p4','Lingaraj Temple','c2',' Lingaraj Temple is one of the most prominent and ancient temples in Bhubaneswar, dedicated to Lord Shiva. It is a significant pilgrimage site and a masterpiece of Odishan architecture.Attractions: The temple complex is adorned with intricate carvings, sculptures, and a large pond. The deity, Lord Lingaraj, is worshipped with great devotion.'),('p5','Udayagiri and Khandagiri Caves','c2','The Udayagiri and Khandagiri Caves are rock-cut caves dating back to the 2nd century BCE. These caves served as dwelling spaces for Jain monks and provide a glimpse into ancient Jain culture.Attractions: The caves feature carved inscriptions, ornate arches, and sculptures. Udayagiri offers a commanding view of Bhubaneswar from its hilltop location.'),('p6','Nandankanan Zoological Park','c2','Nandankanan Zoological Park, located on the outskirts of Bhubaneswar, is renowned for its conservation efforts and diverse collection of wildlife. It is a combination of a zoo, botanical garden, and sanctuary.Attractions: Visitors can see a variety of animals, including white tigers, lions, and a range of bird species. The zoo also houses a botanical garden and a lake.'),('p7','Jagannath Temple','c3','The Jagannath Temple is one of the most revered Hindu temples in India, dedicated to Lord Jagannath, along with his siblings Balabhadra and Subhadra. The annual Rath Yatra (chariot festival) is a major highlight.Attractions: The temple\'s architecture, rituals, and the vibrant Rath Yatra procession draw millions of pilgrims and tourists each year.'),('p8','Golden Beach','c3','Puri\'s Golden Beach is a pristine stretch of coastline along the Bay of Bengal, known for its golden sands and vibrant atmosphere. It\'s a popular destination for both relaxation and water activities.Attractions: Enjoy serene sunrises, engage in beach activities, and immerse yourself in the lively local culture along this beautiful shoreline.'),('p9','Konark Sun Temple','c3','A short drive from Puri, the Konark Sun Temple is a UNESCO World Heritage Site and a masterpiece of Kalinga architecture. Dedicated to the sun god, Surya, the temple is designed in the shape of a colossal chariot.Attractions: Marvel at the intricately carved sculptures depicting various scenes of life, mythology, and the famous Konark wheels. The temple is a testament to ancient craftsmanship.');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `res_id` varchar(5) NOT NULL,
  `res_name` char(30) DEFAULT NULL,
  `city_id` varchar(5) DEFAULT NULL,
  `place_id` varchar(5) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`res_id`),
  KEY `place_id` (`place_id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`place_id`),
  CONSTRAINT `restaurants_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES ('r1','Golden Spoon','c1','p1',4.0),('r10','The Chef','c2','p5',4.2),('r11','The Living Room','c2','p5',4.4),('r12','Malva Restaurant','c2','p6',4.3),('r13','Jugaad JN','c2','p6',4.2),('r14','Jungle View','c2','p6',4.0),('r15','Food court by FESTIN','c3','p7',4.5),('r16','Agarwal\'s Pure Veg Restaurant','c3','p7',3.7),('r17','Bhojohori Manna','c3','p8',4.0),('r18','GA-Ethenic village theme video','c3','p8',4.4),('r19','The Fisherman\'s Kitchen','c3','p8',4.3),('r2','Hunter\'s Kitchen','c1','p2',4.9),('r20','Gitanjali','c3','p9',3.5),('r21','Tasty Restaurant','c3','p9',4.0),('r3','Golden Spoon','c1','p2',4.0),('r4','Auroville Food Fair','c1','p3',3.7),('r5','Khusiyan Restaurant','c1','p3',4.0),('r6','Bombay Restaurant','c1','p3',4.0),('r7','Venus Inn Restaurant','c2','p4',4.1),('r8','Taste Of China','c2','p4',4.1),('r9','Golden Bird','c2','p4',4.3);
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-25 11:27:54
