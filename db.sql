/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm4mr61
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm4mr61` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm4mr61`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm4mr61/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm4mr61/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm4mr61/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='论坛表';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (111,'2021-05-17 22:23:26','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (112,'2021-05-17 22:23:26','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (113,'2021-05-17 22:23:26','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (114,'2021-05-17 22:23:26','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (115,'2021-05-17 22:23:26','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (116,'2021-05-17 22:23:26','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `jiaoyanhuodong` */

DROP TABLE IF EXISTS `jiaoyanhuodong`;

CREATE TABLE `jiaoyanhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuti` varchar(200) DEFAULT NULL COMMENT '主题',
  `xiangguanzhaopian` varchar(200) DEFAULT NULL COMMENT '相关照片',
  `zhuyaoneirong` varchar(200) DEFAULT NULL COMMENT '主要内容',
  `huodonggaiyao` longtext COMMENT '活动概要',
  `huodongxiaojie` longtext COMMENT '活动小结',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='教研活动';

/*Data for the table `jiaoyanhuodong` */

insert  into `jiaoyanhuodong`(`id`,`addtime`,`zhuti`,`xiangguanzhaopian`,`zhuyaoneirong`,`huodonggaiyao`,`huodongxiaojie`,`riqi`) values (101,'2021-05-17 22:23:26','主题1','http://localhost:8080/ssm4mr61/upload/jiaoyanhuodong_xiangguanzhaopian1.jpg','主要内容1','活动概要1','活动小结1','2021-05-17');
insert  into `jiaoyanhuodong`(`id`,`addtime`,`zhuti`,`xiangguanzhaopian`,`zhuyaoneirong`,`huodonggaiyao`,`huodongxiaojie`,`riqi`) values (102,'2021-05-17 22:23:26','主题2','http://localhost:8080/ssm4mr61/upload/jiaoyanhuodong_xiangguanzhaopian2.jpg','主要内容2','活动概要2','活动小结2','2021-05-17');
insert  into `jiaoyanhuodong`(`id`,`addtime`,`zhuti`,`xiangguanzhaopian`,`zhuyaoneirong`,`huodonggaiyao`,`huodongxiaojie`,`riqi`) values (103,'2021-05-17 22:23:26','主题3','http://localhost:8080/ssm4mr61/upload/jiaoyanhuodong_xiangguanzhaopian3.jpg','主要内容3','活动概要3','活动小结3','2021-05-17');
insert  into `jiaoyanhuodong`(`id`,`addtime`,`zhuti`,`xiangguanzhaopian`,`zhuyaoneirong`,`huodonggaiyao`,`huodongxiaojie`,`riqi`) values (104,'2021-05-17 22:23:26','主题4','http://localhost:8080/ssm4mr61/upload/jiaoyanhuodong_xiangguanzhaopian4.jpg','主要内容4','活动概要4','活动小结4','2021-05-17');
insert  into `jiaoyanhuodong`(`id`,`addtime`,`zhuti`,`xiangguanzhaopian`,`zhuyaoneirong`,`huodonggaiyao`,`huodongxiaojie`,`riqi`) values (105,'2021-05-17 22:23:26','主题5','http://localhost:8080/ssm4mr61/upload/jiaoyanhuodong_xiangguanzhaopian5.jpg','主要内容5','活动概要5','活动小结5','2021-05-17');
insert  into `jiaoyanhuodong`(`id`,`addtime`,`zhuti`,`xiangguanzhaopian`,`zhuyaoneirong`,`huodonggaiyao`,`huodongxiaojie`,`riqi`) values (106,'2021-05-17 22:23:26','主题6','http://localhost:8080/ssm4mr61/upload/jiaoyanhuodong_xiangguanzhaopian6.jpg','主要内容6','活动概要6','活动小结6','2021-05-17');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `keshishu` varchar(200) DEFAULT NULL COMMENT '课时数',
  `laoshigonghao` varchar(200) DEFAULT NULL COMMENT '老师工号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `kechengfengmian` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kechengziyuan` varchar(200) DEFAULT NULL COMMENT '课程资源',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`banji`,`keshishu`,`laoshigonghao`,`laoshixingming`,`kechengfengmian`,`kechengshipin`,`kechengziyuan`,`kechengxiangqing`,`xuehao`,`xingming`) values (31,'2021-05-17 22:23:25','课程编号1','离散结构','班级1','课时数1','老师工号1','老师姓名1','http://localhost:8080/ssm4mr61/upload/kecheng_kechengfengmian1.jpg','','','课程详情1','学号1','姓名1');
insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`banji`,`keshishu`,`laoshigonghao`,`laoshixingming`,`kechengfengmian`,`kechengshipin`,`kechengziyuan`,`kechengxiangqing`,`xuehao`,`xingming`) values (32,'2021-05-17 22:23:25','课程编号2','离散结构','班级2','课时数2','老师工号2','老师姓名2','http://localhost:8080/ssm4mr61/upload/kecheng_kechengfengmian2.jpg','','','课程详情2','学号2','姓名2');
insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`banji`,`keshishu`,`laoshigonghao`,`laoshixingming`,`kechengfengmian`,`kechengshipin`,`kechengziyuan`,`kechengxiangqing`,`xuehao`,`xingming`) values (33,'2021-05-17 22:23:25','课程编号3','离散结构','班级3','课时数3','老师工号3','老师姓名3','http://localhost:8080/ssm4mr61/upload/kecheng_kechengfengmian3.jpg','','','课程详情3','学号3','姓名3');
insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`banji`,`keshishu`,`laoshigonghao`,`laoshixingming`,`kechengfengmian`,`kechengshipin`,`kechengziyuan`,`kechengxiangqing`,`xuehao`,`xingming`) values (34,'2021-05-17 22:23:25','课程编号4','离散结构','班级4','课时数4','老师工号4','老师姓名4','http://localhost:8080/ssm4mr61/upload/kecheng_kechengfengmian4.jpg','','','课程详情4','学号4','姓名4');
insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`banji`,`keshishu`,`laoshigonghao`,`laoshixingming`,`kechengfengmian`,`kechengshipin`,`kechengziyuan`,`kechengxiangqing`,`xuehao`,`xingming`) values (35,'2021-05-17 22:23:25','课程编号5','离散结构','班级5','课时数5','老师工号5','老师姓名5','http://localhost:8080/ssm4mr61/upload/kecheng_kechengfengmian5.jpg','','','课程详情5','学号5','姓名5');
insert  into `kecheng`(`id`,`addtime`,`kechengbianhao`,`kechengmingcheng`,`banji`,`keshishu`,`laoshigonghao`,`laoshixingming`,`kechengfengmian`,`kechengshipin`,`kechengziyuan`,`kechengxiangqing`,`xuehao`,`xingming`) values (36,'2021-05-17 22:23:25','课程编号6','离散结构','班级6','课时数6','老师工号6','老师姓名6','http://localhost:8080/ssm4mr61/upload/kecheng_kechengfengmian6.jpg','','','课程详情6','学号6','姓名6');

/*Table structure for table `kechenghuida` */

DROP TABLE IF EXISTS `kechenghuida`;

CREATE TABLE `kechenghuida` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `tiwenneirong` varchar(200) DEFAULT NULL COMMENT '提问内容',
  `huidaneirong` longtext COMMENT '回答内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='课程回答';

/*Data for the table `kechenghuida` */

insert  into `kechenghuida`(`id`,`addtime`,`kechengmingcheng`,`banji`,`tiwenneirong`,`huidaneirong`,`gonghao`,`xingming`) values (71,'2021-05-17 22:23:25','课程名称1','班级1','提问内容1','回答内容1','工号1','姓名1');
insert  into `kechenghuida`(`id`,`addtime`,`kechengmingcheng`,`banji`,`tiwenneirong`,`huidaneirong`,`gonghao`,`xingming`) values (72,'2021-05-17 22:23:25','课程名称2','班级2','提问内容2','回答内容2','工号2','姓名2');
insert  into `kechenghuida`(`id`,`addtime`,`kechengmingcheng`,`banji`,`tiwenneirong`,`huidaneirong`,`gonghao`,`xingming`) values (73,'2021-05-17 22:23:25','课程名称3','班级3','提问内容3','回答内容3','工号3','姓名3');
insert  into `kechenghuida`(`id`,`addtime`,`kechengmingcheng`,`banji`,`tiwenneirong`,`huidaneirong`,`gonghao`,`xingming`) values (74,'2021-05-17 22:23:25','课程名称4','班级4','提问内容4','回答内容4','工号4','姓名4');
insert  into `kechenghuida`(`id`,`addtime`,`kechengmingcheng`,`banji`,`tiwenneirong`,`huidaneirong`,`gonghao`,`xingming`) values (75,'2021-05-17 22:23:25','课程名称5','班级5','提问内容5','回答内容5','工号5','姓名5');
insert  into `kechenghuida`(`id`,`addtime`,`kechengmingcheng`,`banji`,`tiwenneirong`,`huidaneirong`,`gonghao`,`xingming`) values (76,'2021-05-17 22:23:25','课程名称6','班级6','提问内容6','回答内容6','工号6','姓名6');

/*Table structure for table `kechengtiwen` */

DROP TABLE IF EXISTS `kechengtiwen`;

CREATE TABLE `kechengtiwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `tiwenneirong` varchar(200) DEFAULT NULL COMMENT '提问内容',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tiwenriqi` date DEFAULT NULL COMMENT '提问日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='课程提问';

/*Data for the table `kechengtiwen` */

insert  into `kechengtiwen`(`id`,`addtime`,`kechengmingcheng`,`tupian`,`banji`,`tiwenneirong`,`xuehao`,`xingming`,`tiwenriqi`) values (61,'2021-05-17 22:23:25','课程名称1','http://localhost:8080/ssm4mr61/upload/kechengtiwen_tupian1.jpg','班级1','提问内容1','学号1','姓名1','2021-05-17');
insert  into `kechengtiwen`(`id`,`addtime`,`kechengmingcheng`,`tupian`,`banji`,`tiwenneirong`,`xuehao`,`xingming`,`tiwenriqi`) values (62,'2021-05-17 22:23:25','课程名称2','http://localhost:8080/ssm4mr61/upload/kechengtiwen_tupian2.jpg','班级2','提问内容2','学号2','姓名2','2021-05-17');
insert  into `kechengtiwen`(`id`,`addtime`,`kechengmingcheng`,`tupian`,`banji`,`tiwenneirong`,`xuehao`,`xingming`,`tiwenriqi`) values (63,'2021-05-17 22:23:25','课程名称3','http://localhost:8080/ssm4mr61/upload/kechengtiwen_tupian3.jpg','班级3','提问内容3','学号3','姓名3','2021-05-17');
insert  into `kechengtiwen`(`id`,`addtime`,`kechengmingcheng`,`tupian`,`banji`,`tiwenneirong`,`xuehao`,`xingming`,`tiwenriqi`) values (64,'2021-05-17 22:23:25','课程名称4','http://localhost:8080/ssm4mr61/upload/kechengtiwen_tupian4.jpg','班级4','提问内容4','学号4','姓名4','2021-05-17');
insert  into `kechengtiwen`(`id`,`addtime`,`kechengmingcheng`,`tupian`,`banji`,`tiwenneirong`,`xuehao`,`xingming`,`tiwenriqi`) values (65,'2021-05-17 22:23:25','课程名称5','http://localhost:8080/ssm4mr61/upload/kechengtiwen_tupian5.jpg','班级5','提问内容5','学号5','姓名5','2021-05-17');
insert  into `kechengtiwen`(`id`,`addtime`,`kechengmingcheng`,`tupian`,`banji`,`tiwenneirong`,`xuehao`,`xingming`,`tiwenriqi`) values (66,'2021-05-17 22:23:25','课程名称6','http://localhost:8080/ssm4mr61/upload/kechengtiwen_tupian6.jpg','班级6','提问内容6','学号6','姓名6','2021-05-17');

/*Table structure for table `kechengwenjuan` */

DROP TABLE IF EXISTS `kechengwenjuan`;

CREATE TABLE `kechengwenjuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenjuanbianhao` varchar(200) DEFAULT NULL COMMENT '问卷编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `wenjuanmingcheng` varchar(200) DEFAULT NULL COMMENT '问卷名称',
  `wenjuanneirong` varchar(200) DEFAULT NULL COMMENT '问卷内容',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wenjuanbianhao` (`wenjuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='课程问卷';

/*Data for the table `kechengwenjuan` */

insert  into `kechengwenjuan`(`id`,`addtime`,`wenjuanbianhao`,`kechengmingcheng`,`banji`,`wenjuanmingcheng`,`wenjuanneirong`,`tupian`,`fabushijian`) values (81,'2021-05-17 22:23:26','问卷编号1','课程名称1','班级1','问卷名称1','问卷内容1','http://localhost:8080/ssm4mr61/upload/kechengwenjuan_tupian1.jpg','2021-05-17');
insert  into `kechengwenjuan`(`id`,`addtime`,`wenjuanbianhao`,`kechengmingcheng`,`banji`,`wenjuanmingcheng`,`wenjuanneirong`,`tupian`,`fabushijian`) values (82,'2021-05-17 22:23:26','问卷编号2','课程名称2','班级2','问卷名称2','问卷内容2','http://localhost:8080/ssm4mr61/upload/kechengwenjuan_tupian2.jpg','2021-05-17');
insert  into `kechengwenjuan`(`id`,`addtime`,`wenjuanbianhao`,`kechengmingcheng`,`banji`,`wenjuanmingcheng`,`wenjuanneirong`,`tupian`,`fabushijian`) values (83,'2021-05-17 22:23:26','问卷编号3','课程名称3','班级3','问卷名称3','问卷内容3','http://localhost:8080/ssm4mr61/upload/kechengwenjuan_tupian3.jpg','2021-05-17');
insert  into `kechengwenjuan`(`id`,`addtime`,`wenjuanbianhao`,`kechengmingcheng`,`banji`,`wenjuanmingcheng`,`wenjuanneirong`,`tupian`,`fabushijian`) values (84,'2021-05-17 22:23:26','问卷编号4','课程名称4','班级4','问卷名称4','问卷内容4','http://localhost:8080/ssm4mr61/upload/kechengwenjuan_tupian4.jpg','2021-05-17');
insert  into `kechengwenjuan`(`id`,`addtime`,`wenjuanbianhao`,`kechengmingcheng`,`banji`,`wenjuanmingcheng`,`wenjuanneirong`,`tupian`,`fabushijian`) values (85,'2021-05-17 22:23:26','问卷编号5','课程名称5','班级5','问卷名称5','问卷内容5','http://localhost:8080/ssm4mr61/upload/kechengwenjuan_tupian5.jpg','2021-05-17');
insert  into `kechengwenjuan`(`id`,`addtime`,`wenjuanbianhao`,`kechengmingcheng`,`banji`,`wenjuanmingcheng`,`wenjuanneirong`,`tupian`,`fabushijian`) values (86,'2021-05-17 22:23:26','问卷编号6','课程名称6','班级6','问卷名称6','问卷内容6','http://localhost:8080/ssm4mr61/upload/kechengwenjuan_tupian6.jpg','2021-05-17');

/*Table structure for table `kechengzuoye` */

DROP TABLE IF EXISTS `kechengzuoye`;

CREATE TABLE `kechengzuoye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `laoshigonghao` varchar(200) DEFAULT NULL COMMENT '老师工号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuoyebianhao` (`zuoyebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程作业';

/*Data for the table `kechengzuoye` */

insert  into `kechengzuoye`(`id`,`addtime`,`zuoyebianhao`,`kechengmingcheng`,`banji`,`zuoyemingcheng`,`tupian`,`laoshigonghao`,`laoshixingming`,`fabushijian`,`xuehao`,`xingming`) values (41,'2021-05-17 22:23:25','作业编号1','课程名称1','班级1','作业名称1','http://localhost:8080/ssm4mr61/upload/kechengzuoye_tupian1.jpg','老师工号1','老师姓名1','2021-05-17','学号1','姓名1');
insert  into `kechengzuoye`(`id`,`addtime`,`zuoyebianhao`,`kechengmingcheng`,`banji`,`zuoyemingcheng`,`tupian`,`laoshigonghao`,`laoshixingming`,`fabushijian`,`xuehao`,`xingming`) values (42,'2021-05-17 22:23:25','作业编号2','课程名称2','班级2','作业名称2','http://localhost:8080/ssm4mr61/upload/kechengzuoye_tupian2.jpg','老师工号2','老师姓名2','2021-05-17','学号2','姓名2');
insert  into `kechengzuoye`(`id`,`addtime`,`zuoyebianhao`,`kechengmingcheng`,`banji`,`zuoyemingcheng`,`tupian`,`laoshigonghao`,`laoshixingming`,`fabushijian`,`xuehao`,`xingming`) values (43,'2021-05-17 22:23:25','作业编号3','课程名称3','班级3','作业名称3','http://localhost:8080/ssm4mr61/upload/kechengzuoye_tupian3.jpg','老师工号3','老师姓名3','2021-05-17','学号3','姓名3');
insert  into `kechengzuoye`(`id`,`addtime`,`zuoyebianhao`,`kechengmingcheng`,`banji`,`zuoyemingcheng`,`tupian`,`laoshigonghao`,`laoshixingming`,`fabushijian`,`xuehao`,`xingming`) values (44,'2021-05-17 22:23:25','作业编号4','课程名称4','班级4','作业名称4','http://localhost:8080/ssm4mr61/upload/kechengzuoye_tupian4.jpg','老师工号4','老师姓名4','2021-05-17','学号4','姓名4');
insert  into `kechengzuoye`(`id`,`addtime`,`zuoyebianhao`,`kechengmingcheng`,`banji`,`zuoyemingcheng`,`tupian`,`laoshigonghao`,`laoshixingming`,`fabushijian`,`xuehao`,`xingming`) values (45,'2021-05-17 22:23:25','作业编号5','课程名称5','班级5','作业名称5','http://localhost:8080/ssm4mr61/upload/kechengzuoye_tupian5.jpg','老师工号5','老师姓名5','2021-05-17','学号5','姓名5');
insert  into `kechengzuoye`(`id`,`addtime`,`zuoyebianhao`,`kechengmingcheng`,`banji`,`zuoyemingcheng`,`tupian`,`laoshigonghao`,`laoshixingming`,`fabushijian`,`xuehao`,`xingming`) values (46,'2021-05-17 22:23:25','作业编号6','课程名称6','班级6','作业名称6','http://localhost:8080/ssm4mr61/upload/kechengzuoye_tupian6.jpg','老师工号6','老师姓名6','2021-05-17','学号6','姓名6');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshigonghao` varchar(200) NOT NULL COMMENT '老师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `laoshixingming` varchar(200) NOT NULL COMMENT '老师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `laoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `laoshigonghao` (`laoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`addtime`,`laoshigonghao`,`mima`,`laoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`laoshiyouxiang`) values (21,'2021-05-17 22:23:25','老师1','123456','老师姓名1','男','http://localhost:8080/ssm4mr61/upload/laoshi_zhaopian1.jpg','职称1','13823888881','773890001@qq.com');
insert  into `laoshi`(`id`,`addtime`,`laoshigonghao`,`mima`,`laoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`laoshiyouxiang`) values (22,'2021-05-17 22:23:25','老师2','123456','老师姓名2','男','http://localhost:8080/ssm4mr61/upload/laoshi_zhaopian2.jpg','职称2','13823888882','773890002@qq.com');
insert  into `laoshi`(`id`,`addtime`,`laoshigonghao`,`mima`,`laoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`laoshiyouxiang`) values (23,'2021-05-17 22:23:25','老师3','123456','老师姓名3','男','http://localhost:8080/ssm4mr61/upload/laoshi_zhaopian3.jpg','职称3','13823888883','773890003@qq.com');
insert  into `laoshi`(`id`,`addtime`,`laoshigonghao`,`mima`,`laoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`laoshiyouxiang`) values (24,'2021-05-17 22:23:25','老师4','123456','老师姓名4','男','http://localhost:8080/ssm4mr61/upload/laoshi_zhaopian4.jpg','职称4','13823888884','773890004@qq.com');
insert  into `laoshi`(`id`,`addtime`,`laoshigonghao`,`mima`,`laoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`laoshiyouxiang`) values (25,'2021-05-17 22:23:25','老师5','123456','老师姓名5','男','http://localhost:8080/ssm4mr61/upload/laoshi_zhaopian5.jpg','职称5','13823888885','773890005@qq.com');
insert  into `laoshi`(`id`,`addtime`,`laoshigonghao`,`mima`,`laoshixingming`,`xingbie`,`zhaopian`,`zhicheng`,`lianxidianhua`,`laoshiyouxiang`) values (26,'2021-05-17 22:23:25','老师6','123456','老师姓名6','男','http://localhost:8080/ssm4mr61/upload/laoshi_zhaopian6.jpg','职称6','13823888886','773890006@qq.com');

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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='课程公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (121,'2021-05-17 22:23:26','标题1','简介1','http://localhost:8080/ssm4mr61/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (122,'2021-05-17 22:23:26','标题2','简介2','http://localhost:8080/ssm4mr61/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (123,'2021-05-17 22:23:26','标题3','简介3','http://localhost:8080/ssm4mr61/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (124,'2021-05-17 22:23:26','标题4','简介4','http://localhost:8080/ssm4mr61/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (125,'2021-05-17 22:23:26','标题5','简介5','http://localhost:8080/ssm4mr61/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (126,'2021-05-17 22:23:26','标题6','简介6','http://localhost:8080/ssm4mr61/upload/news_picture6.jpg','内容6');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-17 22:23:26');

/*Table structure for table `wenjuanhuida` */

DROP TABLE IF EXISTS `wenjuanhuida`;

CREATE TABLE `wenjuanhuida` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenjuanbianhao` varchar(200) DEFAULT NULL COMMENT '问卷编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `wenjuanmingcheng` varchar(200) DEFAULT NULL COMMENT '问卷名称',
  `wenjuanneirong` varchar(200) DEFAULT NULL COMMENT '问卷内容',
  `wenjuanhuida` longtext COMMENT '问卷回答',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='问卷回答';

/*Data for the table `wenjuanhuida` */

insert  into `wenjuanhuida`(`id`,`addtime`,`wenjuanbianhao`,`kechengmingcheng`,`banji`,`wenjuanmingcheng`,`wenjuanneirong`,`wenjuanhuida`,`tupian`,`fabushijian`) values (91,'2021-05-17 22:23:26','问卷编号1','课程名称1','班级1','问卷名称1','问卷内容1','问卷回答1','http://localhost:8080/ssm4mr61/upload/wenjuanhuida_tupian1.jpg','2021-05-17');
insert  into `wenjuanhuida`(`id`,`addtime`,`wenjuanbianhao`,`kechengmingcheng`,`banji`,`wenjuanmingcheng`,`wenjuanneirong`,`wenjuanhuida`,`tupian`,`fabushijian`) values (92,'2021-05-17 22:23:26','问卷编号2','课程名称2','班级2','问卷名称2','问卷内容2','问卷回答2','http://localhost:8080/ssm4mr61/upload/wenjuanhuida_tupian2.jpg','2021-05-17');
insert  into `wenjuanhuida`(`id`,`addtime`,`wenjuanbianhao`,`kechengmingcheng`,`banji`,`wenjuanmingcheng`,`wenjuanneirong`,`wenjuanhuida`,`tupian`,`fabushijian`) values (93,'2021-05-17 22:23:26','问卷编号3','课程名称3','班级3','问卷名称3','问卷内容3','问卷回答3','http://localhost:8080/ssm4mr61/upload/wenjuanhuida_tupian3.jpg','2021-05-17');
insert  into `wenjuanhuida`(`id`,`addtime`,`wenjuanbianhao`,`kechengmingcheng`,`banji`,`wenjuanmingcheng`,`wenjuanneirong`,`wenjuanhuida`,`tupian`,`fabushijian`) values (94,'2021-05-17 22:23:26','问卷编号4','课程名称4','班级4','问卷名称4','问卷内容4','问卷回答4','http://localhost:8080/ssm4mr61/upload/wenjuanhuida_tupian4.jpg','2021-05-17');
insert  into `wenjuanhuida`(`id`,`addtime`,`wenjuanbianhao`,`kechengmingcheng`,`banji`,`wenjuanmingcheng`,`wenjuanneirong`,`wenjuanhuida`,`tupian`,`fabushijian`) values (95,'2021-05-17 22:23:26','问卷编号5','课程名称5','班级5','问卷名称5','问卷内容5','问卷回答5','http://localhost:8080/ssm4mr61/upload/wenjuanhuida_tupian5.jpg','2021-05-17');
insert  into `wenjuanhuida`(`id`,`addtime`,`wenjuanbianhao`,`kechengmingcheng`,`banji`,`wenjuanmingcheng`,`wenjuanneirong`,`wenjuanhuida`,`tupian`,`fabushijian`) values (96,'2021-05-17 22:23:26','问卷编号6','课程名称6','班级6','问卷名称6','问卷内容6','问卷回答6','http://localhost:8080/ssm4mr61/upload/wenjuanhuida_tupian6.jpg','2021-05-17');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`banji`,`zhuanye`,`shoujihao`,`zhaopian`) values (11,'2021-05-17 22:23:25','学生1','123456','姓名1','男','学院1','班级1','专业1','手机号1','http://localhost:8080/ssm4mr61/upload/xuesheng_zhaopian1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`banji`,`zhuanye`,`shoujihao`,`zhaopian`) values (12,'2021-05-17 22:23:25','学生2','123456','姓名2','男','学院2','班级2','专业2','手机号2','http://localhost:8080/ssm4mr61/upload/xuesheng_zhaopian2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`banji`,`zhuanye`,`shoujihao`,`zhaopian`) values (13,'2021-05-17 22:23:25','学生3','123456','姓名3','男','学院3','班级3','专业3','手机号3','http://localhost:8080/ssm4mr61/upload/xuesheng_zhaopian3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`banji`,`zhuanye`,`shoujihao`,`zhaopian`) values (14,'2021-05-17 22:23:25','学生4','123456','姓名4','男','学院4','班级4','专业4','手机号4','http://localhost:8080/ssm4mr61/upload/xuesheng_zhaopian4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`banji`,`zhuanye`,`shoujihao`,`zhaopian`) values (15,'2021-05-17 22:23:25','学生5','123456','姓名5','男','学院5','班级5','专业5','手机号5','http://localhost:8080/ssm4mr61/upload/xuesheng_zhaopian5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`xueyuan`,`banji`,`zhuanye`,`shoujihao`,`zhaopian`) values (16,'2021-05-17 22:23:25','学生6','123456','姓名6','男','学院6','班级6','专业6','手机号6','http://localhost:8080/ssm4mr61/upload/xuesheng_zhaopian6.jpg');

/*Table structure for table `zuoyetijiao` */

DROP TABLE IF EXISTS `zuoyetijiao`;

CREATE TABLE `zuoyetijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyebianhao` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `laoshigonghao` varchar(200) DEFAULT NULL COMMENT '老师工号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `zuoyefujian` varchar(200) DEFAULT NULL COMMENT '作业附件',
  `zuoyeneirong` longtext COMMENT '作业内容',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tijiaoshijian` date DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoyetijiao` */

insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`kechengmingcheng`,`banji`,`zuoyemingcheng`,`laoshigonghao`,`laoshixingming`,`zuoyefujian`,`zuoyeneirong`,`tupian`,`xuehao`,`xingming`,`tijiaoshijian`) values (51,'2021-05-17 22:23:25','作业编号1','课程名称1','班级1','作业名称1','老师工号1','老师姓名1','','作业内容1','http://localhost:8080/ssm4mr61/upload/zuoyetijiao_tupian1.jpg','学号1','姓名1','2021-05-17');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`kechengmingcheng`,`banji`,`zuoyemingcheng`,`laoshigonghao`,`laoshixingming`,`zuoyefujian`,`zuoyeneirong`,`tupian`,`xuehao`,`xingming`,`tijiaoshijian`) values (52,'2021-05-17 22:23:25','作业编号2','课程名称2','班级2','作业名称2','老师工号2','老师姓名2','','作业内容2','http://localhost:8080/ssm4mr61/upload/zuoyetijiao_tupian2.jpg','学号2','姓名2','2021-05-17');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`kechengmingcheng`,`banji`,`zuoyemingcheng`,`laoshigonghao`,`laoshixingming`,`zuoyefujian`,`zuoyeneirong`,`tupian`,`xuehao`,`xingming`,`tijiaoshijian`) values (53,'2021-05-17 22:23:25','作业编号3','课程名称3','班级3','作业名称3','老师工号3','老师姓名3','','作业内容3','http://localhost:8080/ssm4mr61/upload/zuoyetijiao_tupian3.jpg','学号3','姓名3','2021-05-17');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`kechengmingcheng`,`banji`,`zuoyemingcheng`,`laoshigonghao`,`laoshixingming`,`zuoyefujian`,`zuoyeneirong`,`tupian`,`xuehao`,`xingming`,`tijiaoshijian`) values (54,'2021-05-17 22:23:25','作业编号4','课程名称4','班级4','作业名称4','老师工号4','老师姓名4','','作业内容4','http://localhost:8080/ssm4mr61/upload/zuoyetijiao_tupian4.jpg','学号4','姓名4','2021-05-17');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`kechengmingcheng`,`banji`,`zuoyemingcheng`,`laoshigonghao`,`laoshixingming`,`zuoyefujian`,`zuoyeneirong`,`tupian`,`xuehao`,`xingming`,`tijiaoshijian`) values (55,'2021-05-17 22:23:25','作业编号5','课程名称5','班级5','作业名称5','老师工号5','老师姓名5','','作业内容5','http://localhost:8080/ssm4mr61/upload/zuoyetijiao_tupian5.jpg','学号5','姓名5','2021-05-17');
insert  into `zuoyetijiao`(`id`,`addtime`,`zuoyebianhao`,`kechengmingcheng`,`banji`,`zuoyemingcheng`,`laoshigonghao`,`laoshixingming`,`zuoyefujian`,`zuoyeneirong`,`tupian`,`xuehao`,`xingming`,`tijiaoshijian`) values (56,'2021-05-17 22:23:25','作业编号6','课程名称6','班级6','作业名称6','老师工号6','老师姓名6','','作业内容6','http://localhost:8080/ssm4mr61/upload/zuoyetijiao_tupian6.jpg','学号6','姓名6','2021-05-17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
