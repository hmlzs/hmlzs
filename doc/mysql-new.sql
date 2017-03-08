/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.27 : Database - cms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cms`;

/*Table structure for table `cms_admin` */

DROP TABLE IF EXISTS `cms_admin`;

CREATE TABLE `cms_admin` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `depict` varchar(255) DEFAULT NULL,
  `pwd` char(32) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `lastloginDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_admin` */

insert  into `cms_admin`(`id`,`account`,`name`,`depict`,`pwd`,`phone`,`mail`,`status`,`createDate`,`updateDate`,`lastloginDate`) values (1,'admin','超级管理员','拥有所有权限','E10ADC3949BA59ABBE56E057F20F883E','17090412945','664006332@qq.com',1,'2016-12-01 12:41:09',NULL,'2016-12-01 14:01:00');

/*Table structure for table `cms_keygen` */

DROP TABLE IF EXISTS `cms_keygen`;

CREATE TABLE `cms_keygen` (
  `table_name` varchar(255) NOT NULL,
  `last_used_id` int(11) NOT NULL,
  PRIMARY KEY (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_keygen` */

insert  into `cms_keygen`(`table_name`,`last_used_id`) values ('log',30),('right',90),('role',20),('roleright',90),('session',10),('subarticle',10),('tree',10);

/*Table structure for table `cms_log` */

DROP TABLE IF EXISTS `cms_log`;

CREATE TABLE `cms_log` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_log` */

insert  into `cms_log`(`id`,`userId`,`name`,`action`,`content`,`ip`,`status`,`createDate`) values (1,1,'admin','登录','','192.168.93.183',0,'2016-12-01 12:58:17'),(2,1,'admin','树(Tree)创建','Tree{name=\'新闻法讯\', id=1}','192.168.93.183',0,'2016-12-01 12:59:29'),(3,1,'admin','树(Tree)创建','Tree{name=\'生活禅\', id=2}','192.168.93.183',0,'2016-12-01 12:59:50'),(4,1,'admin','树(Tree)创建','Tree{name=\'紫云佛国\', id=3}','192.168.93.183',0,'2016-12-01 13:00:20'),(5,1,'admin','树(Tree)创建','Tree{name=\'慧公文集\', id=4}','192.168.93.183',0,'2016-12-01 13:00:41'),(6,1,'admin','树(Tree)创建','Tree{name=\'佛教常识\', id=5}','192.168.93.183',0,'2016-12-01 13:00:54'),(7,1,'admin','树(Tree)创建','Tree{name=\'梵音喧流\', id=6}','192.168.93.183',0,'2016-12-01 13:01:22'),(8,1,'admin','树(Tree)创建','Tree{name=\'竹影婆娑\', id=7}','192.168.93.183',0,'2016-12-01 13:01:36'),(9,1,'admin','树(Tree)创建','Tree{name=\'紫云法务\', id=8}','192.168.93.183',0,'2016-12-01 13:01:50'),(10,1,'admin','树(Tree)创建','Tree{name=\'广种福田\', id=9}','192.168.93.183',0,'2016-12-01 13:02:13'),(11,1,'admin','树(Tree)创建','Tree{name=\'活动通知\', id=10}','192.168.93.183',0,'2016-12-01 13:02:24'),(12,1,'admin','树(Tree)审核(启用)','treeIds:[10 9 8 7 6 5 4 3 2 1 ]','192.168.93.183',0,'2016-12-01 13:02:30'),(13,1,'admin','导航更新','','192.168.93.183',0,'2016-12-01 13:04:25'),(14,1,'admin','导航更新','','192.168.93.183',0,'2016-12-01 13:04:44'),(15,1,'admin','首页静态化','','192.168.93.183',0,'2016-12-01 13:04:49'),(16,1,'admin','导航静态化','','192.168.93.183',0,'2016-12-01 13:04:49'),(17,1,'admin','登录','','192.168.99.33',0,'2016-12-01 14:01:00'),(18,1,'admin','banner更新','','192.168.99.33',0,'2016-12-01 14:01:25'),(19,1,'admin','首页静态化','','192.168.99.33',0,'2016-12-01 14:01:29'),(20,1,'admin','导航静态化','','192.168.99.33',0,'2016-12-01 14:01:29'),(21,1,'admin','广种福田静态化','','192.168.99.33',0,'2016-12-01 14:01:32'),(22,1,'admin','通知静态化','','192.168.99.33',0,'2016-12-01 14:01:34'),(23,1,'admin','首页静态化','','192.168.99.33',0,'2016-12-01 14:01:37'),(24,1,'admin','法务静态化','','192.168.99.33',0,'2016-12-01 14:01:37'),(25,1,'admin','广种福田静态化','','192.168.99.33',0,'2016-12-01 14:01:41'),(26,1,'admin','banner静态化','','192.168.99.33',0,'2016-12-01 14:01:43');

/*Table structure for table `cms_right` */

DROP TABLE IF EXISTS `cms_right`;

CREATE TABLE `cms_right` (
  `id` int(11) NOT NULL,
  `md5` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `depict` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `md5` (`md5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_right` */

insert  into `cms_right`(`id`,`md5`,`name`,`depict`,`status`,`createDate`) values (1,'FA8C35DC5125E2693A96FCB254569CB3','showPageNR','分类页面访问',1,'2016-12-01 12:53:03'),(2,'80F67AAEB8C87CE34F81BE1171A0B9C6','listAllNR','分类列表数据查询',1,'2016-12-01 12:53:03'),(3,'91412E3B620B81AB72692BFB0D63E4EF','categoryCreateNR','分类创建',1,'2016-12-01 12:53:03'),(4,'9C6BB092B9FB9E9467511F485493DBF5','categoryUpdateNR','分类更新',1,'2016-12-01 12:53:03'),(5,'B2A6EC6D07CE697A7DB6D538A52F810D','categoryDeleteNR','分类删除',1,'2016-12-01 12:53:03'),(6,'A471441291DE36B7F5221A27934FF2B2','categoryAcceptNR','分类审核(启用)',1,'2016-12-01 12:53:03'),(7,'45A7BCDEA658F2A4B376278E18EDAB45','categoryRejectNR','分类审核(废弃)',1,'2016-12-01 12:53:03'),(8,'031BE4E7CF5A6CBE53B24DA902946A0C','showPageNR','角色页面访问',1,'2016-12-01 12:53:03'),(9,'8CCF9304268749B5E3CD2BC016202E96','listAllNR','角色列表数据查询',1,'2016-12-01 12:53:03'),(10,'682D04A5616FDE103B82CA962BB4DD85','deleteRoleRightsNR','角色权限删除',1,'2016-12-01 12:53:03'),(11,'4CCC868343561BAAFD798300590ED009','addRightNR','角色权限添加',1,'2016-12-01 12:53:03'),(12,'054D0298AABB7716B8CDA6365B8AAD39','updateRoleNR','角色更新',1,'2016-12-01 12:53:03'),(13,'220C6724C9DD436B28C4E9A820F1C64D','acceptRoleNR','角色审核(启用)',1,'2016-12-01 12:53:03'),(14,'E12D340FD98F442AC4D3E9558128C971','rejectRoleNR','角色审核(废弃)',1,'2016-12-01 12:53:03'),(15,'472311527BAA5E94F6401886FA9ACD3D','deleteRoleNR','角色删除',1,'2016-12-01 12:53:03'),(16,'4EF4DCB9D1F21CCA6551A76B9BF83B99','cloneRoleNR','角色克隆',1,'2016-12-01 12:53:03'),(17,'6228990AF84E550B8BD0CB2EECFC4A59','listRightsNR','角色权限搜索',1,'2016-12-01 12:53:03'),(18,'8B5DBC104788A1C5EC6FFB94EA39B4FA','createRoleNR','角色创建',1,'2016-12-01 12:53:03'),(19,'967451D1CC64BBEC42F11E2BC1A9E258','showPageNR','树(Tree)列表页面访问',1,'2016-12-01 12:53:03'),(20,'BC9EA56E6DA34D7533876C73AA98648E','listNR','树(Tree)数据列表',1,'2016-12-01 12:53:03'),(21,'191CF68BAA783CC729FCBEB7CCB304C1','createTreeNR','树(Tree)创建',1,'2016-12-01 12:53:03'),(22,'F652FFEEA4A0297FB5769C6C3D0D7C13','updateTreeNR','树(Tree)更新',1,'2016-12-01 12:53:03'),(23,'E2E282968324BFB8ACA1944EAD6FD0C4','deleteTreeNR','树(Tree)删除',1,'2016-12-01 12:53:03'),(24,'B5E7B2734C2126A52BC6CED5FE29E1A1','acceptTreeNR','树(Tree)审核(启用)',1,'2016-12-01 12:53:03'),(25,'98EFFCD9F887E06697EA9528F633C05E','rejectTreeNR','树(Tree)审核(废弃)',1,'2016-12-01 12:53:03'),(26,'A46814FBE426ED83C7A372A020051E01','showPageNR','文章检索页面访问',1,'2016-12-01 12:53:03'),(27,'66ECC4E47D483E0CF96DF6EF120E6CB3','searchNR','文章检索页面数据查询',1,'2016-12-01 12:53:03'),(28,'16385192A6C7D1A0B620C4FDFE5C71AF','showPageNR','模板页面访问',1,'2016-12-01 12:53:03'),(29,'92BC91B73C6F02E9058E054C9AFB0B79','listAllNR','模板列表数据查询',1,'2016-12-01 12:53:03'),(30,'EE1EC894CD24278CB00E6CE939D10724','saveTemplateNR','模板更新(标题)',1,'2016-12-01 12:53:03'),(31,'3C74FDE375C6163D5A8B6964EE195CC9','updateTemplateNR','模板更新(文件)',1,'2016-12-01 12:53:03'),(32,'5BE8CB5D5D0F169A997DF6B7462589F7','deleteTemplateNR','模板删除',1,'2016-12-01 12:53:03'),(33,'15BD3EE9F07767372AE11762B06C2C40','acceptTemplateNR','模板审核(启用)',1,'2016-12-01 12:53:03'),(34,'E42AC40363BBAD8184913E2895D375FC','rejectTemplateNR','模板审核(废弃)',1,'2016-12-01 12:53:03'),(35,'AA6D5C107600B430D5DDF63A49FF5BF2','getTemplateContentNR','模板内容获取',1,'2016-12-01 12:53:03'),(36,'B8172C08785BE39C3524F76294EF7B97','createTemplateNR','模版创建',1,'2016-12-01 12:53:03'),(37,'8E03AB9832230F8B2C9489E171FD1B42','showPageNR','日志列表页面访问',1,'2016-12-01 12:53:03'),(38,'D8FE60869F65161CBB1604692A8F3CD1','listAllNR','日志列表数据查询',1,'2016-12-01 12:53:03'),(39,'08CE34CAE7AD103F35BC76CD77646A7F','showPageNR','首页信息更新页面',1,'2016-12-01 12:53:03'),(40,'AA64A03DF12B6D2BCBFE23B30ECC9A90','updateBannerNR','首页banner信息更新',1,'2016-12-01 12:53:03'),(41,'3FEB3CD7CFD84FA30E8B623E812B7FDA','updateFutianNR','首页广种福田更新',1,'2016-12-01 12:53:03'),(42,'A881A64FE0FFE9998D5C82F7E427D2D7','staticizeNavNR','首页导航静态化',1,'2016-12-01 12:53:03'),(43,'ABEC4204D968277EF4225A781FA0153B','staticizeBannerNR','首页banner静态化',1,'2016-12-01 12:53:03'),(44,'8D20FB23E8FCF7BA554C9F9ED89CE618','staticizeFutianNR','首页广种福田联、联系我们静态化',1,'2016-12-01 12:53:03'),(45,'291D1771446E236EB5CA97D9C03A69FF','staticizeFawuNR','首页紫云法务静态化',1,'2016-12-01 12:53:03'),(46,'438847EE6C6B73807B6747AEF9D4BD45','staticizeNoticeNR','首页活动通知静态化',1,'2016-12-01 12:53:03'),(47,'A06929EC2E465D7C3253396FC1775FAA','updateNavNR','首页导航信息更新',1,'2016-12-01 12:53:03'),(48,'3AA1E794931198B998EE2AD6B5525976','staticizeNR','首页静态化',1,'2016-12-01 12:53:03'),(49,'7CBD902F58C4A7501CC3EC858D032994','showPageNR','账户列表页面访问',1,'2016-12-01 12:53:03'),(50,'11F9E9FF6B93AE176CBF173BDC8C1754','listAllNR','账户列表查询',1,'2016-12-01 12:53:03'),(51,'2D50C76336010B89105B2FC1262C8829','createAccountNR','账户创建',1,'2016-12-01 12:53:03'),(52,'441C8735F79606DCAF765B35AEC6133B','acceptAccountNR','账户解锁',1,'2016-12-01 12:53:03'),(53,'336B49B5539968C5920B309B0FE33A9A','rejectAccountNR','账户锁定',1,'2016-12-01 12:53:03'),(54,'EC187916E3E2180F33DA9DAF339E4E56','updateInfoNR','账户信息更新',1,'2016-12-01 12:53:03'),(55,'34CEE0984898F77C33C18F8A15AFB3D0','updatePwdNR','账户密码修改',1,'2016-12-01 12:53:03'),(56,'9194F2668F223AC302411BB617E3BB20','roleFilterList','账户:角色查询',1,'2016-12-01 12:53:03'),(57,'CEB35F74FEC1ADFE43BDB820758B7C45','addRole','账户:角色添加',1,'2016-12-01 12:53:03'),(58,'32B2201F44D784F69D00E47F8CAB9A6E','upgrade','账户升级',1,'2016-12-01 12:53:03'),(59,'C15AEAE872FF23926E7BFA5FD80B558F','degrade','账户降级',1,'2016-12-01 12:53:03'),(60,'4B2AB740B554D8504D8192F024ABED12','resetPwd','账户密码重置',1,'2016-12-01 12:53:03'),(61,'F7667EE6A87D378F366A485DD0F1B5DC','showPageNR','文章列表页面访问',1,'2016-12-01 12:53:04'),(62,'E45232B63EA99FA50206C47C16225CF5','staticizeNR','文章静态化',1,'2016-12-01 12:53:04'),(63,'20D6FEC84EBF0CF3827933D5CCC73E20','listNR','文章列表数据查询',1,'2016-12-01 12:53:04'),(64,'1F0F9FF3AD19CCF3ED6DB07EFE97C550','createArticleNR','文章创建',1,'2016-12-01 12:53:04'),(65,'011135A20C73F16FD94DAEDDC8C54C6D','updateArticleNR','文章更新(不包括内容)',1,'2016-12-01 12:53:04'),(66,'756AA72083B872E912BF042F23A56046','modifyArticleNR','文章更新(包括内容)',1,'2016-12-01 12:53:04'),(67,'0013A8180085E7EF2DC71FA9F48DF8BC','acceptArticleNR','文章审核(启用)',1,'2016-12-01 12:53:04'),(68,'32FE594C32D0856743152A92C11B6DCA','rejectArticleNR','文章审核(作废)',1,'2016-12-01 12:53:04'),(69,'3FAC1B5947B049A7AD3CC2BE146ABBC8','deleteArticleNR','文章删除',1,'2016-12-01 12:53:04'),(70,'605FFD96629A15F57A80CF0BE1CA6D51','updateHeadLineNR','文章设置头条',1,'2016-12-01 12:53:04'),(71,'9FD6443EE553A5C9FE351F37B143CD7B','updateCancelHeadLineNR','文章取消头条',1,'2016-12-01 12:53:04'),(72,'176849DDB6164CEE8752107011B87853','previewNR','文章预览',1,'2016-12-01 12:53:04'),(73,'ACF8FAFE7ABA5ACE650762179BFBA47D','listStaticNR','文章列表模板静态化',1,'2016-12-01 12:53:04'),(74,'1991423362D34EC5E26614018641BB67','updateAddHeadLineMedia','多媒体配置头条文章',1,'2016-12-01 12:53:04'),(75,'E1AAFBB8F7C2A87A6CEFAEA2855A3164','updateCancelHeadLineMedia','多媒体取消焦点图',1,'2016-12-01 12:53:04'),(76,'2456C1D042AD254970FAE00577111AF0','showPageNR','多媒体管理页面访问',1,'2016-12-01 12:53:04'),(77,'AA5EC080C57A6BFC2FA4F3AF9570C148','searchNR','多媒体查询',1,'2016-12-01 12:53:04'),(78,'2B288B646002FDB84DBC9CF198FF7346','acceptArticleNR','多媒体审核(启用)',1,'2016-12-01 12:53:04'),(79,'148B119A46CA9C25D4A1B02D96E90298','rejectArticleNR','多媒体审核(作废)',1,'2016-12-01 12:53:04'),(80,'4786BFCE0FA13A2F09685115A377E934','updateMediaTitleNR','多媒体更新(标题)',1,'2016-12-01 12:53:04'),(81,'3EED7A7796D00B74E816CCE88084DB68','updateMediaNR','多媒体更新(图片操作)',1,'2016-12-01 12:53:04'),(82,'1A9E130CE707CE36BC5F08BC9C1EFB62','createMediaNR','多媒体创建(上传)',1,'2016-12-01 12:53:04'),(83,'6535903F9F0AEC239E315254BD6CAFD8','showPageNR','权限页面访问',1,'2016-12-01 12:53:04'),(84,'E954E65E4D34FBF2702855C35552F121','listAllNR','权限列表数据',1,'2016-12-01 12:53:04'),(85,'AED82A5278708208B42FBEE2862B74DE','updateRightNR','权限更新',1,'2016-12-01 12:53:04'),(86,'FC1CB1C0C9FC929C6CDCF67F9C51331C','acceptRightNR','权限启用',1,'2016-12-01 12:53:04'),(87,'6BBA23D45AFE9E7DEA386250ADB8DB7D','rejectRightNR','权限废弃',1,'2016-12-01 12:53:04');

/*Table structure for table `cms_role` */

DROP TABLE IF EXISTS `cms_role`;

CREATE TABLE `cms_role` (
  `id` int(11) NOT NULL,
  `md5` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `depict` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `md5` (`md5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_role` */

insert  into `cms_role`(`id`,`md5`,`name`,`depict`,`status`,`createDate`) values (1,'A45E8F5236D233165CDD1A363C3BE038','CategoryController','分类(栏目)管理者',1,'2016-12-01 12:53:03'),(2,'58DDB87E53C8D4EDD4CCDAC66B11DBBE','RoleController','角色管理者',1,'2016-12-01 12:53:03'),(3,'24FD75CEE46B59BFE5EF509D385BB2C1','TreeController','树(Tree)管理者',1,'2016-12-01 12:53:03'),(4,'D24CAC10375297590712AE373005427B','SearchController','文章检索管理者',1,'2016-12-01 12:53:03'),(5,'165C8CE8D3019C95D6C788D20F4AB117','TemplateController','模板管理者',1,'2016-12-01 12:53:03'),(6,'0A3E55D2CC6D987FD102C77D55A2D6BD','LogController','日志管理者',1,'2016-12-01 12:53:03'),(7,'041F126FA3388CBD46265E1E9585D530','HomepageController','首页内容管理者',1,'2016-12-01 12:53:03'),(8,'8830A67655002C4520C4477C1F3A3CBD','AccountController','账户管理者',1,'2016-12-01 12:53:03'),(9,'E91F5A6BA087C672C0BB870C53105B9B','ArticleController','文章管理者',1,'2016-12-01 12:53:03'),(10,'F0BF338CEE72273AD14C924AB1A06671','MediaController','多媒体管理者',1,'2016-12-01 12:53:04'),(11,'3910C7534C7E8AB3D417FB96E635A040','RightController','权限管理者',1,'2016-12-01 12:53:04');

/*Table structure for table `cms_roleright` */

DROP TABLE IF EXISTS `cms_roleright`;

CREATE TABLE `cms_roleright` (
  `id` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `rightid` int(11) NOT NULL,
  `createDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_roleright` */

insert  into `cms_roleright`(`id`,`roleid`,`rightid`,`createDate`) values (1,1,1,'2016-12-01 12:53:03'),(2,1,2,'2016-12-01 12:53:03'),(3,1,3,'2016-12-01 12:53:03'),(4,1,4,'2016-12-01 12:53:03'),(5,1,5,'2016-12-01 12:53:03'),(6,1,6,'2016-12-01 12:53:03'),(7,1,7,'2016-12-01 12:53:03'),(8,2,8,'2016-12-01 12:53:03'),(9,2,9,'2016-12-01 12:53:03'),(10,2,10,'2016-12-01 12:53:03'),(11,2,11,'2016-12-01 12:53:03'),(12,2,12,'2016-12-01 12:53:03'),(13,2,13,'2016-12-01 12:53:03'),(14,2,14,'2016-12-01 12:53:03'),(15,2,15,'2016-12-01 12:53:03'),(16,2,16,'2016-12-01 12:53:03'),(17,2,17,'2016-12-01 12:53:03'),(18,2,18,'2016-12-01 12:53:03'),(19,3,19,'2016-12-01 12:53:03'),(20,3,20,'2016-12-01 12:53:03'),(21,3,21,'2016-12-01 12:53:03'),(22,3,22,'2016-12-01 12:53:03'),(23,3,23,'2016-12-01 12:53:03'),(24,3,24,'2016-12-01 12:53:03'),(25,3,25,'2016-12-01 12:53:03'),(26,4,26,'2016-12-01 12:53:03'),(27,4,27,'2016-12-01 12:53:03'),(28,5,28,'2016-12-01 12:53:03'),(29,5,29,'2016-12-01 12:53:03'),(30,5,30,'2016-12-01 12:53:03'),(31,5,31,'2016-12-01 12:53:03'),(32,5,32,'2016-12-01 12:53:03'),(33,5,33,'2016-12-01 12:53:03'),(34,5,34,'2016-12-01 12:53:03'),(35,5,35,'2016-12-01 12:53:03'),(36,5,36,'2016-12-01 12:53:03'),(37,6,37,'2016-12-01 12:53:03'),(38,6,38,'2016-12-01 12:53:03'),(39,7,39,'2016-12-01 12:53:03'),(40,7,40,'2016-12-01 12:53:03'),(41,7,41,'2016-12-01 12:53:03'),(42,7,42,'2016-12-01 12:53:03'),(43,7,43,'2016-12-01 12:53:03'),(44,7,44,'2016-12-01 12:53:03'),(45,7,45,'2016-12-01 12:53:03'),(46,7,46,'2016-12-01 12:53:03'),(47,7,47,'2016-12-01 12:53:03'),(48,7,48,'2016-12-01 12:53:03'),(49,8,49,'2016-12-01 12:53:03'),(50,8,50,'2016-12-01 12:53:03'),(51,8,51,'2016-12-01 12:53:03'),(52,8,52,'2016-12-01 12:53:03'),(53,8,53,'2016-12-01 12:53:03'),(54,8,54,'2016-12-01 12:53:03'),(55,8,55,'2016-12-01 12:53:03'),(56,8,56,'2016-12-01 12:53:03'),(57,8,57,'2016-12-01 12:53:03'),(58,8,58,'2016-12-01 12:53:03'),(59,8,59,'2016-12-01 12:53:03'),(60,8,60,'2016-12-01 12:53:03'),(61,9,61,'2016-12-01 12:53:04'),(62,9,62,'2016-12-01 12:53:04'),(63,9,63,'2016-12-01 12:53:04'),(64,9,64,'2016-12-01 12:53:04'),(65,9,65,'2016-12-01 12:53:04'),(66,9,66,'2016-12-01 12:53:04'),(67,9,67,'2016-12-01 12:53:04'),(68,9,68,'2016-12-01 12:53:04'),(69,9,69,'2016-12-01 12:53:04'),(70,9,70,'2016-12-01 12:53:04'),(71,9,71,'2016-12-01 12:53:04'),(72,9,72,'2016-12-01 12:53:04'),(73,9,73,'2016-12-01 12:53:04'),(74,10,74,'2016-12-01 12:53:04'),(75,10,75,'2016-12-01 12:53:04'),(76,10,76,'2016-12-01 12:53:04'),(77,10,77,'2016-12-01 12:53:04'),(78,10,78,'2016-12-01 12:53:04'),(79,10,79,'2016-12-01 12:53:04'),(80,10,80,'2016-12-01 12:53:04'),(81,10,81,'2016-12-01 12:53:04'),(82,10,82,'2016-12-01 12:53:04'),(83,11,83,'2016-12-01 12:53:04'),(84,11,84,'2016-12-01 12:53:04'),(85,11,85,'2016-12-01 12:53:04'),(86,11,86,'2016-12-01 12:53:04'),(87,11,87,'2016-12-01 12:53:04');

/*Table structure for table `cms_session` */

DROP TABLE IF EXISTS `cms_session`;

CREATE TABLE `cms_session` (
  `id` int(11) NOT NULL,
  `sessionKey` char(32) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `expireDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sessionKey` (`sessionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_session` */

insert  into `cms_session`(`id`,`sessionKey`,`userId`,`account`,`status`,`loginDate`,`expireDate`) values (1,'92A2C44B92D96685D65DDE010B3E6494',1,'admin',0,'2016-12-01 12:58:17',NULL),(2,'D56AB9E66DABB4E9445D1BB84A327E6C',1,'admin',0,'2016-12-01 14:01:00',NULL);

/*Table structure for table `cms_user` */

DROP TABLE IF EXISTS `cms_user`;

CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `depict` varchar(255) DEFAULT NULL,
  `pwd` char(32) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `manager` tinyint(4) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `lastloginDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_user` */

/*Table structure for table `cms_userrole` */

DROP TABLE IF EXISTS `cms_userrole`;

CREATE TABLE `cms_userrole` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cms_userrole` */

/*Table structure for table `hmlzs_article` */

DROP TABLE IF EXISTS `hmlzs_article`;

CREATE TABLE `hmlzs_article` (
  `id` int(11) NOT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `serial` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `depict` varchar(255) DEFAULT NULL,
  `templateId` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `categoryId` int(11) NOT NULL,
  `treeId` int(11) NOT NULL,
  `focus` int(11) DEFAULT NULL,
  `headLine` int(11) DEFAULT NULL,
  `headLineOrder` int(11) DEFAULT NULL,
  `audit` int(11) DEFAULT NULL,
  `auditorId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `headLineDate` datetime DEFAULT NULL,
  `deleteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hmlzs_article` */

insert  into `hmlzs_article`(`id`,`creator`,`author`,`source`,`updater`,`serial`,`title`,`depict`,`templateId`,`url`,`content`,`categoryId`,`treeId`,`focus`,`headLine`,`headLineOrder`,`audit`,`auditorId`,`status`,`createDate`,`updateDate`,`publishDate`,`headLineDate`,`deleteDate`) values (1,'admin',NULL,NULL,NULL,0,'导航和banner',NULL,0,NULL,'首页,http://www.hmlzs.org;\n新闻法讯,http://list.hmlzs.org/c-2-1.html;\n生活禅,http://list.hmlzs.org/c-3-1.html;\n紫云佛国,http://list.hmlzs.org/c-4-1.html;\n慧公文集,http://list.hmlzs.org/c-5-1.html;\n佛教常识,http://list.hmlzs.org/c-6-1.html;\n梵音宣流,http://list.hmlzs.org/c-7-1.htm',1,0,0,0,0,NULL,NULL,-2,'2016-12-01 12:41:09',NULL,NULL,NULL,NULL),(2,'admin',NULL,NULL,NULL,0,'广种福田',NULL,0,NULL,'壹贰叁肆伍陆柒捌玖拾壹贰叁肆伍陆柒捌玖拾壹贰叁肆伍陆柒捌玖拾壹贰叁肆伍陆柒捌玖拾壹贰叁肆伍陆柒捌玖拾壹贰叁肆伍陆柒捌玖拾壹贰叁肆伍陆柒捌玖拾壹贰叁肆伍陆柒捌玖拾壹贰叁肆伍陆柒捌玖拾壹贰叁肆伍陆柒捌玖拾壹贰叁肆伍陆柒捌玖拾壹贰叁肆伍陆柒捌玖拾壹贰叁肆伍陆柒捌玖拾壹贰叁肆伍陆柒捌玖拾@2供养寺院助刊11@中国建设银行湖北省分行黄梅支行营业部@湖北黄梅老祖寺@4200 16766 8080 5300 1018',10,0,0,0,0,NULL,NULL,-2,'2016-12-01 12:41:09',NULL,NULL,NULL,NULL);

/*Table structure for table `hmlzs_category` */

DROP TABLE IF EXISTS `hmlzs_category`;

CREATE TABLE `hmlzs_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `depict` varchar(255) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `hasChild` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hmlzs_category` */

insert  into `hmlzs_category`(`id`,`name`,`depict`,`parentId`,`hasChild`,`status`,`updateDate`,`createDate`) values (1,'navbanner','导航和banner',0,0,-2,NULL,'2016-12-01 12:41:09'),(2,'news','新闻法讯',0,0,1,NULL,'2016-12-01 12:41:09'),(3,'life','生活禅',0,0,1,NULL,'2016-12-01 12:41:09'),(4,'ziyunfoguo','紫云佛国',0,0,1,NULL,'2016-12-01 12:41:09'),(5,'corpus','慧公文集',0,0,1,NULL,'2016-12-01 12:41:09'),(6,'knowledge','佛教常识',0,0,1,NULL,'2016-12-01 12:41:09'),(7,'audio','梵音喧流',0,0,1,NULL,'2016-12-01 12:41:09'),(8,'zhuyingposuo','竹影婆娑',0,0,1,NULL,'2016-12-01 12:41:09'),(9,'law','紫云法务',0,0,1,NULL,'2016-12-01 12:41:09'),(10,'futian','广种福田',0,0,1,NULL,'2016-12-01 12:41:09'),(11,'notice','活动通知',0,0,1,NULL,'2016-12-01 12:41:09'),(12,'contact','联系我们',0,0,1,NULL,'2016-12-01 12:41:09');

/*Table structure for table `hmlzs_media` */

DROP TABLE IF EXISTS `hmlzs_media`;

CREATE TABLE `hmlzs_media` (
  `id` int(11) NOT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `depict` varchar(255) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `ukey` varchar(255) DEFAULT NULL,
  `ftype` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hmlzs_media` */

/*Table structure for table `hmlzs_mediaarticle` */

DROP TABLE IF EXISTS `hmlzs_mediaarticle`;

CREATE TABLE `hmlzs_mediaarticle` (
  `id` int(11) NOT NULL,
  `mediaId` int(11) NOT NULL,
  `articleId` int(11) NOT NULL,
  `mediaCategory` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hmlzs_mediaarticle` */

/*Table structure for table `hmlzs_subarticle` */

DROP TABLE IF EXISTS `hmlzs_subarticle`;

CREATE TABLE `hmlzs_subarticle` (
  `id` int(11) NOT NULL,
  `articleId` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hmlzs_subarticle` */

insert  into `hmlzs_subarticle`(`id`,`articleId`,`seq`,`content`,`createDate`) values (3,1,1,'l;\n竹影婆娑,http://list.hmlzs.org/c-8-1.html;@紫云法务,http://list.hmlzs.org/c-9-1.html;\n广种福田,http://www.hmlzs.org/futian/2016/100059.html;\n联系我们,http://www.hmlzs.org/;@http://www.hmlzs.cn/static/lzs/images/banner-1.jpg;\nhttp://www.hmlzs.cn/static/lzs/images/banne','2016-12-01 14:01:25'),(4,1,2,'r-2.jpg','2016-12-01 14:01:25');

/*Table structure for table `hmlzs_template` */

DROP TABLE IF EXISTS `hmlzs_template`;

CREATE TABLE `hmlzs_template` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hmlzs_template` */

insert  into `hmlzs_template`(`id`,`name`,`filename`,`path`,`status`,`createDate`,`updateDate`) values (1,'基本模板_index','index.vm','base\\index.vm',-2,'2016-12-01 12:41:09',NULL),(2,'基本模板_head','head.vm','base\\head.vm',-2,'2016-12-01 12:41:09',NULL),(3,'基本模板_nav','nav.vm','base\\nav.vm',-2,'2016-12-01 12:41:09',NULL),(4,'基本模板_notice','notice.vm','base\\notice.vm',-2,'2016-12-01 12:41:09',NULL),(5,'基本模板_banner','banner.vm','base\\banner.vm',-2,'2016-12-01 12:41:09',NULL),(6,'基本模板_script','script.vm','base\\script.vm',-2,'2016-12-01 12:41:09',NULL),(7,'基本模板_fawu','fawu.vm','base\\fawu.vm',-2,'2016-12-01 12:41:09',NULL),(8,'基本模板_futian','futian.vm','base\\futian.vm',-2,'2016-12-01 12:41:09',NULL),(9,'基本模板_foot','foot.vm','base\\foot.vm',-2,'2016-12-01 12:41:09',NULL),(10,'普通文章列表模板','articleList.vm','base\\articleList.vm',-2,'2016-12-01 12:41:09',NULL),(11,'图片文章列表模板','photoList.vm','base\\photoList.vm',-2,'2016-12-01 12:41:09',NULL),(12,'文章模板一(法务栏居右侧)','article1.vm','base\\article1.vm',1,'2016-12-01 12:41:09',NULL),(13,'文章模板二(法务栏居底部)','article2.vm','base\\article2.vm',1,'2016-12-01 12:41:09',NULL),(14,'站内搜索列表模板','search.vm','base\\search.vm',-2,'2016-12-01 12:41:09',NULL);

/*Table structure for table `hmlzs_tree` */

DROP TABLE IF EXISTS `hmlzs_tree`;

CREATE TABLE `hmlzs_tree` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `hasChild` tinyint(4) DEFAULT NULL,
  `treeroad` varchar(255) DEFAULT NULL,
  `storepath` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hmlzs_tree` */

insert  into `hmlzs_tree`(`id`,`name`,`parentId`,`hasChild`,`treeroad`,`storepath`,`status`,`updateDate`,`createDate`) values (1,'新闻法讯',0,0,'新闻法讯',NULL,1,'2016-12-01 13:02:30','2016-12-01 12:59:29'),(2,'生活禅',0,0,'生活禅',NULL,1,'2016-12-01 13:02:30','2016-12-01 12:59:50'),(3,'紫云佛国',0,0,'紫云佛国',NULL,1,'2016-12-01 13:02:30','2016-12-01 13:00:20'),(4,'慧公文集',0,0,'慧公文集',NULL,1,'2016-12-01 13:02:30','2016-12-01 13:00:41'),(5,'佛教常识',0,0,'佛教常识',NULL,1,'2016-12-01 13:02:30','2016-12-01 13:00:54'),(6,'梵音喧流',0,0,'梵音喧流',NULL,1,'2016-12-01 13:02:30','2016-12-01 13:01:22'),(7,'竹影婆娑',0,0,'竹影婆娑',NULL,1,'2016-12-01 13:02:30','2016-12-01 13:01:36'),(8,'紫云法务',0,0,'紫云法务',NULL,1,'2016-12-01 13:02:30','2016-12-01 13:01:50'),(9,'广种福田',0,0,'广种福田',NULL,1,'2016-12-01 13:02:30','2016-12-01 13:02:13'),(10,'活动通知',0,0,'活动通知',NULL,1,'2016-12-01 13:02:30','2016-12-01 13:02:24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
