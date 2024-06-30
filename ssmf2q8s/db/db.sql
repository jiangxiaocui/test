/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmf2q8s
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmf2q8s` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmf2q8s`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2024-05-06 09:28:22',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2024-05-06 09:28:22',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2024-05-06 09:28:22',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2024-05-06 09:28:22',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2024-05-06 09:28:22',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2024-05-06 09:28:22',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616551140741 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2024-05-06 09:28:22',1,1,'提问1','回复1',1),(62,'2024-05-06 09:28:22',2,2,'提问2','回复2',2),(63,'2024-05-06 09:28:22',3,3,'提问3','回复3',3),(64,'2024-05-06 09:28:22',4,4,'提问4','回复4',4),(65,'2024-05-06 09:28:22',5,5,'提问5','回复5',5),(66,'2024-05-06 09:28:22',6,6,'提问6','回复6',6),(1616550578648,'2024-05-06 09:49:37',1616550342350,NULL,'请问古董局中局什么时候上映',NULL,0),(1616550600001,'2024-05-06 09:49:59',1616550342350,1,NULL,'5月1日',NULL),(1616551114440,'2024-05-06 09:58:34',1616550901328,NULL,'请问古董局中局什么时候上映',NULL,0),(1616551140740,'2024-05-06 09:59:00',1616550901328,1,NULL,'5.1',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmf2q8s/upload/1616550245507.jpg'),(2,'picture2','http://localhost:8080/ssmf2q8s/upload/1616550496314.jpg'),(3,'picture3','http://localhost:8080/ssmf2q8s/upload/1616550503599.jpeg'),(6,'homepage',NULL);

/*Table structure for table `dianyingleixing` */

DROP TABLE IF EXISTS `dianyingleixing`;

CREATE TABLE `dianyingleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leixing` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1616550411270 DEFAULT CHARSET=utf8 COMMENT='电影类型';

/*Data for the table `dianyingleixing` */

insert  into `dianyingleixing`(`id`,`addtime`,`leixing`) values (21,'2024-05-06 09:28:22','爱情片'),(22,'2024-05-06 09:28:22','动作片'),(23,'2024-05-06 09:28:22','动漫片'),(24,'2024-05-06 09:28:22','悬疑片'),(1616550411269,'2024-05-06 09:46:50','喜剧片');

/*Table structure for table `dianyingpingjia` */

DROP TABLE IF EXISTS `dianyingpingjia`;

CREATE TABLE `dianyingpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `dianyingmingcheng` varchar(200) DEFAULT NULL COMMENT '电影名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `dianyingpingfen` varchar(200) DEFAULT NULL COMMENT '电影评分',
  `dianyingpingjia` longtext COMMENT '电影评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616551273730 DEFAULT CHARSET=utf8 COMMENT='电影评价';

/*Data for the table `dianyingpingjia` */

insert  into `dianyingpingjia`(`id`,`addtime`,`dingdanbianhao`,`dianyingmingcheng`,`tupian`,`leixing`,`dianyingpingfen`,`dianyingpingjia`,`pingjiariqi`,`yonghuming`,`sfsh`,`shhf`,`userid`) values (51,'2024-05-06 09:28:22','订单编号1','电影名称1','http://localhost:8080/ssmf2q8s/upload/dianyingpingjia_tupian1.jpg','类型1','1','电影评价1','2024-05-06','用户名1','是','',1),(52,'2024-05-06 09:28:22','订单编号2','电影名称2','http://localhost:8080/ssmf2q8s/upload/dianyingpingjia_tupian2.jpg','类型2','1','电影评价2','2024-05-06','用户名2','是','',2),(53,'2024-05-06 09:28:22','订单编号3','电影名称3','http://localhost:8080/ssmf2q8s/upload/dianyingpingjia_tupian3.jpg','类型3','1','电影评价3','2024-05-06','用户名3','是','',3),(54,'2024-05-06 09:28:22','订单编号4','电影名称4','http://localhost:8080/ssmf2q8s/upload/dianyingpingjia_tupian4.jpg','类型4','1','电影评价4','2024-05-06','用户名4','是','',4),(55,'2024-05-06 09:28:22','订单编号5','电影名称5','http://localhost:8080/ssmf2q8s/upload/dianyingpingjia_tupian5.jpg','类型5','1','电影评价5','2024-05-06','用户名5','是','',5),(56,'2024-05-06 09:28:22','订单编号6','电影名称6','http://localhost:8080/ssmf2q8s/upload/dianyingpingjia_tupian6.jpg','类型6','1','电影评价6','2024-05-06','用户名6','是','',6),(1616550747823,'2024-05-06 09:52:27',' 20213249491760263974 ','你好，李焕英','http://localhost:8080/ssmf2q8s/upload/1616550728302.jpg','喜剧片','10','难得的好电影，很感人','2021-03-25','1','是','感谢支持',1616550342350),(1616551273729,'2024-05-06 10:01:13',' 20213249575426206497 ','你好，李焕英','http://localhost:8080/ssmf2q8s/upload/1616551214504.jpg','喜剧片','9','贾玲的电影让我想起了小时候经常跟着妈妈去工厂车间的场景，感谢这部电影，让我想起了萦绕在脑海中第一句话，一定要让妈妈高兴','2021-03-27','2','','',1616550901328);

/*Table structure for table `dianyingxinxi` */

DROP TABLE IF EXISTS `dianyingxinxi`;

CREATE TABLE `dianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `shangyingriqi` datetime DEFAULT NULL COMMENT '上映日期',
  `pianzhang` varchar(200) DEFAULT NULL COMMENT '片长',
  `dianyingyugao` varchar(200) DEFAULT NULL COMMENT '电影预告',
  `dianyingjianjie` longtext COMMENT '电影简介',
  `fangyingting` varchar(200) DEFAULT NULL COMMENT '放映厅',
  `changci` datetime DEFAULT NULL COMMENT '场次',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616550479726 DEFAULT CHARSET=utf8 COMMENT='电影信息';

/*Data for the table `dianyingxinxi` */

insert  into `dianyingxinxi`(`id`,`addtime`,`dianyingmingcheng`,`leixing`,`haibao`,`daoyan`,`zhuyan`,`shangyingriqi`,`pianzhang`,`dianyingyugao`,`dianyingjianjie`,`fangyingting`,`changci`,`clicktime`,`clicknum`,`price`,`number`,`selected`) values (41,'2024-05-06 09:28:22','电影名称1','动作片','http://localhost:8080/ssmf2q8s/upload/1616550159470.jpg','导演1','主演1','2024-05-06 09:28:22','片长1','','<p>电影简介1</p>','放映厅1','2024-05-06 09:28:22','2024-05-06 09:42:22',3,99.9,20,'1,3,5,7,9'),(42,'2024-05-06 09:28:22','电影名称2','动作片','http://localhost:8080/ssmf2q8s/upload/1616550170758.jpg','导演2','主演2','2024-05-06 09:28:22','片长2','','<p>电影简介2</p>','放映厅2','2024-05-06 09:28:22','2024-05-06 09:42:43',3,99.9,20,'1,3,5,7,9'),(43,'2024-05-06 09:28:22','电影名称3','动漫片','http://localhost:8080/ssmf2q8s/upload/1616550183068.jpg','导演3','主演3','2024-05-06 09:28:22','片长3','','<p>电影简介3</p>','放映厅3','2024-05-06 09:28:22','2024-05-06 09:42:55',4,99.9,20,'1,3,5,7,9'),(44,'2024-05-06 09:28:22','电影名称4','悬疑片','http://localhost:8080/ssmf2q8s/upload/1616550197145.jpg','导演4','主演4','2024-05-06 09:28:22','片长4','','<p>电影简介4</p>','放映厅4','2024-05-06 09:28:22','2024-05-06 09:56:24',12,99.9,20,'1,3,5,7,9'),(45,'2024-05-06 09:28:22','电影名称5','爱情片','http://localhost:8080/ssmf2q8s/upload/1616550209534.jpg','导演5','主演5','2024-05-06 09:28:22','片长5','','<p>电影简介5</p>','放映厅5','2024-05-06 09:28:22','2024-05-06 09:43:22',6,99.9,20,'1,3,5,7,9'),(1616550479725,'2024-05-06 09:47:58','你好，李焕英','喜剧片','http://localhost:8080/ssmf2q8s/upload/1616550434209.jpg','贾玲','贾玲/张小斐','2021-02-12 08:00:00','128分钟','http://localhost:8080/ssmf2q8s/upload/1616550459064.mp4','<p>2001年的某一天，刚刚考上大学的贾晓玲经历了人生中的一次大起大落。一心想要成为母亲骄傲的她却因母亲突遭严重意外，而悲痛万分。在贾晓玲情绪崩溃的状态下，竟意外的回到了1981年，并与年轻的母亲李焕英相遇，二人形影不离，宛如闺蜜。与此同时，也结识了一群天真善良的好朋友。晓玲以为来到了这片“广阔天地”，她可以凭借自己超前的思维，让母亲“大有作为”，但结果却让晓玲感到意外......。</p>','1号厅','2021-03-26 10:00:00','2024-05-06 10:01:37',5,45,20,'1,2,3,12,13,5,6,14,15');

/*Table structure for table `discussdianyingxinxi` */

DROP TABLE IF EXISTS `discussdianyingxinxi`;

CREATE TABLE `discussdianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616551286325 DEFAULT CHARSET=utf8 COMMENT='电影信息评论表';

/*Data for the table `discussdianyingxinxi` */

insert  into `discussdianyingxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2024-05-06 09:28:22',1,1,'用户名1','评论内容1','回复内容1'),(112,'2024-05-06 09:28:22',2,2,'用户名2','评论内容2','回复内容2'),(113,'2024-05-06 09:28:22',3,3,'用户名3','评论内容3','回复内容3'),(114,'2024-05-06 09:28:22',4,4,'用户名4','评论内容4','回复内容4'),(115,'2024-05-06 09:28:22',5,5,'用户名5','评论内容5','回复内容5'),(116,'2024-05-06 09:28:22',6,6,'用户名6','评论内容6','回复内容6'),(1616551286324,'2024-05-06 10:01:25',1616550479725,1616550901328,'2','很感动','');

/*Table structure for table `fangyingting` */

DROP TABLE IF EXISTS `fangyingting`;

CREATE TABLE `fangyingting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyingting` varchar(200) NOT NULL COMMENT '放映厅',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangyingting` (`fangyingting`)
) ENGINE=InnoDB AUTO_INCREMENT=1616550419252 DEFAULT CHARSET=utf8 COMMENT='放映厅';

/*Data for the table `fangyingting` */

insert  into `fangyingting`(`id`,`addtime`,`fangyingting`) values (31,'2024-05-06 09:28:22','放映厅1'),(32,'2024-05-06 09:28:22','放映厅2'),(33,'2024-05-06 09:28:22','放映厅3'),(34,'2024-05-06 09:28:22','放映厅4'),(35,'2024-05-06 09:28:22','放映厅5'),(36,'2024-05-06 09:28:22','放映厅6'),(1616550419251,'2024-05-06 09:46:58','1号厅');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616550534722 DEFAULT CHARSET=utf8 COMMENT='电影资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2024-05-06 09:28:22','标题1','简介1','http://localhost:8080/ssmf2q8s/upload/1616550263059.jpg','<p>内容1</p>'),(102,'2024-05-06 09:28:22','标题2','简介2','http://localhost:8080/ssmf2q8s/upload/1616550273858.jpg','<p>内容2</p>'),(104,'2024-05-06 09:28:22','标题4','简介4','http://localhost:8080/ssmf2q8s/upload/1616550290248.jpg','<p>内容4</p>'),(105,'2024-05-06 09:28:22','标题5','简介5','http://localhost:8080/ssmf2q8s/upload/1616550298880.jpg','<p>内容5</p>'),(106,'2024-05-06 09:28:22','标题6','简介6','http://localhost:8080/ssmf2q8s/upload/1616550307317.jpg','<p>内容6</p>'),(1616550534721,'2024-05-06 09:48:54','新电影上映资讯','新电影','http://localhost:8080/ssmf2q8s/upload/1616550523550.jpg','<p>资讯内容</p><p><img src=\"http://localhost:8080/ssmf2q8s/upload/1616550532593.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'dianyingxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616551074707 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616550557635,'2024-05-06 09:49:17','20213249491760263974','dianyingxinxi',1616550342350,1616550479725,'你好，李焕英','http://localhost:8080/ssmf2q8s/upload/1616550434209.jpg',2,45,45,90,90,1,'已完成','5,6'),(1616551074706,'2024-05-06 09:57:54','20213249575426206497','dianyingxinxi',1616550901328,1616550479725,'你好，李焕英','http://localhost:8080/ssmf2q8s/upload/1616550434209.jpg',2,45,45,90,90,1,'已完成','14,15');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616551033125 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','kucfmgawh1oxr2n7xybcvxxoydzpoaya','2024-05-06 09:34:31','2024-05-06 10:46:20'),(2,11,'用户1','yonghu','用户','og59h2a2wm2jq6vnln4hu5ib8iyc6oe4','2024-05-06 09:38:13','2024-05-06 10:41:08'),(3,1616550342350,'1','yonghu','用户','heroywz2yyrs5e5l039agx59bojp35q1','2024-05-06 09:45:47','2024-05-06 10:45:47'),(4,1616550901328,'2','yonghu','用户','73oslfm70xon2naa7oc6jn98ec22mpkj','2024-05-06 09:55:49','2024-05-06 11:01:36');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2024-05-06 09:28:22');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616550901329 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`money`) values (11,'2024-05-06 09:28:21','用户1','123456','姓名1','男','http://localhost:8080/ssmf2q8s/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com',100),(12,'2024-05-06 09:28:21','用户2','123456','姓名2','男','http://localhost:8080/ssmf2q8s/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com',100),(13,'2024-05-06 09:28:21','用户3','123456','姓名3','男','http://localhost:8080/ssmf2q8s/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com',100),(14,'2024-05-06 09:28:21','用户4','123456','姓名4','男','http://localhost:8080/ssmf2q8s/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com',100),(15,'2024-05-06 09:28:21','用户5','123456','姓名5','男','http://localhost:8080/ssmf2q8s/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com',100),(16,'2024-05-06 09:28:22','用户6','123456','姓名6','男','http://localhost:8080/ssmf2q8s/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com',100),(1616550342350,'2024-05-06 09:45:42','1','1','陈一','女','http://localhost:8080/ssmf2q8s/upload/1616550359076.jpg','12345678978','456@qq.com',110),(1616550901328,'2024-05-06 09:55:01','2','2','张一','女','http://localhost:8080/ssmf2q8s/upload/1616550959829.jpg','12345678945','123@qq.com',410);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
