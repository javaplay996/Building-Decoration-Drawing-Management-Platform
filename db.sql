/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jianzhuzhuangxiutuzhi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jianzhuzhuangxiutuzhi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jianzhuzhuangxiutuzhi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jianzhuzhuangxiutuzhi/upload/1619577727395.jpg'),(2,'picture2','http://localhost:8080/jianzhuzhuangxiutuzhi/upload/1619577733758.jpg'),(3,'picture3','http://localhost:8080/jianzhuzhuangxiutuzhi/upload/1619577741353.jpg'),(6,'homepage','http://localhost:8080/jianzhuzhuangxiutuzhi/upload/1619577751412.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-28 09:45:35'),(2,'sex_types','性别',2,'女',NULL,'2021-04-28 09:45:35'),(3,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-04-28 09:45:36'),(4,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-04-28 09:45:36'),(5,'tuzhi_types','类型名称',1,'类型1',NULL,'2021-04-28 09:45:36'),(6,'tuzhi_types','类型名称',2,'类型2',NULL,'2021-04-28 09:45:36'),(7,'order_types','订单状态',1,'未接',NULL,'2021-04-28 09:45:36'),(8,'order_types','订单状态',2,'已接',NULL,'2021-04-28 09:45:36');

/*Table structure for table `dingdan` */

DROP TABLE IF EXISTS `dingdan`;

CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tuzhi_order_id` int(11) DEFAULT NULL COMMENT '订单信息',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `tuzhi_id` int(11) DEFAULT NULL COMMENT '图纸id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '接单时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='已接订单';

/*Data for the table `dingdan` */

insert  into `dingdan`(`id`,`tuzhi_order_id`,`yonghu_id`,`tuzhi_id`,`insert_time`,`create_time`) values (22,2,1,2,'2021-04-28 11:13:33','2021-04-28 11:13:33'),(23,2,1,2,'2021-04-28 14:15:39','2021-04-28 14:15:39'),(24,4,1,3,'2021-04-28 15:02:04','2021-04-28 15:02:04');

/*Table structure for table `dingdan_liuyan` */

DROP TABLE IF EXISTS `dingdan_liuyan`;

CREATE TABLE `dingdan_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dingdan_id` int(11) DEFAULT NULL COMMENT '订单id',
  `shiguongfang_id` int(11) DEFAULT NULL COMMENT '施工方id',
  `dingdan_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='订单留言';

/*Data for the table `dingdan_liuyan` */

insert  into `dingdan_liuyan`(`id`,`dingdan_id`,`shiguongfang_id`,`dingdan_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,23,1,'12312312\r\n','‍111111\r\n','2021-04-28 14:16:23','2021-04-28 14:16:23'),(2,24,1,'我是要交流的内容\r\n','‍我是要回复的内容 \r\n','2021-04-28 15:10:59','2021-04-28 15:10:59');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告名称1',1,'http://localhost:8080/jianzhuzhuangxiutuzhi/file/download?fileName=1619577768236.jpg','2021-04-28 10:42:52','公告详情1\r\n','2021-04-28 10:42:52'),(2,'公告名称2',2,'http://localhost:8080/jianzhuzhuangxiutuzhi/file/download?fileName=1619577781632.jpg','2021-04-28 10:43:03','公告详情2\r\n','2021-04-28 10:43:03');

/*Table structure for table `shejishi` */

DROP TABLE IF EXISTS `shejishi`;

CREATE TABLE `shejishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `shejishi_name` varchar(200) DEFAULT NULL COMMENT '设计师姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `shejishi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `shejishi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `shejishi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='设计师';

/*Data for the table `shejishi` */

insert  into `shejishi`(`id`,`username`,`password`,`shejishi_name`,`sex_types`,`shejishi_id_number`,`shejishi_phone`,`shejishi_photo`,`create_time`) values (1,'333','123456','设计师1',2,'410882200011111111','17754455871','http://localhost:8080/jianzhuzhuangxiutuzhi/file/download?fileName=1619575258553.jpg','2021-04-28 10:00:59');

/*Table structure for table `shiguongfang` */

DROP TABLE IF EXISTS `shiguongfang`;

CREATE TABLE `shiguongfang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `shiguongfang_name` varchar(200) DEFAULT NULL COMMENT '施工方姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `shiguongfang_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `shiguongfang_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `shiguongfang_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='施工方';

/*Data for the table `shiguongfang` */

insert  into `shiguongfang`(`id`,`username`,`password`,`shiguongfang_name`,`sex_types`,`shiguongfang_id_number`,`shiguongfang_phone`,`shiguongfang_photo`,`create_time`) values (1,'444','123456','施工方1',2,'410882200011134111','13516644971','http://localhost:8080/jianzhuzhuangxiutuzhi/file/download?fileName=1619575775417.jpg','2021-04-28 10:09:36');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','zstllhfg66e9zi32n6608g1pvxmhsroc','2021-04-28 10:00:14','2021-04-28 16:19:01'),(2,1,'111','yonghu','用户','w1qkl8cke9df4ulws93d4i5ujv91eilk','2021-04-28 10:41:41','2021-04-28 16:18:30'),(3,1,'333','shejishi','设计师','zhe5h0xz7ye5ak60m0jz7jdw56cx31zj','2021-04-28 14:10:23','2021-04-28 16:11:09'),(4,1,'444','shiguongfang','施工方','82giy8gu20pow5apvmbruo6h9js8l74c','2021-04-28 14:15:24','2021-04-28 16:01:32');

/*Table structure for table `tuzhi` */

DROP TABLE IF EXISTS `tuzhi`;

CREATE TABLE `tuzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tuzhi_name` varchar(255) DEFAULT NULL COMMENT '图纸标题 Search111',
  `tuzhi_photo` varchar(255) DEFAULT NULL COMMENT '图纸预览 ',
  `tuzhi_file` varchar(255) DEFAULT NULL COMMENT '文件 ',
  `tuzhi_types` int(255) DEFAULT NULL COMMENT '类型 Search111',
  `shejishi_id` int(255) DEFAULT NULL COMMENT '发布设计师',
  `tuzhi_content` text COMMENT '详情内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='图纸信息';

/*Data for the table `tuzhi` */

insert  into `tuzhi`(`id`,`tuzhi_name`,`tuzhi_photo`,`tuzhi_file`,`tuzhi_types`,`shejishi_id`,`tuzhi_content`,`insert_time`,`create_time`) values (1,'图纸1','http://localhost:8080/jianzhuzhuangxiutuzhi/file/download?fileName=1619576579318.jpg','http://localhost:8080/jianzhuzhuangxiutuzhi/file/download?fileName=1619576598492.doc',1,1,'详情内容1\r\n','2021-04-28 10:23:21','2021-04-28 10:23:21'),(2,'图纸2','http://localhost:8080/jianzhuzhuangxiutuzhi/file/download?fileName=1619577042341.jpg','http://localhost:8080/jianzhuzhuangxiutuzhi/file/download?fileName=1619577053701.xls',2,1,'详情内容2\r\n','2021-04-28 10:30:55','2021-04-28 10:30:55'),(3,'图纸3','http://localhost:8080/jianzhuzhuangxiutuzhi/file/download?fileName=1619592578533.jpg','http://localhost:8080/jianzhuzhuangxiutuzhi/file/download?fileName=1619592582875.rar',2,1,'<img src=\"http://localhost:8080/jianzhuzhuangxiutuzhi/upload/1619592578563.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jianzhuzhuangxiutuzhi/upload/1619592578563.jpg\">\r\n','2021-04-28 14:49:44','2021-04-28 14:49:44');

/*Table structure for table `tuzhi_collection` */

DROP TABLE IF EXISTS `tuzhi_collection`;

CREATE TABLE `tuzhi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tuzhi_id` int(11) DEFAULT NULL COMMENT '图纸id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='图纸收藏';

/*Data for the table `tuzhi_collection` */

insert  into `tuzhi_collection`(`id`,`tuzhi_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,3,1,'2021-04-28 14:51:59','2021-04-28 14:51:59');

/*Table structure for table `tuzhi_liuyan` */

DROP TABLE IF EXISTS `tuzhi_liuyan`;

CREATE TABLE `tuzhi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tuzhi_id` int(11) DEFAULT NULL COMMENT '图纸id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `tuzhi_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='图纸留言';

/*Data for the table `tuzhi_liuyan` */

insert  into `tuzhi_liuyan`(`id`,`tuzhi_id`,`yonghu_id`,`tuzhi_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,3,1,'aaabbbcccdddd\r\n','1111111\r\n','2021-04-28 14:52:11','2021-04-28 14:52:11');

/*Table structure for table `tuzhi_order` */

DROP TABLE IF EXISTS `tuzhi_order`;

CREATE TABLE `tuzhi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_number` varchar(255) DEFAULT NULL COMMENT '订单号',
  `tuzhi_id` int(11) DEFAULT NULL COMMENT '图纸id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `order_types` int(11) DEFAULT NULL COMMENT '订单状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '下单时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='图纸订单';

/*Data for the table `tuzhi_order` */

insert  into `tuzhi_order`(`id`,`order_number`,`tuzhi_id`,`yonghu_id`,`order_types`,`insert_time`,`create_time`) values (2,'1619578821180',2,1,2,'2021-04-28 11:00:21','2021-04-28 11:00:21'),(4,'1619593245421',3,1,2,'2021-04-28 15:00:45','2021-04-28 15:00:45');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',1,'410882200011211141','13516155411','http://localhost:8080/jianzhuzhuangxiutuzhi/file/download?fileName=1619576123500.jpg','2021-04-28 10:15:24'),(2,'222','123456','用户2',1,'410882200011211142','13516155412','http://localhost:8080/jianzhuzhuangxiutuzhi/file/download?fileName=1619576501138.jpg','2021-04-28 10:21:42');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
