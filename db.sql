/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shangpuzulinxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shangpuzulinxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shangpuzulinxitong`;

/*Table structure for table `chuzu` */

DROP TABLE IF EXISTS `chuzu`;

CREATE TABLE `chuzu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuzu_name` varchar(200) DEFAULT NULL COMMENT '商铺名称 Search111',
  `huixing_types` int(255) DEFAULT NULL COMMENT '户型 Search111',
  `chuzu_mianji` decimal(10,4) DEFAULT NULL COMMENT '面积',
  `chuzu_money` decimal(10,4) DEFAULT NULL COMMENT '价格/月',
  `chuzu_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `chuzu_weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `fangdong_id` int(200) DEFAULT NULL COMMENT '发布房东',
  `chuzu_types` int(200) DEFAULT NULL COMMENT '商铺状态 Search111',
  `chuzu_content` text COMMENT '详细信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商铺出租';

/*Data for the table `chuzu` */

insert  into `chuzu`(`id`,`chuzu_name`,`huixing_types`,`chuzu_mianji`,`chuzu_money`,`chuzu_photo`,`chuzu_weizhi`,`fangdong_id`,`chuzu_types`,`chuzu_content`,`insert_time`,`create_time`) values (1,'商铺名称1',1,'100.0000','1000.0000','http://localhost:8080/shangpuzulinxitong/file/download?fileName=1621303795036.jpg','位置1',2,2,'详细信息1\r\n','2021-05-18 16:55:17','2021-05-18 16:55:17'),(2,'商铺名称2',2,'200.0000','2000.0000','http://localhost:8080/shangpuzulinxitong/file/download?fileName=1621303787079.jpg','位置2',1,1,'详细信息2\r\n','2021-05-18 16:55:40','2021-05-18 16:55:40'),(3,'商铺名称3',3,'300.0000','3000.0000','http://localhost:8080/shangpuzulinxitong/file/download?fileName=1621309389300.jpg','位置3',2,2,'详细信息3\r\n\r\n','2021-05-18 11:43:15','2021-05-18 11:43:15');

/*Table structure for table `chuzu_liuyan` */

DROP TABLE IF EXISTS `chuzu_liuyan`;

CREATE TABLE `chuzu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuzu_id` int(11) DEFAULT NULL COMMENT '商铺出租id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `chuzu_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商铺出租留言';

/*Data for the table `chuzu_liuyan` */

insert  into `chuzu_liuyan`(`id`,`chuzu_id`,`yonghu_id`,`chuzu_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (2,1,1,'132132312',NULL,'2021-05-18 11:55:59','2021-05-18 11:55:59'),(3,2,2,'1111\r\n','1231231\r\n','2021-05-18 11:56:34','2021-05-18 11:56:34');

/*Table structure for table `chuzu_order` */

DROP TABLE IF EXISTS `chuzu_order`;

CREATE TABLE `chuzu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuzu_id` int(11) DEFAULT NULL COMMENT '商铺出租id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `chuzu_order_day` int(255) DEFAULT NULL COMMENT '租赁时间/年 Search111',
  `shenhe_types` int(255) DEFAULT NULL COMMENT '审核',
  `chuzu_order_money` decimal(10,4) DEFAULT NULL COMMENT '总价',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='商铺出租订单';

/*Data for the table `chuzu_order` */

insert  into `chuzu_order`(`id`,`chuzu_id`,`yonghu_id`,`chuzu_order_day`,`shenhe_types`,`chuzu_order_money`,`insert_time`,`create_time`) values (3,2,1,111,2,'222000.0000','2021-05-18 11:53:42','2021-05-18 11:53:42'),(4,2,2,333,4,'666000.0000','2021-05-18 11:56:29','2021-05-18 11:56:29');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/shangpuzulinxitong/upload/1621303832574.jpg'),(2,'picture2','http://localhost:8080/shangpuzulinxitong/upload/1621303839512.jpg'),(3,'picture3','http://localhost:8080/shangpuzulinxitong/upload/1621303844506.jpg'),(6,'homepage','http://localhost:8080/shangpuzulinxitong/upload/1621303849630.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-18 16:23:50'),(2,'sex_types','性别',2,'女',NULL,'2021-05-18 16:23:50'),(3,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-05-18 16:23:50'),(4,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-05-18 16:23:50'),(5,'huixing_types','户型类型名称',1,'户型1',NULL,'2021-05-18 16:23:50'),(6,'huixing_types','户型类型名称',2,'户型2',NULL,'2021-05-18 16:23:50'),(7,'huixing_types','户型类型名称',3,'户型3',NULL,'2021-05-18 16:23:50'),(8,'shenhe_types','审核',1,'未审核',NULL,'2021-05-17 20:56:36'),(9,'shenhe_types','审核',2,'同意',NULL,'2021-05-17 20:56:38'),(10,'shenhe_types','审核',3,'拒绝',NULL,'2021-05-17 20:56:39'),(11,'chuzu_types','商铺状态',1,'以租',NULL,'2021-05-17 20:56:41'),(12,'chuzu_types','商铺状态',2,'未租',NULL,'2021-05-17 20:56:44'),(13,'shenhe_types','审核',4,'店铺已出租',NULL,'2021-05-18 11:26:30');

/*Table structure for table `fangdong` */

DROP TABLE IF EXISTS `fangdong`;

CREATE TABLE `fangdong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `fangdong_name` varchar(200) DEFAULT NULL COMMENT '房东姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `fangdong_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `fangdong_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `fangdong_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='房东';

/*Data for the table `fangdong` */

insert  into `fangdong`(`id`,`username`,`password`,`fangdong_name`,`sex_types`,`fangdong_id_number`,`fangdong_phone`,`fangdong_photo`,`create_time`) values (1,'333','123456','房东1',2,'410882188912111211','17785566491','http://localhost:8080/shangpuzulinxitong/file/download?fileName=1621300926348.jpg','2021-05-18 16:29:06'),(2,'444','123456','房东2',1,'410882188912111212','17785566492','http://localhost:8080/shangpuzulinxitong/file/download?fileName=1621300918077.jpg','2021-05-18 16:29:22');

/*Table structure for table `hetong` */

DROP TABLE IF EXISTS `hetong`;

CREATE TABLE `hetong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hetong_name` varchar(255) DEFAULT NULL COMMENT '合同名称  Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '签订用户',
  `fangdong_id` int(11) DEFAULT NULL COMMENT '发布房东',
  `hetong_file` varchar(255) DEFAULT NULL COMMENT '合同',
  `hetong_content` text COMMENT '合同简介',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '签订时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='合同信息';

/*Data for the table `hetong` */

insert  into `hetong`(`id`,`hetong_name`,`yonghu_id`,`fangdong_id`,`hetong_file`,`hetong_content`,`insert_time`,`create_time`) values (3,'合同名称1',1,1,'http://localhost:8080/shangpuzulinxitong/file/download?fileName=1621309804258.doc','合同简介1\r\n\r\n','2021-05-18 11:50:07','2021-05-18 11:50:07'),(4,'合同名称2',2,1,'http://localhost:8080/shangpuzulinxitong/file/download?fileName=1621309821689.xls','合同简介2\r\n\r\n','2021-05-18 11:50:23','2021-05-18 11:50:23'),(6,'123',3,1,'http://localhost:8080/shangpuzulinxitong/file/download?fileName=1621309962569.rar','123\r\n','2021-05-18 11:52:45','2021-05-18 11:52:45');

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

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告1',1,'http://localhost:8080/shangpuzulinxitong/file/download?fileName=1621303905837.jpg','2021-05-18 17:02:50','公告详情1\r\n','2021-05-18 17:02:50'),(2,'公告2',2,'http://localhost:8080/shangpuzulinxitong/file/download?fileName=1621303899730.jpg','2021-05-18 17:03:03','公告详情2\r\n','2021-05-18 17:03:03');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','mx9gbmw7i5b0x4lr1htqk3fcr41p0un6','2021-05-18 16:20:21','2021-05-18 12:49:39'),(2,1,'111','yonghu','用户','jac5k9i70qrbz2gpjj17kdkqpu2c8vp9','2021-05-18 17:05:14','2021-05-18 14:18:04'),(3,1,'333','fangdong','房东','o6lyqoz8ycr2d1br6suge2egl3som71m','2021-05-18 20:35:16','2021-05-18 12:57:01'),(4,2,'222','yonghu','用户','w8vjt1w34m2o69yycd5yo5jn5ax5lz27','2021-05-18 11:22:24','2021-05-18 12:56:19'),(5,2,'444','fangdong','房东','toid0i5pvopo53zvjg89793jlkpbgl9g','2021-05-18 11:49:50','2021-05-18 12:56:52');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',1,'410882200111111111','17711111111','http://localhost:8080/shangpuzulinxitong/file/download?fileName=1621300907836.jpg','2021-05-18 16:29:40'),(2,'222','123456','用户2',2,'410882200111112222','17711111112','http://localhost:8080/shangpuzulinxitong/file/download?fileName=1621300899225.jpg','2021-05-18 16:29:56'),(3,'123','123456','123',2,'410882199211112223','13312211333','http://localhost:8080/shangpuzulinxitong/file/download?fileName=1621309256689.jpg','2021-05-18 11:40:57');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
