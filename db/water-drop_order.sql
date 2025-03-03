-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 47.94.154.60    Database: water-drop
-- ------------------------------------------------------
-- Server version	5.6.35

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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` varchar(36) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `createdBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `tel` varchar(255) DEFAULT NULL COMMENT '手机号',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `outTradeNo` varchar(255) NOT NULL DEFAULT '' COMMENT '订单号',
  `amount` int(11) DEFAULT NULL COMMENT '总金额',
  `studentId` varchar(36) DEFAULT NULL,
  `productId` varchar(36) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT '支付状态',
  `orgId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b7a4e35eafdfef47c14e5ac5079` (`studentId`),
  KEY `FK_88991860e839c6153a7ec878d39` (`productId`),
  KEY `FK_662b6c543bee7c235257622ef4c` (`orgId`),
  CONSTRAINT `FK_662b6c543bee7c235257622ef4c` FOREIGN KEY (`orgId`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_88991860e839c6153a7ec878d39` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_b7a4e35eafdfef47c14e5ac5079` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('0a656df4-e236-4593-896c-f96b052eb373','2023-06-02 12:04:27',NULL,'2023-06-02 12:04:27',NULL,NULL,NULL,'19828738899',1,'e124fdf42f524196b9f377c3b2665f9c',99,'babb398f-017c-4f9a-9652-e160f866a1b7','2b12b6df-ed64-410e-932c-185ed076419a','USERPAYING','6710fa26-2602-442a-b8af-5930430f46d5'),('1f697345-989c-45f2-a82c-2bef3be8b4c1','2023-06-08 16:36:32',NULL,'2023-06-08 16:36:32',NULL,NULL,NULL,'19828738899',1,'4b62454526dc4f8b89d5c5cf05bffa15',99,'babb398f-017c-4f9a-9652-e160f866a1b7','92a4984d-0a31-440e-beca-1177ca517a88','SUCCESS','6710fa26-2602-442a-b8af-5930430f46d5'),('32cde2d1-bf8a-40ab-ba79-1f997a5d22ac','2023-06-02 19:56:00',NULL,'2023-06-02 11:56:01',NULL,NULL,NULL,'19828738899',1,'f75028eb77514eaeb379411171dda103',99,'babb398f-017c-4f9a-9652-e160f866a1b7','2b12b6df-ed64-410e-932c-185ed076419a','SUCCESS','6710fa26-2602-442a-b8af-5930430f46d5'),('44bc2d63-062b-465c-8615-52450bae4672','2023-06-02 19:59:24',NULL,'2023-06-02 11:59:24',NULL,NULL,NULL,'19828738899',1,'f74bd3265b314be3bb71f1ede7662efb',99,'babb398f-017c-4f9a-9652-e160f866a1b7','2b12b6df-ed64-410e-932c-185ed076419a','SUCCESS','6710fa26-2602-442a-b8af-5930430f46d5'),('48b35e72-f848-4255-b2d2-003347e0152f','2023-06-13 16:04:46',NULL,'2023-06-13 16:04:46',NULL,NULL,NULL,'19828738899',1,'58c528a8b6f64b14a4d4c368e4ca6433',2,'babb398f-017c-4f9a-9652-e160f866a1b7','706472b6-95e4-4cfd-8460-93eed7a85878','SUCCESS','2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8'),('513ccf3b-6a1e-43ae-a3e0-66bc07290fd6','2023-06-04 23:47:00',NULL,'2023-06-04 23:47:00',NULL,NULL,NULL,'19828738899',1,'9e083206cbe64c3e8a5fe5b69fcf0b28',99,'babb398f-017c-4f9a-9652-e160f866a1b7','2b12b6df-ed64-410e-932c-185ed076419a','USERPAYING','6710fa26-2602-442a-b8af-5930430f46d5'),('5310a512-bc36-4d4d-8c5a-7796ffe3acc1','2023-05-30 14:53:03',NULL,'2023-05-30 14:53:03',NULL,NULL,NULL,'19828738899',1,'e9f2af0b5bbd43dd9aecf592fc3618bc',99,'babb398f-017c-4f9a-9652-e160f866a1b7','2b12b6df-ed64-410e-932c-185ed076419a','SUCCESS','6710fa26-2602-442a-b8af-5930430f46d5'),('544ccfa7-0cd8-4432-9d0a-6965c669eb98','2023-06-02 10:41:55',NULL,'2023-06-02 10:41:55',NULL,NULL,NULL,'19828738899',1,'dce483cfc20548438f1fecc83394263a',99,'babb398f-017c-4f9a-9652-e160f866a1b7','2b12b6df-ed64-410e-932c-185ed076419a','USERPAYING','6710fa26-2602-442a-b8af-5930430f46d5'),('6fd4f2ca-52d7-4eac-9b0c-39fc6eae76fa','2023-07-04 07:24:21',NULL,'2023-07-04 07:24:21',NULL,NULL,NULL,NULL,1,'0bbfa1dc9be64d9ba551901ba1e85f3b',99,'dcd24692-23b8-423d-afb3-5ff2719b7cde','0db13035-0c0c-4d80-b328-6eb2223b8cae','USERPAYING','6710fa26-2602-442a-b8af-5930430f46d5'),('72dddf8a-8dd6-443b-9b3d-fd21fe08c10b','2023-06-05 15:23:28',NULL,'2023-06-05 07:23:29',NULL,NULL,NULL,NULL,1,'2cd8125c19664a07972a600b9d422ea9',99,'dcd24692-23b8-423d-afb3-5ff2719b7cde','ecbc2b4b-e19a-4478-8066-2b7b329d5824','SUCCESS','6710fa26-2602-442a-b8af-5930430f46d5'),('83873d95-69cc-44e5-bc80-ee385be82fc0','2023-06-08 16:40:55',NULL,'2023-06-08 16:40:55',NULL,NULL,NULL,'19828738899',1,'dab12c10492546f8ba0cad1f64317068',99,'babb398f-017c-4f9a-9652-e160f866a1b7','3606cf39-11a7-480a-a4fa-2d57017332ed','SUCCESS','6710fa26-2602-442a-b8af-5930430f46d5'),('90cf2f1e-1e0a-4a5d-8afc-379219080fa2','2023-06-02 10:41:13',NULL,'2023-06-02 10:41:13',NULL,NULL,NULL,'19828738899',1,'f6b5ede414cb43f3a59dd0751e03f83f',99,'babb398f-017c-4f9a-9652-e160f866a1b7','2b12b6df-ed64-410e-932c-185ed076419a','USERPAYING','6710fa26-2602-442a-b8af-5930430f46d5'),('95a75db9-c91e-4bdb-8391-ae97e115e4cc','2023-07-04 07:24:42',NULL,'2023-07-04 07:24:42',NULL,NULL,NULL,NULL,1,'263659427fa64e279a9072f14553884a',99,'dcd24692-23b8-423d-afb3-5ff2719b7cde','0db13035-0c0c-4d80-b328-6eb2223b8cae','USERPAYING','6710fa26-2602-442a-b8af-5930430f46d5'),('a3124cfa-d745-40d0-8a15-0dfbfc2a1b1f','2023-06-02 20:23:15',NULL,'2023-06-02 12:23:16',NULL,NULL,NULL,'19828738899',1,'1be76cc631724a24a952d6f682ef8bca',99,'babb398f-017c-4f9a-9652-e160f866a1b7','2b12b6df-ed64-410e-932c-185ed076419a','SUCCESS','6710fa26-2602-442a-b8af-5930430f46d5'),('a59dbc05-4fad-4851-a33f-2224e0d9e098','2023-06-02 20:14:54',NULL,'2023-06-02 12:14:55',NULL,NULL,NULL,'19828738899',1,'97fa8b5e2184450fb119aaafd5fd6602',99,'babb398f-017c-4f9a-9652-e160f866a1b7','2b12b6df-ed64-410e-932c-185ed076419a','SUCCESS','6710fa26-2602-442a-b8af-5930430f46d5'),('a8df5c93-993e-4896-a2cd-9ca0802d7af8','2023-06-03 11:07:11',NULL,'2023-06-03 11:07:11',NULL,NULL,NULL,'19828738899',1,'f9028313af3d4fc786d9dc113ffefea4',99,'babb398f-017c-4f9a-9652-e160f866a1b7','2b12b6df-ed64-410e-932c-185ed076419a','USERPAYING','6710fa26-2602-442a-b8af-5930430f46d5'),('a9215f96-635e-4ede-ad5f-bf21ce092fc0','2023-06-02 20:12:41',NULL,'2023-06-02 12:12:42',NULL,NULL,NULL,'19828738899',1,'45283db9d124403f8f3a8459b4e3af0c',99,'babb398f-017c-4f9a-9652-e160f866a1b7','2b12b6df-ed64-410e-932c-185ed076419a','SUCCESS','6710fa26-2602-442a-b8af-5930430f46d5'),('c40af90c-a38b-41fc-944d-631184b2d375','2023-06-09 17:58:25',NULL,'2023-06-09 17:58:25',NULL,NULL,NULL,'19828738899',1,'0c3c7fa7dc2d4deaa4d850fc44ef9648',2,'babb398f-017c-4f9a-9652-e160f866a1b7','706472b6-95e4-4cfd-8460-93eed7a85878','SUCCESS','2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8'),('e2bcdf3c-0b05-4d25-9f71-68adee2e1985','2023-06-02 12:04:35',NULL,'2023-06-02 12:04:35',NULL,NULL,NULL,'19828738899',1,'49f3f094436a45f38996256217287f24',99,'babb398f-017c-4f9a-9652-e160f866a1b7','2b12b6df-ed64-410e-932c-185ed076419a','USERPAYING','6710fa26-2602-442a-b8af-5930430f46d5'),('ec3c1f23-b9f5-445f-8b48-012d866e3d74','2023-06-02 19:56:40',NULL,'2023-06-02 11:56:40',NULL,NULL,NULL,'19828738899',1,'3116f6250fda4bdc8004e824edf5bb10',99,'babb398f-017c-4f9a-9652-e160f866a1b7','2b12b6df-ed64-410e-932c-185ed076419a','SUCCESS','6710fa26-2602-442a-b8af-5930430f46d5'),('efdff6db-2368-4d60-9077-7a32beeb3d07','2023-06-09 17:58:51',NULL,'2023-06-09 17:58:51',NULL,NULL,NULL,'19828738899',1,'211237f2ff144e0faad2e9308a5831a9',2,'babb398f-017c-4f9a-9652-e160f866a1b7','706472b6-95e4-4cfd-8460-93eed7a85878','SUCCESS','2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8'),('f6437e17-422b-4a0e-b852-60b08346d9e3','2023-06-10 16:29:03',NULL,'2023-06-10 16:29:03',NULL,NULL,NULL,'19828738899',1,'f7bcd80f37a54dd7af52d279d47a715d',2,'babb398f-017c-4f9a-9652-e160f866a1b7','706472b6-95e4-4cfd-8460-93eed7a85878','SUCCESS','2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-11  1:00:01
