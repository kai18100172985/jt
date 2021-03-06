/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.49 : Database - jtsys
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jtsys` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jtsys`;

/*Table structure for table `sys_configs` */

DROP TABLE IF EXISTS `sys_configs`;

CREATE TABLE `sys_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '参数名',
  `value` varchar(50) DEFAULT NULL COMMENT '参数值',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='配置管理';

/*Data for the table `sys_configs` */

insert  into `sys_configs`(`id`,`name`,`value`,`note`,`createdTime`,`modifiedTime`,`createdUser`,`modifiedUser`) values (4,'uploadPath','/upload/images','上传路径','2018-04-22 17:39:55','2018-04-22 17:39:55',NULL,NULL),(5,'downloadPath','/downloads/','文件下载路径','2018-04-22 17:40:41','2018-04-22 17:40:41',NULL,NULL);

/*Table structure for table `sys_depts` */

DROP TABLE IF EXISTS `sys_depts`;

CREATE TABLE `sys_depts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '资源名称',
  `parentId` int(11) DEFAULT NULL COMMENT '上级部门',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='部门管理';

/*Data for the table `sys_depts` */

insert  into `sys_depts`(`id`,`name`,`parentId`,`sort`,`note`,`createdTime`,`modifiedTime`,`createdUser`,`modifiedUser`) values (2,'科研部',NULL,1,'dept-a ..','2018-04-19 18:59:09','2018-09-21 16:18:33','admin',NULL),(3,'销售部',NULL,2,'1111','2018-04-19 19:15:05','2018-09-21 16:18:46',NULL,NULL),(4,'dept-aaaa',2,1,'','2018-04-22 18:10:58','2018-09-17 14:53:29',NULL,NULL),(5,'市场部',NULL,12,'','2018-09-21 16:18:17','2018-09-21 16:18:17',NULL,NULL);

/*Table structure for table `sys_dicts` */

DROP TABLE IF EXISTS `sys_dicts`;

CREATE TABLE `sys_dicts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名字',
  `type` varchar(20) DEFAULT NULL COMMENT '类型',
  `code` varchar(20) DEFAULT NULL COMMENT '字典码',
  `value` varchar(100) DEFAULT NULL COMMENT '字典值',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `valid` tinyint(4) DEFAULT '1' COMMENT '有效',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典管理';

/*Data for the table `sys_dicts` */

/*Table structure for table `sys_logs` */

DROP TABLE IF EXISTS `sys_logs`;

CREATE TABLE `sys_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='系统日志';

/*Data for the table `sys_logs` */

insert  into `sys_logs`(`id`,`username`,`operation`,`method`,`params`,`time`,`ip`,`createdTime`) values (9,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',3,'0:0:0:0:0:0:0:1','2018-04-17 19:53:38'),(10,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',2,'0:0:0:0:0:0:0:1','2018-04-17 19:54:05'),(11,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',1,'0:0:0:0:0:0:0:1','2018-04-17 19:54:36'),(12,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',155,'0:0:0:0:0:0:0:1','2018-04-18 15:14:44'),(13,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',165,'0:0:0:0:0:0:0:1','2018-04-19 18:52:35'),(14,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',75,'0:0:0:0:0:0:0:1','2018-04-19 19:10:36'),(15,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',69,'0:0:0:0:0:0:0:1','2018-04-19 19:12:46'),(16,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',187,'0:0:0:0:0:0:0:1','2018-04-19 23:27:14'),(17,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',103,'0:0:0:0:0:0:0:1','2018-04-20 13:11:37'),(18,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',85,'0:0:0:0:0:0:0:1','2018-04-20 13:55:04'),(19,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',89,'0:0:0:0:0:0:0:1','2018-04-20 13:57:12'),(20,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',69,'0:0:0:0:0:0:0:1','2018-04-20 13:58:32'),(21,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',291,'0:0:0:0:0:0:0:1','2018-04-20 15:22:55'),(22,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',158,'0:0:0:0:0:0:0:1','2018-04-22 16:20:56'),(23,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',94,'0:0:0:0:0:0:0:1','2018-04-22 17:05:34'),(24,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',138,'0:0:0:0:0:0:0:1','2018-04-22 17:20:32'),(25,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',124,'0:0:0:0:0:0:0:1','2018-04-22 17:24:12'),(26,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',75,'0:0:0:0:0:0:0:1','2018-04-22 17:31:51'),(27,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',148,'0:0:0:0:0:0:0:1','2018-04-22 17:33:25'),(28,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',69,'0:0:0:0:0:0:0:1','2018-04-22 17:39:26'),(29,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',120,'0:0:0:0:0:0:0:1','2018-04-22 19:10:28'),(30,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',104,'0:0:0:0:0:0:0:1','2018-04-22 19:23:56'),(31,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',79,'0:0:0:0:0:0:0:1','2018-04-22 19:42:40'),(32,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',71,'0:0:0:0:0:0:0:1','2018-04-22 19:58:49'),(33,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',201,'0:0:0:0:0:0:0:1','2018-04-22 20:02:01'),(34,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',119,'0:0:0:0:0:0:0:1','2018-04-22 20:26:31'),(35,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',131,'0:0:0:0:0:0:0:1','2018-04-22 20:58:21'),(36,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',9,'192.168.43.1','2018-04-22 21:32:25'),(37,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',6,'192.168.43.183','2018-04-22 21:34:40'),(41,'admin','登陆操作','com.jt.sys.service.impl.SysUserServiceImpl.login()','\"admin\"',126,'0:0:0:0:0:0:0:1','2018-09-08 09:07:31'),(42,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',986,'0:0:0:0:0:0:0:1',NULL),(43,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',3,'0:0:0:0:0:0:0:1',NULL),(44,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',3,'0:0:0:0:0:0:0:1',NULL),(45,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 2]',6,'0:0:0:0:0:0:0:1',NULL),(46,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 3]',4,'0:0:0:0:0:0:0:1',NULL),(47,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 3]',5,'0:0:0:0:0:0:0:1',NULL),(48,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 2]',8,'0:0:0:0:0:0:0:1',NULL),(49,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 3]',13,'0:0:0:0:0:0:0:1',NULL),(50,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',6,'0:0:0:0:0:0:0:1',NULL),(51,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',15,'0:0:0:0:0:0:0:1',NULL),(52,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',5,'0:0:0:0:0:0:0:1',NULL),(53,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',3,'0:0:0:0:0:0:0:1',NULL),(54,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',3,'0:0:0:0:0:0:0:1',NULL),(55,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',7,'0:0:0:0:0:0:0:1',NULL),(56,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.saveObject','[com.jt.sys.entity.SysRole@48df7919, [Ljava.lang.Integer;@2f41d952]',16,'0:0:0:0:0:0:0:1',NULL),(57,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',5,'0:0:0:0:0:0:0:1',NULL),(58,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',13,'0:0:0:0:0:0:0:1',NULL),(59,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',62,'0:0:0:0:0:0:0:1',NULL),(60,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',4,'0:0:0:0:0:0:0:1',NULL),(61,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',626,'0:0:0:0:0:0:0:1',NULL),(62,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',14,'0:0:0:0:0:0:0:1',NULL),(63,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',5,'0:0:0:0:0:0:0:1',NULL),(64,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',6,'0:0:0:0:0:0:0:1',NULL),(65,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',101,'0:0:0:0:0:0:0:1',NULL),(66,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 1]',28,'0:0:0:0:0:0:0:1',NULL),(67,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 2]',24,'0:0:0:0:0:0:0:1',NULL),(68,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 3]',4,'0:0:0:0:0:0:0:1',NULL),(69,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 3]',4,'0:0:0:0:0:0:0:1',NULL),(70,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 3]',3,'0:0:0:0:0:0:0:1',NULL),(71,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null, 3]',9,'0:0:0:0:0:0:0:1',NULL),(72,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null,1]',570,'0:0:0:0:0:0:0:1',NULL),(73,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.saveObject','[{\"id\":17,\"name\":\"aa\",\"note\":\"aa\",\"createdTime\":null,\"modifiedTime\":null,\"createdUser\":null,\"modifiedUser\":null},[8,25,135]]',26,'0:0:0:0:0:0:0:1',NULL),(74,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null,1]',5,'0:0:0:0:0:0:0:1',NULL),(75,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null,1]',5,'0:0:0:0:0:0:0:1',NULL),(76,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.deleteObject','[17]',10,'0:0:0:0:0:0:0:1',NULL),(77,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null,1]',5,'0:0:0:0:0:0:0:1',NULL),(78,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null,1]',157,'0:0:0:0:0:0:0:1',NULL),(79,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null,1]',641,'0:0:0:0:0:0:0:1',NULL),(80,'admin',NULL,'com.jt.sys.service.imp.SysRoleServiceImplement.findPageObjects','[null,1]',170,'0:0:0:0:0:0:0:1',NULL);

/*Table structure for table `sys_menus` */

DROP TABLE IF EXISTS `sys_menus`;

CREATE TABLE `sys_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) DEFAULT NULL COMMENT '资源URL',
  `type` int(11) DEFAULT NULL COMMENT '类型     1：菜单   2：按钮',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  `parentId` int(11) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `permission` varchar(500) DEFAULT NULL COMMENT '授权(如：user:create)',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='资源管理';

/*Data for the table `sys_menus` */

insert  into `sys_menus`(`id`,`name`,`url`,`type`,`sort`,`note`,`parentId`,`permission`,`createdTime`,`modifiedTime`,`createdUser`,`modifiedUser`) values (8,'系统管理','请求路径',1,8,NULL,NULL,'sys:user:valid','2017-07-12 15:15:59','2017-07-21 11:16:00','admin','admin'),(25,'日志管理','请求路径',1,25,NULL,8,NULL,'2017-07-12 15:15:59','2017-07-12 15:15:59','admin','admin'),(45,'用户管理','user/listUI.do',1,45,NULL,8,'sys:user:view','2017-07-12 15:15:59','2017-07-21 17:36:01','admin','admin'),(46,'菜单管理','menu/listUI.do',1,46,NULL,8,'sys:menu:view','2017-07-12 15:15:59','2017-07-21 17:36:16','admin','admin'),(47,'角色管理','role/listUI.do',1,47,NULL,8,'sys:role:view','2017-07-12 15:15:59','2017-07-21 17:38:03','admin','admin'),(48,'组织管理','请求路径',1,48,NULL,8,'sys:org:view','2017-07-12 15:15:59','2017-07-21 18:37:57','admin','admin'),(115,'查看','',2,1,NULL,46,'sys:menu:view','2017-07-13 16:33:41','2017-07-21 11:09:05',NULL,NULL),(116,'新增','',2,2,NULL,46,'sys:menu:add','2017-07-13 16:34:02','2017-07-21 11:09:22',NULL,NULL),(117,'修改','',2,3,NULL,46,'sys:menu:update','2017-07-13 16:34:25','2017-07-21 11:09:45',NULL,NULL),(118,'删除','',2,4,NULL,46,'sys:menu:delete','2017-07-13 16:34:46','2017-07-21 11:10:12',NULL,NULL),(119,'查看','',2,1,NULL,45,'sys:user:view','2017-07-13 16:35:05','2017-07-21 11:12:46',NULL,NULL),(120,'查看','',2,1,NULL,47,'sys:role:view','2017-07-13 16:35:26','2017-07-21 11:13:43',NULL,NULL),(126,'新增','',2,2,NULL,45,'sys:user:add','2017-07-21 11:11:34','2017-07-21 11:11:34',NULL,NULL),(127,'修改','',2,3,NULL,45,'sys:user:update','2017-07-21 11:11:56','2017-07-21 11:11:56',NULL,NULL),(128,'新增','',2,2,NULL,47,'sys:role:add','2017-07-21 11:14:24','2017-07-21 11:14:24',NULL,NULL),(129,'修改','',2,3,NULL,47,'sys:role:update','2017-07-21 11:14:48','2017-07-21 11:14:48',NULL,NULL),(130,'删除','',2,4,NULL,47,'sys:role:delete','2017-07-21 11:15:09','2017-07-21 11:15:09',NULL,NULL),(135,'aaa','asda',1,123,NULL,25,'user:list','2018-09-19 09:47:47','2018-09-19 09:47:47',NULL,NULL),(136,'销售管理','',1,12,NULL,48,'user:list','2018-09-21 09:29:14','2018-09-21 09:29:14',NULL,NULL);

/*Table structure for table `sys_role_menus` */

DROP TABLE IF EXISTS `sys_role_menus`;

CREATE TABLE `sys_role_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `menu_id` int(11) DEFAULT NULL COMMENT 'ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1352 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

/*Data for the table `sys_role_menus` */

insert  into `sys_role_menus`(`id`,`role_id`,`menu_id`) values (1232,1,8),(1234,1,25),(1235,1,45),(1236,1,119),(1237,1,126),(1238,1,127),(1239,1,46),(1240,1,115),(1241,1,116),(1242,1,117),(1243,1,118),(1244,1,47),(1245,1,120),(1246,1,128),(1247,1,129),(1248,1,130),(1249,1,48),(1250,3,8),(1251,3,25),(1253,4,8),(1254,4,25),(1256,5,8),(1257,5,25),(1261,6,8),(1262,6,25),(1266,6,45),(1267,6,119),(1268,6,126),(1269,6,127),(1270,6,46),(1271,6,115),(1272,6,116),(1273,6,117),(1274,6,118),(1275,6,47),(1276,6,120),(1277,6,128),(1278,6,129),(1279,6,130),(1280,6,48),(1281,7,8),(1282,7,45),(1283,7,119),(1284,7,126),(1285,7,127),(1311,10,8),(1312,10,25),(1314,12,8),(1315,12,46),(1316,12,115),(1317,12,8),(1318,12,46),(1319,12,115),(1320,10,8),(1321,10,45),(1322,10,119),(1323,10,126),(1324,10,127),(1325,12,8),(1326,12,46),(1327,12,115),(1328,10,8),(1329,10,25),(1330,10,45),(1331,10,119),(1332,10,126),(1333,10,127),(1334,13,8),(1335,13,48),(1336,13,8),(1337,13,48),(1338,13,136),(1339,14,8),(1340,14,45),(1341,14,119),(1342,14,126),(1343,14,127),(1347,16,8),(1348,16,45),(1349,16,119),(1350,16,126),(1351,16,127);

/*Table structure for table `sys_roles` */

DROP TABLE IF EXISTS `sys_roles`;

CREATE TABLE `sys_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='角色';

/*Data for the table `sys_roles` */

insert  into `sys_roles`(`id`,`name`,`note`,`createdTime`,`modifiedTime`,`createdUser`,`modifiedUser`) values (1,'系统管理员','系统管理员','2017-07-13 17:44:11','2018-04-22 20:53:32','admin','admin'),(10,'董事长','爸爸','2018-09-18 10:31:38','2018-09-19 11:35:34',NULL,NULL),(12,'运维','管理员','2018-09-18 11:58:49','2018-09-19 11:35:26',NULL,NULL),(13,'销售','卖东西的','2018-09-19 11:36:04','2018-09-21 09:29:39',NULL,NULL),(14,'总经理','业务','2018-09-21 11:40:21','2018-09-21 11:40:21',NULL,NULL),(16,'前台','看门的','2018-09-21 15:14:34','2018-09-21 15:14:34',NULL,NULL);

/*Table structure for table `sys_user_roles` */

DROP TABLE IF EXISTS `sys_user_roles`;

CREATE TABLE `sys_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

/*Data for the table `sys_user_roles` */

insert  into `sys_user_roles`(`id`,`user_id`,`role_id`) values (65,1,1),(67,20,1),(68,19,10),(69,2,13),(70,21,13);

/*Table structure for table `sys_users` */

DROP TABLE IF EXISTS `sys_users`;

CREATE TABLE `sys_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) DEFAULT NULL COMMENT '盐  密码加密时前缀，使加密后的值不同',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `valid` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常  默认值 ：1',
  `deptId` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `modifiedTime` datetime DEFAULT NULL COMMENT '修改时间',
  `createdUser` varchar(20) DEFAULT NULL COMMENT '创建用户',
  `modifiedUser` varchar(20) DEFAULT NULL COMMENT '修改用户',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='系统用户';

/*Data for the table `sys_users` */

insert  into `sys_users`(`id`,`username`,`password`,`salt`,`email`,`mobile`,`valid`,`deptId`,`createdTime`,`modifiedTime`,`createdUser`,`modifiedUser`) values (1,'admin','4ebd394fbd25e495e0753a7dc9889a8e','7adb778c-e7d3-4dd3-a3c5-5f80a158006d','admin@t.cn','13624356789',1,3,NULL,'2018-09-20 17:41:25',NULL,'admin'),(2,'zhangli','bdcf69375bdb532e50279b91eb00940d','5e7cbd36-e897-4951-b42b-19809caf3caa','zhangli@t.cn','13678909876',0,3,'2017-07-18 10:01:51','2018-09-21 08:59:34',NULL,'admin'),(3,'wangke','c5dc32ec66041aeddf432b3146bd2257','5e3e1475-1ea9-4a6a-976e-b07545827139','wangke@t.cn','18678900987',1,3,'2017-07-18 11:40:53','2018-09-21 09:30:16',NULL,'admin'),(4,'zhangql','+HBpqtPuj9KLBIpneR5X0A==','ed487fac-9952-45c9-acaa-21dab9c689cc','zhangql@t.cn','13678909876',1,2,'2017-07-18 12:17:30','2018-04-22 20:48:04',NULL,NULL),(5,'fanwei','1acab7425d6dfae670f26bd160518902','34fbedb2-e135-4f8d-b595-24360edc348d','fanwei@t.cn','13876545678',1,3,'2017-07-20 17:03:22','2018-04-22 20:47:49',NULL,NULL),(6,'wumei','431ebdcccf3404787a144f9ba669a8e2','8a14f46f-7a17-4dfe-85ab-08e63cb618ce','wumei@t.cn','13567898765',1,2,'2017-07-21 10:57:40','2018-04-22 20:46:49',NULL,NULL),(7,'user-003','689c673a0d8bda7ee795dd45a126ae96','3faa1d2b-a99f-4ffb-9d29-0e71563258af','t@t.com','123',1,3,'2018-01-12 23:19:58','2018-04-22 20:46:07',NULL,'admin'),(9,'user-002','e10adc3949ba59abbe56e057f20f883e',NULL,'t@t.com','123',1,3,'2018-01-12 23:20:31','2018-04-22 20:45:55',NULL,NULL),(12,'user-001','5bf6593afd106aa544000d559f0c2241','9528e727-2901-4746-8558-9010d9607da2','t@t.com','123',1,3,'2018-01-13 01:48:32','2018-04-22 20:45:37',NULL,NULL),(13,'user-c','2630d8bd50c76abf001a9daceeae97e6','30fff766-e245-4a93-9f5e-6eb2c2cec494','t@t.com','123456',0,3,'2018-01-13 02:01:56','2018-04-22 20:43:58',NULL,'admin'),(15,'user-b','2ce586af95c6431112092f653659c85f','eaedbaee-d760-40e4-b71e-ccecf01b6187','t@t.com','123456',1,3,'2018-01-13 02:02:06','2018-04-22 20:54:10',NULL,'admin'),(16,'user-a','710058cf374a38d76510d009f63bf28d','e8e35b96-bbdd-4090-81ee-b71a36141760','1@t.com','121212',NULL,2,'2018-04-22 19:43:11','2018-04-22 20:54:02',NULL,NULL),(17,'aa','aaaa',NULL,'123456','123',1,3,'2018-09-19 08:36:17','2018-09-19 08:36:17',NULL,NULL),(19,'小白','123',NULL,'123456','123',1,3,'2018-09-19 09:01:53','2018-09-19 14:17:52',NULL,NULL),(20,'zjy','bc5e8f7ebce47cc70e659415642f1d08','931161ab-4396-49ae-85e0-aeabeb5ccd1e','1234','12312412',1,4,'2018-09-19 10:37:31','2018-09-19 10:37:31',NULL,NULL),(21,'zzz','62f04b5fe7f67d568f5d9cd2c5b4541d','12fbf583-f675-4f8f-932b-106ffbd9cecb','123','123',1,3,'2018-09-20 18:00:44','2018-09-20 18:00:44',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
