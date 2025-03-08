-- --------------------------------------------------------
-- 主機:                           127.0.0.1
-- 伺服器版本:                        5.6.34-log - MySQL Community Server (GPL)
-- 伺服器作業系統:                      Win32
-- HeidiSQL 版本:                  12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 傾印  資料表 water-drop.card 結構
CREATE TABLE IF NOT EXISTS `card` (
  `id` varchar(36) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL COMMENT '建立者',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名稱',
  `type` varchar(255) NOT NULL DEFAULT 'time' COMMENT '卡類型',
  `time` int(11) NOT NULL DEFAULT '0' COMMENT '上課次數',
  `validityDay` int(11) NOT NULL DEFAULT '0' COMMENT '有效期',
  `courseId` varchar(36) DEFAULT NULL,
  `orgId` varchar(36) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建立時間',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`id`),
  KEY `FK_0b739c2e3573cc62ea799ba3e1d` (`courseId`),
  KEY `FK_2ddfcd5175843e1beae28b7e5df` (`orgId`),
  CONSTRAINT `FK_0b739c2e3573cc62ea799ba3e1d` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_2ddfcd5175843e1beae28b7e5df` FOREIGN KEY (`orgId`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.card 的資料：~20 rows (近似值)
INSERT INTO `card` (`id`, `createdBy`, `updatedBy`, `deletedAt`, `deletedBy`, `name`, `type`, `time`, `validityDay`, `courseId`, `orgId`, `createdAt`, `updatedAt`) VALUES
	('0bce5706-838c-45e2-97bf-2dbf6a17a9ff', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, '2025-01-15 14:44:38.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '33', 'time', 3, 33, 'eb03b3dc-7047-41b9-9217-cf390dbe6639', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '2025-02-22 19:41:48', NULL),
	('47889c8c-93b7-494f-89ad-c7bd2204ccf9', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, '2025-02-15 18:52:39.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '一年不限次', 'duration', 1, 365, '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '2025-02-22 19:41:48', NULL),
	('51e1a51f-ed2a-475c-821a-a647525807b5', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, '2025-01-15 14:45:01.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '22', 'time', 22, 22, 'eb03b3dc-7047-41b9-9217-cf390dbe6639', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '2025-02-22 19:41:48', NULL),
	('77523ad7-31f7-4b45-b11e-786c810a5e4b', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '音樂課-一般會員', 'time', 50, 365, '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '2025-02-22 19:41:48', NULL),
	('78a4a1e6-cb5e-44a0-9b3a-6668d036a967', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '黑金會員', 'time', 35, 33, 'eb03b3dc-7047-41b9-9217-cf390dbe6639', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '2025-02-22 19:41:48', NULL),
	('835ed431-9574-43d8-bd09-fbc168c8359f', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '普通會員', 'duration', 25, 365, 'f0aea413-3742-41ff-b4a8-c4c8eea8c0db', '746e116e-f03d-45fc-88fe-867c530a0bf4', '2025-02-22 19:41:48', NULL),
	('8712d10a-33f5-4d1b-96f4-581838cdd28a', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '2025-02-15 18:52:37.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '一年不限次', 'time', 1, 365, '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '2025-02-22 19:41:48', NULL),
	('8f015146-fbe3-4eed-bb13-7e01b0161caa', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '2025-01-15 14:40:33.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'aa', 'duration', 55, 11, 'eb03b3dc-7047-41b9-9217-cf390dbe6639', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '2025-02-22 19:41:48', NULL),
	('98cea68c-7795-4bf2-9943-fea64f23b278', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '法式料理-白金卡', 'time', 30, 180, '7a173e7b-2f6c-4875-921e-1040426c60f1', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '2025-02-22 19:41:48', NULL),
	('a8eb67eb-efc8-4d06-b087-3ed420cc120c', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, '2025-02-15 18:52:40.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '一年不限次', 'duration', 1, 365, '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '2025-02-22 19:41:48', NULL),
	('ba6d8ddb-9925-4443-9821-0f40c3e1097e', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '一般會員', 'duration', 11, 11, 'eb03b3dc-7047-41b9-9217-cf390dbe6639', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '2025-02-22 19:41:48', NULL),
	('c2f2a6bd-c536-4fb8-820c-209d0314c36e', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '法式料理-會員卡', 'duration', 120, 360, '7a173e7b-2f6c-4875-921e-1040426c60f1', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '2025-02-22 19:41:48', NULL),
	('c76ffb89-30ac-4631-85e5-eda9a64b93d9', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, '2025-02-15 18:52:42.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '一年不限次', 'duration', 1, 365, '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '2025-02-22 19:41:48', NULL),
	('cd8c6366-7d72-474b-a3d1-9a3a758b6ed3', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '音樂課-黃金會員', 'duration', 100, 365, '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '2025-02-22 19:41:48', NULL),
	('dd5eb17e-1d88-43c7-97c8-af6ca1577385', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '2025-02-15 18:52:35.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '一年不限次', 'time', 1, 100, '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '2025-02-22 19:41:48', NULL),
	('eb4b41a2-2d3b-494c-9360-f3a98cc04d5d', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '美術課-一般會員', 'time', 50, 365, '52efd96e-491c-41a4-b482-0d8cabd111ab', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '2025-02-22 19:41:48', NULL),
	('ed27a501-2c8a-4482-b3eb-08b0b9595bc8', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, '2025-01-15 14:44:21.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '44', 'duration', 44, 44, 'eb03b3dc-7047-41b9-9217-cf390dbe6639', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '2025-02-22 19:41:48', NULL),
	('ee6e68fb-7eb3-47ae-8f1b-e643dc5b226f', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '2025-01-15 14:43:24.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '555', 'duration', 55, 55, 'eb03b3dc-7047-41b9-9217-cf390dbe6639', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '2025-02-22 19:41:48', NULL),
	('ef3b7690-49cb-4b3f-9cf2-aafb992362e0', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, '2025-02-15 18:52:38.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '一年不限次', 'duration', 1, 365, '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '2025-02-22 19:41:48', NULL),
	('f7581998-36b0-4797-bcf5-59fdca54478f', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '一般學生', 'time', 50, 365, 'f3580585-e2e4-4df5-a256-508ac4515ab6', 'b53235f7-0ce1-483e-adeb-636a72219d70', '2025-02-22 19:41:48', NULL);

-- 傾印  資料表 water-drop.card_record 結構
CREATE TABLE IF NOT EXISTS `card_record` (
  `id` varchar(36) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL COMMENT '建立者',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `startTime` timestamp NULL DEFAULT NULL COMMENT '開始時間',
  `endTime` timestamp NULL DEFAULT NULL COMMENT '结束時間',
  `buyTime` timestamp NULL DEFAULT NULL COMMENT '購買時間',
  `residueTime` int(11) DEFAULT NULL COMMENT '剩餘次數',
  `cardId` varchar(36) DEFAULT NULL,
  `studentId` varchar(36) DEFAULT NULL,
  `courseId` varchar(36) DEFAULT NULL,
  `orgId` varchar(36) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '建立時間',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`id`),
  KEY `FK_5f3e9aa536fe1975a19cb5557a3` (`cardId`),
  KEY `FK_4763adf564cf22f20c6088653bc` (`studentId`),
  KEY `FK_f7d436017c454dff6f00c2a1470` (`courseId`),
  KEY `FK_f937d57d3dbd4ff100136cf97eb` (`orgId`),
  CONSTRAINT `FK_4763adf564cf22f20c6088653bc` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_5f3e9aa536fe1975a19cb5557a3` FOREIGN KEY (`cardId`) REFERENCES `card` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_f7d436017c454dff6f00c2a1470` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_f937d57d3dbd4ff100136cf97eb` FOREIGN KEY (`orgId`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.card_record 的資料：~9 rows (近似值)
INSERT INTO `card_record` (`id`, `createdBy`, `updatedBy`, `deletedAt`, `deletedBy`, `startTime`, `endTime`, `buyTime`, `residueTime`, `cardId`, `studentId`, `courseId`, `orgId`, `createdAt`, `updatedAt`) VALUES
	('0d177bff-32a0-4504-b225-55c6021b2436', NULL, NULL, NULL, NULL, '2025-02-15 11:17:50', '2026-02-15 11:20:50', '2025-02-15 11:17:50', 100, 'cd8c6366-7d72-474b-a3d1-9a3a758b6ed3', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '0000-00-00 00:00:00', NULL),
	('15a33a68-1be8-4ed5-ad3f-33999a1c00cd', NULL, NULL, NULL, NULL, '2025-02-15 14:22:16', '2026-02-15 14:22:16', '2025-02-15 14:22:16', 0, 'f7581998-36b0-4797-bcf5-59fdca54478f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', 'f3580585-e2e4-4df5-a256-508ac4515ab6', 'b53235f7-0ce1-483e-adeb-636a72219d70', '0000-00-00 00:00:00', NULL),
	('16b1c9f2-84a7-4c02-8e59-ff92781d0540', NULL, '03ac591d-9684-44bf-b08d-b69f9cd6bac3', NULL, NULL, '2025-02-20 20:14:17', '2025-03-25 20:14:17', '2025-02-20 20:14:17', 3, '78a4a1e6-cb5e-44a0-9b3a-6668d036a967', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', 'eb03b3dc-7047-41b9-9217-cf390dbe6639', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '0000-00-00 00:00:00', NULL),
	('1a842b73-2978-4526-9e5d-5075882495d9', NULL, NULL, NULL, NULL, '2025-02-15 11:17:50', '2026-02-15 11:17:50', '2025-02-15 11:17:50', 50, '77523ad7-31f7-4b45-b11e-786c810a5e4b', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '0000-00-00 00:00:00', NULL),
	('2245cac8-f230-4442-93be-88b6575b1349', NULL, NULL, NULL, NULL, '2025-02-15 14:26:04', '2025-02-15 14:26:04', '2025-02-15 14:26:04', 25, '835ed431-9574-43d8-bd09-fbc168c8359f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', 'f0aea413-3742-41ff-b4a8-c4c8eea8c0db', '746e116e-f03d-45fc-88fe-867c530a0bf4', '0000-00-00 00:00:00', NULL),
	('8864f39f-9b2d-4351-8b47-b467b237fe6e', NULL, '03ac591d-9684-44bf-b08d-b69f9cd6bac3', NULL, NULL, '2025-02-15 12:39:06', '2026-02-15 12:39:06', '2025-02-15 12:39:06', 45, 'eb4b41a2-2d3b-494c-9360-f3a98cc04d5d', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '52efd96e-491c-41a4-b482-0d8cabd111ab', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '0000-00-00 00:00:00', NULL),
	('b61cc6bd-0d88-4ebf-abfe-49f4b8516576', NULL, NULL, NULL, NULL, '2025-02-15 12:33:32', '2026-02-10 12:33:32', '2025-02-15 12:33:32', 120, 'c2f2a6bd-c536-4fb8-820c-209d0314c36e', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '7a173e7b-2f6c-4875-921e-1040426c60f1', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '0000-00-00 00:00:00', NULL),
	('bc824775-74fb-47c6-ad11-7bd4f89143d7', NULL, NULL, NULL, NULL, '2025-02-20 20:14:17', '2025-03-03 20:14:17', '2025-02-20 20:14:17', 11, 'ba6d8ddb-9925-4443-9821-0f40c3e1097e', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', 'eb03b3dc-7047-41b9-9217-cf390dbe6639', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '0000-00-00 00:00:00', NULL),
	('ce4bb81e-c4fd-4e11-a79a-186030791a3a', NULL, NULL, NULL, NULL, '2025-02-15 12:33:32', '2025-08-14 12:33:32', '2025-02-15 12:33:32', 30, '98cea68c-7795-4bf2-9943-fea64f23b278', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '7a173e7b-2f6c-4875-921e-1040426c60f1', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '0000-00-00 00:00:00', NULL);

-- 傾印  資料表 water-drop.course 結構
CREATE TABLE IF NOT EXISTS `course` (
  `id` varchar(36) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL COMMENT '建立者',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `name` varchar(255) NOT NULL COMMENT '課程名稱',
  `desc` text COMMENT '課程描述',
  `group` varchar(255) NOT NULL COMMENT '適齡人群',
  `baseAbility` varchar(255) NOT NULL COMMENT '適合基礎',
  `limitNumber` int(11) NOT NULL COMMENT '限制上課人數',
  `duration` int(11) NOT NULL COMMENT '持續時間',
  `reserveInfo` varchar(255) DEFAULT NULL COMMENT '預约信息',
  `refundInfo` varchar(255) DEFAULT NULL COMMENT '退款信息',
  `otherInfo` varchar(255) DEFAULT NULL COMMENT '其他信息',
  `coverUrl` varchar(255) DEFAULT NULL COMMENT '封面圖',
  `reducibleTime` text COMMENT '可預約時間(JSON格式)',
  `orgId` varchar(36) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建立時間',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`id`),
  KEY `FK_e29a2256e16530deb4cc8c78ec3` (`orgId`),
  CONSTRAINT `FK_e29a2256e16530deb4cc8c78ec3` FOREIGN KEY (`orgId`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.course 的資料：~36 rows (近似值)
INSERT INTO `course` (`id`, `createdBy`, `updatedBy`, `deletedAt`, `deletedBy`, `name`, `desc`, `group`, `baseAbility`, `limitNumber`, `duration`, `reserveInfo`, `refundInfo`, `otherInfo`, `coverUrl`, `reducibleTime`, `orgId`, `createdAt`, `updatedAt`) VALUES
	('0053e0bb-adc2-4c50-830f-fd9834f06f71', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '歷史課程', '歷史課程 DESC', '大學畢業', '英文中級', 11, 22, '歷史課程', '歷史課程', '歷史課程', '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('0498dce2-7ffc-4bfb-b098-4d6056c49b98', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第六節', NULL, '都可以', '高中畢業', 10, 30, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('079225e5-5603-42bd-a9a9-8f5b82155415', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第七節', NULL, '都可以', '大學畢業', 20, 40, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('09654f8e-fbed-4ae2-8899-b2ca6f244731', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第六節', NULL, '都可以', '高中畢業', 10, 30, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('1b3c3df7-f7ed-4edf-8e57-71c90657bcc9', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第17節', '英文新概念第17節', '大學畢業', '英文中級', 11, 22, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('2c5bcd25-2b99-456c-8efd-ec0b6913ec56', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第八節', '英文新概念第九節DESC', '大學畢業', '英文中級', 20, 60, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('338b46b4-b38c-4bbc-9dfe-9b77214cbc12', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '英文新概念第四節', NULL, '女人', '多益400', 10, 30, NULL, NULL, NULL, '', '[{"week":"monday","orderTime":[{"startTime":"15:00:00","endTime":"19:30:00","key":3}]},{"week":"tuesday","orderTime":[{"startTime":"22:00:00","endTime":"23:00:00","key":2},{"startTime":"11:00:00","endTime":"12:30:00","key":3}]},{"week":"wednesday","orderTime":[{"startTime":"22:00:00","endTime":"23:00:00","key":2}]},{"week":"thursday","orderTime":[{"startTime":"22:00:00","endTime":"23:00:00","key":2}]},{"week":"friday","orderTime":[{"startTime":"22:00:00","endTime":"23:00:00","key":2}]},{"week":"saturday","orderTime":[{"startTime":"05:00:00","endTime":"13:30:00","key":3}]},{"week":"sunday","orderTime":[{"startTime":"22:00:00","endTime":"23:00:00","key":2}]}]', NULL, '2025-02-22 19:41:48', NULL),
	('52efd96e-491c-41a4-b482-0d8cabd111ab', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '美術課', '美術課1111 DESC', '大學畢業', '英文中級', 11, 11, '美術課1111', '美術課1111', '美術課1111', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/course/rc-upload-1739028506684-6.jpg', '[{"week":"tuesday","orderTime":[{"startTime":"12:00:00","endTime":"22:30:00","key":1}]},{"week":"monday","orderTime":[{"startTime":"12:00:00","endTime":"23:59:00","key":1}]},{"week":"wednesday","orderTime":[{"startTime":"08:00:00","endTime":"17:30:00","key":1}]}]', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '2025-02-22 19:41:48', NULL),
	('57d9daf6-2887-426c-9e7c-f92812f05d80', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第七節', NULL, '都可以', '大學畢業', 20, 40, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('61b6ea84-16f9-4341-94b7-715c82461e2b', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第八節', '英文新概念第八節DESC', '大學畢業', '英文中級', 10, 30, '您可以在每週六、週日預約下週的課程', '七天無理由退款', NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('63b66c53-5e78-4b63-ad41-e05065e4df0d', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第15節', '英文新概念第15節 DESC', '大學畢業', '英文中級', 21, 55, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '音樂課', '音樂課1111 DESC', '大學畢業', '任何想學音樂的人', 11, 22, '音樂課-預约信息', '音樂課-退款信息', '音樂課-其他信息', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/course/rc-upload-1739028506684-12.jpg', '[{"week":"monday","orderTime":[{"startTime":"12:00:00","endTime":"23:59:00","key":1},{"startTime":"15:00:00","endTime":"23:59:00","key":2}]}]', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '2025-02-22 19:41:48', NULL),
	('6443caed-7c9d-47d1-9719-abf88491c2cd', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第一節', NULL, '年輕人', '本科', 10, 30, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('6ccd75c9-48ec-4c8e-88fd-17ae23041149', 'c0b948d3-4aa3-4ee2-8f6e-8f553a8b82fb', NULL, NULL, NULL, '英文新概念第一節', '英文新概念第一節DESC', '大學畢業', '英文中級', 11, 22, '無', '無', '無', '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('774cb726-712d-469f-bf39-d9081aa3c431', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第11節', '英文新概念第11節DESC', '大學畢業', '英文中級', 22, 11, '無', '無', '無', '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('7a173e7b-2f6c-4875-921e-1040426c60f1', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '法式料理課', '法式料理課 DESC', '所有年齡', '任何想學做菜的人', 5, 120, '法式料理課', '法式料理課', '法式料理課', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/course/rc-upload-1739616271889-57.jpg', '[{"week":"monday","orderTime":[{"startTime":"08:00:00","endTime":"23:30:00","key":1}]}]', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '2025-02-22 19:41:48', NULL),
	('7ae87124-4e12-4211-8016-fa42777d612c', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第二節', NULL, '老人', '無限制', 10, 30, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('7fec619a-edf8-4a9a-acd8-8707608ad3ac', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, '2025-01-06 18:24:11.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '英文新概念第五節', NULL, '都可以', '國中畢業', 10, 30, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('84b6d945-4cea-48db-9316-3daedfd945ab', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第十節', '英文新概念第十節DESC', '大學畢業', '英文中級', 22, 11, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('896cebc1-e46b-42d3-b004-be0e48726fec', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第八節', 'DESC', '大學畢業', '英文中級', 10, 30, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('89c96b7a-8527-4f7d-9481-6741148a4a8f', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第六節', NULL, '都可以', '高中畢業', 10, 30, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('8a90e87d-80a2-4f49-b3f6-82db638bb35e', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第12節', '英文新概念第12節DESC', '大學畢業', '英文中級', 33, 22, '無', '無', '無', '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('9320ee5a-9c5f-4ee3-9ad8-4d96addec80b', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '英文新概念第18節', '英文新概念第18節', '大學畢業', '英文中級', 11, 22, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('9492cdb1-c265-4c1d-ac79-a1f78cbb45a3', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第16節', '英文新概念第16節', '大學畢業', '英文中級', 11, 22, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('99c638f8-f688-4533-a30c-404b56abe433', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第15節', '英文新概念第51節', '大學畢業', '英文中級', 22, 55, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('a3e0d8ef-2d46-4420-ad9a-27fed9c8021f', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第八節', '英文新概念第八節DESC', '大學畢業', '英文中級', 10, 30, '您可以在每週六、週日預約下週的課程', '七天無理由退款', NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('bf254bdc-2c7d-4a8e-b6c3-6168e7b51a11', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '英文新概念第19節', '英文新概念第19節 desc', '大學畢業', '英文中級', 11, 111, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('d263db98-502c-4368-ba0e-8e4ce96b065c', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '英文新概念第14節', '英文新概念第14節', '大學畢業', '英文中級', 21, 30, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('d8312693-2c6c-4cdb-8714-c6eade7072ab', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第九節', '英文新概念第九節DESC', '大學畢業', '英文中級', 20, 60, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('e2336335-6844-4a99-a8fe-9ca920434665', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第13節', '英文新概念第13節DESC', '大學畢業', '英文中級', 33, 22, '無', '無', '無', '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('eb03b3dc-7047-41b9-9217-cf390dbe6639', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '廚藝課', '廚藝課 DESC', '所有年齡', '任何想學做菜的人', 11, 22, '廚藝課', '廚藝課', '廚藝課', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/course/rc-upload-1739616271889-52.jpg', '[{"week":"monday","orderTime":[]},{"week":"saturday","orderTime":[{"startTime":"14:00:00","endTime":"18:30:00","key":1}]},{"week":"sunday","orderTime":[{"startTime":"12:00:00","endTime":"16:30:00","key":1}]}]', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '2025-02-22 19:41:48', NULL),
	('ee336b2d-6ac7-48f6-b2d5-cb3266c59f13', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '英文新概念第三節', NULL, '男人', '多益300', 10, 30, NULL, NULL, NULL, '', NULL, NULL, '2025-02-22 19:41:48', NULL),
	('f0aea413-3742-41ff-b4a8-c4c8eea8c0db', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, 'Music Course', 'Music Course DESC', '所有人', '無限制', 10, 120, 'Music Course', 'Music Course', 'Music Course', '', NULL, '746e116e-f03d-45fc-88fe-867c530a0bf4', '2025-02-22 19:41:48', NULL),
	('f3580585-e2e4-4df5-a256-508ac4515ab6', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '用Google Earth穿越古今', '繼《地理課沒教的事：用Google Earth大開眼界》讓人驚豔，廖振順再以其專長的地理空間解讀能力，剖析古往今來各種演變，循著至聖先師孔子周遊列國的路線、郁永河來臺《裨海紀遊》的足跡，以及台北古城發展的都市變遷、宜蘭平原開墾與天然地形的微妙關係等。讓讀者的視野不再只局限於三度空間，而進一步擴展成含括時間的四度空間觀察。\n廖振順老師擅長以影音動畫配合Google Earth的立體地形結構，深入解說與地理學有關的氣候、人文、區域發展等，幫助讀者從嶄新的視角，以活化閱讀的方式去理解地理知識。', '所有人', '無限制', 10, 60, NULL, NULL, NULL, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/course/rc-upload-1739275028759-3.jpg', NULL, 'b53235f7-0ce1-483e-adeb-636a72219d70', '2025-02-22 19:41:48', NULL),
	('f817dab3-8334-4d87-a2e0-df21d5795925', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '英文新概念第20節', '英文新概念第20節 desc', '大學畢業', '英文中級', 20, 20, '222', '23', '444', '', '[{"week":"monday","orderTime":[{"startTime":"12:00:00","endTime":"12:30:00","key":1}]},{"week":"sunday","orderTime":[{"startTime":"17:00:00","endTime":"18:27:00","key":1}]}]', NULL, '2025-02-22 19:41:48', NULL),
	('fd101092-080f-4e43-aea2-277c4067805b', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '地理課程', '地理課程', '大學畢業', '英文中級', 11, 12, '地理課程', '地理課程', '地理課程', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/course/rc-upload-1739521012465-4.jpg', '[{"week":"wednesday","orderTime":[]},{"week":"thursday","orderTime":[{"startTime":"01:00:00","endTime":"23:30:00","key":1}]}]', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '2025-02-22 19:41:48', NULL);

-- 傾印  資料表 water-drop.course_teacher 結構
CREATE TABLE IF NOT EXISTS `course_teacher` (
  `courseId` varchar(36) NOT NULL,
  `teacherId` varchar(36) NOT NULL,
  PRIMARY KEY (`courseId`,`teacherId`),
  KEY `IDX_fdbf6887a6a7a59f2922ccb585` (`courseId`),
  KEY `IDX_61d480c5992261dc61922d373f` (`teacherId`),
  CONSTRAINT `FK_61d480c5992261dc61922d373fe` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fdbf6887a6a7a59f2922ccb5858` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.course_teacher 的資料：~9 rows (近似值)
INSERT INTO `course_teacher` (`courseId`, `teacherId`) VALUES
	('52efd96e-491c-41a4-b482-0d8cabd111ab', '54353f9c-fc5b-4e1c-937f-95e9c0a4982c'),
	('52efd96e-491c-41a4-b482-0d8cabd111ab', '857852af-f223-4e18-8cd4-4d8da6db2399'),
	('52efd96e-491c-41a4-b482-0d8cabd111ab', '99950af4-8941-469e-8ea1-bdb104281294'),
	('643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', '618ace65-5bc5-4a63-8f61-b0762605f177'),
	('643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', '74977ca3-0719-43ce-ae1f-9daa6b59427e'),
	('7a173e7b-2f6c-4875-921e-1040426c60f1', 'ea93713d-3909-45fe-8c13-de8ffb50ee93'),
	('eb03b3dc-7047-41b9-9217-cf390dbe6639', 'ea93713d-3909-45fe-8c13-de8ffb50ee93'),
	('f3580585-e2e4-4df5-a256-508ac4515ab6', 'ce6aa15d-7017-4b10-a7bd-b55026695b95'),
	('fd101092-080f-4e43-aea2-277c4067805b', '618ace65-5bc5-4a63-8f61-b0762605f177'),
	('fd101092-080f-4e43-aea2-277c4067805b', '71134def-fde7-442c-aa92-5ac22eebab4e'),
	('fd101092-080f-4e43-aea2-277c4067805b', 'c64d368e-686a-4eb3-911e-45c47cbabae6');

-- 傾印  資料表 water-drop.order 結構
CREATE TABLE IF NOT EXISTS `order` (
  `id` varchar(36) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL COMMENT '建立者',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `outTradeNo` varchar(255) NOT NULL DEFAULT '' COMMENT '訂單號',
  `tel` varchar(255) DEFAULT NULL COMMENT '手機號碼',
  `quantity` int(11) DEFAULT NULL COMMENT '數量',
  `amount` int(11) DEFAULT NULL COMMENT '總金額',
  `status` varchar(255) DEFAULT NULL COMMENT '支付狀態',
  `orgId` varchar(36) DEFAULT NULL,
  `productId` varchar(36) DEFAULT NULL,
  `studentId` varchar(36) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建立時間',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`id`),
  KEY `FK_662b6c543bee7c235257622ef4c` (`orgId`),
  KEY `FK_88991860e839c6153a7ec878d39` (`productId`),
  KEY `FK_b7a4e35eafdfef47c14e5ac5079` (`studentId`),
  CONSTRAINT `FK_662b6c543bee7c235257622ef4c` FOREIGN KEY (`orgId`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_88991860e839c6153a7ec878d39` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_b7a4e35eafdfef47c14e5ac5079` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.order 的資料：~40 rows (近似值)
INSERT INTO `order` (`id`, `createdBy`, `updatedBy`, `deletedAt`, `deletedBy`, `outTradeNo`, `tel`, `quantity`, `amount`, `status`, `orgId`, `productId`, `studentId`, `createdAt`, `updatedAt`) VALUES
	('037611c4-91ca-45f6-8dc1-fbdab4f642a1', NULL, NULL, NULL, NULL, '0498d90c91754528924195ea62f13dae', '0934153410', 1, 11, 'SUCCESS', '746e116e-f03d-45fc-88fe-867c530a0bf4', 'dd9f5295-1f3a-48e3-adf3-059136147a44', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('06ce29c6-2859-4b0a-8fbf-a27e0090c2d4', NULL, NULL, NULL, NULL, 'bf03bbd1fef24b1682c137720b0681a0', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('09a10388-a75d-47cb-8dc1-7cabb22a9b69', NULL, NULL, NULL, NULL, 'e793d84fb3494726b2f9bbabdd809772', '', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '77316552-5a4e-4d29-8eed-d1a32d33d536', '2025-02-22 19:41:49', NULL),
	('174b1290-87fe-45a9-b1dd-91019bba445f', NULL, NULL, NULL, NULL, '948ae6d060da496fad7e36a1db76f43d', '0934153410', 1, 50, 'SUCCESS', 'b53235f7-0ce1-483e-adeb-636a72219d70', 'a727cd1c-591c-44a4-ac6d-c200227f31f0', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('192aecec-64fa-4121-b486-9fdefd8842ee', NULL, NULL, NULL, NULL, 'f013d8c40ca249ffa151ade794113d34', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('225bcd04-1c2d-469b-a083-1f31cdd29f08', NULL, NULL, NULL, NULL, 'a4f21ee8480544b09eabb5646beb0c82', '0934153410', 1, 323, 'SUCCESS', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '675b422e-692b-470a-893f-dfe8afe1c0c0', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('29cc93cd-b588-499c-a9f5-4790d4911953', NULL, NULL, NULL, NULL, '5c0ed8ed491148da82785904aba4c932', '0934153410', 1, 99, 'SUCCESS', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'bb772329-4975-4b4f-8082-331336f825a8', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('35835de2-1475-4c0f-835f-7eac022815e9', NULL, NULL, NULL, NULL, '6aca09d941e440c3b318cd7146b2b452', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('3b951651-e5ae-4372-9f32-c967fe6a026a', NULL, NULL, NULL, NULL, '95a08c73cd5948389a8d55796042f02d', '0934153410', 1, 11, 'SUCCESS', '746e116e-f03d-45fc-88fe-867c530a0bf4', 'dd9f5295-1f3a-48e3-adf3-059136147a44', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('51e98f14-2c94-4262-a15e-9201fd4d7e10', NULL, NULL, NULL, NULL, '9d5397251a274e3d932d43f8630500a4', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('5270e7f0-b0b7-46e8-b1e5-2de8c0e518ab', NULL, NULL, NULL, NULL, '26087a6c666c4cdda880e90b18cc0977', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('5e472fe5-b972-49f8-8075-52bcf1593057', NULL, NULL, NULL, NULL, '3fd5eecb7e33495a87190c48c6e86673', '0934153410', 3, 333, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('5f6912c3-f6d3-4b7d-b6a6-af840d846f3d', NULL, NULL, NULL, NULL, 'f49647e0ef8749a9954f4f4c0921904b', '0934153410', 1, 50, 'SUCCESS', 'b53235f7-0ce1-483e-adeb-636a72219d70', 'a727cd1c-591c-44a4-ac6d-c200227f31f0', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('6003d68c-476d-4198-b57c-4bc63241f4aa', NULL, NULL, NULL, NULL, '6587d21ca2a54e7e9069215b3d41b661', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('6a7e7ac6-1f25-4f0f-92fa-8417dd1d43aa', NULL, NULL, NULL, NULL, 'cebd368ddaa84f9c954c27dab778dda9', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('6b1dbe32-efc1-48fe-b9b2-d4c6ec073618', NULL, NULL, NULL, NULL, '6b40535859604a89b3f2eb8a6459e0bf', '0934153410', 1, 50, 'SUCCESS', 'b53235f7-0ce1-483e-adeb-636a72219d70', 'a727cd1c-591c-44a4-ac6d-c200227f31f0', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('76bbcd65-1148-4147-965b-cf0bce9fcd6d', NULL, NULL, NULL, NULL, 'e2e0e94bb2824cd29d898496c0508ada', '0934153410', 1, 222, 'SUCCESS', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '04314e1f-0388-4c6c-8817-b44bd46f872e', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('78d2dbb8-d680-44e3-a0f1-5aa06ae2ea12', NULL, NULL, NULL, NULL, '1ef03b5ea5a841899d2f5052fd53cc8f', '0934153410', 1, 250, 'SUCCESS', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '3626afd1-359c-4c46-9029-03f3943d2d6b', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('7a0f115b-b644-457a-b4b7-5eb061230d4d', NULL, NULL, NULL, NULL, 'f5b5d5546a0447d2ad8481c00cba407c', '', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '77316552-5a4e-4d29-8eed-d1a32d33d536', '2025-02-22 19:41:49', NULL),
	('7ccec5e1-a776-43ad-bbdb-3ae8ea41a527', NULL, NULL, NULL, NULL, '28704327d20e47409d5dc5df28048632', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('89a74d12-33af-42b4-ab13-1bfb231232c9', NULL, NULL, NULL, NULL, '26c9a9692d094102b1181799cffaf0aa', '0934153410', 1, 99, 'SUCCESS', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'bb772329-4975-4b4f-8082-331336f825a8', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('8f085be1-d8b1-45b8-ace3-a3ce1e29c45a', NULL, NULL, NULL, NULL, 'fc6f463ca1924a5aaf9ed8b8de96f5f2', '0934153410', 1, 11, 'SUCCESS', '746e116e-f03d-45fc-88fe-867c530a0bf4', 'dd9f5295-1f3a-48e3-adf3-059136147a44', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('937a2fc4-e668-495d-b643-48ae0249a56f', NULL, NULL, NULL, NULL, '7afaa2d2329b4fb5a50fadb79c506d6e', '0934153410', 1, 222, 'SUCCESS', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '04314e1f-0388-4c6c-8817-b44bd46f872e', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('944644a9-e5ea-4daf-bcbf-bb4b9915e7f1', NULL, NULL, NULL, NULL, '105bb59d12a64ed7b38c8019dab2291b', '0934153410', 1, 250, 'SUCCESS', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '3626afd1-359c-4c46-9029-03f3943d2d6b', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('94b2e353-fd8f-47b4-82e3-c8dd8b97ef3d', NULL, NULL, NULL, NULL, '8569aa9b500c40f9878ea49df040b704', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('9629c9ef-820c-4532-a902-5f058d615760', NULL, NULL, NULL, NULL, '7ba881006b2a4133831f5eda0e906e64', '0934153410', 1, 250, 'SUCCESS', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '3626afd1-359c-4c46-9029-03f3943d2d6b', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('9e465324-444d-4dc5-9916-08195280bb48', NULL, NULL, NULL, NULL, '2f17bf7a1c094a60a5110407bdbce9ad', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('a89dd151-fd4e-4d59-8651-1c97df99d013', NULL, NULL, NULL, NULL, '898a6bd7e8aa49d1a474af125fea6f5e', '0934153410', 1, 99, 'SUCCESS', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'bb772329-4975-4b4f-8082-331336f825a8', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('acb98e43-0e75-4d21-8eb1-2ed2b0ee034f', NULL, NULL, NULL, NULL, '341fce52ee074a3e85e79d1b03a6ce3e', '', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '77316552-5a4e-4d29-8eed-d1a32d33d536', '2025-02-22 19:41:49', NULL),
	('b1260563-4d66-4a36-bdfa-65a45f31d7dd', NULL, NULL, NULL, NULL, 'fa29d7b277834e31b47363984bdef0cc', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('bb8f3e62-1fbf-4581-9d74-aa7c8a04da47', NULL, NULL, NULL, NULL, 'edbcc618530c4ed49fe7bf6fbbb1756e', '', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '77316552-5a4e-4d29-8eed-d1a32d33d536', '2025-02-22 19:41:49', NULL),
	('bf6bb17a-5147-435d-b60c-5447583d9c36', NULL, NULL, NULL, NULL, '12554d792f66482b8421c2cf85ace0ee', '0934153410', 1, 50, 'SUCCESS', 'b53235f7-0ce1-483e-adeb-636a72219d70', 'a727cd1c-591c-44a4-ac6d-c200227f31f0', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('c2f14951-bf30-4317-b289-14df4152a235', NULL, NULL, NULL, NULL, '8b2fb04c581244929946f74f87425814', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('c55072b9-a6c8-4170-a3ed-9d1d3b0c0b0b', NULL, NULL, NULL, NULL, '23d0840423fa47098dd14f46afbf04f3', '0934153410', 1, 50, 'SUCCESS', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '7953b7c5-726c-487d-a04a-caa0a233ffd9', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('c7e2a2df-3f32-4f04-a27b-6ecf7a55ecc1', NULL, NULL, NULL, NULL, 'f75187951a9d4c808dc9e2479abfe8db', '0934153410', 1, 99, 'SUCCESS', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'bb772329-4975-4b4f-8082-331336f825a8', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('c8278a1a-fd88-4b20-93cb-e0bddd78b265', NULL, NULL, NULL, NULL, '8ee3d486d8e243ca9e5690da349cd757', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('d0b7c1e0-aa00-421d-afe4-921481bb869e', NULL, NULL, NULL, NULL, 'fab23edbb9994578a6fe65388e661559', '0934153410', 1, 250, 'SUCCESS', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '3626afd1-359c-4c46-9029-03f3943d2d6b', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('da61fbfd-7312-4dfb-94ae-2d00789ad6d8', NULL, NULL, NULL, NULL, 'c68b0a37b7b045a485f88699090b6d2c', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('e1381fcd-cb32-40b4-a275-f24901191b34', NULL, NULL, NULL, NULL, 'da4d335932784f1384cdec3f2caebb43', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL),
	('e13f7511-e071-4a7a-93a8-ab76d37b3848', NULL, NULL, NULL, NULL, '8a5ab2fbed5547048cab01f11c3d1481', '0934153410', 1, 111, 'SUCCESS', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '527ca406-4032-4861-8e20-1875ef35371f', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '2025-02-22 19:41:49', NULL);

-- 傾印  資料表 water-drop.organization 結構
CREATE TABLE IF NOT EXISTS `organization` (
  `id` varchar(36) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL COMMENT '建立者',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `businessLicense` varchar(255) NOT NULL COMMENT '營業執照',
  `identityCardFrontImg` varchar(255) NOT NULL COMMENT '法人身份證正面',
  `identityCardBackImg` varchar(255) NOT NULL COMMENT '法人身份證正面',
  `tags` text COMMENT '標簽以，隔開',
  `description` text COMMENT '簡介',
  `name` varchar(255) DEFAULT '' COMMENT '機構名',
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `longitude` varchar(255) DEFAULT NULL COMMENT '經度',
  `latitude` varchar(255) DEFAULT NULL COMMENT '緯度',
  `tel` varchar(255) DEFAULT NULL COMMENT '電话',
  `deletedAt` datetime(6) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建立時間',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.organization 的資料：~18 rows (近似值)
INSERT INTO `organization` (`id`, `createdBy`, `updatedBy`, `deletedBy`, `businessLicense`, `identityCardFrontImg`, `identityCardBackImg`, `tags`, `description`, `name`, `logo`, `address`, `longitude`, `latitude`, `tel`, `deletedAt`, `createdAt`, `updatedAt`) VALUES
	('19627fbf-6d2c-41f7-b0c0-f7e837b38602', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', NULL, 'commitOrganizationt_description', '慕課17', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, NULL, '0919235377', '2025-01-04 02:15:00.000000', '2025-02-22 19:41:48', NULL),
	('277bce08-80ca-4252-ae78-40ad79d7dd0a', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'test', 'commitOrganizationt_description', '高雄店', 'https://i.imgur.com/pNUSaIL.jpg', '高雄市', '23', '34', '0919235388', NULL, '2025-02-22 19:41:48', NULL),
	('2fbed9ac-7c63-49e8-abf3-8800ce4022d1', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'test', 'commitOrganizationt_description', '彰化店', 'https://i.imgur.com/pNUSaIL.jpg', '彰化縣', '23', '44', '0919235388', NULL, '2025-02-22 19:41:48', NULL),
	('5e882a95-3696-4dd8-8089-156e2afcac97', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'test', 'commitOrganizationt_description', '雲林店', 'https://i.imgur.com/pNUSaIL.jpg', '雲林縣', '34', '23', '0919235388', NULL, '2025-02-22 19:41:48', NULL),
	('6db5fed9-9029-4951-84b3-8554e0a2c45f', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'test', 'commitOrganizationt_description', '苗栗店', 'https://i.imgur.com/pNUSaIL.jpg', '苗栗縣', '32', '22', '0919235388', NULL, '2025-02-22 19:41:48', NULL),
	('6e3a37c7-b4c2-42cd-95ac-569ca013c2c0', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'test', 'commitOrganizationt_description', '台南店', 'https://i.imgur.com/pNUSaIL.jpg', '店南市店', '214', '2341', '0919235388', NULL, '2025-02-22 19:41:48', NULL),
	('746e116e-f03d-45fc-88fe-867c530a0bf4', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/organization/rc-upload-1735675855479-59.gif', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'tttt', '“Ohana means family, family means nobody gets left behind or forgotten.”\n     歐哈那～在夏威夷文是家人的意思。對我們來說，家人是最重要的～每個孩子都是父母最心愛的寶貝！\nOhana Jellies, 歐哈那共享空間，提供親子友善優質的活動場地，\n讓媽媽爸爸們能夠安心地陪伴小寶貝們在舒適的環境下共學成長。\n來參與活動的大人和孩子們都能在這裡盡情創作、學習、激發大家的無限想像力，\n一起創造更多美好的Ohana歡樂回憶！', '新北店', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/organization/rc-upload-1738067741460-86.jpg', '220新北市板橋區縣民大道一段183號1樓', '121.45854929342961', '25.012805726327084', '0227070207', NULL, '2025-02-22 19:41:48', NULL),
	('83879d10-1e34-49f3-aa54-f188dfa45b00', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', NULL, 'commitOrganizationt_description', '慕課2', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, NULL, '0919235388', '2025-01-04 02:14:50.000000', '2025-02-22 19:41:48', NULL),
	('85325cea-9153-410e-8730-c6d9121600f4', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'test', 'commitOrganizationt_description', '嘉義店', 'https://i.imgur.com/pNUSaIL.jpg', '嘉義市店', '23', '434', '0919235388', NULL, '2025-02-22 19:41:48', NULL),
	('860983a7-8461-4a88-82a8-4a2ebbba1414', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'c0b948d3-4aa3-4ee2-8f6e-8f553a8b82fb', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', NULL, 'commitOrganizationt_description', '慕課18', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, NULL, '0919235388', '2025-01-04 02:16:54.000000', '2025-02-22 19:41:48', NULL),
	('a427c675-0923-4b4e-bbd8-15d4b03cda57', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'test', 'commitOrganizationt_description', '新竹店', 'https://i.imgur.com/pNUSaIL.jpg', '新竹縣店', '123', '41234', '0919235388', NULL, '2025-02-22 19:41:48', NULL),
	('b53235f7-0ce1-483e-adeb-636a72219d70', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'test', '每一幅畫，都會遇到喜歡的人\n慢慢地欣賞，用心感受，\n與它深情對話。\n站在一個角落，靜靜的看過去，\n在這裡，每一幅畫，都會遇到喜歡的人。\n您可以在線上直接訂購，也可以親臨A12藝術空間欣賞原作後再決定。A12與大師同步，分享藝術之美，妝點您的室內空間與不凡品味。', '宜蘭店', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/organization/rc-upload-1738494113118-51.jpg', '宜蘭縣', '121.74052344480441', '24.79164183680344', '039333396', NULL, '2025-02-22 19:41:48', NULL),
	('cae6ebbc-7415-46c6-b5b3-e6f85e465038', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'test', 'commitOrganizationt_description', '南投店', 'https://i.imgur.com/pNUSaIL.jpg', '南投縣', '23', '44', '0919235388', NULL, '2025-02-22 19:41:48', NULL),
	('d0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/organization/rc-upload-1735681353107-126.gif', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1735676495570-54.bmp', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1735676495570-58.bmp', '免費WIFI,一對一講課', '因為很多理由想要學做菜，因此我們成立了Yamicook\n為了愛自己-- 做菜能填飽飢腸轆轆的胃，能帶來幸福感，能療癒疲憊的身心。\n為了愛家人-- 家的溫度來自廚房，萬事莫大於讓家人吃得飽，吃得香，吃得健康。\n為了愛更多人-- 食物是跨越語言與文字的溝通媒介，有愛才有一桌子美味。\nYamicook把好老師、好食材、好料理、好環境、做美好的連結，一起玩味從食材到菜餚的愉悅過程，體驗生活的美好，也努力成為一個推廣飲食文化、烹飪教育及社會公益的平台。', '桃園店', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/organization/rc-upload-1738067741460-77.jpg', '330桃園市桃園區民富九街174巷6號', '121.308617495371', '25.008277476546937', '033465688', NULL, '2025-02-22 19:41:48', NULL),
	('d127de1a-e1c0-4187-831f-33fba2ee9a51', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'test', 'commitOrganizationt_description', '基隆店', 'https://i.imgur.com/pNUSaIL.jpg', '基隆市店', '23', '34', '0919235388', NULL, '2025-02-22 19:41:48', NULL),
	('e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'test', '英文全方位能力培養\n學習一種語言，必須從聽、說、讀、寫四方面扎根，英文能力也必須如此培養，才能達到整體能力的提升。可惜的是國內的英文教育，不論是學校的正規學習或補習班的課後加強，幾乎都著重在閱讀和寫作能力的訓練，聽力和口說能力卻無法成長，導致學生再怎麼用功念書，結果卻發現無法在現實生活中應用。這種學習的挫折反覆發生後，往往只能選擇逃避，甚至放棄英文。\n其實很多人都渴望能找到一條捷徑，可以在短時間內加強英語能力，試圖洗心革面，買些英文字卡、單字書或是字典等，強制規定自己每天背20個單字，然而第一天背了20個、第二天背了10個、第三天背了5個…….之後看到單字本，就拿起來又放下，不再碰了。而給自己的理由是─忙！但其實忙終究只是藉口，背後真正的原因其實是，辛苦背了那麼多單字卻沒有用武之地，簡單來說就是沒有一個環境可以讓你實際應用這些單字，這就是為什麼我們常聽人說學英文到國外學是最速成的方法。\n有許多家長意識到英文的重要性，在兒女年幼時就送去讀雙語幼稚園或到兒童美語上課。要不了多久時間，就能看到孩子們自然而然地使用英語和老師、同學們交談，也能看懂一些簡易的英語書籍。但是到了國小高年級或國中時', '台北店', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/organization/rc-upload-1738067741460-68.jpg', '103台北市大同區承德路一段66號2樓', '121.51716747259727', '25.05411884576727', '5555555', NULL, '2025-02-22 19:41:48', NULL),
	('e22252f5-f59a-4fed-be5e-d016b6adb8a8', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'test', 'commitOrganizationt_description', '臺中店', 'https://i.imgur.com/pNUSaIL.jpg', '臺中市店', '4123', '1243', '0919235388', NULL, '2025-02-22 19:41:48', NULL),
	('f5268a14-0490-4b1c-806b-95d38cd8fe02', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'https://i.imgur.com/pNUSaIL.jpg', 'test', 'commitOrganizationt_description', '嘉義店', 'https://i.imgur.com/pNUSaIL.jpg', '嘉義縣', '23', '33', '0919235388', NULL, '2025-02-22 19:41:48', NULL);

-- 傾印  資料表 water-drop.org_image 結構
CREATE TABLE IF NOT EXISTS `org_image` (
  `id` varchar(36) NOT NULL,
  `url` text NOT NULL COMMENT '地址',
  `remark` varchar(255) DEFAULT NULL COMMENT 'remark',
  `orgIdForFrontId` varchar(36) DEFAULT NULL,
  `orgIdForRoomId` varchar(36) DEFAULT NULL,
  `orgIdForOtherId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_63d62c57996b1fc20a02e80c508` (`orgIdForFrontId`),
  KEY `FK_8bae051d6ee0069e520df974433` (`orgIdForRoomId`),
  KEY `FK_21c6620c4a108142b673c70697a` (`orgIdForOtherId`),
  CONSTRAINT `FK_21c6620c4a108142b673c70697a` FOREIGN KEY (`orgIdForOtherId`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_63d62c57996b1fc20a02e80c508` FOREIGN KEY (`orgIdForFrontId`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_8bae051d6ee0069e520df974433` FOREIGN KEY (`orgIdForRoomId`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.org_image 的資料：~22 rows (近似值)
INSERT INTO `org_image` (`id`, `url`, `remark`, `orgIdForFrontId`, `orgIdForRoomId`, `orgIdForOtherId`) VALUES
	('1021099c-6218-46c9-b577-07622f0aa888', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, '277bce08-80ca-4252-ae78-40ad79d7dd0a', NULL),
	('21765b55-e8b5-4033-b490-ec64d7910adb', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, '860983a7-8461-4a88-82a8-4a2ebbba1414', NULL),
	('3245adb1-7f05-46da-8c92-f4dd4e00b7c0', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, 'd127de1a-e1c0-4187-831f-33fba2ee9a51', NULL),
	('399154f2-9aef-4f7f-9c8f-f23fa9a5469a', 'https://i.imgur.com/UZ0sMGy.jpg', NULL, NULL, '83879d10-1e34-49f3-aa54-f188dfa45b00', NULL),
	('492c1caa-061a-4e6a-b76a-fa591f7955dd', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, '85325cea-9153-410e-8730-c6d9121600f4', NULL),
	('4d709346-514e-4452-920f-3b8ee2f46684', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, '5e882a95-3696-4dd8-8089-156e2afcac97', NULL),
	('51e3dfbe-8d72-46a2-8ee0-badb015f73da', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, '19627fbf-6d2c-41f7-b0c0-f7e837b38602', NULL),
	('5349a9fa-dc94-4c09-b1ea-42c6dda48031', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, 'e22252f5-f59a-4fed-be5e-d016b6adb8a8', NULL),
	('6689757b-f5f8-4839-aaa5-2f307875fc29', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, 'f5268a14-0490-4b1c-806b-95d38cd8fe02', NULL),
	('713bfa83-9435-455e-8322-ea5b843bde68', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, 'a427c675-0923-4b4e-bbd8-15d4b03cda57', NULL),
	('76da25e4-6a32-42b1-8a03-2bbd8e6c5c19', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, 'a427c675-0923-4b4e-bbd8-15d4b03cda57', NULL),
	('7d65d839-60c1-4a81-9ac5-ff7085df589a', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, '83879d10-1e34-49f3-aa54-f188dfa45b00', NULL),
	('8a7ac00c-27b9-471f-8b3b-ec468529739c', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1738494113118-57.jpg', NULL, NULL, NULL, 'b53235f7-0ce1-483e-adeb-636a72219d70'),
	('9b2e6b99-63b6-4e60-89b6-e0536c804a96', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, '6e3a37c7-b4c2-42cd-95ac-569ca013c2c0', NULL),
	('9ec6cdfd-665d-49f1-84e2-eef178eae7ef', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1738067741460-24.jpg', NULL, NULL, 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', NULL),
	('ae63cd84-b89e-4722-8186-4c6e9a0a353f', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1738494113118-55.jpg', NULL, NULL, 'b53235f7-0ce1-483e-adeb-636a72219d70', NULL),
	('af6c3cc1-32d2-4c7a-84e1-cdd98b6ee47d', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1738067741460-26.jpg', NULL, NULL, NULL, 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591'),
	('b04a7ec4-34d0-454a-971d-cd8d63e9dd07', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1738067741460-37.jpg', NULL, NULL, '746e116e-f03d-45fc-88fe-867c530a0bf4', NULL),
	('b2ee44c8-3a38-4a24-bd7e-97fdceda3e04', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1738067741460-52.jpg', NULL, NULL, NULL, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1'),
	('c3a0b39d-08d2-4128-9956-707f7c79b6de', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, 'cae6ebbc-7415-46c6-b5b3-e6f85e465038', NULL),
	('cc7bcbd5-4cb7-428b-8bd8-115b4885b58b', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, '6db5fed9-9029-4951-84b3-8554e0a2c45f', NULL),
	('cdd55028-12c0-4d93-8871-e83a1b44116c', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1738067741460-22.jpg', NULL, 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', NULL, NULL),
	('dcb1dde8-7dd9-49d4-a9ed-8bc30566f32e', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1738067741460-39.jpg', NULL, NULL, NULL, '746e116e-f03d-45fc-88fe-867c530a0bf4'),
	('de1754eb-b6f4-4901-b7a3-ec5a6fc89afc', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1738067741460-48.jpg', NULL, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', NULL, NULL),
	('df8ac941-582c-4aaf-8c43-b659b7dc654b', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1738067741460-35.jpg', NULL, '746e116e-f03d-45fc-88fe-867c530a0bf4', NULL, NULL),
	('e333caae-bfec-4f9a-b3f8-3673593a2a15', 'https://i.imgur.com/pNUSaIL.jpg', NULL, NULL, '2fbed9ac-7c63-49e8-abf3-8800ce4022d1', NULL),
	('eefbfbfa-4592-4a97-9cc0-00d5e68e2006', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1738494113118-53.jpg', NULL, 'b53235f7-0ce1-483e-adeb-636a72219d70', NULL, NULL),
	('fe5d65ef-670f-4112-9707-04079e942e27', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/rc-upload-1738067741460-50.jpg', NULL, NULL, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', NULL);

-- 傾印  資料表 water-drop.product 結構
CREATE TABLE IF NOT EXISTS `product` (
  `id` varchar(36) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL COMMENT '建立者',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '暱稱',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '簡介',
  `type` varchar(255) DEFAULT NULL COMMENT '分類',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '庫存總數',
  `curStock` int(11) NOT NULL DEFAULT '0' COMMENT '當前庫存',
  `buyNumber` int(11) NOT NULL DEFAULT '0' COMMENT '賣出去多少',
  `limitBuyNumber` int(11) NOT NULL DEFAULT '-1' COMMENT '每人限購數量',
  `coverUrl` varchar(255) NOT NULL COMMENT '封面圖',
  `bannerUrl` varchar(255) NOT NULL COMMENT '頭部banner圖',
  `originalPrice` float NOT NULL COMMENT '原價',
  `preferentialPrice` float NOT NULL COMMENT '優惠價',
  `orgId` varchar(36) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'UN_LIST' COMMENT '商品狀態：上架，下架',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建立時間',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`id`),
  KEY `FK_4001796e6dec57fa1424e6ffe22` (`orgId`),
  CONSTRAINT `FK_4001796e6dec57fa1424e6ffe22` FOREIGN KEY (`orgId`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.product 的資料：~21 rows (近似值)
INSERT INTO `product` (`id`, `createdBy`, `updatedBy`, `deletedAt`, `deletedBy`, `name`, `desc`, `type`, `stock`, `curStock`, `buyNumber`, `limitBuyNumber`, `coverUrl`, `bannerUrl`, `originalPrice`, `preferentialPrice`, `orgId`, `status`, `createdAt`, `updatedAt`) VALUES
	('04314e1f-0388-4c6c-8817-b44bd46f872e', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '音樂課', '音樂課DESC', 'music', 20, 18, 2, 5, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737563534882-55.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737563534882-57.jpg', 555, 222, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('1c4fad33-c6f6-47c4-a96c-2e36d9334bc1', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '2025-01-17 19:23:07.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '數學體驗課4141節', '數學體驗課4444節', NULL, 10, 0, 0, 1, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737111197018-15.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/banner%281%29.jpg', 200, 99, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('3626afd1-359c-4c46-9029-03f3943d2d6b', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '廚藝課', '廚藝課 DESC', 'cook', 10, 0, 0, 1, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737563534882-49.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737563534882-51.jpg', 500, 250, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('3cbdfc35-4b0e-47c2-9798-9ea900d22ed3', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, 'English Course 3', 'English Course 3 DESC', 'foreign', 55, 0, 0, 1, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-23.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-25.jpg', 5000, 1000, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('527ca406-4032-4861-8e20-1875ef35371f', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '廚師課', '廚師課 DESC', 'cook', 100, 87, 11, 50, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737886519410-227.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737886519410-229.jpg', 223, 111, 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', 'LIST', '2025-02-22 19:41:48', NULL),
	('5833cbf5-7f26-48c9-83a1-5d8084158532', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, '2025-01-17 19:23:53.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '數學體驗課3節', '數學體驗課3節', NULL, 10, 0, 0, 1, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737111197018-15.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/banner%281%29.jpg', 200, 99, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('5f090346-4695-41bc-88d5-9f335421282b', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '2025-01-17 19:26:26.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '數學體驗課33節', '數學體驗課3節', NULL, 10, 0, 0, 1, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737111197018-15.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/banner%281%29.jpg', 200, 99, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('675b422e-692b-470a-893f-dfe8afe1c0c0', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, 'Englishg Course 2', 'Englishg Course2 DESC', 'foreign', 100, 0, 0, 10, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-17.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-19.jpg', 5555, 323, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('6d3742d7-a9b1-4455-bc69-6e2340e6e92a', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, 'Arts lessons', 'arts lessons DESC', 'art', 100, 0, 0, 2, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-11.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-13.jpg', 500, 10, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('6e54a420-70d3-4e7d-b9e2-fe5534b15ea2', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '法式料理課', '米其林主廚帶你輕鬆做｜讓每一餐都充滿期待的居家料理課', 'cook', 50, 50, 0, 10, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1739616271889-28.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1739616271889-30.jpg', 456, 123, 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', 'LIST', '2025-02-22 19:41:48', NULL),
	('6ecd4486-12b2-47f9-a8f6-0b93ade5d8de', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '法式料理課', '法式料理課 DESC', 'cook', 100, 0, 0, 1, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-35.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-37.jpg', 9999, 999, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('7953b7c5-726c-487d-a04a-caa0a233ffd9', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '美術課', '美術課 DESC', 'art', 100, 99, 1, 1, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737563534882-43.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737563534882-45.jpg', 100, 50, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('8483af38-a3c5-4e52-97a4-fc927f29438b', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, '2025-01-17 19:26:06.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '數學體驗課3節', '數學體驗課3節', NULL, 10, 0, 0, 1, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737111197018-15.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/banner%281%29.jpg', 200, 99, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('857b0eda-88df-4060-a02b-93a7fc56f49d', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '7七天英文課', '七天英文課,DESC', 'foreign', 100, 0, 0, 1, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737624328481-3.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737624328481-5.jpg', 100, 49, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('8d812ad4-015b-4d25-81fb-fb50cbcab0d0', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '數學體驗課3節', '數學體驗課3節', 'math', 10, 0, 0, 1, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737111197018-15.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/banner%281%29.jpg', 200, 99, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('a727cd1c-591c-44a4-ac6d-c200227f31f0', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '美術課', '關於蘇荷\n創校歷史:\n1986年 美國紐約教學中心成立\n1991年 桃園西門教室成立\n1993年 桃園青溪教室成立\n1994年 台北城中教室‧台中教室成立\n1995年 中壢中原教室成立\n1996年 桃園南崁教室成立\n1997年 台北東區教室成立\n1998年 新竹明湖教室成立\n1999年 美國舊金山‧桃園龍潭教室成立\n2000年 台北天母教室‧台北樹林教室‧中壢平鎮教室成立\n2001年 美國矽谷區‧', 'art', 20, 16, 12, 10, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1738494113118-68.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1738494113118-70.jpg', 100, 50, 'b53235f7-0ce1-483e-adeb-636a72219d70', 'LIST', '2025-02-22 19:41:48', NULL),
	('b33d6b80-ce0d-4ca5-aa97-83ad767c1315', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, 'Music Coruse 2', 'Music Coruse 2 DESC', 'music', 100, 0, 0, 2, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-5.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-7.jpg', 5000, 200, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('bb772329-4975-4b4f-8082-331336f825a8', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '數學體驗課1節', '數學體驗課1節', 'math', 10, 7, 13, 10, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737111197018-15.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/banner%281%29.jpg', 200, 99, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('cc36cced-03ed-4781-9c79-630ed8dd1bb2', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '鋼琴課', '鋼琴課', 'music', 100, 0, 0, 2, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-43.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-45.jpg', 555, 400, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL),
	('dd9f5295-1f3a-48e3-adf3-059136147a44', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, '音樂課', '音樂課 DESC', 'music', 100, 99, 1, 55, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737886519410-268.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737886519410-270.jpg', 234, 11, '746e116e-f03d-45fc-88fe-867c530a0bf4', 'LIST', '2025-02-22 19:41:48', NULL),
	('f7e4afd7-cfb4-410e-93de-54c57188fd7c', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, 'Math Course 2', 'Math Course 2 DESC', 'math', 10, 0, 0, 10, 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-29.jpg', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/products/rc-upload-1737800508373-31.jpg', 255, 15, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'LIST', '2025-02-22 19:41:48', NULL);

-- 傾印  資料表 water-drop.product_card 結構
CREATE TABLE IF NOT EXISTS `product_card` (
  `productId` varchar(36) NOT NULL,
  `cardId` varchar(36) NOT NULL,
  PRIMARY KEY (`productId`,`cardId`),
  KEY `IDX_ca2e039254a7910e13e7a4fdc0` (`productId`),
  KEY `IDX_82f80b472ac8665b1235da4bac` (`cardId`),
  CONSTRAINT `FK_82f80b472ac8665b1235da4bacc` FOREIGN KEY (`cardId`) REFERENCES `card` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ca2e039254a7910e13e7a4fdc04` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.product_card 的資料：~9 rows (近似值)
INSERT INTO `product_card` (`productId`, `cardId`) VALUES
	('04314e1f-0388-4c6c-8817-b44bd46f872e', '77523ad7-31f7-4b45-b11e-786c810a5e4b'),
	('04314e1f-0388-4c6c-8817-b44bd46f872e', 'cd8c6366-7d72-474b-a3d1-9a3a758b6ed3'),
	('04314e1f-0388-4c6c-8817-b44bd46f872e', 'dd5eb17e-1d88-43c7-97c8-af6ca1577385'),
	('04314e1f-0388-4c6c-8817-b44bd46f872e', 'ef3b7690-49cb-4b3f-9cf2-aafb992362e0'),
	('527ca406-4032-4861-8e20-1875ef35371f', '78a4a1e6-cb5e-44a0-9b3a-6668d036a967'),
	('527ca406-4032-4861-8e20-1875ef35371f', 'ba6d8ddb-9925-4443-9821-0f40c3e1097e'),
	('6e54a420-70d3-4e7d-b9e2-fe5534b15ea2', '98cea68c-7795-4bf2-9943-fea64f23b278'),
	('6e54a420-70d3-4e7d-b9e2-fe5534b15ea2', 'c2f2a6bd-c536-4fb8-820c-209d0314c36e'),
	('7953b7c5-726c-487d-a04a-caa0a233ffd9', 'eb4b41a2-2d3b-494c-9360-f3a98cc04d5d'),
	('a727cd1c-591c-44a4-ac6d-c200227f31f0', 'f7581998-36b0-4797-bcf5-59fdca54478f'),
	('dd9f5295-1f3a-48e3-adf3-059136147a44', '835ed431-9574-43d8-bd09-fbc168c8359f');

-- 傾印  資料表 water-drop.schedule 結構
CREATE TABLE IF NOT EXISTS `schedule` (
  `id` varchar(36) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL COMMENT '建立者',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `schoolDay` timestamp NULL DEFAULT NULL COMMENT '上課日期',
  `startTime` varchar(255) DEFAULT NULL COMMENT '開始時間',
  `endTime` varchar(255) DEFAULT NULL COMMENT '結束時間',
  `limitNumber` int(11) DEFAULT NULL COMMENT '人數限制',
  `orgId` varchar(36) DEFAULT NULL,
  `courseId` varchar(36) DEFAULT NULL,
  `teacherId` varchar(36) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '建立時間',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`id`),
  KEY `FK_fa7e493b5b034ac3951f1e1cd54` (`orgId`),
  KEY `FK_be84bbdf75cfb618d393a7f1194` (`courseId`),
  KEY `FK_7c4e49233bde738d80d6eae6805` (`teacherId`),
  CONSTRAINT `FK_7c4e49233bde738d80d6eae6805` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_be84bbdf75cfb618d393a7f1194` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_fa7e493b5b034ac3951f1e1cd54` FOREIGN KEY (`orgId`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.schedule 的資料：~15 rows (近似值)
INSERT INTO `schedule` (`id`, `createdBy`, `updatedBy`, `deletedAt`, `deletedBy`, `schoolDay`, `startTime`, `endTime`, `limitNumber`, `orgId`, `courseId`, `teacherId`, `createdAt`, `updatedAt`) VALUES
	('1051d15a-e810-4261-9f88-5f9bf07492d1', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-16 16:00:00', '15:00:00', '23:59:00', 11, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', '618ace65-5bc5-4a63-8f61-b0762605f177', '0000-00-00 00:00:00', NULL),
	('1126090a-7650-4829-9302-6266b423d840', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-16 16:00:00', '12:00:00', '23:59:00', 11, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '52efd96e-491c-41a4-b482-0d8cabd111ab', '54353f9c-fc5b-4e1c-937f-95e9c0a4982c', '0000-00-00 00:00:00', NULL),
	('2765c7e9-4db5-4051-8134-31cc598b641a', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-16 16:00:00', '12:00:00', '23:59:00', 11, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', '618ace65-5bc5-4a63-8f61-b0762605f177', '0000-00-00 00:00:00', NULL),
	('4d0de0d4-9992-45eb-a0a4-886469f05457', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-23 16:00:00', '08:00:00', '23:30:00', 5, 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '7a173e7b-2f6c-4875-921e-1040426c60f1', 'ea93713d-3909-45fe-8c13-de8ffb50ee93', '0000-00-00 00:00:00', NULL),
	('4fa1f128-ceeb-4873-bd5b-afe220f110c2', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-18 16:00:00', '08:00:00', '17:30:00', 11, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '52efd96e-491c-41a4-b482-0d8cabd111ab', '54353f9c-fc5b-4e1c-937f-95e9c0a4982c', '0000-00-00 00:00:00', NULL),
	('6fb046cf-aa8b-4e8b-b85d-d6e221ef5387', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-21 16:00:00', '14:00:00', '18:30:00', 11, 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', 'eb03b3dc-7047-41b9-9217-cf390dbe6639', 'ea93713d-3909-45fe-8c13-de8ffb50ee93', '0000-00-00 00:00:00', NULL),
	('6fe01511-4e9c-49f8-8de3-640228b191f1', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-23 16:00:00', '15:00:00', '23:59:00', 11, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', '618ace65-5bc5-4a63-8f61-b0762605f177', '0000-00-00 00:00:00', NULL),
	('74a758c0-9c16-4d15-a0bb-f78bb38b0b98', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-24 16:00:00', '12:00:00', '22:30:00', 11, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '52efd96e-491c-41a4-b482-0d8cabd111ab', '54353f9c-fc5b-4e1c-937f-95e9c0a4982c', '0000-00-00 00:00:00', NULL),
	('80071096-92ac-4708-8cfa-4155e4ed122e', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-17 16:00:00', '12:00:00', '22:30:00', 11, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '52efd96e-491c-41a4-b482-0d8cabd111ab', '54353f9c-fc5b-4e1c-937f-95e9c0a4982c', '0000-00-00 00:00:00', NULL),
	('8a1d1181-0708-4720-b2ef-a2a19ed7d3d4', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-23 16:00:00', '12:00:00', '23:59:00', 11, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '643e49d0-0a5d-4b5c-a794-aaaa6ee6ded2', '618ace65-5bc5-4a63-8f61-b0762605f177', '0000-00-00 00:00:00', NULL),
	('938d5075-18a9-4cef-aa50-dd76222d41d4', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-22 16:00:00', '12:00:00', '16:30:00', 11, 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', 'eb03b3dc-7047-41b9-9217-cf390dbe6639', 'ea93713d-3909-45fe-8c13-de8ffb50ee93', '0000-00-00 00:00:00', NULL),
	('9eede09b-e789-44c3-a1c9-747c28c39ebd', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-23 16:00:00', '01:00:00', '23:30:00', 11, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'fd101092-080f-4e43-aea2-277c4067805b', NULL, '0000-00-00 00:00:00', NULL),
	('a085dde3-6305-4b8d-82cb-cc888f3c95dc', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-23 16:00:00', '12:00:00', '23:58:00', 11, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '52efd96e-491c-41a4-b482-0d8cabd111ab', '54353f9c-fc5b-4e1c-937f-95e9c0a4982c', '0000-00-00 00:00:00', NULL),
	('acbe4874-a46a-4342-a0c8-aacf964f1eb4', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-25 16:00:00', '08:00:00', '17:30:00', 11, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '52efd96e-491c-41a4-b482-0d8cabd111ab', '54353f9c-fc5b-4e1c-937f-95e9c0a4982c', '0000-00-00 00:00:00', NULL),
	('d9d3336c-a732-4e06-b287-b40a9baa3dcb', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, '2025-02-26 16:00:00', '01:00:00', '23:30:00', 11, 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'fd101092-080f-4e43-aea2-277c4067805b', '618ace65-5bc5-4a63-8f61-b0762605f177', '0000-00-00 00:00:00', NULL);

-- 傾印  資料表 water-drop.schedule_record 結構
CREATE TABLE IF NOT EXISTS `schedule_record` (
  `id` varchar(36) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL COMMENT '建立者',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `subscribeTime` timestamp NULL DEFAULT NULL COMMENT '預約時間',
  `status` varchar(255) DEFAULT NULL COMMENT '狀態',
  `studentId` varchar(36) DEFAULT NULL,
  `cardRecordId` varchar(36) DEFAULT NULL,
  `scheduleId` varchar(36) DEFAULT NULL,
  `courseId` varchar(36) DEFAULT NULL,
  `orgId` varchar(36) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '建立時間',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`id`),
  KEY `FK_856b5fb554fbc1ccba8eb58f5e4` (`studentId`),
  KEY `FK_b13a1228453d90460dfe0cb4d89` (`cardRecordId`),
  KEY `FK_f7bff8f690548e520e158ac8091` (`scheduleId`),
  KEY `FK_32dffa110796c20665f07c3472e` (`courseId`),
  KEY `FK_8197ef29d3e99fa52326d317265` (`orgId`),
  CONSTRAINT `FK_32dffa110796c20665f07c3472e` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_8197ef29d3e99fa52326d317265` FOREIGN KEY (`orgId`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_856b5fb554fbc1ccba8eb58f5e4` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_b13a1228453d90460dfe0cb4d89` FOREIGN KEY (`cardRecordId`) REFERENCES `card_record` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_f7bff8f690548e520e158ac8091` FOREIGN KEY (`scheduleId`) REFERENCES `schedule` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.schedule_record 的資料：~8 rows (近似值)
INSERT INTO `schedule_record` (`id`, `createdBy`, `updatedBy`, `deletedAt`, `deletedBy`, `subscribeTime`, `status`, `studentId`, `cardRecordId`, `scheduleId`, `courseId`, `orgId`, `createdAt`, `updatedAt`) VALUES
	('12369f5d-8dcc-4841-81e7-81a16a05f757', NULL, NULL, NULL, NULL, '2025-02-20 20:21:59', NULL, '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '16b1c9f2-84a7-4c02-8e59-ff92781d0540', '938d5075-18a9-4cef-aa50-dd76222d41d4', 'eb03b3dc-7047-41b9-9217-cf390dbe6639', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '0000-00-00 00:00:00', NULL),
	('25d6b7d3-7edd-4858-945a-ccfa144fa7d5', NULL, NULL, NULL, NULL, '2025-02-20 08:15:27', NULL, '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '8864f39f-9b2d-4351-8b47-b467b237fe6e', 'a085dde3-6305-4b8d-82cb-cc888f3c95dc', '52efd96e-491c-41a4-b482-0d8cabd111ab', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '0000-00-00 00:00:00', NULL),
	('4a2d01d8-9729-473e-9c73-55d424f6612b', NULL, '03ac591d-9684-44bf-b08d-b69f9cd6bac3', NULL, NULL, '2025-02-20 09:15:57', 'CANCEL', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '8864f39f-9b2d-4351-8b47-b467b237fe6e', '74a758c0-9c16-4d15-a0bb-f78bb38b0b98', '52efd96e-491c-41a4-b482-0d8cabd111ab', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '0000-00-00 00:00:00', NULL),
	('5048de63-331d-42c5-8014-f16d299bf56a', NULL, NULL, NULL, NULL, '2025-02-19 17:30:38', NULL, '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '8864f39f-9b2d-4351-8b47-b467b237fe6e', 'a085dde3-6305-4b8d-82cb-cc888f3c95dc', '52efd96e-491c-41a4-b482-0d8cabd111ab', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '0000-00-00 00:00:00', NULL),
	('81f77b6c-13b2-439d-b858-a295c3bfa02a', NULL, '03ac591d-9684-44bf-b08d-b69f9cd6bac3', NULL, NULL, '2025-02-20 20:18:57', 'CANCEL', '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '16b1c9f2-84a7-4c02-8e59-ff92781d0540', '6fb046cf-aa8b-4e8b-b85d-d6e221ef5387', 'eb03b3dc-7047-41b9-9217-cf390dbe6639', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '0000-00-00 00:00:00', NULL),
	('b16665b8-da9e-4ffe-af90-84b106eb2340', NULL, NULL, NULL, NULL, '2025-02-20 09:08:59', NULL, '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '8864f39f-9b2d-4351-8b47-b467b237fe6e', 'a085dde3-6305-4b8d-82cb-cc888f3c95dc', '52efd96e-491c-41a4-b482-0d8cabd111ab', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '0000-00-00 00:00:00', NULL),
	('c9e23a02-8160-4b68-b272-b5b90d7239e0', NULL, NULL, NULL, NULL, '2025-02-20 09:08:51', NULL, '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '8864f39f-9b2d-4351-8b47-b467b237fe6e', 'a085dde3-6305-4b8d-82cb-cc888f3c95dc', '52efd96e-491c-41a4-b482-0d8cabd111ab', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '0000-00-00 00:00:00', NULL),
	('ed3f44cd-6f8d-4e56-9ae7-2c12c6299909', NULL, NULL, NULL, NULL, '2025-02-19 17:32:32', NULL, '03ac591d-9684-44bf-b08d-b69f9cd6bac3', '8864f39f-9b2d-4351-8b47-b467b237fe6e', 'a085dde3-6305-4b8d-82cb-cc888f3c95dc', '52efd96e-491c-41a4-b482-0d8cabd111ab', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '0000-00-00 00:00:00', NULL);

-- 傾印  資料表 water-drop.student 結構
CREATE TABLE IF NOT EXISTS `student` (
  `id` varchar(36) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL COMMENT '建立者',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '匿稱',
  `tel` varchar(255) DEFAULT NULL COMMENT '手機號',
  `avatar` varchar(255) DEFAULT 'https://api.dicebear.com/7.x/miniavs/svg?seed=525' COMMENT '頭像',
  `password` varchar(255) NOT NULL COMMENT '密碼',
  `account` varchar(255) NOT NULL COMMENT '帳戶',
  `openid` varchar(255) DEFAULT NULL COMMENT 'openid',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建立時間',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.student 的資料：~2 rows (近似值)
INSERT INTO `student` (`id`, `createdBy`, `updatedBy`, `deletedAt`, `deletedBy`, `name`, `tel`, `avatar`, `password`, `account`, `openid`, `createdAt`, `updatedAt`) VALUES
	('03ac591d-9684-44bf-b08d-b69f9cd6bac3', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, 'one', '0934153410', 'https://api.dicebear.com/7.x/miniavs/svg?seed=2331114', 'af26610db5e49dd014584b03cd4d3599', 'one0910', 'wx_open_id_9139', '2025-02-22 19:41:48', NULL),
	('77316552-5a4e-4d29-8eed-d1a32d33d536', NULL, NULL, NULL, NULL, '', '', 'https://api.dicebear.com/7.x/miniavs/svg?seed=2559', '511beca66aef8f48cd02a77922024d8a', 'ellson0910', 'wx_open_id_28677', '2025-02-22 19:41:48', NULL);

-- 傾印  資料表 water-drop.teacher 結構
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` varchar(36) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL COMMENT '建立者',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `name` varchar(255) NOT NULL COMMENT '名稱',
  `orgId` varchar(36) DEFAULT NULL,
  `photoUrl` varchar(255) DEFAULT NULL COMMENT '照片',
  `teacherTime` int(11) DEFAULT NULL COMMENT '教齡',
  `education` varchar(255) DEFAULT NULL COMMENT '学历',
  `seniority` varchar(255) DEFAULT NULL COMMENT '資歷',
  `experience` varchar(255) DEFAULT NULL COMMENT '職業經驗',
  `carryPrize` varchar(255) DEFAULT NULL COMMENT '獲獎經歷',
  `tags` varchar(255) DEFAULT NULL COMMENT '風格標籤，以，隔开',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建立時間',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`id`),
  KEY `FK_9d664dabc5b79a281bc92f9b106` (`orgId`),
  CONSTRAINT `FK_9d664dabc5b79a281bc92f9b106` FOREIGN KEY (`orgId`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.teacher 的資料：~19 rows (近似值)
INSERT INTO `teacher` (`id`, `createdBy`, `updatedBy`, `deletedAt`, `deletedBy`, `name`, `orgId`, `photoUrl`, `teacherTime`, `education`, `seniority`, `experience`, `carryPrize`, `tags`, `createdAt`, `updatedAt`) VALUES
	('1945704f-5cd7-4879-b86b-95e67914aa62', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '2025-01-20 00:38:28.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'Ellson', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/teacher/rc-upload-1737304616577-3.bmp', 4, '大學畢業', '5年', '大廠經歷', '無', '英文', '2025-02-22 19:41:48', NULL),
	('27d7a815-e316-4768-a1d5-ba1f7be002d8', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, 'James', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://api.dicebear.com/7.x/miniavs/svg?seed=18', 3, '大學畢業', '5年', '大廠經歷', '無', '行銷', '2025-02-22 19:41:48', NULL),
	('2c9752d9-d86a-43a8-80fc-4832134da24e', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, '2025-01-20 00:35:03.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'Ellson', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://api.dicebear.com/7.x/miniavs/svg?seed=21', 1, '大學畢業', '5年', '大廠經歷', '無', '英文', '2025-02-22 19:41:48', NULL),
	('32ec49e4-6ffc-456e-8093-223371c678fe', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, 'Ellson', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://api.dicebear.com/7.x/miniavs/svg?seed=10', 1, '大學畢業', '5年', '大廠經歷', '無', '英文', '2025-02-22 19:41:48', NULL),
	('38ece9ac-6952-42ed-b87f-a4192bdc625c', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, 'Ellson', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://api.dicebear.com/7.x/miniavs/svg?seed=22', 1, '大學畢業', '5年', '大廠經歷', '無', '英文', '2025-02-22 19:41:48', NULL),
	('54353f9c-fc5b-4e1c-937f-95e9c0a4982c', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, 'Luke', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://api.dicebear.com/7.x/miniavs/svg?seed=16', 1, '大學畢業', '5年', '大廠經歷', '無', '程式設計', '2025-02-22 19:41:48', NULL),
	('618ace65-5bc5-4a63-8f61-b0762605f177', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, 'Alice', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://api.dicebear.com/7.x/miniavs/svg?seed=17', 2, '大學畢業', '5年', '大廠經歷', '無', '設計', '2025-02-22 19:41:48', NULL),
	('6a5dc394-5911-4ca9-ae26-172ad8a7a393', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '2025-01-20 00:37:04.000000', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'Ellson', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://api.dicebear.com/7.x/miniavs/svg?seed=10', 1, '大學畢業', '5年', '大廠經歷', '無', '英文', '2025-02-22 19:41:48', NULL),
	('71134def-fde7-442c-aa92-5ac22eebab4e', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, 'Dan', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://api.dicebear.com/7.x/miniavs/svg?seed=24', 1, '大學畢業', '5年', '大廠經歷', '無', '西班牙文', '2025-02-22 19:41:48', NULL),
	('74977ca3-0719-43ce-ae1f-9daa6b59427e', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, 'Jacky', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://api.dicebear.com/7.x/miniavs/svg?seed=14', 1, '大學畢業', '5年', '大廠經歷', '無', '管理學', '2025-02-22 19:41:48', NULL),
	('857852af-f223-4e18-8cd4-4d8da6db2399', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, 'One', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/teacher/rc-upload-1737304616577-6.bmp', 10, '研究所', '5', NULL, NULL, '英文', '2025-02-22 19:41:48', NULL),
	('9724eac8-a276-4db0-bbc5-a2c14409d7be', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, 'One', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://api.dicebear.com/7.x/miniavs/svg?seed=11', 1, '大學畢業', '5年', '大廠經歷', '無', '數學', '2025-02-22 19:41:48', NULL),
	('99950af4-8941-469e-8ea1-bdb104281294', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, 'BEN', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://api.dicebear.com/7.x/miniavs/svg?seed=20', 14, '大學畢業', '5年', '大廠經歷', '無', '監控系統', '2025-02-22 19:41:48', NULL),
	('c64d368e-686a-4eb3-911e-45c47cbabae6', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, 'Mary', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://api.dicebear.com/7.x/miniavs/svg?seed=23', 1, '大學畢業', '5年', '大廠經歷', '無', '美術', '2025-02-22 19:41:48', NULL),
	('cac096d3-44b7-461b-8514-3b7ad6fc8be1', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, 'Ellson', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', 'https://api.dicebear.com/7.x/miniavs/svg?seed=13', 1, '大學畢業', '5年', '大廠經歷', '無', '英文', '2025-02-22 19:41:48', NULL),
	('ce6aa15d-7017-4b10-a7bd-b55026695b95', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, 'Ellson', 'b53235f7-0ce1-483e-adeb-636a72219d70', 'https://api.dicebear.com/7.x/miniavs/svg?seed=25122', 10, '研究所', '3', NULL, NULL, 'Geography', '2025-02-22 19:41:48', NULL),
	('dbcb4ea3-abff-48d4-8f1c-95d1cdb7e12f', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, 'Ellson', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'https://api.dicebear.com/7.x/miniavs/svg?seed=25', 1, '大學畢業', '5年', '大廠經歷', '無', '中文', '2025-02-22 19:41:48', NULL),
	('e37ba391-2bd5-450a-81f2-03e9dc0645bf', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, 'Ellson', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', 'https://api.dicebear.com/7.x/miniavs/svg?seed=12', 1, '大學畢業', '5年', '大廠經歷', '無', '英文', '2025-02-22 19:41:48', NULL),
	('ea93713d-3909-45fe-8c13-de8ffb50ee93', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', NULL, NULL, NULL, 'Ellson', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', 'https://api.dicebear.com/7.x/miniavs/svg?seed=15', 1, '大學畢業', '5年', '大廠經歷', '無', '英文', '2025-02-22 19:41:48', NULL);

-- 傾印  資料表 water-drop.user 結構
CREATE TABLE IF NOT EXISTS `user` (
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '簡介',
  `password` varchar(255) DEFAULT '' COMMENT '密碼',
  `account` varchar(255) DEFAULT '' COMMENT '帳號',
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '暱稱',
  `tel` varchar(255) DEFAULT NULL COMMENT '聯絡電話',
  `code` varchar(255) DEFAULT NULL COMMENT '驗證碼',
  `codeCreateTimeAt` datetime DEFAULT NULL COMMENT '驗證碼生成時間',
  `avatar` varchar(255) DEFAULT 'https://api.dicebear.com/7.x/miniavs/svg?seed=3859' COMMENT '個人頭像',
  `createdBy` varchar(255) DEFAULT NULL COMMENT '建立者',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建立時間',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.user 的資料：~14 rows (近似值)
INSERT INTO `user` (`desc`, `password`, `account`, `id`, `name`, `tel`, `code`, `codeCreateTimeAt`, `avatar`, `createdBy`, `updatedBy`, `deletedBy`, `deletedAt`, `createdAt`, `updatedAt`) VALUES
	('超級管理員1', '', '', '023531c4-c5a9-4244-9abc-9da3a25ea62e', '水滴管理員1號', '0934153411', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('超級管理員8', '', '', '0e114927-e9de-4afe-81cb-db1e990dc870', '水滴管理員8號', '11111111', NULL, NULL, '', NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('超級管理員1', '', '', '64aee2d5-120e-4ed8-a560-05188f6aee11', '水滴管理員1號', '22222222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('', '', '', '81f37db4-fcbd-465b-9da0-0fc10a2ef4ef', '', '0934153410.', '7484', '2025-02-12 23:18:47', 'https://api.dicebear.com/7.x/miniavs/svg?seed=9744', NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('', '', '', '88d8ce1f-dbee-48f2-83cc-296fffb39592', '', '4564654', '0208', '2025-02-12 23:21:11', 'https://api.dicebear.com/7.x/miniavs/svg?seed=9744', NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('', '', '', '90100f49-ec2f-4ac8-989c-d631fd0c1e3d', '', '0934153410000', '5057', '2025-02-12 23:20:55', 'https://api.dicebear.com/7.x/miniavs/svg?seed=9744', NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('超級管理員2', '', '', '9295930a-99ec-4f16-8deb-a7b77cc47b8a', '水滴管理員2號', '3333333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('超級管理員7', '', '', 'a20d2d3d-0aae-4825-beab-0ec67029cbbf', '水滴管理員7號', '44444444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('', '', '', 'ba7dbc8a-81c4-44fb-b470-0ecd94bee43f', '', '234123', '4641', '2025-01-13 03:00:19', NULL, NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('超級管理員10', '11111', 'admin', 'bf51ad1e-05d2-4987-9a8e-f64f1ad292ad', '水滴管理員10號', '11111111111', '8305', '2025-01-04 02:16:16', NULL, NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('超級管理員5', '', '', 'bfaf53d9-6acb-49b8-9a09-33a7e0352916', '水滴管理員5號', '55555555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('', '', '', 'c0b948d3-4aa3-4ee2-8f6e-8f553a8b82fb', '', '+866934153410', '3787', '2025-01-08 04:31:45', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/profile/rc-upload-1736281887944-2.bmp', NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('一哥小王子', '', '', 'd1927f3b-8bf2-4014-8ee5-69762f7a6f31', '一哥小王', '0934153410', '5505', '2025-02-21 16:28:51', 'https://aliyun-oss-test-water-drop.oss-ap-southeast-1.aliyuncs.com/images/profile/rc-upload-1736275920922-11.jpg', NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL),
	('', '', '', 'f5271f82-3b86-4f0f-94f9-1cfed537e2aa', '', '+886934153410', '4864', '2025-02-03 01:59:06', NULL, NULL, NULL, NULL, NULL, '2025-02-22 19:41:48', NULL);

-- 傾印  資料表 water-drop.wxorder 結構
CREATE TABLE IF NOT EXISTS `wxorder` (
  `id` varchar(36) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL COMMENT '建立者',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `appid` varchar(255) NOT NULL COMMENT '微信公眾號ID',
  `mchid` varchar(255) NOT NULL COMMENT '商戶號',
  `openid` varchar(255) DEFAULT NULL COMMENT 'openid',
  `trade_type` varchar(255) DEFAULT NULL COMMENT '交易類',
  `trade_state` varchar(255) DEFAULT NULL COMMENT '交易狀態',
  `bank_type` varchar(255) DEFAULT NULL COMMENT '银行',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT '微信支付訂單號',
  `out_trade_no` varchar(255) DEFAULT NULL COMMENT '商户訂單號',
  `attach` varchar(255) DEFAULT NULL COMMENT '附加数据',
  `trade_state_desc` varchar(255) DEFAULT NULL COMMENT '交易狀況描述',
  `success_time` varchar(255) DEFAULT NULL COMMENT '支付完成時間',
  `total` int(11) DEFAULT NULL COMMENT '訂單總金額，單位為分',
  `payer_total` int(11) DEFAULT NULL COMMENT '用户支付金額，單位為分',
  `currency` varchar(255) DEFAULT NULL COMMENT 'CNY：人民幣，中國境内商户號僅支持人民幣',
  `payer_currency` varchar(255) DEFAULT NULL COMMENT '用户支付幣種，示例值：CNY',
  `orgId` varchar(36) DEFAULT NULL,
  `orderId` varchar(36) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '建立時間',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_5a762328837fb4273d5eb9770d` (`orderId`),
  KEY `FK_5deaae84799f029033a64e4a7c5` (`orgId`),
  CONSTRAINT `FK_5a762328837fb4273d5eb9770d8` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_5deaae84799f029033a64e4a7c5` FOREIGN KEY (`orgId`) REFERENCES `organization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在傾印表格  water-drop.wxorder 的資料：~40 rows (近似值)
INSERT INTO `wxorder` (`id`, `createdBy`, `updatedBy`, `deletedAt`, `deletedBy`, `appid`, `mchid`, `openid`, `trade_type`, `trade_state`, `bank_type`, `transaction_id`, `out_trade_no`, `attach`, `trade_state_desc`, `success_time`, `total`, `payer_total`, `currency`, `payer_currency`, `orgId`, `orderId`, `createdAt`, `updatedAt`) VALUES
	('07a7c95df9d548b5ae0aa0895b6fe841', '', '', NULL, '', '', '', 'wx_open_id_9139', '', 'SUCCESS', '', 'wx_transaction_id_33485', '6587d21ca2a54e7e9069215b3d41b661', '', '', '', 0, 0, '', '', NULL, '6003d68c-476d-4198-b57c-4bc63241f4aa', '2025-02-22 19:41:49', NULL),
	('09958274-980d-4999-94da-28c4ffaa2aa8', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wx_open_id_9139', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction8569aa9b500c40f9878ea49df040b704', '8569aa9b500c40f9878ea49df040b704', '', '支付成功', '2023-05-23T00:48:25+08:00', 111, 111, 'CNY', 'CNY', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '94b2e353-fd8f-47b4-82e3-c8dd8b97ef3d', '2025-02-22 19:41:49', NULL),
	('0b2678b5-6dc6-4dfb-bdd9-22bee6a39f35', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction6aca09d941e440c3b318cd7146b2b452', '6aca09d941e440c3b318cd7146b2b452', '', '支付成功', '2023-05-23T00:48:25+08:00', 111, 111, 'CNY', 'CNY', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '35835de2-1475-4c0f-835f-7eac022815e9', '2025-02-22 19:41:49', NULL),
	('1f6fb9a5-79e4-4e27-8367-a71e4a07f67e', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transactionf49647e0ef8749a9954f4f4c0921904b', 'f49647e0ef8749a9954f4f4c0921904b', '', '支付成功', '2023-05-23T00:48:25+08:00', 50, 50, 'CNY', 'CNY', 'b53235f7-0ce1-483e-adeb-636a72219d70', '5f6912c3-f6d3-4b7d-b6a6-af840d846f3d', '2025-02-22 19:41:49', NULL),
	('2377c052cfd140d9a9bdf0de1aa4018f', '', '', NULL, '', '', '', 'wx_open_id_9139', '', 'SUCCESS', '', 'wx_transaction_id_24144', '28704327d20e47409d5dc5df28048632', '', '', '', 0, 0, '', '', NULL, '7ccec5e1-a776-43ad-bbdb-3ae8ea41a527', '2025-02-22 19:41:49', NULL),
	('27b425f5-1934-4fe8-8a79-97d87a18afa8', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wx_open_id_9139', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction7afaa2d2329b4fb5a50fadb79c506d6e', '7afaa2d2329b4fb5a50fadb79c506d6e', '', '支付成功', '2023-05-23T00:48:25+08:00', 222, 222, 'CNY', 'CNY', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '937a2fc4-e668-495d-b643-48ae0249a56f', '2025-02-22 19:41:49', NULL),
	('320678e3-8cdc-4997-bc95-9707715766eb', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transactionf75187951a9d4c808dc9e2479abfe8db', 'f75187951a9d4c808dc9e2479abfe8db', '', '支付成功', '2023-05-23T00:48:25+08:00', 99, 99, 'CNY', 'CNY', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'c7e2a2df-3f32-4f04-a27b-6ecf7a55ecc1', '2025-02-22 19:41:49', NULL),
	('3354c04be3ac4bb097f82469461842f9', '', '', NULL, '', '', '', 'wx_open_id_9139', '', 'SUCCESS', '', 'wx_transaction_id_68204', '0498d90c91754528924195ea62f13dae', '', '', '', 0, 0, '', '', NULL, '037611c4-91ca-45f6-8dc1-fbdab4f642a1', '2025-02-22 19:41:49', NULL),
	('3476cd30-1379-44d7-a7f3-0117b2995ae5', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction6b40535859604a89b3f2eb8a6459e0bf', '6b40535859604a89b3f2eb8a6459e0bf', '', '支付成功', '2023-05-23T00:48:25+08:00', 50, 50, 'CNY', 'CNY', 'b53235f7-0ce1-483e-adeb-636a72219d70', '6b1dbe32-efc1-48fe-b9b2-d4c6ec073618', '2025-02-22 19:41:49', NULL),
	('34a7edd6173c4cfb945c477997c780a1', '', '', NULL, '', '', '', 'wx_open_id_28677', '', 'SUCCESS', '', 'wx_transaction_id_73857', 'f5b5d5546a0447d2ad8481c00cba407c', '', '', '', 0, 0, '', '', NULL, '7a0f115b-b644-457a-b4b7-5eb061230d4d', '2025-02-22 19:41:49', NULL),
	('38ea5cd8-f33c-4819-807a-20e44d7eb82e', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transactionfa29d7b277834e31b47363984bdef0cc', 'fa29d7b277834e31b47363984bdef0cc', '', '支付成功', '2023-05-23T00:48:25+08:00', 111, 111, 'CNY', 'CNY', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', 'b1260563-4d66-4a36-bdfa-65a45f31d7dd', '2025-02-22 19:41:49', NULL),
	('3c0780aa-6d6d-4203-bedc-ff828c584c8c', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wx_open_id_9139', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction12554d792f66482b8421c2cf85ace0ee', '12554d792f66482b8421c2cf85ace0ee', '', '支付成功', '2023-05-23T00:48:25+08:00', 50, 50, 'CNY', 'CNY', 'b53235f7-0ce1-483e-adeb-636a72219d70', 'bf6bb17a-5147-435d-b60c-5447583d9c36', '2025-02-22 19:41:49', NULL),
	('547b0a96854f428bbfdd4b9d46737449', '', '', NULL, '', '', '', 'wx_open_id_28677', '', 'SUCCESS', '', 'wx_transaction_id_20440', 'edbcc618530c4ed49fe7bf6fbbb1756e', '', '', '', 0, 0, '', '', NULL, 'bb8f3e62-1fbf-4581-9d74-aa7c8a04da47', '2025-02-22 19:41:49', NULL),
	('55a4afac-5e75-4261-8c8f-8d24f9ec1753', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction2f17bf7a1c094a60a5110407bdbce9ad', '2f17bf7a1c094a60a5110407bdbce9ad', '', '支付成功', '2023-05-23T00:48:25+08:00', 111, 111, 'CNY', 'CNY', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '9e465324-444d-4dc5-9916-08195280bb48', '2025-02-22 19:41:49', NULL),
	('6323d5e6-9577-4c90-a504-601f63cb4065', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction9d5397251a274e3d932d43f8630500a4', '9d5397251a274e3d932d43f8630500a4', '', '支付成功', '2023-05-23T00:48:25+08:00', 111, 111, 'CNY', 'CNY', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '51e98f14-2c94-4262-a15e-9201fd4d7e10', '2025-02-22 19:41:49', NULL),
	('6a08462c-4f49-4102-9c63-31aa0d0ce77e', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction5c0ed8ed491148da82785904aba4c932', '5c0ed8ed491148da82785904aba4c932', '', '支付成功', '2023-05-23T00:48:25+08:00', 99, 99, 'CNY', 'CNY', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '29cc93cd-b588-499c-a9f5-4790d4911953', '2025-02-22 19:41:49', NULL),
	('7223c3e712f442d99a6f330efd4d7733', '', '', NULL, '', '', '', 'wx_open_id_9139', '', 'SUCCESS', '', 'wx_transaction_id_61708', 'a4f21ee8480544b09eabb5646beb0c82', '', '', '', 0, 0, '', '', NULL, '225bcd04-1c2d-469b-a083-1f31cdd29f08', '2025-02-22 19:41:49', NULL),
	('7241c637-a568-4364-8ae3-1f5f263e11bf', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transactionda4d335932784f1384cdec3f2caebb43', 'da4d335932784f1384cdec3f2caebb43', '', '支付成功', '2023-05-23T00:48:25+08:00', 111, 111, 'CNY', 'CNY', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', 'e1381fcd-cb32-40b4-a275-f24901191b34', '2025-02-22 19:41:49', NULL),
	('75be679f-9e08-420a-b323-c77391b446f5', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction26087a6c666c4cdda880e90b18cc0977', '26087a6c666c4cdda880e90b18cc0977', '', '支付成功', '2023-05-23T00:48:25+08:00', 111, 111, 'CNY', 'CNY', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '5270e7f0-b0b7-46e8-b1e5-2de8c0e518ab', '2025-02-22 19:41:49', NULL),
	('88129cc91a7a4b67a50dfb5442d36c7d', '', '', NULL, '', '', '', 'wx_open_id_9139', '', 'SUCCESS', '', 'wx_transaction_id_61313', 'cebd368ddaa84f9c954c27dab778dda9', '', '', '', 0, 0, '', '', NULL, '6a7e7ac6-1f25-4f0f-92fa-8417dd1d43aa', '2025-02-22 19:41:49', NULL),
	('92cdc89af23e4d0197691b7b4aaa7216', '', '', NULL, '', '', '', 'wx_open_id_28677', '', 'SUCCESS', '', 'wx_transaction_id_14942', 'e793d84fb3494726b2f9bbabdd809772', '', '', '', 0, 0, '', '', NULL, '09a10388-a75d-47cb-8dc1-7cabb22a9b69', '2025-02-22 19:41:49', NULL),
	('95b481e7-9672-4180-acbf-dd657bca6457', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wx_open_id_9139', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction95a08c73cd5948389a8d55796042f02d', '95a08c73cd5948389a8d55796042f02d', '', '支付成功', '2023-05-23T00:48:25+08:00', 11, 11, 'CNY', 'CNY', '746e116e-f03d-45fc-88fe-867c530a0bf4', '3b951651-e5ae-4372-9f32-c967fe6a026a', '2025-02-22 19:41:49', NULL),
	('985684d7-4c59-4734-aacb-c417129026c0', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction948ae6d060da496fad7e36a1db76f43d', '948ae6d060da496fad7e36a1db76f43d', '', '支付成功', '2023-05-23T00:48:25+08:00', 50, 50, 'CNY', 'CNY', 'b53235f7-0ce1-483e-adeb-636a72219d70', '174b1290-87fe-45a9-b1dd-91019bba445f', '2025-02-22 19:41:49', NULL),
	('9e2cd8b6-e53c-4681-9558-ccb2ed505f77', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wx_open_id_9139', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction8a5ab2fbed5547048cab01f11c3d1481', '8a5ab2fbed5547048cab01f11c3d1481', '', '支付成功', '2023-05-23T00:48:25+08:00', 111, 111, 'CNY', 'CNY', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', 'e13f7511-e071-4a7a-93a8-ab76d37b3848', '2025-02-22 19:41:49', NULL),
	('a3ffed80b57b4bc28abbe6be8d003536', '', '', NULL, '', '', '', 'wx_open_id_9139', '', 'SUCCESS', '', 'wx_transaction_id_24671', 'c68b0a37b7b045a485f88699090b6d2c', '', '', '', 0, 0, '', '', NULL, 'da61fbfd-7312-4dfb-94ae-2d00789ad6d8', '2025-02-22 19:41:49', NULL),
	('a8cf3ac85758478a84803f9f6764b24d', '', '', NULL, '', '', '', 'wx_open_id_9139', '', 'SUCCESS', '', 'wx_transaction_id_30966', 'fab23edbb9994578a6fe65388e661559', '', '', '', 0, 0, '', '', NULL, 'd0b7c1e0-aa00-421d-afe4-921481bb869e', '2025-02-22 19:41:49', NULL),
	('b7c48041-6033-4d32-8f87-1238051c2b12', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wx_open_id_9139', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction8ee3d486d8e243ca9e5690da349cd757', '8ee3d486d8e243ca9e5690da349cd757', '', '支付成功', '2023-05-23T00:48:25+08:00', 111, 111, 'CNY', 'CNY', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', 'c8278a1a-fd88-4b20-93cb-e0bddd78b265', '2025-02-22 19:41:49', NULL),
	('bc785ec9114440b790f5c41af103a6e2', '', '', NULL, '', '', '', 'wx_open_id_9139', '', 'SUCCESS', '', 'wx_transaction_id_45490', '3fd5eecb7e33495a87190c48c6e86673', '', '', '', 0, 0, '', '', NULL, '5e472fe5-b972-49f8-8075-52bcf1593057', '2025-02-22 19:41:49', NULL),
	('bdad983f40db443da395115f290bfe7a', '', '', NULL, '', '', '', 'wx_open_id_28677', '', 'SUCCESS', '', 'wx_transaction_id_34262', '341fce52ee074a3e85e79d1b03a6ce3e', '', '', '', 0, 0, '', '', NULL, 'acb98e43-0e75-4d21-8eb1-2ed2b0ee034f', '2025-02-22 19:41:49', NULL),
	('be2414e0-7b4d-496a-a50e-c2eb5cef95c7', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wx_open_id_9139', 'JSAPI', 'SUCCESS', 'OTHERS', 'transactione2e0e94bb2824cd29d898496c0508ada', 'e2e0e94bb2824cd29d898496c0508ada', '', '支付成功', '2023-05-23T00:48:25+08:00', 222, 222, 'CNY', 'CNY', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '76bbcd65-1148-4147-965b-cf0bce9fcd6d', '2025-02-22 19:41:49', NULL),
	('c0807439-b699-4424-8a96-a43b9c02bd09', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wx_open_id_9139', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction23d0840423fa47098dd14f46afbf04f3', '23d0840423fa47098dd14f46afbf04f3', '', '支付成功', '2023-05-23T00:48:25+08:00', 50, 50, 'CNY', 'CNY', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'c55072b9-a6c8-4170-a3ed-9d1d3b0c0b0b', '2025-02-22 19:41:49', NULL),
	('c8556fc6990f428288f6a1556aae146c', '', '', NULL, '', '', '', 'wx_open_id_9139', '', 'SUCCESS', '', 'wx_transaction_id_22003', '105bb59d12a64ed7b38c8019dab2291b', '', '', '', 0, 0, '', '', NULL, '944644a9-e5ea-4daf-bcbf-bb4b9915e7f1', '2025-02-22 19:41:49', NULL),
	('d14ca5315f1b4f0eb2c6e2d97bacd816', '', '', NULL, '', '', '', 'wx_open_id_9139', '', 'SUCCESS', '', 'wx_transaction_id_94879', 'bf03bbd1fef24b1682c137720b0681a0', '', '', '', 0, 0, '', '', NULL, '06ce29c6-2859-4b0a-8fbf-a27e0090c2d4', '2025-02-22 19:41:49', NULL),
	('d53d5f631e0a455fb065ee843adc267d', '', '', NULL, '', '', '', 'wx_open_id_9139', '', 'SUCCESS', '', 'wx_transaction_id_59769', '1ef03b5ea5a841899d2f5052fd53cc8f', '', '', '', 0, 0, '', '', NULL, '78d2dbb8-d680-44e3-a0f1-5aa06ae2ea12', '2025-02-22 19:41:49', NULL),
	('dbfc0bde60c64893a8eaaa33d0352f86', '', '', NULL, '', '', '', 'wx_open_id_9139', '', 'SUCCESS', '', 'wx_transaction_id_11024', 'fc6f463ca1924a5aaf9ed8b8de96f5f2', '', '', '', 0, 0, '', '', NULL, '8f085be1-d8b1-45b8-ace3-a3ce1e29c45a', '2025-02-22 19:41:49', NULL),
	('e0b62e89-8de0-4224-96b5-a3c5118a7d53', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction898a6bd7e8aa49d1a474af125fea6f5e', '898a6bd7e8aa49d1a474af125fea6f5e', '', '支付成功', '2023-05-23T00:48:25+08:00', 99, 99, 'CNY', 'CNY', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', 'a89dd151-fd4e-4d59-8651-1c97df99d013', '2025-02-22 19:41:49', NULL),
	('e1351ff7-6e56-40b6-9e9b-ffa8af7a9d5b', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transactionf013d8c40ca249ffa151ade794113d34', 'f013d8c40ca249ffa151ade794113d34', '', '支付成功', '2023-05-23T00:48:25+08:00', 111, 111, 'CNY', 'CNY', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', '192aecec-64fa-4121-b486-9fdefd8842ee', '2025-02-22 19:41:49', NULL),
	('ed8d7ad0-41cd-4105-81e9-e0bc52485996', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction8b2fb04c581244929946f74f87425814', '8b2fb04c581244929946f74f87425814', '', '支付成功', '2023-05-23T00:48:25+08:00', 111, 111, 'CNY', 'CNY', 'd0e1c084-b94f-4c1e-9f22-0c4b3cf6f591', 'c2f14951-bf30-4317-b289-14df4152a235', '2025-02-22 19:41:49', NULL),
	('fa145b6b87d54941981c4e2e1eaebbb8', '', '', NULL, '', '', '', 'wx_open_id_9139', '', 'SUCCESS', '', 'wx_transaction_id_59741', '7ba881006b2a4133831f5eda0e906e64', '', '', '', 0, 0, '', '', NULL, '9629c9ef-820c-4532-a902-5f058d615760', '2025-02-22 19:41:49', NULL),
	('fd8b0db2-0d18-4032-9842-b0902e988c0e', NULL, NULL, NULL, NULL, 'wx3232332323332', '322323233', 'wewewewewewewewewewewewewewe', 'JSAPI', 'SUCCESS', 'OTHERS', 'transaction26c9a9692d094102b1181799cffaf0aa', '26c9a9692d094102b1181799cffaf0aa', '', '支付成功', '2023-05-23T00:48:25+08:00', 99, 99, 'CNY', 'CNY', 'e0568d35-48a0-42ae-8009-3eebe6c53fd1', '89a74d12-33af-42b4-ab13-1bfb231232c9', '2025-02-22 19:41:49', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
