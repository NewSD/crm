/*
SQLyog Ultimate v8.32 
MySQL - 5.5.27 : Database - crm
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`crm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `crm`;

/*Table structure for table `t_change` */

DROP TABLE IF EXISTS `t_change`;
/*升级/留级表*/
CREATE TABLE `t_change` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `state` int(1) DEFAULT NULL COMMENT '类别（1：升级/0：留级）',
  `before_gid` int(20) DEFAULT NULL COMMENT '之前班级id',
  `after_gid` int(20) DEFAULT NULL COMMENT '之后班级id',
  `handle_time` varchar(40) DEFAULT NULL COMMENT '操作时间',
  `eid` int(20) DEFAULT NULL COMMENT '经办人',
  `suuid` int(20) DEFAULT NULL COMMENT '学生id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT '升级/留级表';

/*Table structure for table `t_consult` */

DROP TABLE IF EXISTS `t_consult`;
/*咨询记录表*/
CREATE TABLE `t_consult` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `date` varchar(40) DEFAULT NULL COMMENT '咨询日期',
  `mode` varchar(20) DEFAULT NULL COMMENT '交流方式',
  `length` varchar(20) DEFAULT NULL COMMENT '咨询时长',
  `content` varchar(100) DEFAULT NULL COMMENT '咨询内容',
  `suuid` int(20) DEFAULT NULL COMMENT '学生id',
  `eid` int(20) DEFAULT NULL COMMENT '咨询人员id',
  `result` varchar(20) DEFAULT NULL COMMENT '咨询结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT '咨询记录表';

/*Table structure for table `t_course` */

DROP TABLE IF EXISTS `t_course`;
/*课程表*/
CREATE TABLE `t_course` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL COMMENT '课程名称',
  `cmoney` double DEFAULT NULL COMMENT '收费标准',
  `introduce` varchar(60) DEFAULT NULL COMMENT '介绍',
  `period` int(20) DEFAULT NULL COMMENT '总学时',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT '课程表';



/*Table structure for table `t_grade` */

DROP TABLE IF EXISTS `t_grade`;
/*班级表*/
CREATE TABLE `t_grade` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '班级名称',
  `begin_time` varchar(40) DEFAULT NULL COMMENT '开班时间',
  `end_time` varchar(40) DEFAULT NULL COMMENT '毕业时间',
  `cid` int(20) DEFAULT NULL COMMENT '课程id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT '班级表';

/*Table structure for table `t_job` */

DROP TABLE IF EXISTS `t_job`;
/*就业表*/
CREATE TABLE `t_job` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `company` varchar(20) DEFAULT NULL COMMENT '就业公司',
  `hiredate` varchar(20) DEFAULT NULL COMMENT '入职时间',
  `salary` varchar(20) DEFAULT NULL COMMENT '薪资',
  `job_title` varchar(20) DEFAULT NULL COMMENT '岗位',
  `address` varchar(20) DEFAULT NULL COMMENT '公司地址',
  `remarks` varchar(100) DEFAULT NULL COMMENT '备注',
  `suuid` int(20) DEFAULT NULL COMMENT '学生id',
  `gid` int(20) DEFAULT NULL COMMENT '班级id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT '就业表';

/*Table structure for table `t_lost` */

DROP TABLE IF EXISTS `t_lost`;
/*流失表*/
CREATE TABLE `t_lost` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `reason` varchar(100) DEFAULT NULL COMMENT '流失原因',
  `date` varchar(40) DEFAULT NULL COMMENT '流失时间',
  `eid` int(20) DEFAULT NULL COMMENT '业务员id',
  `is_refund` varchar(4) DEFAULT NULL COMMENT '是否退款',
  `suuid` int(20) DEFAULT NULL COMMENT '学生id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT '流失表';



/*Table structure for table `t_stu` */

DROP TABLE IF EXISTS `t_stu`;
/*学生表*/
CREATE TABLE `t_stu` (
  `uuid` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '学生姓名',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `source` varchar(40) DEFAULT NULL COMMENT '来源',
  `age` int(6) DEFAULT NULL COMMENT '年龄',
  `gender` char(1) DEFAULT NULL COMMENT '性别',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `email` varchar(40) DEFAULT NULL COMMENT '邮箱',
  `gid` int(20) DEFAULT NULL COMMENT '班级id',
  `status` int(6) DEFAULT NULL COMMENT '状态（0：未入学，1：已入学）',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT '学生表';

/*Table structure for table `t_transfer` */

DROP TABLE IF EXISTS `t_transfer`;
/*移交表*/
CREATE TABLE `t_transfer` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `before_eid` int(20) DEFAULT NULL COMMENT '移交之前业务员',
  `transfer_time` varchar(40) DEFAULT NULL COMMENT '移交时间',
  `transfer_reason` varchar(50) DEFAULT NULL COMMENT '移交原因',
  `uuid` int(20) DEFAULT NULL COMMENT '学生id',
  `aftere_eid` int(20) DEFAULT NULL COMMENT '当前业务员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT '移交表';





/*=======================分割线---你们已经存在的表================================*/



/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;
/*职务表*/
CREATE TABLE `t_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '职务名称',
  `did` int(20) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT '职务表';

/*Table structure for table `t_dept` */

DROP TABLE IF EXISTS `t_dept`;
/*部门表*/
CREATE TABLE `t_dept` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '部门名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT '部门表';

/*Table structure for table `t_emp` */

DROP TABLE IF EXISTS `t_emp`;
/*员工表*/
CREATE TABLE `t_emp` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(30) DEFAULT NULL COMMENT '昵称',
  `sex` varchar(4) DEFAULT NULL COMMENT '性别',
  `birthday` varchar(40) DEFAULT NULL COMMENT '生日',
  `hiredate` varchar(40) DEFAULT NULL COMMENT '入职时间',
  `rid` int(20) DEFAULT NULL COMMENT '职位id',
  `pwd` varchar(32) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT '员工表';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
