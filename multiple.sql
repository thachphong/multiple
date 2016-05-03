/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : multiple

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-05-04 00:12:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for albums
-- ----------------------------
DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `artists_id` int(10) unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `rank` int(10) unsigned NOT NULL,
  `playcount` int(10) unsigned NOT NULL,
  `release_date` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `href` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artists_id` (`artists_id`),
  KEY `playcount` (`playcount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of albums
-- ----------------------------

-- ----------------------------
-- Table structure for check_view
-- ----------------------------
DROP TABLE IF EXISTS `check_view`;
CREATE TABLE `check_view` (
  `postid` int(11) NOT NULL DEFAULT '0',
  `user_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1.1.1.1',
  `date_view` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vote` int(5) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postid`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AVG_ROW_LENGTH=1820;

-- ----------------------------
-- Records of check_view
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photograph_id` int(11) NOT NULL,
  `created` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `photograph_id` (`photograph_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1820;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for download
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id_download` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '9:da duyet',
  `key_link` int(11) NOT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci DEFAULT 'img',
  `file_type` varchar(5) COLLATE utf8_unicode_ci DEFAULT '',
  `addtime` varchar(14) COLLATE utf8_unicode_ci DEFAULT '',
  `from_link` varchar(25) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id_download`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AVG_ROW_LENGTH=413;

-- ----------------------------
-- Records of download
-- ----------------------------

-- ----------------------------
-- Table structure for download_structure
-- ----------------------------
DROP TABLE IF EXISTS `download_structure`;
CREATE TABLE `download_structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Title or Content or Image',
  `description` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xpath` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'webiste download',
  `element_remove` int(11) DEFAULT '0' COMMENT 'when is 1 then remove elemte from html',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of download_structure
-- ----------------------------

-- ----------------------------
-- Table structure for download_temp
-- ----------------------------
DROP TABLE IF EXISTS `download_temp`;
CREATE TABLE `download_temp` (
  `id_dl` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  `link_dl` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `addtime` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_dl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of download_temp
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `status` int(11) DEFAULT '1' COMMENT '1. active  0. disable',
  `parent` int(11) DEFAULT '0',
  `link` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'Home', '1', '0', null);

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` int(11) DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `des` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) DEFAULT '0' COMMENT '0: doi duyet,1:duyet,3:xoa',
  `adduser` int(11) NOT NULL DEFAULT '0',
  `youtube_key` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_view` int(11) DEFAULT '0',
  `total_vote` int(11) DEFAULT '0',
  `add_date` date DEFAULT NULL,
  `add_time` time DEFAULT NULL,
  `total_comment` int(11) DEFAULT '0',
  `total_like` int(11) DEFAULT '0',
  `resource` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AVG_ROW_LENGTH=325;

-- ----------------------------
-- Records of posts
-- ----------------------------

-- ----------------------------
-- Table structure for tablica
-- ----------------------------
DROP TABLE IF EXISTS `tablica`;
CREATE TABLE `tablica` (
  `kolona1` text COLLATE utf8_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
-- Records of tablica
-- ----------------------------

-- ----------------------------
-- Table structure for userm
-- ----------------------------
DROP TABLE IF EXISTS `userm`;
CREATE TABLE `userm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avata` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userm
-- ----------------------------
INSERT INTO `userm` VALUES ('1', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin', 'admin', null, '1');

-- ----------------------------
-- View structure for v_hot_blog
-- ----------------------------
DROP VIEW IF EXISTS `v_hot_blog`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_hot_blog` AS select `posts`.`id` AS `id`,`posts`.`filename` AS `filename`,`posts`.`type` AS `type`,`posts`.`size` AS `size`,`posts`.`caption` AS `caption`,`posts`.`content` AS `content`,`posts`.`status` AS `status`,`posts`.`adduser` AS `adduser`,`posts`.`youtube_key` AS `youtube_key`,`posts`.`url` AS `url`,`posts`.`total_view` AS `total_view`,`posts`.`total_vote` AS `total_vote`,`posts`.`add_date` AS `add_date`,`posts`.`add_time` AS `add_time`,`posts`.`total_comment` AS `total_comment`,`posts`.`total_like` AS `total_like`,`posts`.`resource` AS `resource`,`users`.`full_name` AS `user_name`,(to_days(curdate()) - to_days(`posts`.`add_date`)) AS `total_date`,minute(sec_to_time((curtime() - `posts`.`add_time`))) AS `total_minute`,hour(sec_to_time((curtime() - `posts`.`add_time`))) AS `total_hour` from (`posts` left join `users` on((`users`.`id` = `posts`.`adduser`))) where ((`posts`.`status` = 1) and (`posts`.`type` = 'blog')) order by `posts`.`total_view` desc limit 0,9 ;

-- ----------------------------
-- View structure for v_hot_img
-- ----------------------------
DROP VIEW IF EXISTS `v_hot_img`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_hot_img` AS select `posts`.`id` AS `id`,`posts`.`filename` AS `filename`,`posts`.`type` AS `type`,`posts`.`size` AS `size`,`posts`.`caption` AS `caption`,`posts`.`content` AS `content`,`posts`.`status` AS `status`,`posts`.`adduser` AS `adduser`,`posts`.`youtube_key` AS `youtube_key`,`posts`.`url` AS `url`,`posts`.`total_view` AS `total_view`,`posts`.`total_vote` AS `total_vote`,`posts`.`add_date` AS `add_date`,`posts`.`add_time` AS `add_time`,`posts`.`total_comment` AS `total_comment`,`posts`.`total_like` AS `total_like`,`posts`.`resource` AS `resource`,`users`.`full_name` AS `user_name`,(to_days(curdate()) - to_days(`posts`.`add_date`)) AS `total_date`,minute(sec_to_time((curtime() - `posts`.`add_time`))) AS `total_minute`,hour(sec_to_time((curtime() - `posts`.`add_time`))) AS `total_hour` from (`posts` left join `users` on((`users`.`id` = `posts`.`adduser`))) where ((`posts`.`status` = 1) and (`posts`.`type` <> 'blog') and (`posts`.`type` <> 'video')) order by `posts`.`total_view` desc limit 0,9 ;

-- ----------------------------
-- View structure for v_hot_post
-- ----------------------------
DROP VIEW IF EXISTS `v_hot_post`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_hot_post` AS select `posts`.`id` AS `id`,`posts`.`filename` AS `filename`,`posts`.`type` AS `type`,`posts`.`size` AS `size`,`posts`.`caption` AS `caption`,`posts`.`content` AS `content`,`posts`.`status` AS `status`,`posts`.`adduser` AS `adduser`,`posts`.`youtube_key` AS `youtube_key`,`posts`.`url` AS `url`,`posts`.`total_view` AS `total_view`,`posts`.`total_vote` AS `total_vote`,`posts`.`add_date` AS `add_date`,`posts`.`add_time` AS `add_time`,`posts`.`total_comment` AS `total_comment`,`posts`.`total_like` AS `total_like`,`posts`.`resource` AS `resource`,`users`.`full_name` AS `user_name`,(to_days(curdate()) - to_days(`posts`.`add_date`)) AS `total_date`,minute(sec_to_time((curtime() - `posts`.`add_time`))) AS `total_minute`,hour(sec_to_time((curtime() - `posts`.`add_time`))) AS `total_hour` from (`posts` left join `users` on((`users`.`id` = `posts`.`adduser`))) where (`posts`.`status` = 1) order by `posts`.`total_view` desc ;

-- ----------------------------
-- View structure for v_hot_video
-- ----------------------------
DROP VIEW IF EXISTS `v_hot_video`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_hot_video` AS select `posts`.`id` AS `id`,`posts`.`filename` AS `filename`,`posts`.`type` AS `type`,`posts`.`size` AS `size`,`posts`.`caption` AS `caption`,`posts`.`content` AS `content`,`posts`.`status` AS `status`,`posts`.`adduser` AS `adduser`,`posts`.`youtube_key` AS `youtube_key`,`posts`.`url` AS `url`,`posts`.`total_view` AS `total_view`,`posts`.`total_vote` AS `total_vote`,`posts`.`add_date` AS `add_date`,`posts`.`add_time` AS `add_time`,`posts`.`total_comment` AS `total_comment`,`posts`.`total_like` AS `total_like`,`posts`.`resource` AS `resource`,`users`.`full_name` AS `user_name`,(to_days(curdate()) - to_days(`posts`.`add_date`)) AS `total_date`,minute(sec_to_time((curtime() - `posts`.`add_time`))) AS `total_minute`,hour(sec_to_time((curtime() - `posts`.`add_time`))) AS `total_hour` from (`posts` left join `users` on((`users`.`id` = `posts`.`adduser`))) where ((`posts`.`status` = 1) and (`posts`.`type` = 'video')) order by `posts`.`total_view` desc limit 0,9 ;

-- ----------------------------
-- View structure for v_vote_post
-- ----------------------------
DROP VIEW IF EXISTS `v_vote_post`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_vote_post` AS select `posts`.`id` AS `id`,`posts`.`filename` AS `filename`,`posts`.`type` AS `type`,`posts`.`size` AS `size`,`posts`.`caption` AS `caption`,`posts`.`content` AS `content`,`posts`.`status` AS `status`,`posts`.`adduser` AS `adduser`,`posts`.`youtube_key` AS `youtube_key`,`posts`.`url` AS `url`,`posts`.`total_view` AS `total_view`,`posts`.`total_vote` AS `total_vote`,`posts`.`add_date` AS `add_date`,`posts`.`add_time` AS `add_time`,`posts`.`total_comment` AS `total_comment`,`posts`.`total_like` AS `total_like`,`posts`.`resource` AS `resource`,`users`.`full_name` AS `user_name`,(to_days(curdate()) - to_days(`posts`.`add_date`)) AS `total_date`,minute(sec_to_time((curtime() - `posts`.`add_time`))) AS `total_minute`,hour(sec_to_time((curtime() - `posts`.`add_time`))) AS `total_hour` from (`posts` left join `users` on((`users`.`id` = `posts`.`adduser`))) where ((`posts`.`status` = 0) and (`posts`.`total_vote` < 15) and (`posts`.`type` <> 'blog')) order by `posts`.`total_vote`,`posts`.`id` desc ;

-- ----------------------------
-- Procedure structure for PRO_ADD_VIEW_BY_MAXID
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRO_ADD_VIEW_BY_MAXID`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRO_ADD_VIEW_BY_MAXID`(IN `pa_post_maxid` INT, IN `pa_user_ip` VARCHAR(15))
    COMMENT 'for view new page'
BEGIN
  DECLARE done INT DEFAULT FALSE;
	DECLARE max_id int;
	DECLARE v_postid INT ;  
	DECLARE v_count INT ; 
  DECLARE v_ip_user INT ; 
	DECLARE cur_post CURSOR FOR select  posts.id
				from  posts 			
				where posts.id < max_id
				and status = 1
				order by posts.id desc LIMIT 10;	
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	if pa_post_maxid=0 then	
			select max(id) into max_id from posts ;
	else
		set max_id = pa_post_maxid ;
	end if ;
	SET v_ip_user = pa_user_ip;

	open cur_post ;
  
	read_loop: LOOP  
		FETCH cur_post INTO v_postid ;
    IF done THEN
      LEAVE read_loop;
    END IF;
		/*select count(*) into v_count from check_view
		where check_view.postid = v_postid 
		and ROUND((NOW()- check_view.date_view)/60,0) < 60;
		if v_count = 0 then
			insert into check_view(postid,user_ip)
			values(v_postid,v_ip_user);
		end if;*/
		UPDATE POSTS 
		SET TOTAL_VIEW = TOTAL_VIEW + 1	
		WHERE ID= v_postid ;
    
	END LOOP;
	close cur_post;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for PRO_ADD_VIEW_HOT_BY_MAXID
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRO_ADD_VIEW_HOT_BY_MAXID`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRO_ADD_VIEW_HOT_BY_MAXID`(IN pa_post_maxid INT, IN pa_user_ip VARCHAR(15))
    COMMENT 'for view new page'
BEGIN
  DECLARE done INT DEFAULT FALSE;
	DECLARE max_id int;
	DECLARE v_postid INT ;  
	DECLARE v_count INT ; 
  DECLARE v_ip_user INT ; 
	DECLARE cur_post CURSOR FOR select  posts.id
				from  posts 			
				where posts.id < max_id
				and status = 1
				order by posts.total_view desc LIMIT 10;	
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	if pa_post_maxid=0 then	
			select max(id) into max_id from posts ;
	else
		set max_id = pa_post_maxid ;
	end if ;
	SET v_ip_user = pa_user_ip;

	open cur_post ;
  
	read_loop: LOOP  
		FETCH cur_post INTO v_postid ;
    IF done THEN
      LEAVE read_loop;
    END IF;
		select count(*) into v_count from check_view
		where check_view.postid = v_postid 
		and ROUND((NOW()- check_view.date_view)/60,0) < 60;
		if v_count = 0 then
			insert into check_view(postid,user_ip)
			values(v_postid,v_ip_user);
		end if;
    
	END LOOP;
	close cur_post;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for PRO_ADD_VOTE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PRO_ADD_VOTE`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PRO_ADD_VOTE`(IN `pa_post_id` INT
, IN `pa_user_id` INT
, IN `pa_user_ip` VARCHAR(15)
, IN `pa_vote_type` INT
)
    COMMENT 'add vote'
BEGIN  
		/*select count(*) into v_count from check_view
		where check_view.postid = v_postid 
		and ROUND((NOW()- check_view.date_view)/60,0) < 60;
		if v_count = 0 then
			insert into check_view(postid,user_ip)
			values(v_postid,v_ip_user);
		end if;*/
		insert into check_view(postid,user_id,vote,user_ip)
		values(pa_post_id,pa_user_id,pa_vote_type,pa_user_ip);
		
		UPDATE POSTS 
		SET TOTAL_VOTE = TOTAL_VOTE + 1	
		WHERE ID= pa_post_id ;
    	
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `check_view_after_insert`;
DELIMITER ;;
CREATE TRIGGER `check_view_after_insert` AFTER INSERT ON `check_view` FOR EACH ROW BEGIN
	UPDATE POSTS 
	SET TOTAL_VIEW = TOTAL_VIEW + 1,
	TOTAL_VOTE = TOTAL_VOTE + COALESCE(NEW.VOTE,0)
	WHERE ID= NEW.POSTID ;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `posts_before_insert`;
DELIMITER ;;
CREATE TRIGGER `posts_before_insert` BEFORE INSERT ON `posts` FOR EACH ROW BEGIN
	SET new.ADD_TIME = CURTIME(),
  	NEW.ADD_DATE = CURDATE();
END
;;
DELIMITER ;
