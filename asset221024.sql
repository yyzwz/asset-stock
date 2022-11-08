/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `assets`;
CREATE DATABASE IF NOT EXISTS `assets` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_croatian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `assets`;

DROP TABLE IF EXISTS `a_assets_in`;
CREATE TABLE IF NOT EXISTS `a_assets_in` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `asset_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `asset_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `invoice` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `nature` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `number` decimal(19,2) DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `unit_price` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_assets_in`;
INSERT INTO `a_assets_in` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `asset_id`, `asset_name`, `invoice`, `model`, `nature`, `number`, `remarks`, `unit_price`) VALUES
	('1537242033503211520', 'admin', '2022-06-16 09:13:56.026000', 0, NULL, NULL, '1537241415803867136', '内存条', 'FP0000001', '8G', '固定资产', 50.00, '淘宝购买', 210.00),
	('1537242093234294784', 'admin', '2022-06-16 09:14:10.267000', 0, NULL, NULL, '1537241335575220224', '移动硬盘', 'FP0000002', '金士顿', '固定资产', 50.00, '京东购买', 260.00),
	('1537242187534831616', 'admin', '2022-06-16 09:14:32.749000', 0, NULL, NULL, '1537241234484105216', '高拍仪', 'FP0000003', '小米', '固定资产', 10.00, '拼多多购买', 460.00),
	('1537242238004891648', 'admin', '2022-06-16 09:14:44.782000', 0, NULL, NULL, '1537241154553253888', '打印机', 'FP0000004', '惠普', '固定资产', 20.00, '淘宝购买', 340.00),
	('1537242327159017472', 'admin', '2022-06-16 09:15:06.040000', 0, NULL, NULL, '1537241018439700480', '办公椅', 'FP0000005', 'MLO', '固定资产', 80.00, '厂家直销', 60.00),
	('1537242392149757952', 'admin', '2022-06-16 09:15:21.534000', 0, NULL, NULL, '1537240938303328256', '办公桌', 'FP0000006', 'TLC', '固定资产', 100.00, '厂家直销', 200.00),
	('1537242470121869312', 'admin', '2022-06-16 09:15:40.124000', 0, NULL, NULL, '1537241885704327168', '黑板擦', 'FP0000007', 'L', '耗材', 500.00, '淘宝购买', 3.50),
	('1537242523842514944', 'admin', '2022-06-16 09:15:52.936000', 0, NULL, NULL, '1537241687196307456', '垃圾袋', 'FP0000008', 'L', '耗材', 500.00, '淘宝购买', 6.00),
	('1537242573838618624', 'admin', '2022-06-16 09:16:04.851000', 0, NULL, NULL, '1537241615121387520', 'A4纸', 'FP0000009', '真彩', '耗材', 600.00, '京东购买', 20.00),
	('1537242623281074176', 'admin', '2022-06-16 09:16:16.640000', 0, NULL, NULL, '1537241487992033280', '签字笔', 'FP0000010', '真彩', '耗材', 500.00, '厂家直销', 1.50);

DROP TABLE IF EXISTS `a_assets_out`;
CREATE TABLE IF NOT EXISTS `a_assets_out` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `asset_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `asset_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `audit_status` int DEFAULT NULL,
  `audit_time` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `exist_number` decimal(19,2) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `nature` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `number` decimal(19,2) DEFAULT NULL,
  `recipients` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `recipients_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `unit_price` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_assets_out`;
INSERT INTO `a_assets_out` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `asset_id`, `asset_name`, `audit_status`, `audit_time`, `exist_number`, `model`, `nature`, `number`, `recipients`, `recipients_id`, `remarks`, `unit_price`) VALUES
	('1537243185233924096', 'admin', '2022-06-16 09:18:30.618000', 0, 'admin', '2022-06-16 09:18:39.310000', '1537241415803867136', '内存条', 1, '2022-06-16 09:18:39', NULL, '8G', '固定资产', 1.00, '测试', '1464764315201572865', '办公所用', 210.00),
	('1537243299780366336', 'admin', '2022-06-16 09:18:57.927000', 0, 'admin', '2022-06-16 09:19:06.794000', '1537241234484105216', '高拍仪', 1, '2022-06-16 09:19:06', NULL, '小米', '固定资产', 1.00, '管理员', '682265633886208', '我要用！', 460.00),
	('1537248216637116416', 'admin', '2022-06-16 09:38:30.209000', 0, NULL, NULL, '1537241018439700480', '办公椅', 0, '', NULL, 'MLO', '固定资产', 1.00, '测试', '1464764315201572865', '我要坐！', 60.00);

DROP TABLE IF EXISTS `a_assets_type`;
CREATE TABLE IF NOT EXISTS `a_assets_type` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `asset_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `existing_number` decimal(19,2) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `nature` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `number` decimal(19,2) DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `total_price` decimal(19,2) DEFAULT NULL,
  `unit_price` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_assets_type`;
INSERT INTO `a_assets_type` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `asset_name`, `existing_number`, `model`, `nature`, `number`, `remarks`, `total_price`, `unit_price`) VALUES
	('1537240938303328256', 'admin', '2022-06-16 09:09:34.920000', 0, 'admin', '2022-06-16 09:15:21.531000', '办公桌', 100.00, 'TLC', '固定资产', 100.00, '木质办公桌', 20000.00, 200.00),
	('1537241018439700480', 'admin', '2022-06-16 09:09:54.013000', 0, 'admin', '2022-06-16 09:15:06.037000', '办公椅', 80.00, 'MLO', '固定资产', 80.00, '办公用的椅子', 4800.00, 60.00),
	('1537241154553253888', 'admin', '2022-06-16 09:10:26.464000', 0, 'admin', '2022-06-16 09:14:44.779000', '打印机', 20.00, '惠普', '固定资产', 20.00, '不含扫描功能', 6800.00, 340.00),
	('1537241234484105216', 'admin', '2022-06-16 09:10:45.521000', 0, 'admin', '2022-06-16 09:19:06.789000', '高拍仪', 9.00, '小米', '固定资产', 10.00, '清晰度尚可', 4600.00, 460.00),
	('1537241335575220224', 'admin', '2022-06-16 09:11:09.624000', 0, 'admin', '2022-06-16 09:14:10.264000', '移动硬盘', 50.00, '金士顿', '固定资产', 50.00, '500GB', 13000.00, 260.00),
	('1537241415803867136', 'admin', '2022-06-16 09:11:28.751000', 0, 'admin', '2022-06-16 09:18:39.255000', '内存条', 49.00, '8G', '固定资产', 50.00, 'DDR3', 10500.00, 210.00),
	('1537241487992033280', 'admin', '2022-06-16 09:11:45.961000', 0, 'admin', '2022-06-16 09:16:16.637000', '签字笔', 500.00, '真彩', '耗材', 500.00, '蓝色', 750.00, 1.50),
	('1537241615121387520', 'admin', '2022-06-16 09:12:16.272000', 0, 'admin', '2022-06-16 09:16:04.848000', 'A4纸', 600.00, '真彩', '耗材', 600.00, '用于打印文件,400张一包', 12000.00, 20.00),
	('1537241687196307456', 'admin', '2022-06-16 09:12:33.456000', 0, 'admin', '2022-06-16 09:15:52.931000', '垃圾袋', 500.00, 'L', '耗材', 500.00, '一包20只', 3000.00, 6.00),
	('1537241885704327168', 'admin', '2022-06-16 09:13:20.784000', 0, 'admin', '2022-06-16 09:15:40.120000', '黑板擦', 500.00, 'L', '耗材', 500.00, '用于会议室演示', 1750.00, 3.50);

DROP TABLE IF EXISTS `a_department`;
CREATE TABLE IF NOT EXISTS `a_department` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_department`;
INSERT INTO `a_department` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `parent_id`, `sort_order`, `status`, `title`, `is_parent`) VALUES
	(1464487288363945985, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 1.00, 0, '人力资源部', b'1'),
	(1464487332064399361, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 2.00, 0, '行政综合部', b'1'),
	(1464487379074158593, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 3.00, 0, '设计研发部', b'1'),
	(1464487406328745985, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 4.00, 0, '财务部', b'0'),
	(1464487432169852929, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 5.00, 0, '综合发展部', b'0'),
	(1464487524662644737, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487288363945985, 1.00, 0, 'HRBP部', b'0'),
	(1464487559647334401, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487288363945985, 2.00, 0, '招聘部', b'0'),
	(1464487623933431809, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 1.00, 0, '安保部', b'0'),
	(1464487656678363137, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 2.00, 0, '保洁部', b'0'),
	(1464487691780493313, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 3.00, 0, '设备维修部', b'0'),
	(1464487733895499777, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487379074158593, 1.00, 0, '视频剪辑部', b'0'),
	(1464487807572643841, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487379074158593, 2.00, 0, '产品应用部', b'0'),
	(1527834362656198656, 'admin', '2022-05-21 10:11:13', 0, NULL, NULL, 0, 6.00, 0, '客服部', b'0');

DROP TABLE IF EXISTS `a_department_header`;
CREATE TABLE IF NOT EXISTS `a_department_header` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `department_id` bigint unsigned DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_department_header`;

DROP TABLE IF EXISTS `a_dict`;
CREATE TABLE IF NOT EXISTS `a_dict` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_dict`;
INSERT INTO `a_dict` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `title`, `type`, `sort_order`) VALUES
	(75135930788220928, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', '性别', 'sex', 0.00),
	(75388696739713024, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', '分权限', 'permission_type', 2.00),
	(1536612750841745408, 'admin', '2022-06-14 15:33:23', 0, NULL, NULL, '', '学历', 'education', 3.00),
	(1536613395229446144, 'admin', '2022-06-14 15:35:57', 0, NULL, NULL, '', '在职状态', 'occupationStatus', 4.00);

DROP TABLE IF EXISTS `a_dict_data`;
CREATE TABLE IF NOT EXISTS `a_dict_data` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dict_id` bigint unsigned DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sort_order` (`sort_order`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_dict_data`;
INSERT INTO `a_dict_data` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `dict_id`, `sort_order`, `status`, `title`, `value`) VALUES
	(75158227712479232, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 0.00, 0, '男', '男'),
	(75159254272577536, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 1.00, 0, '女', '女'),
	(75159898425397248, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 2.00, -1, '保密', '保密'),
	(75390787835138048, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 0.00, 0, '查看操作(view)', 'view'),
	(75390886501945344, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 1.00, 0, '添加操作(add)', 'add'),
	(75390993939042304, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 2.00, 0, '编辑操作(edit)', 'edit'),
	(75391067532300288, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 3.00, 0, '删除操作(delete)', 'delete'),
	(75391126902673408, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 4.00, 0, '清空操作(clear)', 'clear'),
	(75391192883269632, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 5.00, 0, '启用操作(enable)', 'enable'),
	(75391251024711680, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 6.00, 0, '禁用操作(disable)', 'disable'),
	(75391297124306944, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 7.00, 0, '搜索操作(search)', 'search'),
	(75391343379091456, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 8.00, 0, '上传文件(upload)', 'upload'),
	(75391407526776832, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 9.00, 0, '导出操作(output)', 'output'),
	(75391475042488320, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 10.00, 0, '导入操作(input)', 'input'),
	(75391522182270976, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 11.00, 0, '分配权限(editPerm)', 'editPerm'),
	(75391576364290048, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 12.00, 0, '设为默认(setDefault)', 'setDefault'),
	(75391798033256448, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 13.00, 0, '其他操作(other)', 'other'),
	(1536612796106674176, 'admin', '2022-06-14 15:33:34', 0, NULL, NULL, '', 1536612750841745408, 1.00, 0, '博士', '博士'),
	(1536612834962706432, 'admin', '2022-06-14 15:33:43', 0, NULL, NULL, '', 1536612750841745408, 2.00, 0, '硕士', '硕士'),
	(1536612883465637888, 'admin', '2022-06-14 15:33:55', 0, 'admin', '2022-06-14 15:34:13', '', 1536612750841745408, 3.00, 0, '本科', '本科'),
	(1536612930576060416, 'admin', '2022-06-14 15:34:06', 0, 'admin', '2022-06-14 15:34:11', '', 1536612750841745408, 4.00, 0, '专科', '专科'),
	(1536612993519980544, 'admin', '2022-06-14 15:34:21', 0, '', NULL, '', 1536612750841745408, 5.00, 0, '高中及以下', '高中及以下'),
	(1536613425902391296, 'admin', '2022-06-14 15:36:04', 0, NULL, NULL, '', 1536613395229446144, 1.00, 0, '在职', '在职'),
	(1536613447544999936, 'admin', '2022-06-14 15:36:09', 0, NULL, NULL, '', 1536613395229446144, 2.00, 0, '离职', '离职');

DROP TABLE IF EXISTS `a_file`;
CREATE TABLE IF NOT EXISTS `a_file` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint unsigned DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `f_key` varchar(255) DEFAULT NULL,
  `location` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_file`;
INSERT INTO `a_file` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `name`, `size`, `type`, `url`, `f_key`, `location`) VALUES
	(1527897791781801984, 'admin', '2022-05-21 14:23:15', 0, NULL, NULL, 'gh_57ba35562a20_258.jpg', 43531, 'image/jpeg', 'C:\\oa-file/20220521/1e07b00ffc20427fbdf2c434231c1e1e.jpg', '1e07b00ffc20427fbdf2c434231c1e1e.jpg', 0),
	(1527897840372813824, 'admin', '2022-05-21 14:23:27', 0, NULL, NULL, '美术版权.xlsx', 3605123, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'C:\\oa-file/20220521/4c1dadd45a8a4aca9a9ebd5f3256ba45.xlsx', '4c1dadd45a8a4aca9a9ebd5f3256ba45.xlsx', 0),
	(1527897921570344960, 'admin', '2022-05-21 14:23:46', 0, NULL, NULL, '公司大门通行设备使用说明-V1.pdf', 914877, 'application/pdf', 'C:\\oa-file/20220521/74e865aed9594ea9a9a0536161e40066.pdf', '74e865aed9594ea9a9a0536161e40066.pdf', 0),
	(1527898199690448896, 'admin', '2022-05-21 14:24:52', 0, NULL, NULL, '111.mp4', 180593, 'video/mp4', 'C:\\oa-file/20220521/113344a2389349ed8d02fb7dacfa058f.mp4', '113344a2389349ed8d02fb7dacfa058f.mp4', 0),
	(1527899386892390400, 'admin', '2022-05-21 14:29:36', 0, NULL, NULL, '【模版】需求文档.md.zip', 3104, 'application/x-zip-compressed', 'C:\\oa-file/20220521/dacc0bc61cf34bc18d1259b4ce60d52c.zip', 'dacc0bc61cf34bc18d1259b4ce60d52c.zip', 0),
	(1536614206311370752, 'admin', '2022-06-14 15:39:10', 0, NULL, NULL, '张三签名.png', 1686, 'image/png', 'C:\\\\oa-file/20220614/62a6f2fde5994e5fac6a78aa5ad070ad.png', '62a6f2fde5994e5fac6a78aa5ad070ad.png', 0),
	(1536614698903015424, 'admin', '2022-06-14 15:41:08', 0, NULL, NULL, '张三简历.pdf', 28091, 'application/pdf', 'C:\\\\oa-file/20220614/2a643018f08a4a4bbfacbb19218ab1e2.pdf', '2a643018f08a4a4bbfacbb19218ab1e2.pdf', 0);

DROP TABLE IF EXISTS `a_log`;
CREATE TABLE IF NOT EXISTS `a_log` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `cost_time` int unsigned DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request_param` longtext,
  `request_type` varchar(255) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `log_type` tinyint(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_log`;
INSERT INTO `a_log` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `cost_time`, `ip`, `ip_info`, `name`, `request_param`, `request_type`, `request_url`, `username`, `log_type`, `code`, `device`) VALUES
	(1536883393592168448, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 287, '127.0.0.1', '本地测试', '登录系统', '{"password":"密码隐藏","code":"8817","saveLogin":"true","captchaId":"ef9e5437ff544c8b91d9810febcb58e7","username":"admin"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883393592168449, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 263, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883394787545090, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 43, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883395219558400, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 69, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883401452294144, NULL, '2022-06-15 09:28:52', 0, NULL, '2022-06-15 09:28:52', 76, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883413934542848, NULL, '2022-06-15 09:28:54', 0, NULL, '2022-06-15 09:28:54', 40, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415226388480, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 39, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415259942913, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 49, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415280914432, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 94, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","departmentId":"","nickname":"","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415444492288, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 36, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883420095975424, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 40, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883420171472896, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 58, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","departmentId":"","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/myUser/getByPage', 'admin', 2, 'USER-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883421131968513, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 38, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883423262674944, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 50, '127.0.0.1', '本地测试', '查询系统文件', '{"pageNumber":"1","endDate":"","fkey":"","name":"","pageSize":"15","sort":"createTime","type":"","startDate":"","order":"desc"}', 'GET', '/zwz/file/getByCondition', 'admin', 2, 'FILE-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771840, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 41, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_HTTP"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771841, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 34, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_PATH"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771842, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 44, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_VIEW"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883426920108032, NULL, '2022-06-15 09:28:58', 0, NULL, '2022-06-15 09:28:58', 55, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883430367825920, NULL, '2022-06-15 09:28:58', 0, NULL, '2022-06-15 09:28:58', 45, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883433186398208, NULL, '2022-06-15 09:28:59', 0, NULL, '2022-06-15 09:28:59', 43, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883444859146240, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 50, '127.0.0.1', '本地测试', '查询所有数据字典', '{}', 'GET', '/zwz/dict/getAll', 'admin', 2, 'DICT-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883444947226624, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 59, '127.0.0.1', '本地测试', '查询数据字典值', '{"pageNumber":"1","name":"","pageSize":"10","sort":"sortOrder","status":"","order":"asc"}', 'GET', '/zwz/dictData/getByCondition', 'admin', 2, 'DICT_DATA-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883446968881152, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 43, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883451238682624, NULL, '2022-06-15 09:29:03', 0, NULL, '2022-06-15 09:29:03', 52, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883451347734528, NULL, '2022-06-15 09:29:03', 0, NULL, '2022-06-15 09:29:03', 65, '127.0.0.1', '本地测试', '查询学生', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/student/getByPage', 'admin', 3, 'STUDENT-04', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883452538916864, NULL, '2022-06-15 09:29:04', 0, NULL, '2022-06-15 09:29:04', 43, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/education', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883453881094144, NULL, '2022-06-15 09:29:04', 0, NULL, '2022-06-15 09:29:04', 48, '127.0.0.1', '本地测试', '查询教师', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/teacher/getByPage', 'admin', 3, 'TEACHER-04', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883466526920704, NULL, '2022-06-15 09:29:07', 0, NULL, '2022-06-15 09:29:07', 42, '127.0.0.1', '本地测试', '查询图表数据', '{}', 'GET', '/zwz/teacher/getAntvVoList', 'admin', 4, 'CHART-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883470083690496, NULL, '2022-06-15 09:29:08', 0, NULL, '2022-06-15 09:29:08', 46, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883482377195520, NULL, '2022-06-15 09:29:11', 0, NULL, '2022-06-15 09:29:11', 41, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883484109443072, NULL, '2022-06-15 09:29:11', 0, NULL, '2022-06-15 09:29:11', 50, '127.0.0.1', '本地测试', '查询日志', '{"logType":"2","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883506003709952, NULL, '2022-06-15 09:29:16', 0, NULL, '2022-06-15 09:29:16', 86, '127.0.0.1', '本地测试', '查询日志', '{"logType":"3","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883509954744320, NULL, '2022-06-15 09:29:17', 0, NULL, '2022-06-15 09:29:17', 38, '127.0.0.1', '本地测试', '查询日志', '{"logType":"4","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883517961670656, NULL, '2022-06-15 09:29:19', 0, NULL, '2022-06-15 09:29:19', 39, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584432867335868416, NULL, '2022-10-24 14:33:28', 0, NULL, '2022-10-24 14:33:28', 348, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"3661","captchaId":"7b877767ba8848138717cd0c68306077","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584432867373617152, NULL, '2022-10-24 14:33:28', 0, NULL, '2022-10-24 14:33:28', 383, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584432869424631808, NULL, '2022-10-24 14:33:28', 0, NULL, '2022-10-24 14:33:28', 101, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584432869428826112, NULL, '2022-10-24 14:33:28', 0, NULL, '2022-10-24 14:33:28', 145, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434122116435968, NULL, '2022-10-24 14:38:27', 0, NULL, '2022-10-24 14:38:27', 147, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434122300985344, NULL, '2022-10-24 14:38:27', 0, NULL, '2022-10-24 14:38:27', 146, '127.0.0.1', '本地测试', '查询学生', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/student/getByPage', 'admin', 3, 'STUDENT-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434127615168512, NULL, '2022-10-24 14:38:28', 0, NULL, '2022-10-24 14:38:28', 117, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/education', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434127678083072, NULL, '2022-10-24 14:38:28', 0, NULL, '2022-10-24 14:38:28', 233, '127.0.0.1', '本地测试', '查询教师', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/teacher/getByPage', 'admin', 3, 'TEACHER-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434143285088256, NULL, '2022-10-24 14:38:32', 0, NULL, '2022-10-24 14:38:32', 39, '127.0.0.1', '本地测试', '查询图表数据', '{}', 'GET', '/zwz/teacher/getAntvVoList', 'admin', 4, 'CHART-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434146153992192, NULL, '2022-10-24 14:38:33', 0, NULL, '2022-10-24 14:38:33', 51, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434151438815232, NULL, '2022-10-24 14:38:34', 0, NULL, '2022-10-24 14:38:34', 138, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434151438815233, NULL, '2022-10-24 14:38:34', 0, NULL, '2022-10-24 14:38:34', 53, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434151531089921, NULL, '2022-10-24 14:38:34', 0, NULL, '2022-10-24 14:38:34', 104, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434151577227264, NULL, '2022-10-24 14:38:34', 0, NULL, '2022-10-24 14:38:34', 126, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434153514995712, NULL, '2022-10-24 14:38:34', 0, NULL, '2022-10-24 14:38:34', 78, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434166295040002, NULL, '2022-10-24 14:38:37', 0, NULL, '2022-10-24 14:38:37', 48, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434166467006464, NULL, '2022-10-24 14:38:37', 0, NULL, '2022-10-24 14:38:37', 82, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434243654782976, NULL, '2022-10-24 14:38:56', 0, NULL, '2022-10-24 14:38:56', 79, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536599942410407936"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434361552474112, NULL, '2022-10-24 14:39:24', 0, NULL, '2022-10-24 14:39:24', 64, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536600125332393984"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434372730294272, NULL, '2022-10-24 14:39:27', 0, NULL, '2022-10-24 14:39:27', 25, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536606273959759872"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434379613147136, NULL, '2022-10-24 14:39:28', 0, NULL, '2022-10-24 14:39:28', 64, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536600125332393984"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434382733709312, NULL, '2022-10-24 14:39:29', 0, NULL, '2022-10-24 14:39:29', 35, '127.0.0.1', '本地测试', '编辑菜单', '{"id":"1536600125332393984","updateBy":"admin","createBy":"admin","createTime":"2022-06-14 14:43:13","delFlag":"0","name":"tableDemo","title":"数据展示","level":"1","status":"0","type":"0","component":"Main","path":"/tableDemo","icon":"ios-apps","parentId":"1536599942410407936","buttonType":"","description":"","sortOrder":"2","expand":"true","selected":"true","checked":"false","permTypes":"","nodeKey":"17"}', 'POST', '/zwz/permission/edit', 'admin', 2, 'PERMISSION-07', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434384340127744, NULL, '2022-10-24 14:39:29', 0, NULL, '2022-10-24 14:39:29', 33, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434384549842944, NULL, '2022-10-24 14:39:29', 0, NULL, '2022-10-24 14:39:29', 91, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434384558231552, NULL, '2022-10-24 14:39:29', 0, NULL, '2022-10-24 14:39:29', 141, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434387909480448, NULL, '2022-10-24 14:39:30', 0, NULL, '2022-10-24 14:39:30', 33, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536606273959759872"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434395211763712, NULL, '2022-10-24 14:39:32', 0, NULL, '2022-10-24 14:39:32', 30, '127.0.0.1', '本地测试', '编辑菜单', '{"id":"1536606273959759872","updateBy":"admin","createBy":"admin","createTime":"2022-06-14 15:07:39","delFlag":"0","name":"antv","title":"图表展示","level":"1","status":"0","type":"0","component":"Main","path":"/antv","icon":"ios-pulse","parentId":"1536599942410407936","buttonType":"","description":"","sortOrder":"3","expand":"true","selected":"true","checked":"false","permTypes":"","nodeKey":"20"}', 'POST', '/zwz/permission/edit', 'admin', 2, 'PERMISSION-07', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434396595884032, NULL, '2022-10-24 14:39:32', 0, NULL, '2022-10-24 14:39:32', 80, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434396864319488, NULL, '2022-10-24 14:39:32', 0, NULL, '2022-10-24 14:39:32', 29, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434396969177088, NULL, '2022-10-24 14:39:32', 0, NULL, '2022-10-24 14:39:32', 51, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434400446255106, NULL, '2022-10-24 14:39:33', 0, NULL, '2022-10-24 14:39:33', 28, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536599942410407936"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434467525758976, NULL, '2022-10-24 14:39:49', 0, NULL, '2022-10-24 14:39:49', 64, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-archive","type":"0","parentId":"1536599942410407936","level":"1","sortOrder":"1","buttonType":"","status":"0","path":"/assetMenu","component":"Main","title":"资产出入库","name":"assetMenu"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434468612083712, NULL, '2022-10-24 14:39:49', 0, NULL, '2022-10-24 14:39:49', 23, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434469182509056, NULL, '2022-10-24 14:39:49', 0, NULL, '2022-10-24 14:39:49', 23, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434469291560960, NULL, '2022-10-24 14:39:50', 0, NULL, '2022-10-24 14:39:50', 52, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434472785416192, NULL, '2022-10-24 14:39:50', 0, NULL, '2022-10-24 14:39:50', 20, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1584434467475427328"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434558575710208, NULL, '2022-10-24 14:40:11', 0, NULL, '2022-10-24 14:40:11', 93, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-beaker","type":"0","parentId":"1584434467475427328","level":"2","sortOrder":"1","buttonType":"","status":"0","title":"资产类型","component":"asset/assetsType/index","path":"assetsType","name":"assetsType"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434559683006464, NULL, '2022-10-24 14:40:11', 0, NULL, '2022-10-24 14:40:11', 47, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434560408621056, NULL, '2022-10-24 14:40:11', 0, NULL, '2022-10-24 14:40:11', 45, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434560626724864, NULL, '2022-10-24 14:40:11', 0, NULL, '2022-10-24 14:40:11', 95, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434634064793600, NULL, '2022-10-24 14:40:29', 0, NULL, '2022-10-24 14:40:29', 82, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-beaker","type":"0","parentId":"1584434467475427328","level":"2","sortOrder":"2","buttonType":"","status":"0","title":"资产入库","component":"asset/assetsIn/index","name":"assetsIn","path":"assetsIn"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434635864150016, NULL, '2022-10-24 14:40:29', 0, NULL, '2022-10-24 14:40:29', 79, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434635864150017, NULL, '2022-10-24 14:40:29', 0, NULL, '2022-10-24 14:40:29', 48, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434636061282304, NULL, '2022-10-24 14:40:29', 0, NULL, '2022-10-24 14:40:29', 99, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434726939267072, NULL, '2022-10-24 14:40:51', 0, NULL, '2022-10-24 14:40:51', 80, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"ios-brush","type":"0","parentId":"1584434467475427328","level":"2","sortOrder":"3","buttonType":"","status":"0","title":"资产出库","path":"assetsOut","component":"asset/assetsOut/index","name":"assetsOut"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434728671514624, NULL, '2022-10-24 14:40:51', 0, NULL, '2022-10-24 14:40:51', 38, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434728679903232, NULL, '2022-10-24 14:40:51', 0, NULL, '2022-10-24 14:40:51', 83, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434728814120960, NULL, '2022-10-24 14:40:51', 0, NULL, '2022-10-24 14:40:51', 76, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434815564910592, NULL, '2022-10-24 14:41:12', 0, NULL, '2022-10-24 14:41:12', 80, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-bulb","type":"0","parentId":"1584434467475427328","level":"2","sortOrder":"4","buttonType":"","status":"0","title":"我的资产领用","component":"asset/assetsOutUser/index","name":"assetsOutUser","path":"assetsOutUser"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434817292963840, NULL, '2022-10-24 14:41:13', 0, NULL, '2022-10-24 14:41:13', 37, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434817297158144, NULL, '2022-10-24 14:41:13', 0, NULL, '2022-10-24 14:41:13', 89, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434817422987264, NULL, '2022-10-24 14:41:13', 0, NULL, '2022-10-24 14:41:13', 68, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434892534583296, NULL, '2022-10-24 14:41:30', 0, NULL, '2022-10-24 14:41:30', 75, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"ios-calculator","type":"0","parentId":"1584434467475427328","level":"2","sortOrder":"5","buttonType":"","status":"0","title":"资产领用审核","component":"asset/assetsOutAudit/index","name":"assetsOutAudit","path":"assetsOutAudit"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434894321356800, NULL, '2022-10-24 14:41:31', 0, NULL, '2022-10-24 14:41:31', 40, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434894329745408, NULL, '2022-10-24 14:41:31', 0, NULL, '2022-10-24 14:41:31', 86, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434894468157440, NULL, '2022-10-24 14:41:31', 0, NULL, '2022-10-24 14:41:31', 72, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434908238057472, NULL, '2022-10-24 14:41:34', 0, NULL, '2022-10-24 14:41:34', 39, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434934511177728, NULL, '2022-10-24 14:41:41', 0, NULL, '2022-10-24 14:41:41', 143, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"496138616573952","permIds":"125909152017944576,1464484663442673664,5129710648430593,1464485105081913345,40238597734928384,1464485485316542465,56309618086776832,5129710648430592,5129710648430594,5129710648430595,1530689520276738048,1530689602321518592,39915540965232640,41363147411427328,1535166254703316992,1535166438371889152,1536599942410407936,1584434467475427328,1584434558533767168,1584434634039627776,1584434726905712640,1584434815531356160,1584434892505223168,1536600125332393984,1536600268379131904,1536604417711804416,1536606273959759872,1536606372668510208,1536606464712511488,1536606550951596032,1536606637815631872,1536875505901506560"}', 'POST', '/zwz/role/editRolePerm', 'admin', 2, 'ROLE-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434935417147392, NULL, '2022-10-24 14:41:41', 0, NULL, '2022-10-24 14:41:41', 71, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434936302145536, NULL, '2022-10-24 14:41:41', 0, NULL, '2022-10-24 14:41:41', 46, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434988269572096, NULL, '2022-10-24 14:41:53', 0, NULL, '2022-10-24 14:41:53', 80, '127.0.0.1', '本地测试', '新增角色', '{"name":"ROLE_LEADER","description":"资产审核员"}', 'POST', '/zwz/role/save', 'admin', 2, 'ROLE-05', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584434990173786112, NULL, '2022-10-24 14:41:54', 0, NULL, '2022-10-24 14:41:54', 63, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435045240803328, NULL, '2022-10-24 14:42:07', 0, NULL, '2022-10-24 14:42:07', 89, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"1584434988244406272","permIds":"1536599942410407936,1584434467475427328,1584434558533767168,1584434634039627776,1584434726905712640,1584434815531356160,1584434892505223168"}', 'POST', '/zwz/role/editRolePerm', 'admin', 2, 'ROLE-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435047010799617, NULL, '2022-10-24 14:42:07', 0, NULL, '2022-10-24 14:42:07', 39, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435047098880000, NULL, '2022-10-24 14:42:07', 0, NULL, '2022-10-24 14:42:07', 98, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435102958620672, NULL, '2022-10-24 14:42:21', 0, NULL, '2022-10-24 14:42:21', 93, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"496138616573953","permIds":"1536599942410407936,1584434467475427328,1584434558533767168,1584434634039627776,1584434726905712640,1584434815531356160,1536600125332393984,1536600268379131904,1536604417711804416,1536606273959759872,1536606372668510208,1536606464712511488,1536606550951596032,1536606637815631872,1536875505901506560"}', 'POST', '/zwz/role/editRolePerm', 'admin', 2, 'ROLE-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435104619565056, NULL, '2022-10-24 14:42:21', 0, NULL, '2022-10-24 14:42:21', 29, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435104707645440, NULL, '2022-10-24 14:42:21', 0, NULL, '2022-10-24 14:42:21', 96, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435114237104128, NULL, '2022-10-24 14:42:23', 0, NULL, '2022-10-24 14:42:23', 29, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435118901170176, NULL, '2022-10-24 14:42:24', 0, NULL, '2022-10-24 14:42:24', 25, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435118901170177, NULL, '2022-10-24 14:42:24', 0, NULL, '2022-10-24 14:42:24', 24, '127.0.0.1', '本地测试', '查询学生', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/student/getByPage', 'admin', 3, 'STUDENT-04', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435123040948224, NULL, '2022-10-24 14:42:25', 0, NULL, '2022-10-24 14:42:25', 37, '127.0.0.1', '本地测试', '查询资产类型', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/assetsType/getByPage', 'admin', 2, 'ASSETS-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435124022415360, NULL, '2022-10-24 14:42:26', 0, NULL, '2022-10-24 14:42:26', 34, '127.0.0.1', '本地测试', '查询资产类型', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/assetsType/getByPage', 'admin', 2, 'ASSETS-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435126576746504, NULL, '2022-10-24 14:42:26', 0, NULL, '2022-10-24 14:42:26', 34, '127.0.0.1', '本地测试', '查询资产入库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/warehousing/getByPage', 'admin', 2, 'ASSET-IN-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435126576746505, NULL, '2022-10-24 14:42:26', 0, NULL, '2022-10-24 14:42:26', 48, '127.0.0.1', '本地测试', '查询资产入库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/warehousing/getByPage', 'admin', 2, 'ASSET-IN-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435129361764352, NULL, '2022-10-24 14:42:27', 0, NULL, '2022-10-24 14:42:27', 33, '127.0.0.1', '本地测试', '查询资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/warehouseOut/getByPage', 'admin', 2, 'ASSET-OUT-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435129382735872, NULL, '2022-10-24 14:42:27', 0, NULL, '2022-10-24 14:42:27', 37, '127.0.0.1', '本地测试', '查询资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/warehouseOut/getByPage', 'admin', 2, 'ASSET-OUT-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435131693797376, NULL, '2022-10-24 14:42:27', 0, NULL, '2022-10-24 14:42:27', 50, '127.0.0.1', '本地测试', '查询我的资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/warehouseOut/getByMyPage', 'admin', 2, 'ASSET-OUT-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435131706380288, NULL, '2022-10-24 14:42:27', 0, NULL, '2022-10-24 14:42:27', 47, '127.0.0.1', '本地测试', '查询我的资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/warehouseOut/getByMyPage', 'admin', 2, 'ASSET-OUT-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435135032463360, NULL, '2022-10-24 14:42:28', 0, NULL, '2022-10-24 14:42:28', 26, '127.0.0.1', '本地测试', '查询资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/warehouseOut/getByPage', 'admin', 2, 'ASSET-OUT-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435135070212096, NULL, '2022-10-24 14:42:28', 0, NULL, '2022-10-24 14:42:28', 38, '127.0.0.1', '本地测试', '查询资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/warehouseOut/getByPage', 'admin', 2, 'ASSET-OUT-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435140413755392, NULL, '2022-10-24 14:42:30', 0, NULL, '2022-10-24 14:42:30', 30, '127.0.0.1', '本地测试', '查询我的资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/warehouseOut/getByMyPage', 'admin', 2, 'ASSET-OUT-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435140426338304, NULL, '2022-10-24 14:42:30', 0, NULL, '2022-10-24 14:42:30', 30, '127.0.0.1', '本地测试', '查询我的资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/warehouseOut/getByMyPage', 'admin', 2, 'ASSET-OUT-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435141764321280, NULL, '2022-10-24 14:42:30', 0, NULL, '2022-10-24 14:42:30', 34, '127.0.0.1', '本地测试', '查询资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/warehouseOut/getByPage', 'admin', 2, 'ASSET-OUT-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435141785292800, NULL, '2022-10-24 14:42:30', 0, NULL, '2022-10-24 14:42:30', 38, '127.0.0.1', '本地测试', '查询资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/warehouseOut/getByPage', 'admin', 2, 'ASSET-OUT-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435144662585344, NULL, '2022-10-24 14:42:31', 0, NULL, '2022-10-24 14:42:31', 39, '127.0.0.1', '本地测试', '查询资产入库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/warehousing/getByPage', 'admin', 2, 'ASSET-IN-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435144662585345, NULL, '2022-10-24 14:42:31', 0, NULL, '2022-10-24 14:42:31', 44, '127.0.0.1', '本地测试', '查询资产入库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/warehousing/getByPage', 'admin', 2, 'ASSET-IN-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435155584552960, NULL, '2022-10-24 14:42:33', 0, NULL, '2022-10-24 14:42:33', 29, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584435183803830272, NULL, '2022-10-24 14:42:40', 0, NULL, '2022-10-24 14:42:40', 64, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437519469121536, NULL, '2022-10-24 14:51:57', 0, NULL, '2022-10-24 14:51:57', 49, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"4545","captchaId":"16b6d2f5452b40438f6e0d3e9de96f1f","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437520781938688, NULL, '2022-10-24 14:51:57', 0, NULL, '2022-10-24 14:51:57', 18, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437522002481152, NULL, '2022-10-24 14:51:57', 0, NULL, '2022-10-24 14:51:57', 35, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437530533695488, NULL, '2022-10-24 14:51:59', 0, NULL, '2022-10-24 14:51:59', 21, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437531003457536, NULL, '2022-10-24 14:52:00', 0, NULL, '2022-10-24 14:52:00', 68, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437742966804483, NULL, '2022-10-24 14:52:50', 0, NULL, '2022-10-24 14:52:50', 80, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437742979387392, NULL, '2022-10-24 14:52:50', 0, NULL, '2022-10-24 14:52:50', 71, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437744246067203, NULL, '2022-10-24 14:52:50', 0, NULL, '2022-10-24 14:52:50', 37, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437744271233024, NULL, '2022-10-24 14:52:50', 0, NULL, '2022-10-24 14:52:50', 39, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437744644526081, NULL, '2022-10-24 14:52:50', 0, NULL, '2022-10-24 14:52:50', 40, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437791230660608, NULL, '2022-10-24 14:53:02', 0, NULL, '2022-10-24 14:53:02', 103, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437791239049216, NULL, '2022-10-24 14:53:02', 0, NULL, '2022-10-24 14:53:02', 94, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","departmentId":""}', 'GET', '/zwz/myUser/getByPage', 'admin', 2, 'USER-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437792245682176, NULL, '2022-10-24 14:53:02', 0, NULL, '2022-10-24 14:53:02', 42, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437799308890112, NULL, '2022-10-24 14:53:03', 0, NULL, '2022-10-24 14:53:03', 51, '127.0.0.1', '本地测试', '查询子部门', '{"parentId":"1464487332064399361"}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437801968078848, NULL, '2022-10-24 14:53:04', 0, NULL, '2022-10-24 14:53:04', 82, '127.0.0.1', '本地测试', '查询子部门', '{"parentId":"1464487288363945985"}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437852928872448, NULL, '2022-10-24 14:53:16', 0, NULL, '2022-10-24 14:53:16', 94, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437892485353472, NULL, '2022-10-24 14:53:26', 0, NULL, '2022-10-24 14:53:26', 141, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1584434815531356160"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584437944876404736, NULL, '2022-10-24 14:53:38', 0, NULL, '2022-10-24 14:53:38', 125, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584438020134801408, NULL, '2022-10-24 14:53:56', 0, NULL, '2022-10-24 14:53:56', 75, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584438026833104896, NULL, '2022-10-24 14:53:58', 0, NULL, '2022-10-24 14:53:58', 42, '127.0.0.1', '本地测试', '查询资产类型', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/assetsType/getByPage', 'admin', 2, 'ASSETS-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584438028099784704, NULL, '2022-10-24 14:53:58', 0, NULL, '2022-10-24 14:53:58', 41, '127.0.0.1', '本地测试', '查询资产类型', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/assetsType/getByPage', 'admin', 2, 'ASSETS-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584438054934941696, NULL, '2022-10-24 14:54:04', 0, NULL, '2022-10-24 14:54:04', 75, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584438055891243008, NULL, '2022-10-24 14:54:05', 0, NULL, '2022-10-24 14:54:05', 37, '127.0.0.1', '本地测试', '查询资产类型', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/assetsType/getByPage', 'admin', 2, 'ASSETS-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584438055891243009, NULL, '2022-10-24 14:54:05', 0, NULL, '2022-10-24 14:54:05', 87, '127.0.0.1', '本地测试', '查询资产类型', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/assetsType/getByPage', 'admin', 2, 'ASSETS-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584438498667139082, NULL, '2022-10-24 14:55:50', 0, NULL, '2022-10-24 14:55:50', 75, '127.0.0.1', '本地测试', '查询资产入库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/warehousing/getByPage', 'admin', 2, 'ASSET-IN-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584438498667139083, NULL, '2022-10-24 14:55:50', 0, NULL, '2022-10-24 14:55:50', 80, '127.0.0.1', '本地测试', '查询资产入库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/warehousing/getByPage', 'admin', 2, 'ASSET-IN-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584438617831510018, NULL, '2022-10-24 14:56:19', 0, NULL, '2022-10-24 14:56:19', 59, '127.0.0.1', '本地测试', '查询资产类型', '{"natureType":"1","pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/assetsType/getByPage', 'admin', 2, 'ASSETS-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584438943657627648, NULL, '2022-10-24 14:57:36', 0, NULL, '2022-10-24 14:57:36', 86, '127.0.0.1', '本地测试', '查询资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/warehouseOut/getByPage', 'admin', 2, 'ASSET-OUT-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584438943670210560, NULL, '2022-10-24 14:57:36', 0, NULL, '2022-10-24 14:57:36', 93, '127.0.0.1', '本地测试', '查询资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/warehouseOut/getByPage', 'admin', 2, 'ASSET-OUT-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584439007998251009, NULL, '2022-10-24 14:57:52', 0, NULL, '2022-10-24 14:57:52', 97, '127.0.0.1', '本地测试', '查询我的资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/warehouseOut/getByMyPage', 'admin', 2, 'ASSET-OUT-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584439009290096640, NULL, '2022-10-24 14:57:52', 0, NULL, '2022-10-24 14:57:52', 41, '127.0.0.1', '本地测试', '查询我的资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/warehouseOut/getByMyPage', 'admin', 2, 'ASSET-OUT-02', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584439066601066496, NULL, '2022-10-24 14:58:06', 0, NULL, '2022-10-24 14:58:06', 78, '127.0.0.1', '本地测试', '查询资产类型', '{"natureType":"1","pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/assetsType/getByPage', 'admin', 2, 'ASSETS-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584439140131409920, NULL, '2022-10-24 14:58:23', 0, NULL, '2022-10-24 14:58:23', 93, '127.0.0.1', '本地测试', '查询资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/warehouseOut/getByPage', 'admin', 2, 'ASSET-OUT-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584439141469392896, NULL, '2022-10-24 14:58:23', 0, NULL, '2022-10-24 14:58:23', 52, '127.0.0.1', '本地测试', '查询资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/warehouseOut/getByPage', 'admin', 2, 'ASSET-OUT-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584439144745144320, NULL, '2022-10-24 14:58:24', 0, NULL, '2022-10-24 14:58:24', 39, '127.0.0.1', '本地测试', '查询资产类型', '{"natureType":"1","pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/assetsType/getByPage', 'admin', 2, 'ASSETS-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584439223652585472, NULL, '2022-10-24 14:58:43', 0, NULL, '2022-10-24 14:58:43', 80, '127.0.0.1', '本地测试', '查询资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"固定资产"}', 'GET', '/zwz/warehouseOut/getByPage', 'admin', 2, 'ASSET-OUT-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1584439224982179840, NULL, '2022-10-24 14:58:43', 0, NULL, '2022-10-24 14:58:43', 34, '127.0.0.1', '本地测试', '查询资产出库单', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","nature":"耗材"}', 'GET', '/zwz/warehouseOut/getByPage', 'admin', 2, 'ASSET-OUT-01', 'PC端 | Chrome 106.0.0.0 | Windows Windows 10 or Windows Server 2016');

DROP TABLE IF EXISTS `a_permission`;
CREATE TABLE IF NOT EXISTS `a_permission` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int unsigned DEFAULT NULL,
  `button_type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `show_always` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_permission`;
INSERT INTO `a_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `name`, `parent_id`, `type`, `sort_order`, `component`, `path`, `title`, `icon`, `level`, `button_type`, `status`, `show_always`) VALUES
	(5129710648430592, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-29 13:05:28', '', 'roleMenu', 125909152017944576, 0, 4.00, 'Main', '/roleMenu', '权限管理', 'md-desktop', 1, '', 0, b'1'),
	(5129710648430593, '', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'user-admin', 1464484663442673664, 0, 1.10, 'roster/user/user', 'user', '用户管理', 'md-person', 2, '', 0, b'1'),
	(5129710648430594, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-14 11:23:18', '', 'role-manage', 5129710648430592, 0, 1.00, 'role/role/index', 'role', '角色支持', 'md-contacts', 2, '', 0, b'1'),
	(5129710648430595, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-14 11:23:13', '', 'menu-manage', 5129710648430592, 0, 2.00, 'menu/menu/index', 'menu', '菜单支持', 'md-menu', 2, '', 0, b'1'),
	(39915540965232640, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-10 15:45:37', '', 'monitor', 125909152017944576, 0, 6.00, 'Main', '/monitor', '日志管理', 'ios-analytics', 1, '', 0, b'1'),
	(40238597734928384, '', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'department-admin', 1464485105081913345, 0, 1.20, 'roster/department/department', 'department-admin', '部门管理', 'md-git-branch', 2, '', 0, b'1'),
	(41363147411427328, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-21 14:15:44', '', 'log-manage', 39915540965232640, 0, 2.20, 'log/log/index', 'log', '日志管理', 'md-list-box', 2, '', 0, b'1'),
	(56309618086776832, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-29 07:18:02', '', 'file-admin', 1464485485316542465, 0, 1.00, 'file/file/index', 'file', '云盘', 'ios-folder', 2, '', 0, b'1'),
	(125909152017944576, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'zwz', 0, -1, 1.00, '', '', '数据中心', 'md-home', 0, '', 0, b'1'),
	(1464484663442673664, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'userTwoMenu', 125909152017944576, 0, 1.00, 'Main', '/userTwoMenu', '用户管理', 'md-analytics', 1, '', 0, b'1'),
	(1464485105081913345, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', NULL, 'depTwoMenu', 125909152017944576, 0, 2.00, 'Main', '/depTwoMenu', '部门管理', 'ios-apps', 1, '', 0, b'1'),
	(1464485485316542465, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-05-21 14:13:42', '', 'fileAdmin', 125909152017944576, 0, 3.00, 'Main', '/fileAdmin', '文件管理', 'md-basketball', 1, '', 0, b'1'),
	(1530689520276738048, 'admin', '2022-05-29 07:16:35', 0, NULL, NULL, NULL, 'dictMenu', 125909152017944576, 0, 5.00, 'Main', '/dictMenu', '数据字典', 'ios-apps', 1, '', 0, b'1'),
	(1530689602321518592, 'admin', '2022-05-29 07:16:55', 0, NULL, NULL, NULL, 'dict', 1530689520276738048, 0, 1.00, 'dict/dict/index', 'dict', '数据字典', 'ios-apps', 2, '', 0, b'1'),
	(1535166254703316992, 'admin', '2022-06-10 15:45:32', 0, NULL, NULL, NULL, 'codeCreate', 125909152017944576, 0, 7.00, 'Main', '/codeCreate', '代码生成', 'ios-brush', 1, '', 0, b'1'),
	(1535166438371889152, 'admin', '2022-06-10 15:46:16', 0, NULL, NULL, NULL, 'vue', 1535166254703316992, 0, 1.00, 'code/vue/index', 'vue', '前端表格', 'md-bug', 2, '', 0, b'1'),
	(1536599942410407936, 'admin', '2022-06-14 14:42:30', 0, NULL, NULL, NULL, 'demo', 0, -1, 2.00, '', '', '资产出入库', 'md-bulb', 0, NULL, 0, NULL),
	(1536600125332393984, 'admin', '2022-06-14 14:43:13', 0, 'admin', '2022-10-24 14:39:29', '', 'tableDemo', 1536599942410407936, 0, 2.00, 'Main', '/tableDemo', '数据展示', 'ios-apps', 1, '', 0, NULL),
	(1536600268379131904, 'admin', '2022-06-14 14:43:47', 0, NULL, NULL, NULL, 'demo1', 1536600125332393984, 0, 1.00, 'demo/demo1/index', 'demo1', '代码生成样例', 'md-finger-print', 2, '', 0, NULL),
	(1536604417711804416, 'admin', '2022-06-14 15:00:17', 0, 'admin', '2022-06-14 15:31:57', '', 'demo2', 1536600125332393984, 0, 2.00, 'demo/demo2/index', 'demo2', '复杂表格样例', 'md-archive', 2, '', 0, NULL),
	(1536606273959759872, 'admin', '2022-06-14 15:07:39', 0, 'admin', '2022-10-24 14:39:32', '', 'antv', 1536599942410407936, 0, 3.00, 'Main', '/antv', '图表展示', 'ios-pulse', 1, '', 0, NULL),
	(1536606372668510208, 'admin', '2022-06-14 15:08:03', 0, NULL, NULL, NULL, 'antv1', 1536606273959759872, 0, 1.00, 'demo/antv1/index', 'antv1', '条形图', 'md-pricetags', 2, '', 0, NULL),
	(1536606464712511488, 'admin', '2022-06-14 15:08:25', 0, NULL, NULL, NULL, 'antv2', 1536606273959759872, 0, 2.00, 'demo/antv2/index', 'antv2', '饼图', 'md-radio-button-off', 2, '', 0, NULL),
	(1536606550951596032, 'admin', '2022-06-14 15:08:45', 0, NULL, NULL, NULL, 'antv3', 1536606273959759872, 0, 3.00, 'demo/antv3/index', 'antv3', '折线图', 'ios-nutrition', 2, '', 0, NULL),
	(1536606637815631872, 'admin', '2022-06-14 15:09:06', 0, NULL, NULL, NULL, 'antv4', 1536606273959759872, 0, 4.00, 'demo/antv4/index', 'antv4', '柱状图', 'ios-phone-portrait', 2, '', 0, NULL),
	(1536875505901506560, 'admin', '2022-06-15 08:57:29', 0, 'admin', '2022-06-15 09:01:01', '', 'antvActive', 1536606273959759872, 0, 5.00, 'demo/antvActive/index', 'antvActive', '动态图表样例', 'ios-apps', 2, '', 0, NULL),
	(1584434467475427328, 'admin', '2022-10-24 14:39:49', 0, NULL, NULL, NULL, 'assetMenu', 1536599942410407936, 0, 1.00, 'Main', '/assetMenu', '资产出入库', 'md-archive', 1, '', 0, NULL),
	(1584434558533767168, 'admin', '2022-10-24 14:40:11', 0, NULL, NULL, NULL, 'assetsType', 1584434467475427328, 0, 1.00, 'asset/assetsType/index', 'assetsType', '资产类型', 'md-beaker', 2, '', 0, NULL),
	(1584434634039627776, 'admin', '2022-10-24 14:40:29', 0, NULL, NULL, NULL, 'assetsIn', 1584434467475427328, 0, 2.00, 'asset/assetsIn/index', 'assetsIn', '资产入库', 'md-beaker', 2, '', 0, NULL),
	(1584434726905712640, 'admin', '2022-10-24 14:40:51', 0, NULL, NULL, NULL, 'assetsOut', 1584434467475427328, 0, 3.00, 'asset/assetsOut/index', 'assetsOut', '资产出库', 'ios-brush', 2, '', 0, NULL),
	(1584434815531356160, 'admin', '2022-10-24 14:41:12', 0, NULL, NULL, NULL, 'assetsOutUser', 1584434467475427328, 0, 4.00, 'asset/assetsOutUser/index', 'assetsOutUser', '我的资产领用', 'md-bulb', 2, '', 0, NULL),
	(1584434892505223168, 'admin', '2022-10-24 14:41:30', 0, NULL, NULL, NULL, 'assetsOutAudit', 1584434467475427328, 0, 5.00, 'asset/assetsOutAudit/index', 'assetsOutAudit', '资产领用审核', 'ios-calculator', 2, '', 0, NULL);

DROP TABLE IF EXISTS `a_role`;
CREATE TABLE IF NOT EXISTS `a_role` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `default_role` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `data_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_role`;
INSERT INTO `a_role` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `name`, `del_flag`, `default_role`, `description`, `data_type`) VALUES
	(496138616573952, '', '2022-03-20 09:46:20', 'admin', '2022-03-20 09:46:20', 'ROLE_ADMIN', 0, NULL, '超级管理员', 0),
	(496138616573953, '', '2022-03-20 09:46:20', 'admin', '2022-03-20 09:46:20', 'ROLE_USER', 0, b'1', '普通用户', 0),
	(1584434988244406272, 'admin', '2022-10-24 14:41:53', NULL, NULL, 'ROLE_LEADER', 0, NULL, '资产审核员', 0);

DROP TABLE IF EXISTS `a_role_permission`;
CREATE TABLE IF NOT EXISTS `a_role_permission` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `permission_id` bigint unsigned DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_role_permission`;
INSERT INTO `a_role_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `permission_id`, `role_id`) VALUES
	(1464514325862551552, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 125909152017944576, 496138616573952),
	(1464514325862551553, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464484663442673664, 496138616573952),
	(1464514325862551554, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430593, 496138616573952),
	(1464514325862551563, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464485105081913345, 496138616573952),
	(1464514325862551564, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 40238597734928384, 496138616573952),
	(1464514325862551568, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464485485316542465, 496138616573952),
	(1464514325862551569, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 56309618086776832, 496138616573952),
	(1464514325862551583, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430592, 496138616573952),
	(1464514325862551584, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430594, 496138616573952),
	(1464514325862551590, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430595, 496138616573952),
	(1464514325862551594, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 39915540965232640, 496138616573952),
	(1464514325862551595, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 41363147411427328, 496138616573952),
	(1530689746903371801, 'admin', '2022-05-29 07:17:29', 0, NULL, NULL, 1530689520276738048, 496138616573952),
	(1530689747004035072, 'admin', '2022-05-29 07:17:29', 0, NULL, NULL, 1530689602321518592, 496138616573952),
	(1535166468671541252, 'admin', '2022-06-10 15:46:23', 0, NULL, NULL, 1535166254703316992, 496138616573952),
	(1535166468684124160, 'admin', '2022-06-10 15:46:23', 0, NULL, NULL, 1535166438371889152, 496138616573952),
	(1536600292156641281, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536599942410407936, 496138616573952),
	(1536600292173418496, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536600125332393984, 496138616573952),
	(1536600292186001408, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536600268379131904, 496138616573952),
	(1536604439178252292, 'admin', '2022-06-14 15:00:22', 0, NULL, NULL, 1536604417711804416, 496138616573952),
	(1536606659718287364, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606273959759872, 496138616573952),
	(1536606659730870272, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606372668510208, 496138616573952),
	(1536606659735064576, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606464712511488, 496138616573952),
	(1536606659743453184, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606550951596032, 496138616573952),
	(1536606659751841792, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606637815631872, 496138616573952),
	(1536875525769924610, 'admin', '2022-06-15 08:57:34', 0, NULL, NULL, 1536875505901506560, 496138616573952),
	(1584434934343405570, 'admin', '2022-10-24 14:41:40', 0, NULL, NULL, 1584434467475427328, 496138616573952),
	(1584434934389542912, 'admin', '2022-10-24 14:41:40', 0, NULL, NULL, 1584434558533767168, 496138616573952),
	(1584434934410514432, 'admin', '2022-10-24 14:41:40', 0, NULL, NULL, 1584434634039627776, 496138616573952),
	(1584434934427291648, 'admin', '2022-10-24 14:41:40', 0, NULL, NULL, 1584434726905712640, 496138616573952),
	(1584434934448263168, 'admin', '2022-10-24 14:41:40', 0, NULL, NULL, 1584434815531356160, 496138616573952),
	(1584434934469234688, 'admin', '2022-10-24 14:41:40', 0, NULL, NULL, 1584434892505223168, 496138616573952),
	(1584435045165305856, 'admin', '2022-10-24 14:42:07', 0, NULL, NULL, 1536599942410407936, 1584434988244406272),
	(1584435045177888768, 'admin', '2022-10-24 14:42:07', 0, NULL, NULL, 1584434467475427328, 1584434988244406272),
	(1584435045190471680, 'admin', '2022-10-24 14:42:07', 0, NULL, NULL, 1584434558533767168, 1584434988244406272),
	(1584435045203054592, 'admin', '2022-10-24 14:42:07', 0, NULL, NULL, 1584434634039627776, 1584434988244406272),
	(1584435045211443200, 'admin', '2022-10-24 14:42:07', 0, NULL, NULL, 1584434726905712640, 1584434988244406272),
	(1584435045219831808, 'admin', '2022-10-24 14:42:07', 0, NULL, NULL, 1584434815531356160, 1584434988244406272),
	(1584435045224026112, 'admin', '2022-10-24 14:42:07', 0, NULL, NULL, 1584434892505223168, 1584434988244406272),
	(1584435102824402944, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1536599942410407936, 496138616573953),
	(1584435102836985856, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1584434467475427328, 496138616573953),
	(1584435102845374464, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1584434558533767168, 496138616573953),
	(1584435102853763072, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1584434634039627776, 496138616573953),
	(1584435102862151680, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1584434726905712640, 496138616573953),
	(1584435102870540288, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1584434815531356160, 496138616573953),
	(1584435102878928896, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1536600125332393984, 496138616573953),
	(1584435102887317504, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1536600268379131904, 496138616573953),
	(1584435102895706112, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1536604417711804416, 496138616573953),
	(1584435102908289024, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1536606273959759872, 496138616573953),
	(1584435102916677632, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1536606372668510208, 496138616573953),
	(1584435102925066240, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1536606464712511488, 496138616573953),
	(1584435102929260544, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1536606550951596032, 496138616573953),
	(1584435102937649152, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1536606637815631872, 496138616573953),
	(1584435102946037760, 'admin', '2022-10-24 14:42:21', 0, NULL, NULL, 1536875505901506560, 496138616573953);

DROP TABLE IF EXISTS `a_setting`;
CREATE TABLE IF NOT EXISTS `a_setting` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_setting`;
INSERT INTO `a_setting` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `value`) VALUES
	('FILE_HTTP', NULL, NULL, 0, 'admin', '2022-05-28 15:57:20', 'http://'),
	('FILE_PATH', NULL, NULL, 0, 'admin', '2022-05-28 15:57:19', 'C:\\\\oa-file'),
	('FILE_VIEW', NULL, NULL, 0, 'admin', '2022-05-28 15:57:20', '127.0.0.1:8080/zwz/file/view'),
	('LOCAL_OSS', 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '{"serviceName":"LOCAL_OSS","endpoint":"127.0.0.1:8080/zwz/file/view","http":"http://","filePath":"C:\\\\oa-file"}'),
	('OSS_USED', 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 'LOCAL_OSS');

DROP TABLE IF EXISTS `a_student`;
CREATE TABLE IF NOT EXISTS `a_student` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `age` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_student`;
INSERT INTO `a_student` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `name`, `number`, `school`, `sex`, `age`) VALUES
	('1536601255475023872', 'admin', '2022-06-14 14:47:42.637000', 0, NULL, NULL, '张三', '001', '北京大学', '男', 18.00),
	('1536601308352614400', 'admin', '2022-06-14 14:47:55.244000', 0, NULL, NULL, '李四', '002', '清华大学', '女', 19.00),
	('1536601388044390400', 'admin', '2022-06-14 14:48:14.243000', 0, NULL, NULL, '王五', '003', '浙江大学', '男', 20.00),
	('1536601469879455744', 'admin', '2022-06-14 14:48:33.753000', 0, NULL, NULL, '赵六', '004', '宁波大学', '保密', 21.00);

DROP TABLE IF EXISTS `a_teacher`;
CREATE TABLE IF NOT EXISTS `a_teacher` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `age` decimal(19,2) DEFAULT NULL,
  `autograph` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `graduated` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `wages` decimal(19,2) DEFAULT NULL,
  `resume` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_teacher`;
INSERT INTO `a_teacher` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `age`, `autograph`, `education`, `graduated`, `name`, `remark`, `status`, `wages`, `resume`) VALUES
	('1536614275123122176', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '博士', '同济大学', '张三', '测试', '在职', 9960.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122177', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '本科', '同济大学', '李四', '测试', '在职', 7778.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122178', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '硕士', '同济大学', '王五', '测试', '在职', 8889.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122179', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '硕士', '同济大学', '赵六', '测试', '在职', 4445.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122180', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '专科', '同济大学', '郑七', '测试', '在职', 1118.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122181', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '专科', '同济大学', '龚八', '测试', '在职', 3337.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424');

DROP TABLE IF EXISTS `a_user`;
CREATE TABLE IF NOT EXISTS `a_user` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `department_id` bigint unsigned DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `pass_strength` varchar(2) DEFAULT NULL,
  `department_title` varchar(255) DEFAULT NULL,
  `birth` datetime(6) DEFAULT NULL,
  `my_door` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_user`;
INSERT INTO `a_user` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`, `avatar`, `description`, `email`, `mobile`, `nickname`, `password`, `sex`, `status`, `type`, `username`, `del_flag`, `department_id`, `street`, `pass_strength`, `department_title`, `birth`, `my_door`) VALUES
	(682265633886208, '', '2022-03-20 09:46:20', 'admin', '2022-05-18 14:41:08', '["330000","330600","330602"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '北大', '916077357@qq.com', '17857054388', '管理员', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '男', 0, 1, 'admin', 0, 1464487379074158593, '东西街道2', '弱', '设计研发部', '2000-01-08 00:00:00.000000', 'user-adminZWZ666department-admin'),
	(1464764315201572865, '', '2022-03-20 09:46:20', 'admin', '2022-05-21 09:11:48', '', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '', '17859654125@qq.com', '17859654125', '测试', '$2a$10$E59nactOiILAzQvfcs0JFOYuZp06d4bLhugEadyQuygpmiLc0W.ha', '', -1, 0, '17859654125', 0, 1464487332064399361, '', '', '行政综合部', NULL, NULL),
	(1464772465946398721, '', '2022-03-20 09:46:20', 'admin', '2022-05-21 09:53:33', '["110000","110100","110105"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '', '17859654121@qq.com', '17859654121', '测试2', '$2a$10$vJyLo1RhFORH/SAu3sc9aeb37I5JRy5UugaN7fIt/e2vvsz6JWJCm', '', 0, 0, '17859654121', 0, 1464487432169852929, '', '', '综合发展部', NULL, ''),
	(1527830053524738048, 'admin', '2022-05-21 09:54:05', NULL, NULL, '["110000","110100","110106"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', NULL, 'user4@qq.com', '17896525487', 'user4', '$2a$10$oeP4aplYnswfQ44pK6lAO.Np9BuPYJGRwo17THO7CUNlIQoVGsPmy', '男', 0, 0, 'user4', 0, 1464487332064399361, NULL, '弱', '行政综合部', NULL, NULL);

DROP TABLE IF EXISTS `a_user_role`;
CREATE TABLE IF NOT EXISTS `a_user_role` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_user_role`;
INSERT INTO `a_user_role` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `role_id`, `user_id`) VALUES
	(1464487931975700480, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 496138616573952, 682265633886208),
	(1486220872917323776, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 496138616573953, 1464764315201572865),
	(1526802492967489537, NULL, '2022-05-18 13:50:56', 0, NULL, NULL, 496138616573953, 1526802492443201536),
	(1526819095553642497, NULL, '2022-05-18 14:56:54', 0, NULL, NULL, 496138616573953, 1526819095159377920),
	(1527829917801254912, 'admin', '2022-05-21 09:53:33', 0, NULL, NULL, 496138616573953, 1464772465946398721),
	(1527830053889642496, 'admin', '2022-05-21 09:54:05', 0, NULL, NULL, 496138616573952, 1527830053524738048);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
