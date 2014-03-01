-- ecshop v2.x SQL Dump Program
-- http://www.kipanddan.com
-- 
-- DATE : 2014-02-28 18:31:00
-- MYSQL SERVER VERSION : 5.5.36-log
-- PHP VERSION : 5.4.24
-- ECShop VERSION : v2.7.3
-- Vol : 1
DROP TABLE IF EXISTS `ecs_account_log`;
CREATE TABLE `ecs_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_ad`;
CREATE TABLE `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_ad` ( `ad_id`, `position_id`, `media_type`, `ad_name`, `ad_link`, `ad_code`, `start_time`, `end_time`, `link_man`, `link_email`, `link_phone`, `click_count`, `enabled` ) VALUES  ('7', '1', '0', 'the number of one', 'http://www.kipanddan.com/an_website/goods.php?id=69', '1388021037903719505.jpg', '1384675200', '1387267200', '', '', '', '0', '1');
INSERT INTO `ecs_ad` ( `ad_id`, `position_id`, `media_type`, `ad_name`, `ad_link`, `ad_code`, `start_time`, `end_time`, `link_man`, `link_email`, `link_phone`, `click_count`, `enabled` ) VALUES  ('8', '1', '0', 'the number if two', 'http://www.kipanddan.com/an_website/goods.php?id=70', '1388021063788276709.jpg', '1384675200', '1387267200', '', '', '', '0', '1');
INSERT INTO `ecs_ad` ( `ad_id`, `position_id`, `media_type`, `ad_name`, `ad_link`, `ad_code`, `start_time`, `end_time`, `link_man`, `link_email`, `link_phone`, `click_count`, `enabled` ) VALUES  ('9', '1', '0', 'the number of three', 'http://www.kipanddan.com/an_website/goods.php?id=68', '1388021014803815270.jpg', '1384675200', '1387267200', '', '', '', '0', '1');
INSERT INTO `ecs_ad` ( `ad_id`, `position_id`, `media_type`, `ad_name`, `ad_link`, `ad_code`, `start_time`, `end_time`, `link_man`, `link_email`, `link_phone`, `click_count`, `enabled` ) VALUES  ('10', '2', '0', '登录的广告', '', '1386703882031494779.jpg', '1386662400', '1389254400', '', '', '', '0', '1');
DROP TABLE IF EXISTS `ecs_ad_custom`;
CREATE TABLE `ecs_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ad_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ad_name` varchar(60) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `ad_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_ad_position`;
CREATE TABLE `ecs_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_ad_position` ( `position_id`, `position_name`, `ad_width`, `ad_height`, `position_desc`, `position_style` ) VALUES  ('1', 'Home slide position', '240', '400', 'aaaaaa', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `ecs_ad_position` ( `position_id`, `position_name`, `ad_width`, `ad_height`, `position_desc`, `position_style` ) VALUES  ('2', '注册登录的广告', '928', '450', '', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
DROP TABLE IF EXISTS `ecs_admin_action`;
CREATE TABLE `ecs_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('1', '0', 'goods', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('2', '0', 'cms_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('3', '0', 'users_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('4', '0', 'priv_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('5', '0', 'sys_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('6', '0', 'order_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('7', '0', 'promotion', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('8', '0', 'email', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('9', '0', 'templates_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('10', '0', 'db_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('11', '0', 'sms_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('21', '1', 'goods_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('22', '1', 'remove_back', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('23', '1', 'cat_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('24', '1', 'cat_drop', 'cat_manage');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('25', '1', 'attr_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('26', '1', 'brand_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('27', '1', 'comment_priv', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('84', '1', 'tag_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('30', '2', 'article_cat', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('31', '2', 'article_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('32', '2', 'shopinfo_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('33', '2', 'shophelp_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('34', '2', 'vote_priv', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('35', '7', 'topic_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('74', '4', 'template_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('73', '3', 'feedback_priv', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('38', '3', 'integrate_users', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('39', '3', 'sync_users', 'integrate_users');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('40', '3', 'users_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('41', '3', 'users_drop', 'users_manage');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('42', '3', 'user_rank', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('85', '3', 'surplus_manage', 'account_manage');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('43', '4', 'admin_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('44', '4', 'admin_drop', 'admin_manage');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('45', '4', 'allot_priv', 'admin_manage');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('46', '4', 'logs_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('47', '4', 'logs_drop', 'logs_manage');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('48', '5', 'shop_config', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('49', '5', 'ship_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('50', '5', 'payment', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('51', '5', 'shiparea_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('52', '5', 'area_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('53', '6', 'order_os_edit', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('54', '6', 'order_ps_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('55', '6', 'order_ss_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('56', '6', 'order_edit', 'order_os_edit');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('57', '6', 'order_view', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('58', '6', 'order_view_finished', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('59', '6', 'repay_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('60', '6', 'booking', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('61', '6', 'sale_order_stats', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('62', '6', 'client_flow_stats', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('78', '7', 'snatch_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('83', '7', 'ad_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('80', '7', 'gift_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('81', '7', 'card_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('70', '1', 'goods_type', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('82', '7', 'pack', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('79', '7', 'bonus_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('75', '5', 'friendlink', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('76', '5', 'db_backup', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('77', '5', 'db_renew', 'db_backup');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('86', '4', 'agency_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('87', '3', 'account_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('88', '5', 'flash_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('89', '5', 'navigator', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('90', '7', 'auction', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('91', '7', 'group_by', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('92', '7', 'favourable', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('93', '7', 'whole_sale', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('94', '1', 'goods_auto', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('95', '2', 'article_auto', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('96', '5', 'cron', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('97', '5', 'affiliate', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('98', '5', 'affiliate_ck', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('99', '8', 'attention_list', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('100', '8', 'email_list', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('101', '8', 'magazine_list', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('102', '8', 'view_sendlist', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('103', '1', 'virualcard', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('104', '7', 'package_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('105', '1', 'picture_batch', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('106', '1', 'goods_export', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('107', '1', 'goods_batch', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('108', '1', 'gen_goods_script', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('109', '5', 'sitemap', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('110', '5', 'file_priv', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('111', '5', 'file_check', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('112', '9', 'template_select', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('113', '9', 'template_setup', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('114', '9', 'library_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('115', '9', 'lang_edit', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('116', '9', 'backup_setting', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('117', '9', 'mail_template', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('118', '10', 'db_backup', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('119', '10', 'db_renew', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('120', '10', 'db_optimize', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('121', '10', 'sql_query', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('122', '10', 'convert', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('124', '11', 'sms_send', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('128', '7', 'exchange_goods', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('129', '6', 'delivery_view', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('130', '6', 'back_view', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('131', '5', 'reg_fields', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('132', '5', 'shop_authorized', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('133', '5', 'webcollect_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('134', '4', 'suppliers_manage', '');
INSERT INTO `ecs_admin_action` ( `action_id`, `parent_id`, `action_code`, `relevance` ) VALUES  ('135', '4', 'role_manage', '');
DROP TABLE IF EXISTS `ecs_admin_log`;
CREATE TABLE `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('1', '1384489721', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('2', '1384726868', '1', '添加广告位置: Home slide position', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('3', '1384726914', '1', '添加广告: 11111', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('4', '1384726959', '1', '添加广告: 222222222222', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('5', '1384726981', '1', '添加广告: 33333333', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('6', '1384751910', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('7', '1384751912', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('8', '1384751914', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('9', '1384751946', '1', '编辑广告位置: Home slide position', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('10', '1384751984', '1', '添加广告: 11111', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('11', '1384751998', '1', '添加广告: 22222', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('12', '1384752177', '1', '添加广告: 33', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('13', '1384758433', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('14', '1384758435', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('15', '1384758436', '1', '删除广告: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('16', '1384758478', '1', '编辑广告位置: Home slide position', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('17', '1384758526', '1', '添加广告: the number of one', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('18', '1384758552', '1', '添加广告: the number if two', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('19', '1384758581', '1', '添加广告: the number of three', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('20', '1384808832', '1', '删除商品分类: autumn', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('21', '1384808904', '1', '添加商品: qqqqqqqqqqqq', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('22', '1384849478', '1', '回收商品: qqqqqqqqqqqq', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('23', '1384849487', '1', '删除商品: qqqqqqqqqqqq', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('24', '1384849492', '1', '删除商品分类: winter', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('25', '1384849520', '1', '添加商品分类: SPRING/SUMMER', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('26', '1384849533', '1', '添加商品分类: AUTUMN/WINTER', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('27', '1384849558', '1', '添加商品分类: Dresses', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('28', '1384849572', '1', '添加商品分类: Tops', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('29', '1384849586', '1', '添加商品分类: Skirts', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('30', '1384849598', '1', '添加商品分类: Pants', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('31', '1384849612', '1', '添加商品分类: Dresses', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('32', '1384849624', '1', '添加商品分类: Skirts', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('33', '1384849635', '1', '添加商品分类: Tops', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('34', '1384849646', '1', '添加商品分类: Jackets', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('35', '1384851275', '1', '添加商品: qiu_skirts1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('36', '1384851292', '1', '添加商品: qiu_skirts2', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('37', '1384851309', '1', '添加商品: qiu_skirts3', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('38', '1384851328', '1', '添加商品: qiu_skirts4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('39', '1384851342', '1', '添加商品: qiu_skirts5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('40', '1384851356', '1', '添加商品: qiu_skirts6', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('41', '1384851376', '1', '添加商品: qiu_pants1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('42', '1384851403', '1', '添加商品: qiu_pants2', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('43', '1384851417', '1', '添加商品: qiu_pants3', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('44', '1384851429', '1', '添加商品: qiu_pants4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('45', '1384851443', '1', '添加商品: qiu_pants5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('46', '1384851462', '1', '添加商品: qiu_dresses1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('47', '1384851472', '1', '添加商品: qiu_dresses2', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('48', '1384851483', '1', '添加商品: qiu_dresses3', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('49', '1384851496', '1', '添加商品: qiu_dresses4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('50', '1384851508', '1', '添加商品: qiu_dresses5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('51', '1384851668', '1', '添加商品: qiu_tops1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('52', '1384851681', '1', '添加商品: qiu_tops2', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('53', '1384851694', '1', '添加商品: qiu_tops3', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('54', '1384851703', '1', '添加商品: qiu_tops4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('55', '1384851714', '1', '添加商品: qiu_tops5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('56', '1384851730', '1', '添加商品: chun_skirts1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('57', '1384851743', '1', '添加商品: chun_shirts2', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('58', '1384851761', '1', '添加商品: chun_skirts3', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('59', '1384851775', '1', '添加商品: chun_skirts4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('60', '1384851789', '1', '添加商品: chun_skirts5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('61', '1384851803', '1', '添加商品: chun_tops1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('62', '1384851814', '1', '添加商品: chun_tops2', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('63', '1384851823', '1', '添加商品: chun_tops3', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('64', '1384851832', '1', '添加商品: chun_tops4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('65', '1384851841', '1', '添加商品: chun_tops5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('66', '1384851855', '1', '添加商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('67', '1384851866', '1', '添加商品: chun_jackets2', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('68', '1384851879', '1', '添加商品: chun_jackets3', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('69', '1384851889', '1', '添加商品: chun_jackets4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('70', '1384851900', '1', '添加商品: chun_jackets5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('71', '1384851913', '1', '添加商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('72', '1384851927', '1', '添加商品: chun_dresses3', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('73', '1384851939', '1', '添加商品: chun_dresses4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('74', '1384851952', '1', '添加商品: chun_dresses5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('75', '1384986892', '1', '编辑商品: chun_dresses5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('76', '1384987064', '1', '删除友情链接: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('77', '1384987066', '1', '删除友情链接: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('78', '1384988353', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('79', '1384988405', '1', '编辑商品: chun_dresses5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('80', '1384988426', '1', '编辑商品: chun_dresses4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('81', '1384988437', '1', '编辑商品: chun_dresses3', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('82', '1385007705', '1', '编辑商品: chun_dresses5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('83', '1385007995', '1', '编辑商品: chun_dresses5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('84', '1385008525', '1', '添加属性: 颜色', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('85', '1385008532', '1', '添加属性: 尺寸', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('86', '1385008605', '1', '编辑属性: 颜色', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('87', '1385008641', '1', '编辑商品: chun_dresses5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('88', '1385008682', '1', '编辑属性: 颜色', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('89', '1385008690', '1', '编辑商品: chun_dresses5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('90', '1385009242', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('91', '1385009273', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('92', '1385412584', '1', '编辑属性: 尺寸', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('93', '1385413397', '1', '编辑商品: chun_dresses5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('94', '1385414557', '1', '编辑商品: chun_dresses5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('95', '1385414609', '1', '编辑商品: chun_dresses5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('96', '1385426051', '1', '编辑商品: chun_dresses5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('97', '1385426134', '1', '编辑商品: chun_dresses5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('98', '1385426174', '1', '编辑商品: Simple stretch Summer cutout skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('99', '1385426198', '1', '编辑商品: Simple stretch Summer cutout skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('100', '1385426226', '1', '编辑商品: Simple stretch Summer cutout skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('101', '1385444124', '1', '编辑商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('102', '1385444142', '1', '编辑商品: chun_jackets5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('103', '1385444164', '1', '编辑商品: chun_jackets4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('104', '1385444261', '1', '编辑商品: chun_dresses3', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('105', '1385444353', '1', '编辑商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('106', '1385444381', '1', '编辑商品: chun_jackets5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('107', '1385444398', '1', '编辑商品: chun_jackets4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('108', '1386454054', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('109', '1386454119', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('110', '1386459055', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('111', '1386459102', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('112', '1386459162', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('113', '1386459501', '1', '编辑商品: chun_dresses4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('114', '1386459517', '1', '编辑商品: chun_dresses3', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('115', '1386459739', '1', '编辑商品: chun_dresses4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('116', '1386459766', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('117', '1386459784', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('118', '1386459810', '1', '编辑商品: chun_dresses4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('119', '1386459877', '1', '编辑商品: chun_dresses4', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('120', '1386459950', '1', '编辑商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('121', '1386461945', '1', '编辑商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('122', '1386461975', '1', '编辑商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('123', '1386462104', '1', '编辑商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('124', '1386462163', '1', '编辑商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('125', '1386462331', '1', '编辑商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('126', '1386462504', '1', '编辑商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('127', '1386462545', '1', '编辑商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('128', '1386462604', '1', '编辑商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('129', '1386462704', '1', '编辑商品: chun_jackets1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('130', '1386462856', '1', '编辑商品: chun_jackets5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('131', '1386462899', '1', '编辑商品: chun_jackets5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('132', '1386462935', '1', '编辑商品: chun_jackets5', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('133', '1386532003', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('134', '1386539689', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('135', '1386540310', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('136', '1386540567', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('137', '1386540636', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('138', '1386625716', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('139', '1386627443', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('140', '1386627929', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('141', '1386627964', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('142', '1386627990', '1', '编辑商品: Simple stretch Summer skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('143', '1386631019', '1', '添加商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('144', '1386631059', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('145', '1386631111', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('146', '1386631176', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('147', '1386631264', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('148', '1386632067', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('149', '1386632250', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('150', '1386632651', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('151', '1386632796', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('152', '1386633930', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('153', '1386633996', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('154', '1386634109', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('155', '1386634247', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('156', '1386635772', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('157', '1386635929', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('158', '1386635945', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('159', '1386637964', '1', '编辑广告: the number of three', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('160', '1386703709', '1', '添加广告位置: 注册登录的广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('161', '1386703882', '1', '添加广告: 登录的广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('162', '1386703906', '1', '编辑广告: 登录的广告', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('163', '1386789942', '1', '编辑文章: 公司简介', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('164', '1386790377', '1', '编辑会员账号: anyongchao@qq.com', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('165', '1387153016', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('166', '1387154909', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('167', '1387155786', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('168', '1387155857', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('169', '1387156294', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('170', '1387156344', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('171', '1387156611', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('172', '1387156725', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('173', '1387216538', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('174', '1387216574', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('175', '1387223167', '1', '添加商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('176', '1387223292', '1', '编辑商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('177', '1387223342', '1', '编辑商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('178', '1387223381', '1', '编辑商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('179', '1387223425', '1', '编辑商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('180', '1387223462', '1', '编辑商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('181', '1387223489', '1', '编辑商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('182', '1387228114', '1', '编辑商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('183', '1387228325', '1', '编辑商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('184', '1387228370', '1', '编辑商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('185', '1387228420', '1', '编辑商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('186', '1387228453', '1', '编辑商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('187', '1387228483', '1', '编辑商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('188', '1387228727', '1', '编辑商品: The dress of S19', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('189', '1387243259', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('190', '1387243287', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('191', '1387317535', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('192', '1387328542', '1', '安装支付方式: paypal快速结帐', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('193', '1387328560', '1', '安装支付方式: paypal', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('194', '1387328720', '1', '添加地区: Amarican', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('195', '1387329230', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('196', '1387404818', '1', '编辑支付方式: paypal', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('197', '1387404829', '1', '卸载支付方式: paypal', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('198', '1387404836', '1', '卸载支付方式: paypal_ec', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('199', '1387404872', '1', '安装支付方式: paypal快速结帐', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('200', '1387409836', '1', '安装配送方式: EMS 国内邮政特快专递', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('201', '1387410092', '1', '安装配送方式: 上门取货', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('202', '1387410232', '1', '卸载配送方式: 上门取货', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('203', '1387410238', '1', '卸载配送方式: EMS 国内邮政特快专递', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('204', '1387410246', '1', '安装配送方式: 上门取货', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('205', '1387410272', '1', '添加配送区域: aa', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('206', '1387410287', '1', '编辑配送区域: aa', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('207', '1387410316', '1', '编辑配送区域: aa', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('208', '1387481779', '1', '编辑属性: 颜色', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('209', '1387481787', '1', '编辑属性: 尺寸', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('210', '1387481797', '1', '编辑属性: 颜色', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('211', '1387481818', '1', '编辑属性: 颜色', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('212', '1387481823', '1', '编辑属性: 尺寸', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('213', '1387482168', '1', '编辑属性: color', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('214', '1387482195', '1', '编辑属性: size', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('215', '1387735374', '1', '卸载配送方式: 上门取货', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('216', '1387735388', '1', '删除地区: 中国', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('217', '1387735397', '1', '添加地区: 11111', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('218', '1387735401', '1', '添加地区: 1111', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('219', '1387735430', '1', '添加地区: 22222', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('220', '1387735434', '1', '添加地区: 33333', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('221', '1387735438', '1', '添加地区: 44444', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('222', '1387735441', '1', '添加地区: 55555', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('223', '1387735444', '1', '添加地区: 66666', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('224', '1387735447', '1', '添加地区: 77777', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('225', '1387735495', '1', '添加地区: 88888', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('226', '1387735503', '1', '添加地区: 2222', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('227', '1387735505', '1', '添加地区: 3333', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('228', '1387735508', '1', '添加地区: 4444', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('229', '1387735511', '1', '添加地区: 5555', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('230', '1387735516', '1', '编辑地区: 33333', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('231', '1387735522', '1', '添加地区: 1111', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('232', '1387735524', '1', '添加地区: 2222', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('233', '1387735526', '1', '添加地区: 3333', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('234', '1387735528', '1', '添加地区: 4444', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('235', '1387735530', '1', '添加地区: 55555', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('236', '1387735537', '1', '添加地区: 1111', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('237', '1387735540', '1', '添加地区: 2222', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('238', '1387735542', '1', '添加地区: 3333', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('239', '1387735544', '1', '添加地区: 4444', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('240', '1387735545', '1', '添加地区: 5555', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('241', '1387735547', '1', '添加地区: 6666', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('242', '1387735557', '1', '添加地区: 1111', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('243', '1387735560', '1', '添加地区: 2222', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('244', '1387735561', '1', '添加地区: 3333', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('245', '1387735564', '1', '添加地区: 4444', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('246', '1387735566', '1', '添加地区: 5555', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('247', '1387735568', '1', '添加地区: 6666', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('248', '1387735570', '1', '添加地区: 7777', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('249', '1387735576', '1', '添加地区: 1111', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('250', '1387735578', '1', '添加地区: 2222', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('251', '1387735580', '1', '添加地区: 333', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('252', '1387735583', '1', '添加地区: 4444', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('253', '1387735586', '1', '添加地区: 5555', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('254', '1387735592', '1', '添加地区: 1111', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('255', '1387735594', '1', '添加地区: 2222', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('256', '1387735596', '1', '添加地区: 3333', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('257', '1387735598', '1', '添加地区: 4444', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('258', '1387735601', '1', '添加地区: 5555', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('259', '1387735606', '1', '添加地区: 1111', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('260', '1387735608', '1', '添加地区: 2222', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('261', '1387735610', '1', '添加地区: 3333', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('262', '1387735612', '1', '添加地区: 4444', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('263', '1387735615', '1', '添加地区: 5555', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('264', '1387735617', '1', '添加地区: 6666', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('265', '1387735645', '1', '添加地区: Austrlian', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('266', '1387735652', '1', '添加地区: 11111', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('267', '1387735655', '1', '添加地区: 22222', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('268', '1387735657', '1', '添加地区: 33333', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('269', '1387735660', '1', '添加地区: 44444', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('270', '1387735662', '1', '添加地区: 55555', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('271', '1387735664', '1', '添加地区: 66666', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('272', '1387735667', '1', '添加地区: 77777', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('273', '1387735848', '1', '卸载支付方式: paypal_ec', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('274', '1387735899', '1', '安装支付方式: paypal', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('275', '1387735942', '1', '安装支付方式: paypal快速结帐', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('276', '1387735985', '1', '编辑支付方式: paypal', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('277', '1387736060', '1', '安装配送方式: EMS 国内邮政特快专递', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('278', '1387736091', '1', '添加配送区域: asda', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('279', '1387737439', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('280', '1387737493', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('281', '1387756676', '1', '批量回收商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('282', '1387756686', '1', '批量回收商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('283', '1387756694', '1', '批量回收商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('284', '1387756703', '1', '批量回收商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('285', '1387756711', '1', '批量回收商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('286', '1387756722', '1', '批量删除商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('287', '1387756728', '1', '批量删除商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('288', '1387756734', '1', '批量删除商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('289', '1387756741', '1', '批量删除商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('290', '1387756747', '1', '批量删除商品: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('291', '1387756807', '1', '编辑商品: new cloth1', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('292', '1387829824', '1', '添加商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('293', '1387841262', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('294', '1387841540', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('295', '1387841595', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('296', '1387841612', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('297', '1387842129', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('298', '1387843624', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('299', '1387843700', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('300', '1387843770', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('301', '1387843828', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('302', '1387843896', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('303', '1387843954', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('304', '1387844014', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('305', '1387844074', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('306', '1387844212', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('307', '1387844310', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('308', '1387844567', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('309', '1387994929', '1', '添加商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('310', '1387995193', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('311', '1387995484', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('312', '1387995637', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('313', '1387995682', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('314', '1387995722', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('315', '1387995767', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('316', '1387995870', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('317', '1387995922', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('318', '1387996001', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('319', '1387996052', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('320', '1387996097', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('321', '1387996162', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('322', '1387996312', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('323', '1387996595', '1', '添加商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('324', '1387996688', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('325', '1387996745', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('326', '1387996785', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('327', '1387996818', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('328', '1387996857', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('329', '1387996941', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('330', '1387996998', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('331', '1387997040', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('332', '1387997081', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('333', '1387997107', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('334', '1387997140', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('335', '1387997188', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('336', '1387997327', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('337', '1387997468', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('338', '1387997505', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('339', '1387997547', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('340', '1387997581', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('341', '1387997621', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('342', '1387997722', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('343', '1387997804', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('344', '1387997820', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('345', '1387997885', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('346', '1387998505', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('347', '1387998522', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('348', '1387998567', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('349', '1387998585', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('350', '1387998642', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('351', '1388000095', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('352', '1388000132', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('353', '1388000157', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('354', '1388000186', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('355', '1388017989', '1', '编辑文章分类: System', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('356', '1388018012', '1', '编辑文章分类: ecshop_info', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('357', '1388018030', '1', '编辑文章分类: ecshop_help_classes', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('358', '1388018176', '1', '编辑文章: About Us', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('359', '1388018197', '1', '编辑文章: Content Us ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('360', '1388018226', '1', '编辑文章: Our Service', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('361', '1388018656', '1', '编辑文章: Customer Reviews', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('362', '1388018703', '1', '编辑文章: Fast Delivery', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('363', '1388018767', '1', '添加文章: Legal & Security', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('364', '1388018819', '1', '编辑文章: Legal & Security', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('365', '1388018832', '1', '编辑文章: About Us', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('366', '1388018852', '1', '编辑文章: Content Us ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('367', '1388018863', '1', '编辑文章: Content Us ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('368', '1388018876', '1', '编辑文章: Our Service', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('369', '1388018888', '1', '编辑文章: Customer Reviews', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('370', '1388018899', '1', '编辑文章: Fast Delivery', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('371', '1388019759', '1', '编辑文章: About Us', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('372', '1388019767', '1', '编辑文章: About Us', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('373', '1388019770', '1', '编辑文章: Content Us', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('374', '1388019787', '1', '编辑文章: Our Service', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('375', '1388019797', '1', '编辑文章: Customer Reviews', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('376', '1388019807', '1', '编辑文章: Customer Reviews', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('377', '1388019818', '1', '编辑文章: Fast Delivery', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('378', '1388019829', '1', '编辑文章: Legal & Security', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('379', '1388020864', '1', '编辑文章: Contact us', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('380', '1388020879', '1', '编辑文章: Legal & Security', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('381', '1388020889', '1', '编辑文章: About us', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('382', '1388020899', '1', '编辑文章: Our service', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('383', '1388020913', '1', '编辑文章: Customer reviews', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('384', '1388020930', '1', '编辑文章: Fast delivery', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('385', '1388021014', '1', '编辑广告: the number of three', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('386', '1388021037', '1', '编辑广告: the number of one', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('387', '1388021063', '1', '编辑广告: the number if two', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('388', '1388021178', '1', '编辑广告: the number of one', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('389', '1388021220', '1', '编辑广告: the number of one', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('390', '1388021287', '1', '编辑广告: the number of one', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('391', '1388021340', '1', '编辑广告: the number of three', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('392', '1388082197', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('393', '1388189801', '1', 'EditProduct: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('394', '1388189820', '1', 'EditProduct: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('395', '1388189840', '1', 'EditProduct: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('396', '1388189861', '1', 'EditProduct: Classic straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('397', '1388189880', '1', 'EditProduct: Wrap around top with pin-tuck detail', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('398', '1388192304', '1', 'EditProduct: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('399', '1388192449', '1', '编辑配送区域: asda', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('400', '1388346291', '1', '编辑商品: Wrap around top with pin-tuck detail', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('401', '1388346375', '1', '编辑商品: Wrap around top with pin-tuck detail', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('402', '1388351371', '1', '编辑商品: Wrap around top with pin-tuck detail', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('403', '1388352652', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('404', '1388352716', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('405', '1388352769', '1', '编辑商品: Classic straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('406', '1388352838', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('407', '1388354102', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('408', '1388354144', '1', '编辑商品: Wrap around top with pin-tuck detail', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('409', '1388354233', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('410', '1388354325', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('411', '1388355234', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('412', '1388356342', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('413', '1388356513', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('414', '1388356582', '1', '编辑商品: Classic straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('415', '1388356605', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('416', '1388356624', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('417', '1388359013', '1', '编辑商品: Wrap around top with pin-tuck detail', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('418', '1388359029', '1', '编辑商品: Wrap around top with pin-tuck detail', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('419', '1388359094', '1', '编辑商品: Wraparound straight skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('420', '1388359145', '1', '编辑商品: Floral pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('421', '1388359172', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('422', '1388428787', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('423', '1388431481', '1', '编辑配送方式: EMS 国内邮政特快专递', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('424', '1388431492', '1', '安装配送方式: 邮政快递包裹', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('425', '1388431630', '1', '添加地区: other_area', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('426', '1388431693', '1', '编辑配送区域: asda', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('427', '1388431856', '1', '添加配送区域: aaa', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('428', '1388431891', '1', '编辑配送区域: aaa', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('429', '1388431931', '1', '编辑配送区域: aaa', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('430', '1388431948', '1', '编辑配送区域: aaa', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('431', '1388448180', '1', '删除地区: other_area', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('432', '1388448182', '1', '删除地区: Austrlian', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('433', '1388448184', '1', '删除地区: Amarican', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('434', '1388448322', '1', '添加地区: America', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('435', '1388448346', '1', '删除地区: America', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('436', '1388451969', '1', '编辑商品: Polka dot pleated skirt', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('437', '1388705428', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('438', '1388712923', '1', '添加地区: A地址', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('439', '1388712932', '1', '添加地区: aa', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('440', '1388712937', '1', '添加地区: bb', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('441', '1388712942', '1', '添加地区: cc', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('442', '1388712947', '1', '添加地区: dd', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('443', '1388712951', '1', '添加地区: ee', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('444', '1388712954', '1', '添加地区: ff', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('445', '1388713054', '1', '编辑配送区域: asda', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('446', '1388713081', '1', '编辑配送区域: asda', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('447', '1388790067', '1', '删除地区: aa', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('448', '1388790069', '1', '删除地区: bb', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('449', '1388790072', '1', '删除地区: cc', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('450', '1388790074', '1', '删除地区: dd', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('451', '1388790076', '1', '删除地区: ee', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('452', '1388790077', '1', '删除地区: ff', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('453', '1388798365', '1', '删除地区: A地址', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('454', '1388798392', '1', '添加地区: Amarica', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('455', '1388798404', '1', '添加地区: Austrlia', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('456', '1388798457', '1', '删除地区: Austrlia', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('457', '1388798460', '1', '删除地区: Amarica', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('458', '1388798463', '1', '添加地区: Australia', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('459', '1388798488', '1', '添加地区: America', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('460', '1388945115', '1', '删除配送区域: asda', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('461', '1388945164', '1', '添加配送区域: America ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('462', '1388945176', '1', '添加配送区域: Australia  ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('463', '1388945197', '1', '删除配送区域: aaa', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('464', '1388945213', '1', '添加配送区域: America  ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('465', '1388945223', '1', '添加配送区域: Australia  ', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('466', '1389220763', '1', '卸载配送方式: EMS 国内邮政特快专递', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('467', '1389220769', '1', '卸载配送方式: 邮政快递包裹', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('468', '1389220772', '1', '安装配送方式: EMS express mail service', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('469', '1389220795', '1', '添加配送区域: eeee', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('470', '1389220808', '1', '安装配送方式: Postal shipping packing', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('471', '1389220818', '1', '添加配送区域: eeeeee', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('472', '1389222338', '1', '编辑配送区域: eeeeee', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('473', '1389222366', '1', '编辑配送区域: eeee', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('474', '1389223134', '1', '添加红包类型: 111111', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('475', '1389223331', '1', '卸载配送方式: EMS express mail service', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('476', '1389223335', '1', '卸载配送方式: Postal shipping packing', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('477', '1389223340', '1', '安装配送方式: EMS 国内邮政特快专递', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('478', '1389223374', '1', '添加配送区域: EMS', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('479', '1389223383', '1', '安装配送方式: 邮政快递包裹', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('480', '1389223411', '1', '添加配送区域: Post', '127.0.0.1');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('481', '1389675617', '1', '编辑商店设置: ', '123.119.73.13');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('482', '1389727915', '1', '删除地区: Australia', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('483', '1389727917', '1', '删除地区: America', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('484', '1389727926', '1', '添加地区: UNITED STATES', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('485', '1389727936', '1', '添加地区: UNITED KINGDOM', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('486', '1389727950', '1', '添加地区: ARGENTINA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('487', '1389727960', '1', '添加地区: AUSTRALIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('488', '1389727971', '1', '添加地区: AUSTRIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('489', '1389727980', '1', '添加地区: BAHAMAS', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('490', '1389727991', '1', '添加地区: BAHRAIN', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('491', '1389728000', '1', '添加地区: BELGIUM', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('492', '1389728009', '1', '添加地区: BERMUDA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('493', '1389728018', '1', '添加地区: BOSNIA AND HERZEGOVINA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('494', '1389728026', '1', '添加地区: BRAZIL', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('495', '1389728033', '1', '添加地区: BRUNEI DARUSSALAM', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('496', '1389728043', '1', '添加地区: BULGARIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('497', '1389728052', '1', '添加地区: CANADA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('498', '1389728060', '1', '添加地区: CAYMAN ISLANDS', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('499', '1389728068', '1', '添加地区: CHILE', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('500', '1389728075', '1', '添加地区: CHINA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('501', '1389728106', '1', '添加地区: COLOMBIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('502', '1389728111', '1', '添加地区: CROATIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('503', '1389728117', '1', '添加地区: CZECH REPUBLIC', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('504', '1389728123', '1', '添加地区: DENMARK', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('505', '1389728127', '1', '添加地区: ECUADOR', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('506', '1389728133', '1', '添加地区: EGYPT', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('507', '1389728140', '1', '添加地区: FINLAND', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('508', '1389728148', '1', '添加地区: FRANCE', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('509', '1389728152', '1', '添加地区: GERMANY', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('510', '1389728159', '1', '添加地区: GREECE', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('511', '1389728165', '1', '添加地区: GREENLAND', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('512', '1389728170', '1', '添加地区: GUAM', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('513', '1389728176', '1', '添加地区: GUAMGUATEMALA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('514', '1389728196', '1', '删除地区: GUAMGUATEMALA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('515', '1389728204', '1', '添加地区: GUATEMALA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('516', '1389728210', '1', '添加地区: HAITI', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('517', '1389728217', '1', '添加地区: HOLY SEE (VATICAN CITY)', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('518', '1389728224', '1', '添加地区: HONDURAS', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('519', '1389728232', '1', '添加地区: HONG KONG', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('520', '1389728238', '1', '添加地区: HUNGARY', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('521', '1389728244', '1', '添加地区: ICELAND', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('522', '1389728250', '1', '添加地区: INDIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('523', '1389728258', '1', '添加地区: INDONESIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('524', '1389728269', '1', '添加地区: IRELAND', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('525', '1389728273', '1', '添加地区: ISRAEL', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('526', '1389728279', '1', '添加地区: ITALY', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('527', '1389728285', '1', '添加地区: JAMAICA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('528', '1389728290', '1', '添加地区: JAPAN', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('529', '1389728296', '1', '添加地区: KUWAIT', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('530', '1389728302', '1', '添加地区: LATVIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('531', '1389728308', '1', '添加地区: LEBANON', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('532', '1389728316', '1', '添加地区: LIECHTENSTEIN', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('533', '1389728321', '1', '添加地区: LITHUANIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('534', '1389728326', '1', '添加地区: LUXEMBOURG', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('535', '1389728332', '1', '添加地区: MACAO', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('536', '1389728338', '1', '添加地区: MACEDONIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('537', '1389728344', '1', '添加地区: MALAYSIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('538', '1389728350', '1', '添加地区: MALTA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('539', '1389728356', '1', '添加地区: MEXICO', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('540', '1389728361', '1', '添加地区: MONACO', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('541', '1389728367', '1', '添加地区: NETHERLANDS', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('542', '1389728375', '1', '添加地区: NEW ZEALAND', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('543', '1389728380', '1', '添加地区: NORWAY', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('544', '1389728386', '1', '添加地区: OMAN', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('545', '1389728391', '1', '添加地区: PAKISTAN', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('546', '1389728399', '1', '添加地区: PERU', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('547', '1389728405', '1', '添加地区: PHILIPPINES', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('548', '1389728410', '1', '添加地区: POLAND', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('549', '1389728417', '1', '添加地区: PORTUGAL', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('550', '1389728425', '1', '添加地区: PUERTO RICO', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('551', '1389728432', '1', '添加地区: QATAR', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('552', '1389728439', '1', '添加地区: ROMANI', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('553', '1389728446', '1', '添加地区: RUSSIAN FEDERATION', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('554', '1389728453', '1', '添加地区: SAUDI ARABIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('555', '1389728460', '1', '添加地区: SERBIA AND MONTENEGRO', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('556', '1389728466', '1', '添加地区: SINGAPORE', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('557', '1389728471', '1', '添加地区: SLOVAKIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('558', '1389728477', '1', '添加地区: SLOVENIA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('559', '1389728484', '1', '添加地区: SOUTH AFRICA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('560', '1389728491', '1', '添加地区: SPAIN', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('561', '1389728498', '1', '添加地区: SRI LANKA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('562', '1389728505', '1', '添加地区: SWEDEN', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('563', '1389728511', '1', '添加地区: SWITZERLAND', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('564', '1389728517', '1', '添加地区: TAIWAN', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('565', '1389728523', '1', '添加地区: THAILAND', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('566', '1389728530', '1', '添加地区: TURKEY', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('567', '1389728536', '1', '添加地区: UKRAINE', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('568', '1389728543', '1', '添加地区: UNITED ARAB EMIRATES', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('569', '1389728620', '1', '添加地区: VENEZUELA', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('570', '1389728626', '1', '添加地区: VIETNAM', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('571', '1389728633', '1', '添加地区: VIRGIN ISLANDS, BRITISH', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('572', '1389728654', '1', '卸载配送方式: 邮政快递包裹', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('573', '1389728686', '1', '卸载配送方式: EMS 国内邮政特快专递', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('574', '1389729303', '1', '安装配送方式: 国际联邦快递公司(FedEx)', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('575', '1389729581', '1', '添加配送区域: FedEx shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('576', '1389750448', '1', '编辑商品: Floral pleated skirt', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('577', '1389750551', '1', '编辑商品: Floral pleated skirt', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('578', '1389750589', '1', '编辑商品: Floral pleated skirt', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('579', '1389827048', '1', '安装配送方式: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('580', '1389827297', '1', '卸载配送方式: 国际联邦快递公司(FedEx)', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('581', '1389827303', '1', '安装配送方式: Express shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('582', '1389827468', '1', '卸载配送方式: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('583', '1389827472', '1', '卸载配送方式: Express shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('584', '1389827478', '1', '安装配送方式: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('585', '1389827486', '1', '安装配送方式: Express shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('586', '1389828796', '1', '添加配送区域: aaaaaaaaa', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('587', '1389829545', '1', '添加配送区域: 1111', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('588', '1389831690', '1', '卸载配送方式: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('589', '1389831696', '1', '卸载配送方式: Express shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('590', '1389831701', '1', '安装配送方式: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('591', '1389831719', '1', '添加配送区域: 1111', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('592', '1389831731', '1', '安装配送方式: Express shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('593', '1389831743', '1', '添加配送区域: dfdfdf', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('594', '1389832448', '1', '删除配送区域: dfdfdf', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('595', '1389832654', '1', '添加配送区域: Express shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('596', '1389832706', '1', '编辑配送区域: Express shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('597', '1389832744', '1', '删除配送区域: 1111', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('598', '1389832799', '1', '添加配送区域: Ordinary ', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('599', '1389834650', '1', '卸载支付方式: paypal_ec', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('600', '1389834965', '1', '卸载配送方式: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('601', '1389834994', '1', '安装配送方式: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('602', '1389835200', '1', '添加配送区域: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('603', '1389835300', '1', '卸载配送方式: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('604', '1389835799', '1', '安装配送方式: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('605', '1389835901', '1', '卸载配送方式: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('606', '1389836086', '1', '安装配送方式: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('607', '1389836290', '1', '添加配送区域: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('608', '1389836316', '1', '编辑配送区域: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('609', '1389836738', '1', '添加红包类型: 优惠码', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('610', '1389836757', '1', '添加用户红包: 1000044748', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('611', '1389838600', '1', '安装配送方式: Express', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('612', '1389838645', '1', '添加配送区域: Express shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('613', '1389838704', '1', '编辑配送区域: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('614', '1389839199', '1', '卸载配送方式: Ordinary shipping', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('615', '1389839204', '1', '卸载配送方式: Express', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('616', '1389839265', '1', '安装配送方式: Ordinary shipping (Free)', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('617', '1389839281', '1', '添加配送区域: Ordinary shipping (Free)', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('618', '1389839297', '1', '安装配送方式: Express shipping ($10.00 AUD)', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('619', '1389839311', '1', '添加配送区域: Express shipping ($10.00 AUD)', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('620', '1389839383', '1', '编辑配送区域: Express shipping ($10.00 AUD)', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('621', '1389839469', '1', '编辑配送区域: Ordinary shipping (Free)', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('622', '1389841755', '1', '编辑商品: Polka dot pleated skirt', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('623', '1389844601', '1', '卸载支付方式: paypal', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('624', '1389844853', '1', '安装支付方式: Pay with Credit Card', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('625', '1389844906', '1', '安装支付方式: Pay wih Paypal', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('626', '1389844916', '1', '编辑支付方式: Pay with Credit Card', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('627', '1389845196', '1', '卸载支付方式: paypal_ec', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('628', '1389845200', '1', '卸载支付方式: paypal', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('629', '1389845267', '1', '安装支付方式: Pay with Paypal', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('630', '1389845296', '1', '安装支付方式: Pay wih Credit Card', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('631', '1389853459', '1', '编辑配送区域: Ordinary shipping (Free)', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('632', '1389853724', '1', '编辑配送区域: Express shipping ($10.00 AUD)', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('633', '1389854726', '1', '编辑商品: Polka dot pleated skirt', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('634', '1389854933', '1', '编辑商品: Polka dot pleated skirt', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('635', '1389855041', '1', '编辑商品: Floral pleated skirt', '114.246.168.125');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('636', '1389922011', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('637', '1389922032', '1', '编辑商品: Floral pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('638', '1389922046', '1', '编辑商品: Wraparound straight skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('639', '1389922058', '1', '编辑商品: Classic straight skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('640', '1389924136', '1', '编辑文章分类: ecshop_help_classes', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('641', '1389924187', '1', '编辑文章: terms', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('642', '1389975768', '1', '编辑商品: Polka dot pleated skirt', '221.217.45.239');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('643', '1389986548', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('644', '1389986676', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('645', '1389986856', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('646', '1389987212', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('647', '1389990522', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('648', '1389996112', '1', '删除订单: 2014011673443', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('649', '1389996112', '1', '删除订单: 2014011680101', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('650', '1389996343', '1', '添加红包类型: 优惠码1', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('651', '1389996377', '1', '添加用户红包: 1000232434', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('652', '1389997239', '1', '添加商品: new clothing', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('653', '1389998288', '1', '编辑商品: Floral pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('654', '1389998594', '1', '删除商品分类: Pants', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('655', '1389998634', '1', '删除商品分类: ', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('656', '1389998652', '1', '删除商品分类: ', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('657', '1389998753', '1', '添加商品分类: new classes', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('658', '1390000491', '1', '编辑广告: the number of three', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('659', '1390000573', '1', '添加广告: 1111', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('660', '1390000621', '1', '删除广告: ', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('661', '1390004349', '1', '编辑支付方式: Pay with Paypal', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('662', '1390004467', '1', '编辑支付方式: Pay wih Credit Card', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('663', '1390017175', '1', '卸载配送方式: Express shipping ($10.00 AUD)', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('664', '1390019605', '1', '回收商品: new clothing', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('665', '1390070841', '1', '编辑文章: Legal & Security', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('666', '1390070920', '1', '编辑文章: About', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('667', '1390071004', '1', '编辑文章: Contact', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('668', '1390071060', '1', '编辑文章: Where to buy ', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('669', '1390071091', '1', '编辑文章: Shipping', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('670', '1390071106', '1', '删除文章: Fast delivery', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('671', '1390071266', '1', '编辑文章: Terms & Conditions', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('672', '1390082035', '1', '卸载配送方式: Ordinary shipping (Free)', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('673', '1390082040', '1', '安装配送方式: Ordinary shipping (Free)', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('674', '1390082096', '1', '添加配送区域: Ordinary shipping', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('675', '1390082222', '1', '安装配送方式: Express shipping ($10.00 AUD)', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('676', '1390082425', '1', '卸载配送方式: Ordinary shipping (Free)', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('677', '1390082429', '1', '卸载配送方式: Express shipping ($10.00 AUD)', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('678', '1390082760', '1', '安装配送方式: Ordinary shipping (Free)', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('679', '1390082776', '1', '添加配送区域: sdfds', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('680', '1390082797', '1', '编辑配送区域: sdfds', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('681', '1390082830', '1', '删除配送区域: sdfds', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('682', '1390082944', '1', '安装配送方式: 顺丰速运', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('683', '1390083114', '1', '安装配送方式: 中通速递', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('684', '1390083141', '1', '安装配送方式: 圆通速递', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('685', '1390083330', '1', '添加配送区域: Ordinary shipping (Free)', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('686', '1390083340', '1', '卸载配送方式: 中通速递', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('687', '1390083345', '1', '卸载配送方式: 圆通速递', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('688', '1390083350', '1', '卸载配送方式: 顺丰速运', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('689', '1390083527', '1', '编辑配送区域: Ordinary shipping (Free)', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('690', '1390083550', '1', '编辑配送区域: Ordinary shipping (Free)', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('691', '1390083573', '1', '删除配送区域: Ordinary shipping (Free)', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('692', '1390083620', '1', '添加配送区域: aaaa', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('693', '1390085633', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('694', '1390086473', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('695', '1390088897', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('696', '1390089132', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('697', '1390089194', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('698', '1390089368', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('699', '1390090590', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('700', '1390090698', '1', '编辑商品: Polka dot pleated skirt', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('701', '1390093191', '1', '卸载配送方式: Ordinary shipping (Free)', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('702', '1390093236', '1', '安装配送方式: 申通快递', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('703', '1390093331', '1', '添加配送区域: shentong', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('704', '1390094802', '1', '卸载配送方式: 申通快递', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('705', '1390094812', '1', '安装配送方式: Ordinary shipping', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('706', '1390095048', '1', '添加配送区域: Ordinary shipping', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('707', '1390099485', '1', '编辑配送区域: Ordinary shipping', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('708', '1390102500', '1', '卸载配送方式: Ordinary shipping', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('709', '1390102505', '1', '安装配送方式: Default shipping', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('710', '1390102711', '1', '添加配送区域: Default shipping', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('711', '1390102941', '1', '删除商品分类: new classes', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('712', '1390103007', '1', '编辑文章: Where to buy ', '114.250.72.170');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('713', '1390118218', '1', '编辑商品分类: AUTUMN/WINTER', '221.217.45.239');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('714', '1390118241', '1', '编辑商品分类: AUTUMN/WINTER', '221.217.45.239');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('715', '1390118253', '1', '编辑商品分类: SPRING/SUMMER', '221.217.45.239');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('716', '1390118274', '1', '编辑商品分类: Jackets', '221.217.45.239');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('717', '1390118284', '1', '编辑商品分类: Tops', '221.217.45.239');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('718', '1390118296', '1', '编辑商品分类: Dresses', '221.217.45.239');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('719', '1390118307', '1', '编辑商品分类: Skirts', '221.217.45.239');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('720', '1390118319', '1', '编辑商品分类: Dresses', '221.217.45.239');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('721', '1390118329', '1', '编辑商品分类: Tops', '221.217.45.239');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('722', '1390118339', '1', '编辑商品分类: Skirts', '221.217.45.239');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('723', '1390119049', '1', '编辑文章: Shipping', '221.217.45.239');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('724', '1392083359', '1', '编辑商店设置: ', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('725', '1392083380', '1', 'Edit Shop config: ', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('726', '1392083430', '1', 'Edit Shop config: ', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('727', '1392139662', '1', '添加商品: new clothing test', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('728', '1392139810', '1', '添加商品: Tops Test', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('729', '1392140876', '1', '添加商品: Test top', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('730', '1392242552', '1', '回收商品: Tops Test', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('731', '1392242686', '1', '编辑商品: Test top', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('732', '1392242723', '1', '编辑商品: new clothing test', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('733', '1392242850', '1', '编辑商品: Test top', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('734', '1392242910', '1', '编辑商品: Test top', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('735', '1392242950', '1', '编辑商品: Test top', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('736', '1392243283', '1', '编辑商品: Test top', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('737', '1392243344', '1', '编辑商品: Test top', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('738', '1392243502', '1', '编辑商品: Test top', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('739', '1392243615', '1', '编辑商品: Test top', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('740', '1392243940', '1', '编辑商品: Test top', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('741', '1392250768', '1', '编辑会员账号: name13920981915371', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('742', '1392250921', '1', '编辑会员账号: name13920981915371', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('743', '1392252978', '1', '编辑商品: new clothing test', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('744', '1392253001', '1', '编辑商品: new clothing test', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('745', '1392253076', '1', '编辑商品: test dress', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('746', '1392253110', '1', '编辑商品: test dress', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('747', '1392253438', '1', '编辑商品: test dress', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('748', '1392253653', '1', '编辑商品: test dress', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('749', '1392253796', '1', '编辑商品: test dress', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('750', '1392253873', '1', '编辑商品: test dress', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('751', '1392253917', '1', '编辑商品: test dress', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('752', '1392254080', '1', '编辑商品: test dress', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('753', '1392254216', '1', '编辑商品: test dress', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('754', '1392254419', '1', '编辑商品: test dress', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('755', '1392254491', '1', '编辑商品: test dress', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('756', '1392254567', '1', '编辑商品: test dress', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('757', '1392254619', '1', '编辑商品: test dress', '124.65.167.30');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('758', '1393391658', '1', '添加商品: Tops T03 ', '219.142.228.45');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('759', '1393392456', '1', '编辑商品: Tops T03 ', '219.142.228.45');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('760', '1393393189', '1', '编辑商品: Tops T03 ', '219.142.228.45');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('761', '1393394148', '1', '编辑商品: Tops T03 ', '219.142.228.45');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('762', '1393394480', '1', '编辑商品: Tops T03 ', '219.142.228.45');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('763', '1393395132', '1', '编辑商品: Tops T03 ', '219.142.228.45');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('764', '1393397133', '1', '编辑商品: Tops T03 ', '219.142.228.45');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('765', '1393397219', '1', '编辑商品: Tops T03 ', '219.142.228.45');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('766', '1393534207', '1', '编辑商品: Tops T03 ', '114.248.125.145');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('767', '1393534305', '1', '编辑商品: Tops T03 ', '114.248.125.145');
INSERT INTO `ecs_admin_log` ( `log_id`, `log_time`, `user_id`, `log_info`, `ip_address` ) VALUES  ('768', '1393534628', '1', '编辑商店设置: ', '114.248.125.145');
DROP TABLE IF EXISTS `ecs_admin_message`;
CREATE TABLE `ecs_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `receiver_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sent_time` int(11) unsigned NOT NULL DEFAULT '0',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0',
  `readed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_admin_user`;
CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_admin_user` ( `user_id`, `user_name`, `email`, `password`, `ec_salt`, `add_time`, `last_login`, `last_ip`, `action_list`, `nav_list`, `lang_type`, `agency_id`, `suppliers_id`, `todolist`, `role_id` ) VALUES  ('1', 'anyongchao', '511214939@qq.com', '1fb5bc8bed9ee35e6de302d093c0f5c3', '5461', '1384397542', '1393549062', '111.195.94.233', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', '', '');
DROP TABLE IF EXISTS `ecs_adsense`;
CREATE TABLE `ecs_adsense` (
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_affiliate_log`;
CREATE TABLE `ecs_affiliate_log` (
  `log_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(10) NOT NULL DEFAULT '0',
  `separate_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_agency`;
CREATE TABLE `ecs_agency` (
  `agency_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL,
  PRIMARY KEY (`agency_id`),
  KEY `agency_name` (`agency_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_area_region`;
CREATE TABLE `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3478');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3479');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3480');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3481');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3482');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3483');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3484');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3485');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3486');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3487');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3488');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3489');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3490');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3491');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3492');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3493');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3494');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3495');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3496');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3497');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3498');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3499');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3500');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3501');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3502');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3503');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3504');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3505');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3506');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3508');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3509');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3510');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3511');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3512');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3513');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3514');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3515');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3516');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3517');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3518');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3519');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3520');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3521');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3522');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3523');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3524');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3525');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3526');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3527');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3528');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3529');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3530');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3531');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3532');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3533');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3534');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3535');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3536');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3537');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3538');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3539');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3540');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3541');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3542');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3543');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3544');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3545');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3546');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3547');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3548');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3549');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3550');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3551');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3552');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3553');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3554');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3555');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3556');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('17', '3557');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3478');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3479');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3480');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3481');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3482');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3483');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3484');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3485');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3486');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3487');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3488');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3489');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3490');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3491');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3492');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3493');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3494');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3495');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3496');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3497');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3498');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3499');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3500');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3501');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3502');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3503');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3504');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3505');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3506');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3508');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3509');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3510');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3511');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3512');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3513');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3514');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3515');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3516');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3517');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3518');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3519');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3520');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3521');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3522');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3523');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3524');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3525');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3526');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3527');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3528');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3529');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3530');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3531');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3532');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3533');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3534');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3535');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3536');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3537');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3538');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3539');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3540');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3541');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3542');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3543');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3544');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3545');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3546');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3547');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3548');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3549');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3550');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3551');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3552');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3553');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3554');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3555');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3556');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3557');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3558');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3559');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3560');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3561');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3562');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3563');
INSERT INTO `ecs_area_region` ( `shipping_area_id`, `region_id` ) VALUES  ('29', '3564');
DROP TABLE IF EXISTS `ecs_article`;
CREATE TABLE `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('3', '2', 'Shipping', '<p><a href=\"http://kipanddan.com/an_website/article.php?id=4\">Shipping</a><a href=\"http://kipanddan.com/an_website/article.php?id=4\">Shipping</a><a href=\"http://kipanddan.com/an_website/article.php?id=4\">Shipping</a><a href=\"http://kipanddan.com/an_website/article.php?id=4\">Shipping</a><a href=\"http://kipanddan.com/an_website/article.php?id=4\">Shipping</a><a href=\"http://kipanddan.com/an_website/article.php?id=4\">Shipping</a><a href=\"http://kipanddan.com/an_website/article.php?id=4\">Shipping</a><a href=\"http://kipanddan.com/an_website/article.php?id=4\">S</a></p>', '', '', '', '0', '1', '1384397542', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('2', '2', 'Where to buy ', '<p><a href=\"http://kipanddan.com/an_website/article.php?id=1\">Where to buy</a> <a href=\"http://kipanddan.com/an_website/article.php?id=1\">Where to buy</a> <a href=\"http://kipanddan.com/an_website/article.php?id=1\">Where to buy</a> <a href=\"http://kipanddan.com/an_website/article.php?id=1\">Where to</a></p>', '', '', '', '0', '1', '1384397542', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('5', '2', 'Contact', '<p>Content Us Content Us Content Us Content Us Content Us Content Us Content Us Content Us Content Us Content Us Content Us</p>', '', '', '', '0', '1', '1384397542', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('1', '2', 'About', '<p>About UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout UsAbout Us</p>', '', '', '', '0', '1', '1384397542', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('6', '-1', 'terms', '', '', '', '', '0', '1', '1384397542', '', '0', 'http://', '');
INSERT INTO `ecs_article` ( `article_id`, `cat_id`, `title`, `content`, `author`, `author_email`, `keywords`, `article_type`, `is_open`, `add_time`, `file_url`, `open_type`, `link`, `description` ) VALUES  ('4', '2', 'Terms & Conditions', '<p><a href=\"http://kipanddan.com/an_website/article.php?id=3\">Terms &amp; Conditions</a>  		  <a href=\"http://kipanddan.com/an_website/article.php?id=3\">Terms &amp; Conditions</a>  		  <a href=\"http://kipanddan.com/an_website/article.php?id=3\">Terms &amp; Conditions</a>  		  <a href=\"http://kipanddan.com/an_website/article.php?id=3\">Terms &amp; Conditions</a>  		  <a href=\"http://kipanddan.com/an_website/article.php?id=3\">Terms &amp; Conditions</a>  		  <a href=\"http://kipanddan.com/an_website/article.php?id=3\">Terms &amp; Conditions</a></p>', '', '', '', '0', '1', '1388018767', '', '0', 'http://', '');
DROP TABLE IF EXISTS `ecs_article_cat`;
CREATE TABLE `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('1', 'System', '2', '', '系统保留分类', '50', '0', '0');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('2', 'ecshop_info', '3', '', '网店信息分类', '50', '0', '1');
INSERT INTO `ecs_article_cat` ( `cat_id`, `cat_name`, `cat_type`, `keywords`, `cat_desc`, `sort_order`, `show_in_nav`, `parent_id` ) VALUES  ('3', 'ecshop_help_classes', '4', '', '网店帮助分类', '50', '0', '1');
DROP TABLE IF EXISTS `ecs_attribute`;
CREATE TABLE `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('1', '1', 'color', '0', '1', '', '0', '0', '1', '0');
INSERT INTO `ecs_attribute` ( `attr_id`, `cat_id`, `attr_name`, `attr_input_type`, `attr_type`, `attr_values`, `attr_index`, `sort_order`, `is_linked`, `attr_group` ) VALUES  ('2', '1', 'size', '0', '1', '', '0', '0', '0', '0');
DROP TABLE IF EXISTS `ecs_auction_log`;
CREATE TABLE `ecs_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_id` mediumint(8) unsigned NOT NULL,
  `bid_user` mediumint(8) unsigned NOT NULL,
  `bid_price` decimal(10,2) unsigned NOT NULL,
  `bid_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `act_id` (`act_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_auto_manage`;
CREATE TABLE `ecs_auto_manage` (
  `item_id` mediumint(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`item_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_back_goods`;
CREATE TABLE `ecs_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `back_id` mediumint(8) unsigned DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `back_id` (`back_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_back_order`;
CREATE TABLE `ecs_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `return_time` int(10) unsigned DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`back_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_bonus_type`;
CREATE TABLE `ecs_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_bonus_type` ( `type_id`, `type_name`, `type_money`, `send_type`, `min_amount`, `max_amount`, `send_start_date`, `send_end_date`, `use_start_date`, `use_end_date`, `min_goods_amount` ) VALUES  ('1', '优惠码', '5.00', '3', '0.00', '0.00', '1389772800', '1392451200', '1388476800', '1393488000', '50.00');
INSERT INTO `ecs_bonus_type` ( `type_id`, `type_name`, `type_money`, `send_type`, `min_amount`, `max_amount`, `send_start_date`, `send_end_date`, `use_start_date`, `use_end_date`, `min_goods_amount` ) VALUES  ('2', '优惠码1', '20.00', '3', '0.00', '0.00', '1389945600', '1392624000', '1388476800', '1393488000', '0.00');
DROP TABLE IF EXISTS `ecs_booking_goods`;
CREATE TABLE `ecs_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_desc` varchar(255) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `booking_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dispose_user` varchar(30) NOT NULL DEFAULT '',
  `dispose_time` int(10) unsigned NOT NULL DEFAULT '0',
  `dispose_note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_brand`;
CREATE TABLE `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_card`;
CREATE TABLE `ecs_card` (
  `card_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_img` varchar(255) NOT NULL DEFAULT '',
  `card_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `card_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_cart`;
CREATE TABLE `ecs_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_cart` ( `rec_id`, `user_id`, `session_id`, `goods_id`, `goods_sn`, `product_id`, `goods_name`, `market_price`, `goods_price`, `goods_number`, `goods_attr`, `is_real`, `extension_code`, `parent_id`, `rec_type`, `is_gift`, `is_shipping`, `can_handsel`, `goods_attr_id` ) VALUES  ('4', '0', '8b3b825db734a888783e20fa0629a08b', '75', 'T03', '0', 'Tops T03 ', '0.15', '0.10', '1', 'color:Turquoise \nsize:8 \n', '1', '', '0', '0', '0', '0', '0', '162,159');
DROP TABLE IF EXISTS `ecs_cat_recommend`;
CREATE TABLE `ecs_cat_recommend` (
  `cat_id` smallint(5) NOT NULL,
  `recommend_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`cat_id`,`recommend_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_category`;
CREATE TABLE `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('3', 'SPRING/SUMMER', '', '', '0', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('4', 'AUTUMN/WINTER', '', '', '0', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('5', 'Dresses', '', '', '4', '7', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('6', 'Tops', '', '', '4', '8', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('7', 'Skirts', '', '', '4', '9', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('9', 'Dresses', '', '', '3', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('10', 'Skirts', '', '', '3', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('11', 'Tops', '', '', '3', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `ecs_category` ( `cat_id`, `cat_name`, `keywords`, `cat_desc`, `parent_id`, `sort_order`, `template_file`, `measure_unit`, `show_in_nav`, `style`, `is_show`, `grade`, `filter_attr` ) VALUES  ('12', 'Jackets', '', '', '3', '3', '', '', '0', '', '1', '0', '');
DROP TABLE IF EXISTS `ecs_collect_goods`;
CREATE TABLE `ecs_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `color_id` mediumint(8) unsigned NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_collect_goods` ( `rec_id`, `user_id`, `goods_id`, `color_id`, `add_time`, `is_attention` ) VALUES  ('28', '36', '66', '21', '1390007411', '0');
INSERT INTO `ecs_collect_goods` ( `rec_id`, `user_id`, `goods_id`, `color_id`, `add_time`, `is_attention` ) VALUES  ('37', '36', '70', '78', '1390166845', '0');
INSERT INTO `ecs_collect_goods` ( `rec_id`, `user_id`, `goods_id`, `color_id`, `add_time`, `is_attention` ) VALUES  ('36', '38', '70', '78', '1390118111', '0');
INSERT INTO `ecs_collect_goods` ( `rec_id`, `user_id`, `goods_id`, `color_id`, `add_time`, `is_attention` ) VALUES  ('40', '36', '69', '61', '1390193888', '0');
INSERT INTO `ecs_collect_goods` ( `rec_id`, `user_id`, `goods_id`, `color_id`, `add_time`, `is_attention` ) VALUES  ('39', '36', '70', '77', '1390166862', '0');
INSERT INTO `ecs_collect_goods` ( `rec_id`, `user_id`, `goods_id`, `color_id`, `add_time`, `is_attention` ) VALUES  ('38', '36', '70', '76', '1390166857', '0');
INSERT INTO `ecs_collect_goods` ( `rec_id`, `user_id`, `goods_id`, `color_id`, `add_time`, `is_attention` ) VALUES  ('34', '30', '68', '43', '1390078656', '0');
INSERT INTO `ecs_collect_goods` ( `rec_id`, `user_id`, `goods_id`, `color_id`, `add_time`, `is_attention` ) VALUES  ('35', '30', '68', '42', '1390102888', '0');
INSERT INTO `ecs_collect_goods` ( `rec_id`, `user_id`, `goods_id`, `color_id`, `add_time`, `is_attention` ) VALUES  ('32', '30', '68', '40', '1390078650', '0');
INSERT INTO `ecs_collect_goods` ( `rec_id`, `user_id`, `goods_id`, `color_id`, `add_time`, `is_attention` ) VALUES  ('41', '36', '69', '68', '1390193899', '0');
INSERT INTO `ecs_collect_goods` ( `rec_id`, `user_id`, `goods_id`, `color_id`, `add_time`, `is_attention` ) VALUES  ('42', '50', '68', '43', '1392137416', '0');
DROP TABLE IF EXISTS `ecs_comment`;
CREATE TABLE `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_crons`;
CREATE TABLE `ecs_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL DEFAULT '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `run_once` tinyint(1) NOT NULL DEFAULT '0',
  `allow_ip` varchar(100) NOT NULL DEFAULT '',
  `alow_files` varchar(255) NOT NULL,
  PRIMARY KEY (`cron_id`),
  KEY `nextime` (`nextime`),
  KEY `enable` (`enable`),
  KEY `cron_code` (`cron_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_delivery_goods`;
CREATE TABLE `ecs_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `extension_code` varchar(30) DEFAULT NULL,
  `parent_id` mediumint(8) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `delivery_id` (`delivery_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_delivery_goods` ( `rec_id`, `delivery_id`, `goods_id`, `product_id`, `product_sn`, `goods_name`, `brand_name`, `goods_sn`, `is_real`, `extension_code`, `parent_id`, `send_number`, `goods_attr` ) VALUES  ('1', '1', '67', '0', '', 'Classic straight skirt', '', 'S19', '1', '', '0', '1', 'color:Black with colourful floral pattern-lined \nsize:14 \n');
INSERT INTO `ecs_delivery_goods` ( `rec_id`, `delivery_id`, `goods_id`, `product_id`, `product_sn`, `goods_name`, `brand_name`, `goods_sn`, `is_real`, `extension_code`, `parent_id`, `send_number`, `goods_attr` ) VALUES  ('2', '2', '67', '0', '', 'Classic straight skirt', '', 'S19', '1', '', '0', '1', 'color:Black with colourful floral pattern-lined \nsize:10 \n');
DROP TABLE IF EXISTS `ecs_delivery_order`;
CREATE TABLE `ecs_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`delivery_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_delivery_order` ( `delivery_id`, `delivery_sn`, `order_sn`, `order_id`, `invoice_no`, `add_time`, `shipping_id`, `shipping_name`, `user_id`, `action_user`, `consignee`, `address`, `country`, `province`, `city`, `district`, `sign_building`, `email`, `zipcode`, `tel`, `mobile`, `best_time`, `postscript`, `how_oos`, `insure_fee`, `shipping_fee`, `update_time`, `suppliers_id`, `status`, `agency_id` ) VALUES  ('1', '20140115133245365', '2014011576400', '20', '', '1389734907', '10', '国际联邦快递公司(FedEx)', '30', 'anyongchao', '', 'luoerzhuang', '3484', '0', '0', '0', '', '511214939@qq.com', '056600', '1222', '', '', '', '等待所有商品备齐后再发', '0.00', '0.00', '1389735150', '0', '2', '0');
INSERT INTO `ecs_delivery_order` ( `delivery_id`, `delivery_sn`, `order_sn`, `order_id`, `invoice_no`, `add_time`, `shipping_id`, `shipping_name`, `user_id`, `action_user`, `consignee`, `address`, `country`, `province`, `city`, `district`, `sign_building`, `email`, `zipcode`, `tel`, `mobile`, `best_time`, `postscript`, `how_oos`, `insure_fee`, `shipping_fee`, `update_time`, `suppliers_id`, `status`, `agency_id` ) VALUES  ('2', '20140116201959153', '2014011617052', '37', '', '1389845798', '22', 'Express shipping ($10.00 AUD)', '30', 'anyongchao', '', 'Beijing Beiqijia Baimiao 3', '3478', '0', '0', '0', '', '511214939@qq.com', '100000', '1510496676', '', '', '', '等待所有商品备齐后再发', '0.00', '10.00', '1389845940', '0', '2', '0');
DROP TABLE IF EXISTS `ecs_email_list`;
CREATE TABLE `ecs_email_list` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_email_sendlist`;
CREATE TABLE `ecs_email_sendlist` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `template_id` mediumint(8) NOT NULL,
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `pri` tinyint(10) NOT NULL,
  `last_send` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_error_log`;
CREATE TABLE `ecs_error_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_exchange_goods`;
CREATE TABLE `ecs_exchange_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `exchange_integral` int(10) unsigned NOT NULL DEFAULT '0',
  `is_exchange` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_favourable_activity`;
CREATE TABLE `ecs_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `user_rank` varchar(255) NOT NULL,
  `act_range` tinyint(3) unsigned NOT NULL,
  `act_range_ext` varchar(255) NOT NULL,
  `min_amount` decimal(10,2) unsigned NOT NULL,
  `max_amount` decimal(10,2) unsigned NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `act_type_ext` decimal(10,2) unsigned NOT NULL,
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_feedback`;
CREATE TABLE `ecs_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_friend_link`;
CREATE TABLE `ecs_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_logo` varchar(255) NOT NULL DEFAULT '',
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_friend_link` ( `link_id`, `link_name`, `link_url`, `link_logo`, `show_order` ) VALUES  ('1', 'ECSHOP 网上商店管理系统', 'http://www.ecshop.com/', 'http://www.ecshop.com/images/logo/ecshop_logo.gif', '50');
DROP TABLE IF EXISTS `ecs_goods`;
CREATE TABLE `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `provider_name` varchar(100) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `give_integral` int(11) NOT NULL DEFAULT '-1',
  `rank_integral` int(11) NOT NULL DEFAULT '-1',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,
  `is_check` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('66', '11', 'A001', 'Wrap around top with pin-tuck detail', '+', '215', '0', '', '100', '0.000', '120.00', '100.00', '0.00', '0', '0', '1', '', '', '', '', 'images/201312/goods_img/66_G_1386631019923.jpg', 'images/201312/source_img/66_G_1386631019350.jpg', '1', '', '1', '1', '0', '100', '1386631019', '100', '0', '0', '1', '0', '0', '0', '1388359029', '1', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('67', '10', 'S19', 'Classic straight skirt', '+', '305', '0', '', '100', '0.000', '100.00', '79.00', '0.00', '0', '0', '1', '', '', '', '', 'images/201312/goods_img/67_G_1387223167416.jpg', 'images/201312/source_img/67_G_1387223167543.jpg', '1', '', '1', '1', '0', '0', '1387223167', '100', '0', '0', '1', '0', '0', '0', '1389922058', '1', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('68', '10', 'S06', 'Wraparound straight skirt', '+', '319', '0', '', '100', '0.000', '120.00', '100.00', '0.00', '0', '0', '1', '', '', '', 'images/201312/thumb_img/68_thumb_G_1387841596412.jpg', 'images/201312/goods_img/68_G_1387841596971.jpg', 'images/201312/source_img/68_G_1387841595487.jpg', '1', '', '1', '1', '0', '1', '1387829824', '100', '0', '0', '1', '0', '0', '0', '1389922046', '1', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('69', '10', 'S-05', 'Floral pleated skirt', '+', '453', '0', '', '100', '0.000', '120.00', '100.00', '0.00', '0', '0', '1', 'ddd,ccc,ddd,bbb', 'dsafdsafddsafdsa', '', 'images/201312/thumb_img/69_thumb_G_1387994929655.jpg', 'images/201312/goods_img/69_G_1387994929111.jpg', 'images/201312/source_img/69_G_1387994929389.jpg', '1', '', '1', '1', '0', '1', '1387994929', '100', '0', '0', '1', '0', '0', '0', '1389998288', '1', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('70', '7', 'S05', 'Polka dot pleated skirt', '+', '250', '0', '', '100', '0.000', '0.01', '0.01', '0.00', '0', '0', '1', '', '', 'a:4:{i:0;a:2:{i:0;s:2:\"75\";i:1;s:20:\"<p>sssssssssssss</p>\";}i:1;a:2:{i:0;s:2:\"76\";i:1;s:11:\"<p>ssss</p>\";}i:2;a:2:{i:0;s:2:\"77\";i:1;s:16:\"<p>sssssssss</p>\";}i:3;a:2:{i:0;s:2:\"78\";i:1;s:66:\"<p>ssssssssssssssssssss222222222222222</p>\r\n<p>ddddddddddddddd</p>\";}}', 'images/201312/thumb_img/70_thumb_G_1387998567758.jpg', 'images/201312/goods_img/70_G_1387998567660.jpg', 'images/201312/source_img/70_G_1387998567908.jpg', '1', '', '1', '1', '0', '0', '1387996595', '100', '0', '0', '1', '0', '0', '0', '1390090698', '1', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('71', '12', 'S-1000', 'new clothing', '+', '0', '0', '', '1', '0.000', '120.00', '100.00', '0.00', '0', '0', '1', '', '', '', 'images/201401/thumb_img/71_thumb_G_1389997239037.jpg', 'images/201401/goods_img/71_G_1389997239765.jpg', 'images/201401/source_img/71_G_1389997239061.jpg', '1', '', '1', '1', '0', '1', '1389997239', '100', '1', '0', '1', '0', '0', '0', '1389997250', '1', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('72', '9', 'D-9999', 'test dress', '+strong', '82', '0', '', '1', '0.000', '0.04', '0.04', '0.00', '0', '0', '1', '', '', 'a:2:{i:0;a:2:{i:0;s:3:\"143\";i:1;s:30:\"<p>color 1 can you see me?</p>\";}i:1;a:2:{i:0;s:3:\"146\";i:1;s:30:\"<p>color 2 can you see me?</p>\";}}', 'images/201402/thumb_img/72_thumb_G_1392253917605.jpg', 'images/201402/goods_img/72_G_1392253917568.jpg', 'images/201402/source_img/72_G_1392253917981.jpg', '1', '', '1', '1', '0', '0', '1392139662', '100', '0', '0', '1', '0', '0', '0', '1392254619', '1', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('73', '11', 'T-10000', 'Tops Test', '+em', '6', '0', '', '1', '0.000', '0.06', '0.05', '0.00', '0', '0', '1', '', '', 'a:0:{}', 'images/201402/thumb_img/73_thumb_G_1392139810086.jpg', 'images/201402/goods_img/73_G_1392139810062.jpg', 'images/201402/source_img/73_G_1392139810239.jpg', '1', '', '1', '1', '0', '0', '1392139810', '100', '1', '0', '1', '0', '0', '0', '1392140552', '0', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('74', '11', 't-100000', 'Test top', '+', '77', '0', '', '10', '0.000', '0.00', '10.00', '0.00', '0', '0', '1', '', '', 'a:3:{i:0;a:2:{i:0;s:3:\"117\";i:1;s:109:\"<p><em>Delightful </em><strong>black top unfortunately out of </strong><u><strong>proportion</strong></u></p>\";}i:1;a:2:{i:0;s:3:\"118\";i:1;s:0:\"\";}i:2;a:2:{i:0;s:3:\"119\";i:1;s:0:\"\";}}', 'images/201402/thumb_img/74_thumb_G_1392243283301.jpg', 'images/201402/goods_img/74_G_1392243283809.jpg', 'images/201402/source_img/74_G_1392243283346.jpg', '1', '', '1', '1', '0', '0', '1392140876', '100', '0', '0', '1', '0', '0', '0', '1392243940', '1', '', '-1', '-1', '0', '');
INSERT INTO `ecs_goods` ( `goods_id`, `cat_id`, `goods_sn`, `goods_name`, `goods_name_style`, `click_count`, `brand_id`, `provider_name`, `goods_number`, `goods_weight`, `market_price`, `shop_price`, `promote_price`, `promote_start_date`, `promote_end_date`, `warn_number`, `keywords`, `goods_brief`, `goods_desc`, `goods_thumb`, `goods_img`, `original_img`, `is_real`, `extension_code`, `is_on_sale`, `is_alone_sale`, `is_shipping`, `integral`, `add_time`, `sort_order`, `is_delete`, `is_best`, `is_new`, `is_hot`, `is_promote`, `bonus_type_id`, `last_update`, `goods_type`, `seller_note`, `give_integral`, `rank_integral`, `suppliers_id`, `is_check` ) VALUES  ('75', '11', 'T03', 'Tops T03 ', '+strong', '15', '0', '', '3', '0.000', '0.15', '0.10', '0.00', '0', '0', '1', '', '', 'a:12:{i:0;a:2:{i:0;s:3:\"152\";i:1;s:0:\"\";}i:1;a:2:{i:0;s:3:\"151\";i:1;s:0:\"\";}i:2;a:2:{i:0;s:3:\"150\";i:1;s:0:\"\";}i:3;a:2:{i:0;s:3:\"149\";i:1;s:0:\"\";}i:4;a:2:{i:0;s:3:\"153\";i:1;s:0:\"\";}i:5;a:2:{i:0;s:3:\"154\";i:1;s:0:\"\";}i:6;a:2:{i:0;s:3:\"155\";i:1;s:0:\"\";}i:7;a:2:{i:0;s:3:\"156\";i:1;s:0:\"\";}i:8;a:2:{i:0;s:3:\"157\";i:1;s:0:\"\";}i:9;a:2:{i:0;s:3:\"158\";i:1;s:0:\"\";}i:10;a:2:{i:0;s:3:\"159\";i:1;s:0:\"\";}i:11;a:2:{i:0;s:3:\"160\";i:1;s:0:\"\";}}', 'images/201402/thumb_img/75_thumb_G_1393397219983.jpg', 'images/201402/goods_img/75_G_1393397219198.jpg', 'images/201402/source_img/75_G_1393397219513.jpg', '1', '', '1', '1', '0', '0', '1393391658', '100', '0', '0', '1', '0', '0', '0', '1393534305', '1', '', '-1', '-1', '0', '');
DROP TABLE IF EXISTS `ecs_goods_activity`;
CREATE TABLE `ecs_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `is_finished` tinyint(3) unsigned NOT NULL,
  `ext_info` text NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`,`act_type`,`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_goods_article`;
CREATE TABLE `ecs_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`article_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_goods_attr`;
CREATE TABLE `ecs_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('39', '68', '1', 'Green and orange floral with colourful circle pattern at hem', 'GOC');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('41', '68', '1', 'Dark purple with feather pattern and daisy hem', 'PLDP');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('40', '68', '1', 'Colourful floral with black and white design at hem and waist', 'BCP');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('21', '66', '1', 'black', 'BLK');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('22', '66', '1', 'grey', 'GRE');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('26', '66', '1', 'green', 'GRN');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('104', '66', '2', '8', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('103', '66', '2', '6', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('27', '67', '1', 'Black with colourful floral pattern-lined', 'BCFO');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('28', '67', '1', 'Purple and red floral pattern-lined', 'RLP');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('30', '67', '1', 'Aqua and green pattern', 'STG');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('31', '67', '1', 'Embroidered black', 'BECC');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('32', '67', '1', 'Embroidered blue', 'BLEC');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('102', '67', '2', '16', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('101', '67', '2', '14', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('100', '67', '2', '12', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('99', '67', '2', '10', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('98', '67', '2', '8', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('97', '67', '2', '6', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('42', '68', '1', 'White with green and blue paisley pattern and contrast hem', 'BGDC');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('43', '68', '1', 'Green and white pattern with green hem', 'GFP');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('44', '68', '1', 'White with blue paisley pattern and blue hem', 'WBP');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('45', '68', '1', 'Orange and beige pattern and and chiffon lining', 'OGP');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('46', '68', '1', 'Pink, grey/beige and brown paisley pattern', 'PBCP');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('47', '68', '1', 'White with pink floral a pink and green hem detail', 'PFG');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('48', '68', '1', 'White with red and blue pattern and red hem detail', 'RBV');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('49', '68', '1', 'Sheer grey floral with orange and grey hem and chiffon lining', 'GOTH');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('95', '68', '2', '14', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('94', '68', '2', '12', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('93', '68', '2', '10', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('92', '68', '2', '8', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('91', '68', '2', '6', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('90', '69', '2', '16', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('89', '69', '2', '14', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('88', '69', '2', '12', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('87', '69', '2', '10', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('86', '69', '2', '8', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('85', '69', '2', '6', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('61', '69', '1', 'Black with orange floral print', 'BOF');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('62', '69', '1', 'Black with cream and red leaf pattern', 'BCL');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('63', '69', '1', 'Grey with cream and red leaf pattern', 'GCL');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('64', '69', '1', 'Brown with white daisy print', 'BWF');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('65', '69', '1', 'Red, blue and white daisy pattern', 'RBWD');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('66', '69', '1', 'Yellow and grey floral print', 'BYF');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('67', '69', '1', 'Purple butterfly print', 'PUBF');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('68', '69', '1', 'Brown with dotty pink floral pattern', 'BPDF');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('69', '69', '1', 'Blue and white rose print', 'BWR');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('83', '70', '2', '14', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('82', '70', '2', '12', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('81', '70', '2', '10', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('80', '70', '2', '8', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('79', '70', '2', '6', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('75', '70', '1', 'Cafe Latte with white polka dots', 'TWD');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('76', '70', '1', 'Mint green and white polka dots', 'MPD');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('77', '70', '1', 'Red with white polka dots', 'RPD');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('78', '70', '1', 'Black with white polka dots', 'BMPD');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('84', '70', '2', '16', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('96', '68', '2', '16', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('105', '66', '2', '10', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('106', '66', '2', '12', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('107', '66', '2', '14', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('108', '66', '2', '16', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('109', '71', '1', 'color1', 'CO1');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('110', '71', '1', 'color2', 'CO2');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('111', '71', '1', 'color3', 'CO3');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('112', '71', '1', 'color4', 'CO4');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('113', '71', '2', '6', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('114', '71', '2', '8', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('115', '71', '2', '10', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('116', '71', '2', '12', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('117', '74', '1', 'blue', 'TB');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('118', '74', '1', 'red', 'TR');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('119', '74', '1', 'yellow', 'TY');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('120', '74', '2', '6', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('121', '74', '2', '8', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('122', '74', '2', '10', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('123', '74', '2', '12', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('135', '72', '2', '14', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('134', '72', '2', '10', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('143', '72', '1', 'color1', 'DG1');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('136', '72', '2', '16', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('152', '75', '1', 'Black', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('151', '75', '1', 'Red ', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('150', '75', '1', 'Blue', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('149', '75', '1', 'White', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('146', '72', '1', 'color2', 'DG1');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('148', '72', '1', 'color3', 'DG1');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('153', '75', '1', 'Marled Creamy', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('154', '75', '1', 'Navy Blue', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('155', '75', '1', 'Dark Beige', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('156', '75', '1', 'Brown', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('157', '75', '1', 'Yellow', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('158', '75', '1', 'Purple', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('159', '75', '1', 'Turquoise', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('160', '75', '1', 'Grey', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('161', '75', '2', '6', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('162', '75', '2', '8', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('163', '75', '2', '10', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('164', '75', '2', '12', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('165', '75', '2', '14', '');
INSERT INTO `ecs_goods_attr` ( `goods_attr_id`, `goods_id`, `attr_id`, `attr_value`, `attr_price` ) VALUES  ('166', '75', '2', '16', '');
DROP TABLE IF EXISTS `ecs_goods_cat`;
CREATE TABLE `ecs_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_goods_gallery`;
CREATE TABLE `ecs_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('105', '68', 'images/201312/goods_img/68_P_1387842129618.jpg', 'Sheer grey floral with orange and grey hem and chiffon lining', 'images/201312/thumb_img/68_thumb_P_1387842129520.jpg', 'images/201312/source_img/68_P_1387842129247.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('104', '68', 'images/201312/goods_img/68_P_1387842129924.jpg', 'White with red and blue pattern and red hem detail', 'images/201312/thumb_img/68_thumb_P_1387842129647.jpg', 'images/201312/source_img/68_P_1387842129889.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('103', '68', 'images/201312/goods_img/68_P_1387842129756.jpg', 'White with pink floral a pink and green hem detail', 'images/201312/thumb_img/68_thumb_P_1387842129823.jpg', 'images/201312/source_img/68_P_1387842129801.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('102', '68', 'images/201312/goods_img/68_P_1387842129638.jpg', 'Pink, grey/beige and brown paisley pattern', 'images/201312/thumb_img/68_thumb_P_1387842129944.jpg', 'images/201312/source_img/68_P_1387842129681.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('101', '68', 'images/201312/goods_img/68_P_1387842129288.jpg', 'Orange and beige pattern and and chiffon lining', 'images/201312/thumb_img/68_thumb_P_1387842129137.jpg', 'images/201312/source_img/68_P_1387842129919.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('100', '68', 'images/201312/goods_img/68_P_1387842129032.jpg', 'White with blue paisley pattern and blue hem', 'images/201312/thumb_img/68_thumb_P_1387842129900.jpg', 'images/201312/source_img/68_P_1387842129956.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('99', '68', 'images/201312/goods_img/68_P_1387842129726.jpg', 'Green and white pattern with green hem', 'images/201312/thumb_img/68_thumb_P_1387842129851.jpg', 'images/201312/source_img/68_P_1387842129366.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('98', '68', 'images/201312/goods_img/68_P_1387842129287.jpg', 'White with green and blue paisley pattern and contrast hem', 'images/201312/thumb_img/68_thumb_P_1387842129633.jpg', 'images/201312/source_img/68_P_1387842129401.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('94', '68', 'images/201312/goods_img/68_P_1387841596197.jpg', 'Colourful floral with black and white design at hem and waist', 'images/201312/thumb_img/68_thumb_P_1387841596816.jpg', 'images/201312/source_img/68_P_1387841596684.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('95', '68', 'images/201312/goods_img/68_P_1387842129360.jpg', 'Green and orange floral with colourful circle pattern at hem', 'images/201312/thumb_img/68_thumb_P_1387842129227.jpg', 'images/201312/source_img/68_P_1387842129446.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('106', '68', 'images/201312/goods_img/68_P_1387843624383.jpg', 'Green and orange floral with colourful circle pattern at hem_1', 'images/201312/thumb_img/68_thumb_P_1387843624910.jpg', 'images/201312/source_img/68_P_1387843624639.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('97', '68', 'images/201312/goods_img/68_P_1387842129824.jpg', 'Dark purple with feather pattern and daisy hem', 'images/201312/thumb_img/68_thumb_P_1387842129003.jpg', 'images/201312/source_img/68_P_1387842129525.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('114', '68', 'images/201312/goods_img/68_P_1387843770445.jpg', 'Dark purple with feather pattern and daisy hem_2', 'images/201312/thumb_img/68_thumb_P_1387843770530.jpg', 'images/201312/source_img/68_P_1387843770085.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('115', '68', 'images/201312/goods_img/68_P_1387843770581.jpg', 'Dark purple with feather pattern and daisy hem_3', 'images/201312/thumb_img/68_thumb_P_1387843770565.jpg', 'images/201312/source_img/68_P_1387843770792.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('113', '68', 'images/201312/goods_img/68_P_1387843770817.jpg', 'Dark purple with feather pattern and daisy hem_1', 'images/201312/thumb_img/68_thumb_P_1387843770645.jpg', 'images/201312/source_img/68_P_1387843770890.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('112', '68', 'images/201312/goods_img/68_P_1387843700345.jpg', 'Colourful floral with black and white design at hem and waist_4', 'images/201312/thumb_img/68_thumb_P_1387843700045.jpg', 'images/201312/source_img/68_P_1387843700230.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('108', '68', 'images/201312/goods_img/68_P_1387843624545.jpg', 'Green and orange floral with colourful circle pattern at hem_3', 'images/201312/thumb_img/68_thumb_P_1387843624414.jpg', 'images/201312/source_img/68_P_1387843624450.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('111', '68', 'images/201312/goods_img/68_P_1387843700659.jpg', 'Colourful floral with black and white design at hem and waist_3', 'images/201312/thumb_img/68_thumb_P_1387843700498.jpg', 'images/201312/source_img/68_P_1387843700818.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('110', '68', 'images/201312/goods_img/68_P_1387843700408.jpg', 'Colourful floral with black and white design at hem and waist_2', 'images/201312/thumb_img/68_thumb_P_1387843700037.jpg', 'images/201312/source_img/68_P_1387843700005.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('109', '68', 'images/201312/goods_img/68_P_1387843700322.jpg', 'Colourful floral with black and white design at hem and waist_1', 'images/201312/thumb_img/68_thumb_P_1387843700483.jpg', 'images/201312/source_img/68_P_1387843700787.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('107', '68', 'images/201312/goods_img/68_P_1387843624525.jpg', 'Green and orange floral with colourful circle pattern at hem_2', 'images/201312/thumb_img/68_thumb_P_1387843624234.jpg', 'images/201312/source_img/68_P_1387843624675.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('51', '66', 'images/201312/goods_img/66_P_1386631019050.jpg', 'black', 'images/201312/thumb_img/66_thumb_P_1386631019349.jpg', 'images/201312/source_img/66_P_1386631019680.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('57', '66', 'images/201312/goods_img/66_P_1386632067444.jpg', 'green', 'images/201312/thumb_img/66_thumb_P_1386632067351.jpg', 'images/201312/source_img/66_P_1386632067756.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('56', '66', 'images/201312/goods_img/66_P_1386632067945.jpg', 'grey', 'images/201312/thumb_img/66_thumb_P_1386632067014.jpg', 'images/201312/source_img/66_P_1386632067591.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('58', '66', 'images/201312/goods_img/66_P_1386632796849.jpg', 'black_1', 'images/201312/thumb_img/66_thumb_P_1386632796366.jpg', 'images/201312/source_img/66_P_1386632796147.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('59', '66', 'images/201312/goods_img/66_P_1386632796444.jpg', 'green_1', 'images/201312/thumb_img/66_thumb_P_1386632796135.jpg', 'images/201312/source_img/66_P_1386632796067.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('60', '66', 'images/201312/goods_img/66_P_1386632796379.jpg', 'green_2', 'images/201312/thumb_img/66_thumb_P_1386632796154.jpg', 'images/201312/source_img/66_P_1386632796535.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('61', '66', 'images/201312/goods_img/66_P_1386632796349.jpg', 'grey_1', 'images/201312/thumb_img/66_thumb_P_1386632796105.jpg', 'images/201312/source_img/66_P_1386632796113.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('62', '67', 'images/201312/goods_img/67_P_1387223167729.jpg', 'Black with colourful floral pattern-lined', 'images/201312/thumb_img/67_thumb_P_1387223167770.jpg', 'images/201312/source_img/67_P_1387223167491.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('63', '67', 'images/201312/goods_img/67_P_1387223292260.jpg', 'Purple and red floral pattern-lined', 'images/201312/thumb_img/67_thumb_P_1387223292025.jpg', 'images/201312/source_img/67_P_1387223292951.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('64', '67', 'images/201312/goods_img/67_P_1387223292057.jpg', 'Embroidered blue', 'images/201312/thumb_img/67_thumb_P_1387223292692.jpg', 'images/201312/source_img/67_P_1387223292885.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('65', '67', 'images/201312/goods_img/67_P_1387223292449.jpg', 'Aqua and green pattern', 'images/201312/thumb_img/67_thumb_P_1387223292333.jpg', 'images/201312/source_img/67_P_1387223292620.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('66', '67', 'images/201312/goods_img/67_P_1387223292054.jpg', 'Embroidered black', 'images/201312/thumb_img/67_thumb_P_1387223292474.jpg', 'images/201312/source_img/67_P_1387223292121.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('91', '67', 'images/201312/goods_img/67_P_1387228483014.jpg', 'Embroidered black_1', 'images/201312/thumb_img/67_thumb_P_1387228483311.jpg', 'images/201312/source_img/67_P_1387228483599.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('90', '67', 'images/201312/goods_img/67_P_1387228453247.jpg', 'Aqua and green pattern_2', 'images/201312/thumb_img/67_thumb_P_1387228453198.jpg', 'images/201312/source_img/67_P_1387228453325.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('89', '67', 'images/201312/goods_img/67_P_1387228453446.jpg', 'Aqua and green pattern_1', 'images/201312/thumb_img/67_thumb_P_1387228453870.jpg', 'images/201312/source_img/67_P_1387228453055.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('88', '67', 'images/201312/goods_img/67_P_1387228420298.jpg', 'Embroidered blue_1', 'images/201312/thumb_img/67_thumb_P_1387228420761.jpg', 'images/201312/source_img/67_P_1387228420147.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('87', '67', 'images/201312/goods_img/67_P_1387228420695.jpg', 'Embroidered blue_2', 'images/201312/thumb_img/67_thumb_P_1387228420815.jpg', 'images/201312/source_img/67_P_1387228420955.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('86', '67', 'images/201312/goods_img/67_P_1387228420534.jpg', 'Embroidered blue_3', 'images/201312/thumb_img/67_thumb_P_1387228420150.jpg', 'images/201312/source_img/67_P_1387228420150.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('85', '67', 'images/201312/goods_img/67_P_1387228370116.jpg', 'Purple and red floral pattern-lined_3', 'images/201312/thumb_img/67_thumb_P_1387228370552.jpg', 'images/201312/source_img/67_P_1387228370965.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('84', '67', 'images/201312/goods_img/67_P_1387228370594.jpg', 'Purple and red floral pattern-lined_2', 'images/201312/thumb_img/67_thumb_P_1387228370463.jpg', 'images/201312/source_img/67_P_1387228370654.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('83', '67', 'images/201312/goods_img/67_P_1387228370765.jpg', 'Purple and red floral pattern-lined_1', 'images/201312/thumb_img/67_thumb_P_1387228370585.jpg', 'images/201312/source_img/67_P_1387228370326.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('82', '67', 'images/201312/goods_img/67_P_1387228325384.jpg', 'Black with colourful floral pattern-lined_3', 'images/201312/thumb_img/67_thumb_P_1387228325345.jpg', 'images/201312/source_img/67_P_1387228325114.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('81', '67', 'images/201312/goods_img/67_P_1387228325759.jpg', 'Black with colourful floral pattern-lined_2', 'images/201312/thumb_img/67_thumb_P_1387228325456.jpg', 'images/201312/source_img/67_P_1387228325550.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('80', '67', 'images/201312/goods_img/67_P_1387228325049.jpg', 'Black with colourful floral pattern-lined_1', 'images/201312/thumb_img/67_thumb_P_1387228325551.jpg', 'images/201312/source_img/67_P_1387228325974.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('92', '67', 'images/201312/goods_img/67_P_1387228483248.jpg', 'Embroidered black_2', 'images/201312/thumb_img/67_thumb_P_1387228483191.jpg', 'images/201312/source_img/67_P_1387228483215.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('116', '68', 'images/201312/goods_img/68_P_1387843828993.jpg', 'White with green and blue paisley pattern and contrast hem_1', 'images/201312/thumb_img/68_thumb_P_1387843828149.jpg', 'images/201312/source_img/68_P_1387843828114.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('117', '68', 'images/201312/goods_img/68_P_1387843828540.jpg', 'White with green and blue paisley pattern and contrast hem_2', 'images/201312/thumb_img/68_thumb_P_1387843828237.jpg', 'images/201312/source_img/68_P_1387843828289.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('118', '68', 'images/201312/goods_img/68_P_1387843828649.jpg', 'White with green and blue paisley pattern and contrast hem_3', 'images/201312/thumb_img/68_thumb_P_1387843828246.jpg', 'images/201312/source_img/68_P_1387843828356.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('119', '68', 'images/201312/goods_img/68_P_1387843896907.jpg', 'Green and white pattern with green hem_1', 'images/201312/thumb_img/68_thumb_P_1387843896634.jpg', 'images/201312/source_img/68_P_1387843896301.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('120', '68', 'images/201312/goods_img/68_P_1387843896226.jpg', 'Green and white pattern with green hem_2', 'images/201312/thumb_img/68_thumb_P_1387843896392.jpg', 'images/201312/source_img/68_P_1387843896449.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('121', '68', 'images/201312/goods_img/68_P_1387843896295.jpg', 'Green and white pattern with green hem_3', 'images/201312/thumb_img/68_thumb_P_1387843896682.jpg', 'images/201312/source_img/68_P_1387843896083.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('122', '68', 'images/201312/goods_img/68_P_1387843954621.jpg', 'White with blue paisley pattern and blue hem_1', 'images/201312/thumb_img/68_thumb_P_1387843954532.jpg', 'images/201312/source_img/68_P_1387843954835.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('123', '68', 'images/201312/goods_img/68_P_1387843954337.jpg', 'White with blue paisley pattern and blue hem_2', 'images/201312/thumb_img/68_thumb_P_1387843954315.jpg', 'images/201312/source_img/68_P_1387843954478.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('124', '68', 'images/201312/goods_img/68_P_1387843954935.jpg', 'White with blue paisley pattern and blue hem_3', 'images/201312/thumb_img/68_thumb_P_1387843954517.jpg', 'images/201312/source_img/68_P_1387843954963.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('125', '68', 'images/201312/goods_img/68_P_1387844014523.jpg', 'Orange and beige pattern and and chiffon lining_1', 'images/201312/thumb_img/68_thumb_P_1387844014113.jpg', 'images/201312/source_img/68_P_1387844014391.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('126', '68', 'images/201312/goods_img/68_P_1387844014782.jpg', 'Orange and beige pattern and and chiffon lining_2', 'images/201312/thumb_img/68_thumb_P_1387844014084.jpg', 'images/201312/source_img/68_P_1387844014287.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('127', '68', 'images/201312/goods_img/68_P_1387844014797.jpg', 'Orange and beige pattern and and chiffon lining_3', 'images/201312/thumb_img/68_thumb_P_1387844014608.jpg', 'images/201312/source_img/68_P_1387844014756.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('128', '68', 'images/201312/goods_img/68_P_1387844074997.jpg', 'Pink, grey/beige and brown paisley pattern_1', 'images/201312/thumb_img/68_thumb_P_1387844074583.jpg', 'images/201312/source_img/68_P_1387844074393.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('129', '68', 'images/201312/goods_img/68_P_1387844074637.jpg', 'Pink, grey/beige and brown paisley pattern_2', 'images/201312/thumb_img/68_thumb_P_1387844074681.jpg', 'images/201312/source_img/68_P_1387844074177.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('130', '68', 'images/201312/goods_img/68_P_1387844074615.jpg', 'Pink, grey/beige and brown paisley pattern_3', 'images/201312/thumb_img/68_thumb_P_1387844074380.jpg', 'images/201312/source_img/68_P_1387844074075.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('131', '68', 'images/201312/goods_img/68_P_1387844212723.jpg', 'White with pink floral a pink and green hem detail_1', 'images/201312/thumb_img/68_thumb_P_1387844212730.jpg', 'images/201312/source_img/68_P_1387844212583.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('132', '68', 'images/201312/goods_img/68_P_1387844212069.jpg', 'White with pink floral a pink and green hem detail_2', 'images/201312/thumb_img/68_thumb_P_1387844212256.jpg', 'images/201312/source_img/68_P_1387844212333.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('133', '68', 'images/201312/goods_img/68_P_1387844212260.jpg', 'White with pink floral a pink and green hem detail_3', 'images/201312/thumb_img/68_thumb_P_1387844212618.jpg', 'images/201312/source_img/68_P_1387844212547.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('134', '68', 'images/201312/goods_img/68_P_1387844310664.jpg', 'White with red and blue pattern and red hem detail_1', 'images/201312/thumb_img/68_thumb_P_1387844310337.jpg', 'images/201312/source_img/68_P_1387844310153.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('135', '68', 'images/201312/goods_img/68_P_1387844310773.jpg', 'White with red and blue pattern and red hem detail_2', 'images/201312/thumb_img/68_thumb_P_1387844310335.jpg', 'images/201312/source_img/68_P_1387844310709.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('136', '68', 'images/201312/goods_img/68_P_1387844310151.jpg', 'White with red and blue pattern and red hem detail_3', 'images/201312/thumb_img/68_thumb_P_1387844310646.jpg', 'images/201312/source_img/68_P_1387844310574.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('137', '68', 'images/201312/goods_img/68_P_1387844567346.jpg', 'Sheer grey floral with orange and grey hem and chiffon lining_1', 'images/201312/thumb_img/68_thumb_P_1387844567816.jpg', 'images/201312/source_img/68_P_1387844567998.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('138', '68', 'images/201312/goods_img/68_P_1387844567527.jpg', 'Sheer grey floral with orange and grey hem and chiffon lining_2', 'images/201312/thumb_img/68_thumb_P_1387844567064.jpg', 'images/201312/source_img/68_P_1387844567426.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('139', '68', 'images/201312/goods_img/68_P_1387844567038.jpg', 'Sheer grey floral with orange and grey hem and chiffon lining_3', 'images/201312/thumb_img/68_thumb_P_1387844567407.jpg', 'images/201312/source_img/68_P_1387844567993.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('140', '69', 'images/201312/goods_img/69_P_1387994929549.jpg', 'Beige with black flowers and hem ribbon detail', 'images/201312/thumb_img/69_thumb_P_1387994929680.jpg', 'images/201312/source_img/69_P_1387994929585.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('141', '69', 'images/201312/goods_img/69_P_1387995484018.jpg', 'Black with orange floral print', 'images/201312/thumb_img/69_thumb_P_1387995484252.jpg', 'images/201312/source_img/69_P_1387995484515.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('142', '69', 'images/201312/goods_img/69_P_1387995484773.jpg', 'Black with cream and red leaf pattern', 'images/201312/thumb_img/69_thumb_P_1387995484297.jpg', 'images/201312/source_img/69_P_1387995484744.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('143', '69', 'images/201312/goods_img/69_P_1387995484719.jpg', 'Grey with cream and red leaf pattern', 'images/201312/thumb_img/69_thumb_P_1387995484393.jpg', 'images/201312/source_img/69_P_1387995484016.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('144', '69', 'images/201312/goods_img/69_P_1387995484160.jpg', 'Brown with white daisy print', 'images/201312/thumb_img/69_thumb_P_1387995484285.jpg', 'images/201312/source_img/69_P_1387995484408.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('145', '69', 'images/201312/goods_img/69_P_1387995484338.jpg', 'Red, blue and white daisy pattern', 'images/201312/thumb_img/69_thumb_P_1387995484978.jpg', 'images/201312/source_img/69_P_1387995484649.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('146', '69', 'images/201312/goods_img/69_P_1387995484695.jpg', 'Yellow and grey floral print', 'images/201312/thumb_img/69_thumb_P_1387995484220.jpg', 'images/201312/source_img/69_P_1387995484331.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('147', '69', 'images/201312/goods_img/69_P_1387995484225.jpg', 'Purple butterfly print', 'images/201312/thumb_img/69_thumb_P_1387995484916.jpg', 'images/201312/source_img/69_P_1387995484209.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('148', '69', 'images/201312/goods_img/69_P_1387995484603.jpg', 'Brown with dotty pink floral pattern', 'images/201312/thumb_img/69_thumb_P_1387995484003.jpg', 'images/201312/source_img/69_P_1387995484002.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('149', '69', 'images/201312/goods_img/69_P_1387995484916.jpg', 'Blue and white rose print', 'images/201312/thumb_img/69_thumb_P_1387995484770.jpg', 'images/201312/source_img/69_P_1387995484059.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('150', '69', 'images/201312/goods_img/69_P_1387995637676.jpg', 'Beige with black flowers and hem ribbon detail_1', 'images/201312/thumb_img/69_thumb_P_1387995637834.jpg', 'images/201312/source_img/69_P_1387995637003.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('151', '69', 'images/201312/goods_img/69_P_1387995637511.jpg', 'Beige with black flowers and hem ribbon detail_2', 'images/201312/thumb_img/69_thumb_P_1387995637229.jpg', 'images/201312/source_img/69_P_1387995637424.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('152', '69', 'images/201312/goods_img/69_P_1387995682489.jpg', 'Black with orange floral print_1', 'images/201312/thumb_img/69_thumb_P_1387995682069.jpg', 'images/201312/source_img/69_P_1387995682973.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('153', '69', 'images/201312/goods_img/69_P_1387995682953.jpg', 'Black with orange floral print_2', 'images/201312/thumb_img/69_thumb_P_1387995682613.jpg', 'images/201312/source_img/69_P_1387995682721.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('154', '69', 'images/201312/goods_img/69_P_1387995722439.jpg', 'Black with cream and red leaf pattern_1', 'images/201312/thumb_img/69_thumb_P_1387995722479.jpg', 'images/201312/source_img/69_P_1387995722182.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('155', '69', 'images/201312/goods_img/69_P_1387995722394.jpg', 'Black with cream and red leaf pattern_2', 'images/201312/thumb_img/69_thumb_P_1387995722195.jpg', 'images/201312/source_img/69_P_1387995722682.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('156', '69', 'images/201312/goods_img/69_P_1387995722084.jpg', 'Black with cream and red leaf pattern_3', 'images/201312/thumb_img/69_thumb_P_1387995722156.jpg', 'images/201312/source_img/69_P_1387995722157.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('157', '69', 'images/201312/goods_img/69_P_1387995767742.jpg', 'Grey with cream and red leaf pattern_1', 'images/201312/thumb_img/69_thumb_P_1387995767248.jpg', 'images/201312/source_img/69_P_1387995767223.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('158', '69', 'images/201312/goods_img/69_P_1387995767164.jpg', 'Grey with cream and red leaf pattern_2', 'images/201312/thumb_img/69_thumb_P_1387995767136.jpg', 'images/201312/source_img/69_P_1387995767165.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('159', '69', 'images/201312/goods_img/69_P_1387995870987.jpg', 'Brown with white daisy print_1', 'images/201312/thumb_img/69_thumb_P_1387995870747.jpg', 'images/201312/source_img/69_P_1387995870831.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('160', '69', 'images/201312/goods_img/69_P_1387995870343.jpg', 'Brown with white daisy print_2', 'images/201312/thumb_img/69_thumb_P_1387995870920.jpg', 'images/201312/source_img/69_P_1387995870522.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('161', '69', 'images/201312/goods_img/69_P_1387995870985.jpg', 'Brown with white daisy print_3', 'images/201312/thumb_img/69_thumb_P_1387995870718.jpg', 'images/201312/source_img/69_P_1387995870383.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('162', '69', 'images/201312/goods_img/69_P_1387995922732.jpg', 'Red, blue and white daisy pattern_1', 'images/201312/thumb_img/69_thumb_P_1387995922276.jpg', 'images/201312/source_img/69_P_1387995922085.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('163', '69', 'images/201312/goods_img/69_P_1387995922585.jpg', 'Red, blue and white daisy pattern_2', 'images/201312/thumb_img/69_thumb_P_1387995922737.jpg', 'images/201312/source_img/69_P_1387995922670.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('175', '69', 'images/201312/goods_img/69_P_1387996312768.jpg', 'Yellow and grey floral print_1', 'images/201312/thumb_img/69_thumb_P_1387996312674.jpg', 'images/201312/source_img/69_P_1387996312527.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('176', '69', 'images/201312/goods_img/69_P_1387996312257.jpg', 'Yellow and grey floral print_2', 'images/201312/thumb_img/69_thumb_P_1387996312427.jpg', 'images/201312/source_img/69_P_1387996312491.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('166', '69', 'images/201312/goods_img/69_P_1387996052689.jpg', 'Purple butterfly print_1', 'images/201312/thumb_img/69_thumb_P_1387996052674.jpg', 'images/201312/source_img/69_P_1387996052268.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('167', '69', 'images/201312/goods_img/69_P_1387996052299.jpg', 'Purple butterfly print_2', 'images/201312/thumb_img/69_thumb_P_1387996052669.jpg', 'images/201312/source_img/69_P_1387996052557.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('168', '69', 'images/201312/goods_img/69_P_1387996052741.jpg', 'Purple butterfly print_3', 'images/201312/thumb_img/69_thumb_P_1387996052258.jpg', 'images/201312/source_img/69_P_1387996052496.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('169', '69', 'images/201312/goods_img/69_P_1387996097077.jpg', 'Brown with dotty pink floral pattern_1', 'images/201312/thumb_img/69_thumb_P_1387996097910.jpg', 'images/201312/source_img/69_P_1387996097994.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('170', '69', 'images/201312/goods_img/69_P_1387996097329.jpg', 'Brown with dotty pink floral pattern_2', 'images/201312/thumb_img/69_thumb_P_1387996097261.jpg', 'images/201312/source_img/69_P_1387996097584.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('171', '69', 'images/201312/goods_img/69_P_1387996097261.jpg', 'Brown with dotty pink floral pattern_3', 'images/201312/thumb_img/69_thumb_P_1387996097421.jpg', 'images/201312/source_img/69_P_1387996097684.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('172', '69', 'images/201312/goods_img/69_P_1387996162872.jpg', 'Blue and white rose print_1', 'images/201312/thumb_img/69_thumb_P_1387996162700.jpg', 'images/201312/source_img/69_P_1387996162027.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('173', '69', 'images/201312/goods_img/69_P_1387996162094.jpg', 'Blue and white rose print_2', 'images/201312/thumb_img/69_thumb_P_1387996162239.jpg', 'images/201312/source_img/69_P_1387996162950.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('174', '69', 'images/201312/goods_img/69_P_1387996162336.jpg', 'Blue and white rose print_3', 'images/201312/thumb_img/69_thumb_P_1387996162161.jpg', 'images/201312/source_img/69_P_1387996162770.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('227', '70', 'images/201312/goods_img/70_P_1388000186399.jpg', 'Cafe Latte with white polka dots_2', 'images/201312/thumb_img/70_thumb_P_1388000186332.jpg', 'images/201312/source_img/70_P_1388000186237.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('225', '70', 'images/201312/goods_img/70_P_1388000157456.jpg', 'Red with white polka dots_1', 'images/201312/thumb_img/70_thumb_P_1388000157635.jpg', 'images/201312/source_img/70_P_1388000157325.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('226', '70', 'images/201312/goods_img/70_P_1388000186639.jpg', 'Cafe Latte with white polka dots_1', 'images/201312/thumb_img/70_thumb_P_1388000186151.jpg', 'images/201312/source_img/70_P_1388000186842.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('224', '70', 'images/201312/goods_img/70_P_1388000132637.jpg', 'Mint green and white polka dots_2', 'images/201312/thumb_img/70_thumb_P_1388000132484.jpg', 'images/201312/source_img/70_P_1388000132602.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('221', '70', 'images/201312/goods_img/70_P_1388000095071.jpg', 'Black with white polka dots_1', 'images/201312/thumb_img/70_thumb_P_1388000095582.jpg', 'images/201312/source_img/70_P_1388000095150.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('222', '70', 'images/201312/goods_img/70_P_1388000095802.jpg', 'Black with white polka dots_2', 'images/201312/thumb_img/70_thumb_P_1388000095789.jpg', 'images/201312/source_img/70_P_1388000095926.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('223', '70', 'images/201312/goods_img/70_P_1388000132265.jpg', 'Mint green and white polka dots_1', 'images/201312/thumb_img/70_thumb_P_1388000132697.jpg', 'images/201312/source_img/70_P_1388000132329.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('220', '70', 'images/201312/goods_img/70_P_1387998642887.jpg', 'Cafe Latte with white polka dots', 'images/201312/thumb_img/70_thumb_P_1387998642624.jpg', 'images/201312/source_img/70_P_1387998642794.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('219', '70', 'images/201312/goods_img/70_P_1387998642957.jpg', 'Red with white polka dots', 'images/201312/thumb_img/70_thumb_P_1387998642707.jpg', 'images/201312/source_img/70_P_1387998642508.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('217', '70', 'images/201312/goods_img/70_P_1387998567813.jpg', 'Black with white polka dots', 'images/201312/thumb_img/70_thumb_P_1387998567017.jpg', 'images/201312/source_img/70_P_1387998567636.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('218', '70', 'images/201312/goods_img/70_P_1387998642321.jpg', 'Mint green and white polka dots', 'images/201312/thumb_img/70_thumb_P_1387998642194.jpg', 'images/201312/source_img/70_P_1387998642166.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('228', '71', 'images/201401/goods_img/71_P_1389997239514.jpg', '', 'images/201401/thumb_img/71_thumb_P_1389997239336.jpg', 'images/201401/source_img/71_P_1389997239541.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('253', '72', 'images/201402/goods_img/72_P_1392253438928.jpg', 'color1', 'images/201402/thumb_img/72_thumb_P_1392253438145.jpg', 'images/201402/source_img/72_P_1392253438690.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('230', '73', 'images/201402/goods_img/73_P_1392139810095.jpg', '', 'images/201402/thumb_img/73_thumb_P_1392139810704.jpg', 'images/201402/source_img/73_P_1392139810776.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('242', '74', 'images/201402/goods_img/74_P_1392243940055.jpg', 'blue', 'images/201402/thumb_img/74_thumb_P_1392243940260.jpg', 'images/201402/source_img/74_P_1392243940903.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('243', '74', 'images/201402/goods_img/74_P_1392243940206.jpg', 'blue_1', 'images/201402/thumb_img/74_thumb_P_1392243940488.jpg', 'images/201402/source_img/74_P_1392243940272.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('254', '72', 'images/201402/goods_img/72_P_1392253438813.jpg', 'color1_1', 'images/201402/thumb_img/72_thumb_P_1392253438995.jpg', 'images/201402/source_img/72_P_1392253438009.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('245', '74', 'images/201402/goods_img/74_P_1392243940309.jpg', 'red', 'images/201402/thumb_img/74_thumb_P_1392243940919.jpg', 'images/201402/source_img/74_P_1392243940981.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('244', '74', 'images/201402/goods_img/74_P_1392243940264.jpg', 'blue_2', 'images/201402/thumb_img/74_thumb_P_1392243940505.jpg', 'images/201402/source_img/74_P_1392243940649.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('246', '74', 'images/201402/goods_img/74_P_1392243940508.jpg', 'red_1', 'images/201402/thumb_img/74_thumb_P_1392243940028.jpg', 'images/201402/source_img/74_P_1392243940962.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('247', '74', 'images/201402/goods_img/74_P_1392243940797.jpg', 'red_2', 'images/201402/thumb_img/74_thumb_P_1392243940487.jpg', 'images/201402/source_img/74_P_1392243940011.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('248', '74', 'images/201402/goods_img/74_P_1392243940536.jpg', 'yellow', 'images/201402/thumb_img/74_thumb_P_1392243940169.jpg', 'images/201402/source_img/74_P_1392243940531.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('249', '74', 'images/201402/goods_img/74_P_1392243940172.jpg', 'yellow_1', 'images/201402/thumb_img/74_thumb_P_1392243940030.jpg', 'images/201402/source_img/74_P_1392243940336.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('256', '72', 'images/201402/goods_img/72_P_1392253438767.jpg', 'color2', 'images/201402/thumb_img/72_thumb_P_1392253438358.jpg', 'images/201402/source_img/72_P_1392253438844.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('263', '72', 'images/201402/goods_img/72_P_1392254567368.jpg', 'color2_1', 'images/201402/thumb_img/72_thumb_P_1392254567145.jpg', 'images/201402/source_img/72_P_1392254567671.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('261', '72', 'images/201402/goods_img/72_P_1392254419220.jpg', 'color3', 'images/201402/thumb_img/72_thumb_P_1392254419138.jpg', 'images/201402/source_img/72_P_1392254419273.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('262', '72', 'images/201402/goods_img/72_P_1392254419712.jpg', 'color3_1', 'images/201402/thumb_img/72_thumb_P_1392254419301.jpg', 'images/201402/source_img/72_P_1392254419065.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('264', '75', 'images/201402/goods_img/75_P_1393394148293.jpg', 'Black', 'images/201402/thumb_img/75_thumb_P_1393394148323.jpg', 'images/201402/source_img/75_P_1393394148834.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('265', '75', 'images/201402/goods_img/75_P_1393394148072.jpg', 'Black_1', 'images/201402/thumb_img/75_thumb_P_1393394148255.jpg', 'images/201402/source_img/75_P_1393394148549.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('266', '75', 'images/201402/goods_img/75_P_1393394148925.jpg', 'Black_2', 'images/201402/thumb_img/75_thumb_P_1393394148249.jpg', 'images/201402/source_img/75_P_1393394148390.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('267', '75', 'images/201402/goods_img/75_P_1393394148094.jpg', 'White', 'images/201402/thumb_img/75_thumb_P_1393394148481.jpg', 'images/201402/source_img/75_P_1393394148767.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('268', '75', 'images/201402/goods_img/75_P_1393394148777.jpg', 'White_1', 'images/201402/thumb_img/75_thumb_P_1393394148696.jpg', 'images/201402/source_img/75_P_1393394148621.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('269', '75', 'images/201402/goods_img/75_P_1393394148776.jpg', 'White_2', 'images/201402/thumb_img/75_thumb_P_1393394148955.jpg', 'images/201402/source_img/75_P_1393394148951.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('270', '75', 'images/201402/goods_img/75_P_1393394148073.jpg', 'White_3', 'images/201402/thumb_img/75_thumb_P_1393394148824.jpg', 'images/201402/source_img/75_P_1393394148560.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('271', '75', 'images/201402/goods_img/75_P_1393394148345.jpg', 'Red', 'images/201402/thumb_img/75_thumb_P_1393394148256.jpg', 'images/201402/source_img/75_P_1393394148859.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('272', '75', 'images/201402/goods_img/75_P_1393394148446.jpg', 'Red_1', 'images/201402/thumb_img/75_thumb_P_1393394148596.jpg', 'images/201402/source_img/75_P_1393394148288.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('273', '75', 'images/201402/goods_img/75_P_1393394148774.jpg', 'Turquoise', 'images/201402/thumb_img/75_thumb_P_1393394148380.jpg', 'images/201402/source_img/75_P_1393394148444.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('274', '75', 'images/201402/goods_img/75_P_1393394148229.jpg', 'Turquoise_1', 'images/201402/thumb_img/75_thumb_P_1393394148267.jpg', 'images/201402/source_img/75_P_1393394148951.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('275', '75', 'images/201402/goods_img/75_P_1393394148697.jpg', 'Navy Blue', 'images/201402/thumb_img/75_thumb_P_1393394148039.jpg', 'images/201402/source_img/75_P_1393394148330.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('276', '75', 'images/201402/goods_img/75_P_1393394148059.jpg', 'Navy Blue_1', 'images/201402/thumb_img/75_thumb_P_1393394148583.jpg', 'images/201402/source_img/75_P_1393394148153.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('277', '75', 'images/201402/goods_img/75_P_1393394148443.jpg', 'Blue', 'images/201402/thumb_img/75_thumb_P_1393394148865.jpg', 'images/201402/source_img/75_P_1393394148659.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('278', '75', 'images/201402/goods_img/75_P_1393394148876.jpg', 'Blue_1', 'images/201402/thumb_img/75_thumb_P_1393394148730.jpg', 'images/201402/source_img/75_P_1393394148077.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('279', '75', 'images/201402/goods_img/75_P_1393395132147.jpg', 'Black_3', 'images/201402/thumb_img/75_thumb_P_1393395132386.jpg', 'images/201402/source_img/75_P_1393395132253.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('280', '75', 'images/201402/goods_img/75_P_1393397133483.jpg', 'White_4', 'images/201402/thumb_img/75_thumb_P_1393397133616.jpg', 'images/201402/source_img/75_P_1393397133548.jpg');
INSERT INTO `ecs_goods_gallery` ( `img_id`, `goods_id`, `img_url`, `img_desc`, `thumb_url`, `img_original` ) VALUES  ('281', '75', 'images/201402/goods_img/75_P_1393397219807.jpg', 'Brown', 'images/201402/thumb_img/75_thumb_P_1393397219009.jpg', 'images/201402/source_img/75_P_1393397219667.jpg');
DROP TABLE IF EXISTS `ecs_goods_type`;
CREATE TABLE `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_goods_type` ( `cat_id`, `cat_name`, `enabled`, `attr_group` ) VALUES  ('1', '衣服', '1', '');
DROP TABLE IF EXISTS `ecs_group_goods`;
CREATE TABLE `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_keywords`;
CREATE TABLE `ecs_keywords` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `keyword` varchar(90) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_link_goods`;
CREATE TABLE `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('70', '68', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('70', '67', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('70', '66', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('66', '70', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('66', '68', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('66', '67', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('67', '70', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('67', '69', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('67', '68', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('69', '68', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('69', '67', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('69', '66', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('68', '69', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('68', '67', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('71', '66', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('71', '67', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('74', '67', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('74', '68', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('72', '68', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('72', '66', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('72', '69', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('75', '67', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('75', '68', '0', '1');
INSERT INTO `ecs_link_goods` ( `goods_id`, `link_goods_id`, `is_double`, `admin_id` ) VALUES  ('75', '69', '0', '1');
DROP TABLE IF EXISTS `ecs_mail_templates`;
CREATE TABLE `ecs_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(30) NOT NULL DEFAULT '',
  `is_html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_subject` varchar(200) NOT NULL DEFAULT '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL DEFAULT '0',
  `last_send` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('1', 'send_password', '1', '密码找回', '{$user_name}您好！<br>\n<br>\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br>\n<br>\n<a href=\"{$reset_email}\" target=\"_blank\">{$reset_email}</a><br>\n<br>\n以确认您的新密码重置操作！<br>\n<br>\n{$shop_name}<br>\n{$send_date}', '1194824789', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('2', 'order_confirm', '0', '订单确认通知', '亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n', '1158226370', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('3', 'deliver_notice', '1', '发货通知', '亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href=\"{$confirm_url}\" target=\"_blank\">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href=\"{$send_msg_url}\" target=\"_blank\">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}', '1194823291', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('4', 'order_cancel', '0', '订单取消', '亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}', '1156491130', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('5', 'order_invalid', '0', '订单无效', '亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}', '1156491164', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('6', 'send_bonus', '0', '发红包', '亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n', '1156491184', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('7', 'group_buy', '1', '团购商品', '亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href=\"{$shop_url}\" target=\"_blank\">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', '1194824668', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('8', 'register_validate', '1', '邮件验证', '{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href=\"{$validate_email}\" target=\"_blank\">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('9', 'virtual_card', '0', '虚拟卡片', '亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('10', 'attention_list', '0', '关注商品', '亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}', '1183851073', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('11', 'remind_of_new_order', '0', '新订单通知', '亲爱的店长，您好：\n   快来看看吧，又有新订单了。\n    订单号:{$order.order_sn} \n 订单金额:{$order.order_amount}，\n 用户购买商品:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(货号:{$goods_data.goods_sn})    {/foreach} \n\n 收货人:{$order.consignee}， \n 收货人地址:{$order.address}，\n 收货人电话:{$order.tel} {$order.mobile}, \n 配送方式:{$order.shipping_name}(费用:{$order.shipping_fee}), \n 付款方式:{$order.pay_name}(费用:{$order.pay_fee})。\n\n               系统提醒\n               {$send_date}', '1196239170', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('12', 'goods_booking', '1', '缺货回复', '亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href=\"{$goods_link}\" target=\"_blank\">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}', '0', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('13', 'user_message', '1', '留言回复', '亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');
INSERT INTO `ecs_mail_templates` ( `template_id`, `template_code`, `is_html`, `template_subject`, `template_content`, `last_modify`, `last_send`, `type` ) VALUES  ('14', 'recomment', '1', '用户评论回复', '亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');
DROP TABLE IF EXISTS `ecs_member_price`;
CREATE TABLE `ecs_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) NOT NULL DEFAULT '0',
  `user_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_member_price` ( `price_id`, `goods_id`, `user_rank`, `user_price` ) VALUES  ('1', '72', '1', '0.00');
INSERT INTO `ecs_member_price` ( `price_id`, `goods_id`, `user_rank`, `user_price` ) VALUES  ('2', '74', '1', '0.00');
INSERT INTO `ecs_member_price` ( `price_id`, `goods_id`, `user_rank`, `user_price` ) VALUES  ('3', '75', '1', '0.00');
DROP TABLE IF EXISTS `ecs_nav`;
CREATE TABLE `ecs_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_order_action`;
CREATE TABLE `ecs_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_user` varchar(30) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_note` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('6', '13', 'buyer', '2', '0', '0', '0', '用户取消', '1388772666');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('7', '12', 'buyer', '2', '0', '0', '0', '用户取消', '1388772669');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('8', '11', 'buyer', '2', '0', '0', '0', '用户取消', '1388772671');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('9', '10', 'buyer', '2', '0', '0', '0', '用户取消', '1388772673');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('10', '20', 'anyongchao', '1', '0', '2', '0', '111', '1389735101');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('11', '20', 'anyongchao', '1', '3', '2', '0', '', '1389735133');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('12', '20', 'anyongchao', '5', '5', '2', '0', 'qq', '1389735150');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('13', '37', 'anyongchao', '1', '0', '2', '0', 'qq', '1389845928');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('14', '37', 'anyongchao', '5', '5', '2', '0', 'aa', '1389845940');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('15', '36', 'anyongchao', '1', '0', '2', '0', 'q', '1389846045');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('16', '36', 'anyongchao', '1', '3', '2', '0', '', '1389846060');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('24', '48', '买家', '1', '0', '2', '0', '', '1390004138');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('18', '32', 'buyer', '2', '0', '0', '0', 'Buyer cancel', '1389848362');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('25', '50', '买家', '1', '0', '2', '0', '', '1390004745');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('20', '42', '买家', '1', '0', '2', '0', '', '1389929526');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('21', '43', '买家', '1', '0', '2', '0', '06X479331V4539026（paypal 交易号）', '1389930983');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('22', '45', '买家', '1', '0', '2', '0', '', '1389931765');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('23', '47', '买家', '1', '0', '2', '0', '', '1389995605');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('26', '54', '买家', '1', '0', '2', '0', '', '1390005434');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('27', '55', '买家', '1', '0', '2', '0', '', '1390007617');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('28', '65', 'buyer', '2', '0', '0', '0', 'Buyer cancel', '1392138442');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('29', '64', 'buyer', '2', '0', '0', '0', 'Buyer cancel', '1392138446');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('30', '63', 'buyer', '2', '0', '0', '0', 'Buyer cancel', '1392138448');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('31', '62', 'buyer', '2', '0', '0', '0', 'Buyer cancel', '1392138451');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('32', '61', 'buyer', '2', '0', '0', '0', 'Buyer cancel', '1392138454');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('33', '60', 'buyer', '2', '0', '0', '0', 'Buyer cancel', '1392138458');
INSERT INTO `ecs_order_action` ( `action_id`, `order_id`, `action_user`, `order_status`, `shipping_status`, `pay_status`, `action_place`, `action_note`, `log_time` ) VALUES  ('34', '59', 'buyer', '2', '0', '0', '0', 'Buyer cancel', '1392138461');
DROP TABLE IF EXISTS `ecs_order_goods`;
CREATE TABLE `ecs_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('1', '1', '67', 'The dress of S19', 'S19', '0', '1', '100.00', '79.00', '', '0', '1', '', '0', '0', '');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('11', '11', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:8 \n', '0', '1', '', '0', '0', '86,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('12', '12', '67', 'Classic straight skirt', 'S19', '0', '3', '100.00', '79.00', 'color:Black with colourful floral pattern-lined \nsize:12 \n', '0', '1', '', '0', '0', '100,27');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('13', '13', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:10 \n', '0', '1', '', '0', '0', '87,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('14', '14', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:10 \n', '0', '1', '', '0', '0', '87,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('15', '15', '68', 'Wraparound straight skirt', 'S06', '0', '1', '120.00', '100.00', 'color:Colourful floral with black and white design at hem and waist \nsize:10 \n', '0', '1', '', '0', '0', '93,40');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('9', '9', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'size:26 \ncolor:Black with orange floral print \n', '0', '1', '', '0', '0', '56,61');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('10', '10', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:14 \n', '0', '1', '', '0', '0', '83,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('16', '15', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:10 \n', '0', '1', '', '0', '0', '81,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('17', '15', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:12 \n', '0', '1', '', '0', '0', '82,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('18', '16', '68', 'Wraparound straight skirt', 'S06', '0', '1', '120.00', '100.00', 'color:Colourful floral with black and white design at hem and waist \nsize:12 \n', '0', '1', '', '0', '0', '94,40');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('19', '17', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:10 \n', '0', '1', '', '0', '0', '87,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('20', '18', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('21', '19', '67', 'Classic straight skirt', 'S19', '0', '1', '100.00', '79.00', 'color:Aqua and green pattern \nsize:8 \n', '0', '1', '', '0', '0', '98,30');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('22', '20', '67', 'Classic straight skirt', 'S19', '0', '1', '100.00', '79.00', 'color:Black with colourful floral pattern-lined \nsize:14 \n', '1', '1', '', '0', '0', '101,27');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('23', '21', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:8 \n', '0', '1', '', '0', '0', '86,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('24', '22', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:10 \n', '0', '1', '', '0', '0', '87,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('25', '23', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:14 \n', '0', '1', '', '0', '0', '89,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('26', '24', '67', 'Classic straight skirt', 'S19', '0', '1', '100.00', '79.00', 'color:Black with colourful floral pattern-lined \nsize:8 \n', '0', '1', '', '0', '0', '98,27');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('27', '25', '67', 'Classic straight skirt', 'S19', '0', '1', '100.00', '79.00', 'color:Black with colourful floral pattern-lined \nsize:8 \n', '0', '1', '', '0', '0', '98,27');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('28', '26', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:8 \n', '0', '1', '', '0', '0', '86,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('29', '27', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:10 \n', '0', '1', '', '0', '0', '87,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('30', '28', '67', 'Classic straight skirt', 'S19', '0', '1', '100.00', '79.00', 'color:Black with colourful floral pattern-lined \nsize:10 \n', '0', '1', '', '0', '0', '99,27');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('31', '29', '67', 'Classic straight skirt', 'S19', '0', '1', '100.00', '79.00', 'color:Black with colourful floral pattern-lined \nsize:8 \n', '0', '1', '', '0', '0', '98,27');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('32', '30', '67', 'Classic straight skirt', 'S19', '0', '1', '100.00', '79.00', 'color:Black with colourful floral pattern-lined \nsize:8 \n', '0', '1', '', '0', '0', '98,27');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('33', '31', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:8 \n', '0', '1', '', '0', '0', '86,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('34', '32', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:10 \n', '0', '1', '', '0', '0', '87,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('54', '50', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('52', '48', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('53', '49', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('38', '35', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:8 \n', '0', '1', '', '0', '0', '86,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('39', '36', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:8 \n', '0', '1', '', '0', '0', '86,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('40', '37', '67', 'Classic straight skirt', 'S19', '0', '1', '100.00', '79.00', 'color:Black with colourful floral pattern-lined \nsize:10 \n', '1', '1', '', '0', '0', '99,27');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('41', '38', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:8 \n', '0', '1', '', '0', '0', '86,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('42', '39', '66', 'Wrap around top with pin-tuck detail', 'A001', '0', '1', '120.00', '100.00', 'color:grey \nsize:12 \n', '0', '1', '', '0', '0', '106,22');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('43', '39', '67', 'Classic straight skirt', 'S19', '0', '1', '100.00', '79.00', 'color:Black with colourful floral pattern-lined \nsize:10 \n', '0', '1', '', '0', '0', '99,27');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('44', '40', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:8 \n', '0', '1', '', '0', '0', '86,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('45', '41', '67', 'Classic straight skirt', 'S19', '0', '1', '100.00', '79.00', 'color:Black with colourful floral pattern-lined \nsize:10 \n', '0', '1', '', '0', '0', '99,27');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('46', '42', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('47', '43', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('48', '44', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('49', '45', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:10 \n', '0', '1', '', '0', '0', '81,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('50', '46', '66', 'Wrap around top with pin-tuck detail', 'A001', '0', '2', '120.00', '100.00', 'color:black \nsize:8 \n', '0', '1', '', '0', '0', '104,21');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('51', '47', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('55', '51', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('56', '52', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('57', '53', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('58', '54', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('59', '55', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Mint green and white polka dots \nsize:6 \n', '0', '1', '', '0', '0', '79,76');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('60', '56', '70', 'Polka dot pleated skirt', 'S05', '0', '2', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('61', '56', '67', 'Classic straight skirt', 'S19', '0', '2', '100.00', '79.00', 'color:Black with colourful floral pattern-lined \nsize:8 \n', '0', '1', '', '0', '0', '98,27');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('62', '56', '69', 'Floral pleated skirt', 'S-05', '0', '2', '120.00', '100.00', 'color:Black with cream and red leaf pattern \nsize:8 \n', '0', '1', '', '0', '0', '86,62');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('63', '57', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Brown with dotty pink floral pattern \nsize:8 \n', '0', '1', '', '0', '0', '86,68');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('64', '58', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('65', '59', '66', 'Wrap around top with pin-tuck detail', 'A001', '0', '1', '120.00', '100.00', 'color:green \nsize:16 \n', '0', '1', '', '0', '0', '108,26');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('66', '59', '68', 'Wraparound straight skirt', 'S06', '0', '3', '120.00', '100.00', 'color:Green and white pattern with green hem \nsize:8 \n', '0', '1', '', '0', '0', '92,43');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('67', '59', '70', 'Polka dot pleated skirt', 'S05', '0', '2', '0.01', '0.01', 'color:Mint green and white polka dots \nsize:10 \n', '0', '1', '', '0', '0', '81,76');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('68', '60', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Mint green and white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,76');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('69', '61', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Mint green and white polka dots \nsize:10 \n', '0', '1', '', '0', '0', '81,76');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('70', '62', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Purple butterfly print \nsize:10 \n', '0', '1', '', '0', '0', '87,67');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('71', '63', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Mint green and white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,76');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('72', '64', '70', 'Polka dot pleated skirt', 'S05', '0', '8', '0.01', '0.01', 'color:Mint green and white polka dots \nsize:10 \n', '0', '1', '', '0', '0', '81,76');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('73', '65', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with orange floral print \nsize:14 \n', '0', '1', '', '0', '0', '89,61');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('74', '66', '70', 'Polka dot pleated skirt', 'S05', '0', '6', '0.01', '0.01', 'color:Mint green and white polka dots \nsize:8 \n', '0', '1', '', '0', '0', '80,76');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('75', '66', '68', 'Wraparound straight skirt', 'S06', '0', '1', '120.00', '100.00', 'color:Green and white pattern with green hem \nsize:6 \n', '0', '1', '', '0', '0', '91,43');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('76', '67', '70', 'Polka dot pleated skirt', 'S05', '0', '1', '0.01', '0.01', 'color:Black with white polka dots \nsize:12 \n', '0', '1', '', '0', '0', '82,78');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('77', '68', '69', 'Floral pleated skirt', 'S-05', '0', '1', '120.00', '100.00', 'color:Black with orange floral print \nsize:10 \n', '0', '1', '', '0', '0', '87,61');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('78', '69', '74', 'Test top', 't-100000', '0', '1', '0.00', '0.00', 'color:blue \nsize:8 \n', '0', '1', '', '0', '0', '121,117');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('79', '70', '72', 'test dress', 'D-9999', '0', '1', '0.04', '0.00', 'size:14 \ncolor:color1 \n', '0', '1', '', '0', '0', '135,143');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('80', '71', '74', 'Test top', 't-100000', '0', '1', '0.00', '0.00', 'color:red \nsize:8 \n', '0', '1', '', '0', '0', '121,118');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('81', '72', '72', 'test dress', 'D-9999', '0', '1', '0.04', '0.00', 'size:10 \ncolor:color3 \n', '0', '1', '', '0', '0', '134,148');
INSERT INTO `ecs_order_goods` ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `goods_sn`, `product_id`, `goods_number`, `market_price`, `goods_price`, `goods_attr`, `send_number`, `is_real`, `extension_code`, `parent_id`, `is_gift`, `goods_attr_id` ) VALUES  ('82', '73', '75', 'Tops T03 ', 'T03', '0', '1', '0.15', '0.00', 'color:Blue \nsize:8 \n', '0', '1', '', '0', '0', '162,150');
DROP TABLE IF EXISTS `ecs_order_info`;
CREATE TABLE `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `how_oos` varchar(120) NOT NULL DEFAULT '',
  `how_surplus` varchar(120) NOT NULL DEFAULT '',
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_message` varchar(255) NOT NULL DEFAULT '',
  `inv_payee` varchar(120) NOT NULL DEFAULT '',
  `inv_content` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) NOT NULL DEFAULT '',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) NOT NULL DEFAULT '',
  `pay_note` varchar(255) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('1', '2013121966682', '0', '0', '0', '0', 'aaa', '1', '2', '52', '500', 'aa', '', '123456789', '', 'sdfsd@qq.com', '', '', '', '3', '上门取货', '1', 'paypal快速结帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '79.00', '0', '本站', '1387410328', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('11', '2013123148961', '30', '2', '0', '0', 'aaa', '3465', '0', '0', '0', 'beijing  changanjie changpignq', '', '123456789', '', '511214939@qq.com', '', '', '', '4', 'EMS 国内邮政特快专递', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '100.00', '0', '本站', '1388431963', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('12', '2014010346535', '30', '2', '0', '0', '是森森', '3467', '3468', '0', '0', 'aaa', '', '45125895', '', '511214939@qq.com', '', '', '', '4', 'EMS 国内邮政特快专递', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '237.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '237.00', '0', '本站', '1388713102', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('13', '2014010319319', '30', '2', '0', '0', '是森森', '3467', '3468', '0', '0', 'aaa', '', '45125895', '', '511214939@qq.com', '', '', '', '4', 'EMS 国内邮政特快专递', '1', 'paypal快速结帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '100.00', '0', '本站', '1388713163', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('9', '2013122891528', '32', '0', '0', '0', 'aa', '3457', '3463', '0', '0', 'aa', '', '1234586', '', 'shi@qq.com', '', '', '', '4', 'EMS 国内邮政特快专递', '2', 'paypal', 'Don\'t shipping until all products on deck.', '', '', '', '', '', '', '100.00', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '120.00', '0', 'Home', '1388186975', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('15', '2014010992369', '0', '0', '0', '0', '', '3477', '0', '0', '0', 'f', 'fff', 'fff', '', 'ff', '', '', '', '9', '邮政快递包裹', '1', 'paypal快速结帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.02', '30.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '130.02', '0', '本站', '1389223672', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('14', '2014010644604', '30', '0', '0', '0', 'shisensen', '3476', '0', '0', '0', 'Beijing Beiqijia Baimiao 3', '100000', '11901190', '', '574298033@qq.com', '', '', '', '4', 'EMS 国内邮政特快专递', '1', 'paypal快速结帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '20.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '120.00', '0', '本站', '1388961519', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('10', '2013122830861', '30', '2', '0', '0', 'aaa', '3457', '3463', '0', '0', 'aaa', '', '123456789', '', '511214939@qq.com', '', '', '', '4', 'EMS 国内邮政特快专递', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', 'Home', '1388192460', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('16', '2014010930399', '0', '0', '0', '0', '', '3477', '0', '0', '0', 's', 'ss', 'ss', '', 'ss', '', '', '', '9', '邮政快递包裹', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '110.00', '0', '本站', '1389223753', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('17', '2014011445456', '0', '0', '0', '0', '', '3477', '0', '0', '0', 'as', 'as', 'as', '', 'as', '', '', '', '9', '邮政快递包裹', '1', 'paypal快速结帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '110.00', '0', '本站', '1389668304', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('18', '2014011548667', '0', '0', '0', '0', '', '3477', '0', '0', '0', 'q', 'q', 'q', '', 'q', '', '', '', '8', 'EMS 国内邮政特快专递', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '15.01', '0', '本站', '1389722110', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('19', '2014011561360', '0', '0', '0', '0', '', '3478', '0', '1', '0', '1', '1', '1', '', '1', '', '', '', '10', '国际联邦快递公司(FedEx)', '1', 'paypal快速结帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '79.00', '0', '本站', '1389729730', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('20', '2014011576400', '30', '5', '5', '2', '', '3484', '0', '0', '0', 'luoerzhuang', '056600', '1222', '', '511214939@qq.com', '', '', '', '10', '国际联邦快递公司(FedEx)', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '0.00', '0.00', '0.00', '0.00', '0.00', '79.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1389734907', '1389735101', '1389735101', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('21', '2014011665575', '30', '0', '0', '0', '', '3484', '0', '0', '0', 'luoerzhuang', '056600', '1222', '', '511214939@qq.com', '', '', '', '16', 'Express shipping', '1', 'paypal快速结帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '100.00', '0', '本站', '1389832719', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('22', '2014011694399', '30', '0', '0', '0', '', '3484', '0', '0', '0', 'luoerzhuang', '056600', '1222', '', '511214939@qq.com', '', '', '', '15', 'Ordinary shipping', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '110.00', '0', '本站', '1389834047', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('23', '2014011662805', '30', '0', '0', '0', '', '3484', '0', '0', '0', 'luoerzhuang', '056600', '1222', '', '511214939@qq.com', '', '', '', '15', 'Ordinary shipping', '1', 'paypal快速结帐', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '110.00', '0', '本站', '1389834604', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('24', '2014011626179', '30', '0', '0', '0', '', '3484', '0', '0', '0', 'luoerzhuang', '056600', '1222', '', '511214939@qq.com', '', '', '', '19', 'Ordinary shipping', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '89.00', '0', '本站', '1389836416', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('25', '2014011659055', '30', '0', '0', '0', '', '3484', '0', '0', '0', 'luoerzhuang', '056600', '1222', '', '511214939@qq.com', '', '', '', '19', 'Ordinary shipping', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '89.00', '0', '本站', '1389836632', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('26', '2014011659258', '30', '0', '0', '0', '', '3484', '0', '0', '0', 'luoerzhuang', '056600', '1222', '', '511214939@qq.com', '', '', '', '19', 'Ordinary shipping', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '5.00', '105.00', '0', '本站', '1389837577', '0', '0', '0', '0', '0', '1', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('27', '2014011684335', '30', '0', '0', '0', '', '3484', '0', '0', '0', 'luoerzhuang', '056600', '1222', '', '511214939@qq.com', '', '', '', '19', 'Ordinary shipping', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '110.00', '0', '本站', '1389837906', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('28', '2014011691918', '0', '0', '0', '0', '', '3478', '0', '0', '0', 'aaaaaaaa', 'aaaaaa', 'aaaaaaaaaaaa', '', 'aaaaaa', '', '', '', '19', 'Ordinary shipping', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '89.00', '0', '本站', '1389838491', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('29', '2014011647622', '30', '0', '0', '0', '', '3484', '0', '0', '0', 'luoerzhuang', '056600', '1222', '', '511214939@qq.com', '', '', '', '22', 'Express shipping ($10.00 AUD)', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '5.00', '84.00', '0', '本站', '1389839910', '0', '0', '0', '0', '0', '2', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('30', '2014011653029', '30', '0', '0', '0', '', '3478', '0', '0', '0', 'Beijing Beiqijia Baimiao 3', '100000', '1510496676', '', '511214939@qq.com', '', '', '', '22', 'Express shipping ($10.00 AUD)', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '89.00', '0', '本站', '1389840529', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('31', '2014011665831', '30', '0', '0', '0', '', '3478', '0', '0', '0', 'Beijing Beiqijia Baimiao 3', '100000', '1510496676', '', '511214939@qq.com', '', '', '', '22', 'Express shipping ($10.00 AUD)', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '110.00', '0', '本站', '1389840827', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('32', '2014011600117', '30', '2', '0', '0', '', '3478', '0', '0', '0', 'Beijing Beiqijia Baimiao 3', '100000', '1510496676', '', '511214939@qq.com', '', '', '', '22', 'Express shipping ($10.00 AUD)', '2', 'paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '110.00', '0', '本站', '1389841015', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('48', '2014011857465', '30', '1', '0', '2', '', '3479', '0', '0', '0', 'q', 'q', 'q', '', 'q', '', '', '', '21', 'Ordinary shipping (Free)', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1390004089', '1390004138', '1390004138', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('49', '2014011862265', '30', '0', '0', '0', '', '3479', '0', '0', '0', 'q', 'q', 'q', '', 'q', '', '', '', '21', 'Ordinary shipping (Free)', '2', 'Pay wih Credit Card', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1390004522', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('50', '2014011847569', '30', '1', '0', '2', '', '3479', '0', '0', '0', 'q', 'q', 'q', '', 'q', '', '', '', '21', 'Ordinary shipping (Free)', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1390004594', '1390004745', '1390004745', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('35', '2014011618780', '30', '0', '0', '0', '', '3478', '0', '0', '0', 'Beijing Beiqijia Baimiao 3', '100000', '1510496676', '', '511214939@qq.com', '', '', '', '22', 'Express shipping ($10.00 AUD)', '2', 'Pay wih Credit Card', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '110.00', '0', '本站', '1389845536', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('36', '2014011638133', '30', '1', '3', '2', '', '3478', '0', '0', '0', 'Beijing Beiqijia Baimiao 3', '100000', '1510496676', '', '511214939@qq.com', '', '', '', '22', 'Express shipping ($10.00 AUD)', '2', 'Pay wih Credit Card', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '10.00', '0.00', '0.00', '0.00', '0.00', '110.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1389845763', '1389846045', '1389846045', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('37', '2014011617052', '30', '5', '5', '2', '', '3478', '0', '0', '0', 'Beijing Beiqijia Baimiao 3', '100000', '1510496676', '', '511214939@qq.com', '', '', '', '22', 'Express shipping ($10.00 AUD)', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '10.00', '0.00', '0.00', '0.00', '0.00', '89.00', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1389845798', '1389845928', '1389845928', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('38', '2014011617504', '0', '0', '0', '0', '', '3482', '0', '0', '0', 'q', 'q', 'q', '', 'q', '', '', '', '21', 'Ordinary shipping (Free)', '2', 'Pay wih Credit Card', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '100.00', '0', '本站', '1389854595', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('39', '2014011710186', '38', '0', '0', '0', '', '3478', '0', '0', '0', '1 Maple Drive', '12121212', '12321233', '', '1231231@live.com', '', '', '', '21', 'Ordinary shipping (Free)', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '179.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '179.00', '0', '本站', '1389927410', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('40', '2014011737941', '0', '0', '0', '0', '', '3479', '0', '0', '0', 'address1', '20000', '33333333', '', '5555@ll.com', '', '', '', '22', 'Express shipping ($10.00 AUD)', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '110.00', '0', '本站', '1389929253', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('41', '2014011789782', '0', '0', '0', '0', '', '3478', '0', '0', '0', 's', 's', 's', '', 's', '', '', '', '22', 'Express shipping ($10.00 AUD)', '2', 'Pay wih Credit Card', '等待所有商品备齐后再发', '', '', '', '', '', '', '79.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '89.00', '0', '本站', '1389929347', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('42', '2014011748509', '0', '1', '0', '2', '', '3478', '0', '0', '0', 'd', 'd', 'd', '', 'd', '', '', '', '21', 'Ordinary shipping (Free)', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1389929479', '1389929526', '1389929526', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('43', '2014011759864', '0', '1', '0', '2', '', '3478', '0', '0', '0', '的', '的', 'd', '', 'd', '', '', '', '21', 'Ordinary shipping (Free)', '2', 'Pay wih Credit Card', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1389930948', '1389930983', '1389930983', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('44', '2014011742421', '30', '0', '0', '0', '', '3479', '0', '0', '0', 'q', 'q', 'q', '', 'q', '', '', '', '22', 'Express shipping ($10.00 AUD)', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '10.01', '0', '本站', '1389931685', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('45', '2014011796093', '30', '1', '0', '2', '', '3479', '0', '0', '0', 'q', 'q', 'q', '', 'q', '', '', '', '21', 'Ordinary shipping (Free)', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1389931713', '1389931765', '1389931765', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('46', '2014011802207', '0', '0', '0', '0', '', '3479', '0', '0', '0', 'address', '10000', '12345678', '', '12@qq.com', '', '', '', '22', 'Express shipping ($10.00 AUD)', '2', 'Pay wih Credit Card', '等待所有商品备齐后再发', '', '', '', '', '', '', '200.00', '10.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '210.00', '0', '本站', '1389995438', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('47', '2014011848920', '0', '1', '0', '2', '', '3478', '0', '0', '0', 'a', 'a', 'a', '', 'a', '', '', '', '21', 'Ordinary shipping (Free)', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1389995574', '1389995605', '1389995605', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('51', '2014011847190', '0', '0', '0', '0', '', '3478', '0', '0', '0', 'q', 'q', 'q', '', 'q', '', '', '', '21', 'Ordinary shipping (Free)', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1390004764', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('52', '2014011850972', '0', '0', '0', '0', '', '3478', '0', '0', '0', 'cc', 'cc', 'cc', '', 'cc', '', '', '', '21', 'Ordinary shipping (Free)', '2', 'Pay wih Credit Card', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1390004923', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('53', '2014011824105', '0', '0', '0', '0', '', '3478', '0', '0', '0', 'b', 'b', 'b', '', 'b', '', '', '', '21', 'Ordinary shipping (Free)', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.01', '0', '本站', '1390004967', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('54', '2014011894513', '0', '1', '0', '2', '', '3478', '0', '0', '0', 'v', 'v', 'v', '', 'v', '', '', '', '21', 'Ordinary shipping (Free)', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1390005243', '1390005434', '1390005434', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('55', '2014011808690', '36', '1', '0', '2', '', '3494', '0', '0', '0', 'dsc', 'wde', '3er455', '', 'efd3', '', '', '', '21', 'Ordinary shipping (Free)', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '0.00', '0.00', '0.00', '0.00', '0.00', '0.01', '0.00', '0', '0.00', '0.00', '0.00', '0', '本站', '1390007566', '1390007617', '1390007617', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('56', '2014011995523', '30', '0', '0', '0', '', '3478', '0', '0', '0', 's', 's', 's', '', 's', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '358.02', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '358.02', '0', '本站', '1390102848', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('57', '2014011968954', '0', '0', '0', '0', '', '3480', '0', '0', '0', 'j', 'k', 'h', '', 'u', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '115.00', '0', '本站', '1390114245', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('58', '2014011940073', '38', '0', '0', '0', '', '3478', '0', '0', '0', '1 Maple Drive', '12121212', '12321233', '', '1231231@live.com', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '15.01', '0', '本站', '1390117737', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('59', '2014021026031', '36', '2', '0', '0', '', '3481', '0', '0', '0', 'bb', 'ee', 'gg', '', 'ff', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '400.02', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '400.02', '0', '本站', '1392012270', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('60', '2014021142694', '36', '2', '0', '0', '', '3481', '0', '0', '0', 'bb', 'ee', 'gg', '', 'ff', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '15.01', '0', '本站', '1392062306', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('61', '2014021130677', '36', '2', '0', '0', '', '3481', '0', '0', '0', 'bb', 'ee', 'gg', '', 'ff', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '15.01', '0', '本站', '1392063766', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('62', '2014021185552', '36', '2', '0', '0', '', '3481', '0', '0', '0', 'bb', 'ee', 'gg', '', 'ff', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '115.00', '0', '本站', '1392064355', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('63', '2014021113088', '36', '2', '0', '0', '', '3481', '0', '0', '0', 'bb', 'ee', 'gg', '', 'ff', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '15.01', '0', '本站', '1392067668', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('64', '2014021109038', '36', '2', '0', '0', '', '3481', '0', '0', '0', 'bb', 'ee', 'gg', '', 'ff', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.08', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.08', '0', '本站', '1392082601', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('65', '2014021284289', '36', '2', '0', '0', '', '3481', '0', '0', '0', 'bb', 'ee', 'gg', '', 'ff', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '115.00', '0', '本站', '1392138272', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('66', '2014021228533', '49', '0', '0', '0', '', '3481', '0', '0', '0', 'd', 'd', 'd', '', 'd@d.com', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.06', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '100.06', '0', '本站', '1392138406', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('67', '2014021284853', '49', '0', '0', '0', '', '3481', '0', '0', '0', 'd', 'd', 'd', '', 'd@d.com', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.01', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '15.01', '0', '本站', '1392152749', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('68', '2014021317984', '0', '0', '0', '0', '', '3495', '0', '0', '0', 'w', 'w', 'w', '', 'w', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '100.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '115.00', '0', '本站', '1392235910', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('69', '2014021350854', '49', '0', '0', '0', '', '3481', '0', '0', '0', 'd', 'd', 'd', '', 'd@d.com', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '15.00', '0', '本站', '1392251015', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('70', '2014021636354', '36', '0', '0', '0', '', '3481', '0', '0', '0', 'bb', 'ee', 'gg', '', 'ff', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '15.00', '0', '本站', '1392478934', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('71', '2014021864857', '36', '0', '0', '0', '', '3481', '0', '0', '0', 'bb', 'ee', 'gg', '', 'ff', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '15.00', '0', '本站', '1392656536', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('72', '2014022554022', '36', '0', '0', '0', '', '3481', '0', '0', '0', 'bb', 'ee', 'gg', '', 'ff', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '15.00', '0', '本站', '1393275927', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
INSERT INTO `ecs_order_info` ( `order_id`, `order_sn`, `user_id`, `order_status`, `shipping_status`, `pay_status`, `consignee`, `country`, `province`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `email`, `best_time`, `sign_building`, `postscript`, `shipping_id`, `shipping_name`, `pay_id`, `pay_name`, `how_oos`, `how_surplus`, `pack_name`, `card_name`, `card_message`, `inv_payee`, `inv_content`, `goods_amount`, `shipping_fee`, `insure_fee`, `pay_fee`, `pack_fee`, `card_fee`, `money_paid`, `surplus`, `integral`, `integral_money`, `bonus`, `order_amount`, `from_ad`, `referer`, `add_time`, `confirm_time`, `pay_time`, `shipping_time`, `pack_id`, `card_id`, `bonus_id`, `invoice_no`, `extension_code`, `extension_id`, `to_buyer`, `pay_note`, `agency_id`, `inv_type`, `tax`, `is_separate`, `parent_id`, `discount` ) VALUES  ('73', '2014022881898', '36', '0', '0', '0', '', '3481', '0', '0', '0', 'bb', 'ee', 'gg', '', 'ff', '', '', '', '30', 'Default shipping', '1', 'Pay with Paypal', '等待所有商品备齐后再发', '', '', '', '', '', '', '0.00', '15.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '15.00', '0', '本站', '1393532535', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', '0', '', '0.00', '0', '0', '0.00');
DROP TABLE IF EXISTS `ecs_pack`;
CREATE TABLE `ecs_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `pack_img` varchar(255) NOT NULL DEFAULT '',
  `pack_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pack_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_package_goods`;
CREATE TABLE `ecs_package_goods` (
  `package_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`,`goods_id`,`admin_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_pay_log`;
CREATE TABLE `ecs_pay_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('1', '1', '79.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('2', '2', '158.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('3', '3', '99.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('4', '4', '99.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('9', '9', '120.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('8', '8', '120.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('7', '7', '10099.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('10', '10', '0.01', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('11', '11', '100.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('12', '12', '237.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('13', '13', '100.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('14', '14', '120.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('15', '15', '130.02', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('16', '16', '110.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('17', '17', '110.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('18', '18', '15.01', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('19', '19', '79.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('20', '20', '79.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('21', '21', '100.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('22', '22', '110.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('23', '23', '110.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('24', '24', '89.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('25', '25', '89.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('26', '26', '105.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('27', '27', '110.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('28', '28', '89.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('29', '29', '84.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('30', '30', '89.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('31', '31', '110.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('32', '32', '110.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('33', '33', '200.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('34', '34', '89.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('35', '35', '110.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('36', '36', '110.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('37', '37', '89.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('38', '38', '100.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('39', '39', '179.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('40', '40', '110.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('41', '41', '89.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('42', '42', '0.01', '0', '1');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('43', '43', '0.01', '0', '1');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('44', '44', '10.01', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('45', '45', '0.01', '0', '1');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('46', '46', '210.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('47', '47', '0.01', '0', '1');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('48', '48', '0.01', '0', '1');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('49', '49', '0.01', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('50', '50', '0.01', '0', '1');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('51', '51', '0.01', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('52', '52', '0.01', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('53', '53', '0.01', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('54', '54', '0.01', '0', '1');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('55', '55', '0.01', '0', '1');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('56', '56', '358.02', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('57', '57', '115.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('58', '58', '15.01', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('59', '59', '400.02', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('60', '60', '15.01', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('61', '61', '15.01', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('62', '62', '115.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('63', '63', '15.01', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('64', '64', '0.08', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('65', '65', '115.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('66', '66', '100.06', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('67', '67', '15.01', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('68', '68', '115.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('69', '69', '15.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('70', '70', '15.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('71', '71', '15.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('72', '72', '15.00', '0', '0');
INSERT INTO `ecs_pay_log` ( `log_id`, `order_id`, `order_amount`, `order_type`, `is_paid` ) VALUES  ('73', '73', '15.00', '0', '0');
DROP TABLE IF EXISTS `ecs_payment`;
CREATE TABLE `ecs_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_payment` ( `pay_id`, `pay_code`, `pay_name`, `pay_fee`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`, `is_online` ) VALUES  ('1', 'paypal_ec', 'Pay with Paypal', '0', '', '0', 'a:4:{i:0;a:3:{s:4:\"name\";s:18:\"paypal_ec_username\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:24:\"ssnushall_api1.gmail.com\";}i:1;a:3:{s:4:\"name\";s:18:\"paypal_ec_password\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:16:\"9R6M6JCGHNWU3LAN\";}i:2;a:3:{s:4:\"name\";s:19:\"paypal_ec_signature\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:56:\"A68a.g5RRCHWsFkOA9yub6ZlQXnzAa4OOE0YeYBcAm2mQHxD817asQA.\";}i:3;a:3:{s:4:\"name\";s:18:\"paypal_ec_currency\";s:4:\"type\";s:6:\"select\";s:5:\"value\";s:3:\"AUD\";}}', '1', '0', '1');
INSERT INTO `ecs_payment` ( `pay_id`, `pay_code`, `pay_name`, `pay_fee`, `pay_desc`, `pay_order`, `pay_config`, `enabled`, `is_cod`, `is_online` ) VALUES  ('2', 'paypal', 'Pay wih Credit Card', '0', '', '0', 'a:2:{i:0;a:3:{s:4:\"name\";s:14:\"paypal_account\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:19:\"ssnushall@gmail.com\";}i:1;a:3:{s:4:\"name\";s:15:\"paypal_currency\";s:4:\"type\";s:6:\"select\";s:5:\"value\";s:3:\"AUD\";}}', '1', '0', '1');
DROP TABLE IF EXISTS `ecs_plugins`;
CREATE TABLE `ecs_plugins` (
  `code` varchar(30) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `library` varchar(255) NOT NULL DEFAULT '',
  `assign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `install_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_products`;
CREATE TABLE `ecs_products` (
  `product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_attr` varchar(50) DEFAULT NULL,
  `product_sn` varchar(60) DEFAULT NULL,
  `product_number` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_reg_extend_info`;
CREATE TABLE `ecs_reg_extend_info` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `reg_field_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_reg_fields`;
CREATE TABLE `ecs_reg_fields` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `reg_field_name` varchar(60) NOT NULL,
  `dis_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_need` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_reg_fields` ( `id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need` ) VALUES  ('1', 'MSN', '0', '0', '1', '0');
INSERT INTO `ecs_reg_fields` ( `id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need` ) VALUES  ('2', 'QQ', '0', '0', '1', '0');
INSERT INTO `ecs_reg_fields` ( `id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need` ) VALUES  ('3', '办公电话', '0', '0', '1', '0');
INSERT INTO `ecs_reg_fields` ( `id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need` ) VALUES  ('4', '家庭电话', '0', '0', '1', '0');
INSERT INTO `ecs_reg_fields` ( `id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need` ) VALUES  ('5', '手机', '0', '0', '1', '0');
INSERT INTO `ecs_reg_fields` ( `id`, `reg_field_name`, `dis_order`, `display`, `type`, `is_need` ) VALUES  ('6', '密码找回问题', '0', '0', '1', '0');
DROP TABLE IF EXISTS `ecs_region`;
CREATE TABLE `ecs_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3478', '0', 'UNITED STATES', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3479', '0', 'UNITED KINGDOM', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3480', '0', 'ARGENTINA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3481', '0', 'AUSTRALIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3482', '0', 'AUSTRIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3483', '0', 'BAHAMAS', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3484', '0', 'BAHRAIN', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3485', '0', 'BELGIUM', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3486', '0', 'BERMUDA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3487', '0', 'BOSNIA AND HERZEGOVINA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3488', '0', 'BRAZIL', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3489', '0', 'BRUNEI DARUSSALAM', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3490', '0', 'BULGARIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3491', '0', 'CANADA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3492', '0', 'CAYMAN ISLANDS', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3493', '0', 'CHILE', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3494', '0', 'CHINA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3495', '0', 'COLOMBIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3496', '0', 'CROATIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3497', '0', 'CZECH REPUBLIC', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3498', '0', 'DENMARK', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3499', '0', 'ECUADOR', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3500', '0', 'EGYPT', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3501', '0', 'FINLAND', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3502', '0', 'FRANCE', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3503', '0', 'GERMANY', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3504', '0', 'GREECE', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3505', '0', 'GREENLAND', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3506', '0', 'GUAM', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3508', '0', 'GUATEMALA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3509', '0', 'HAITI', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3510', '0', 'HOLY SEE (VATICAN CITY)', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3511', '0', 'HONDURAS', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3512', '0', 'HONG KONG', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3513', '0', 'HUNGARY', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3514', '0', 'ICELAND', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3515', '0', 'INDIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3516', '0', 'INDONESIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3517', '0', 'IRELAND', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3518', '0', 'ISRAEL', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3519', '0', 'ITALY', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3520', '0', 'JAMAICA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3521', '0', 'JAPAN', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3522', '0', 'KUWAIT', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3523', '0', 'LATVIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3524', '0', 'LEBANON', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3525', '0', 'LIECHTENSTEIN', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3526', '0', 'LITHUANIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3527', '0', 'LUXEMBOURG', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3528', '0', 'MACAO', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3529', '0', 'MACEDONIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3530', '0', 'MALAYSIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3531', '0', 'MALTA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3532', '0', 'MEXICO', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3533', '0', 'MONACO', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3534', '0', 'NETHERLANDS', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3535', '0', 'NEW ZEALAND', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3536', '0', 'NORWAY', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3537', '0', 'OMAN', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3538', '0', 'PAKISTAN', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3539', '0', 'PERU', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3540', '0', 'PHILIPPINES', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3541', '0', 'POLAND', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3542', '0', 'PORTUGAL', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3543', '0', 'PUERTO RICO', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3544', '0', 'QATAR', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3545', '0', 'ROMANI', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3546', '0', 'RUSSIAN FEDERATION', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3547', '0', 'SAUDI ARABIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3548', '0', 'SERBIA AND MONTENEGRO', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3549', '0', 'SINGAPORE', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3550', '0', 'SLOVAKIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3551', '0', 'SLOVENIA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3552', '0', 'SOUTH AFRICA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3553', '0', 'SPAIN', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3554', '0', 'SRI LANKA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3555', '0', 'SWEDEN', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3556', '0', 'SWITZERLAND', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3557', '0', 'TAIWAN', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3558', '0', 'THAILAND', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3559', '0', 'TURKEY', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3560', '0', 'UKRAINE', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3561', '0', 'UNITED ARAB EMIRATES', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3562', '0', 'VENEZUELA', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3563', '0', 'VIETNAM', '0', '0');
INSERT INTO `ecs_region` ( `region_id`, `parent_id`, `region_name`, `region_type`, `agency_id` ) VALUES  ('3564', '0', 'VIRGIN ISLANDS, BRITISH', '0', '0');
DROP TABLE IF EXISTS `ecs_role`;
CREATE TABLE `ecs_role` (
  `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `role_describe` text,
  PRIMARY KEY (`role_id`),
  KEY `user_name` (`role_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_searchengine`;
CREATE TABLE `ecs_searchengine` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_searchengine` ( `date`, `searchengine`, `count` ) VALUES  ('2014-02-07', 'GOOGLE', '1');
INSERT INTO `ecs_searchengine` ( `date`, `searchengine`, `count` ) VALUES  ('2014-02-08', 'GOOGLE', '8');
INSERT INTO `ecs_searchengine` ( `date`, `searchengine`, `count` ) VALUES  ('2014-02-09', 'GOOGLE', '32');
INSERT INTO `ecs_searchengine` ( `date`, `searchengine`, `count` ) VALUES  ('2014-02-10', 'GOOGLE', '16');
INSERT INTO `ecs_searchengine` ( `date`, `searchengine`, `count` ) VALUES  ('2014-02-11', 'GOOGLE', '6');
INSERT INTO `ecs_searchengine` ( `date`, `searchengine`, `count` ) VALUES  ('2014-02-12', 'GOOGLE', '1');
INSERT INTO `ecs_searchengine` ( `date`, `searchengine`, `count` ) VALUES  ('2014-02-18', 'GOOGLE', '1');
INSERT INTO `ecs_searchengine` ( `date`, `searchengine`, `count` ) VALUES  ('2014-02-28', 'GOOGLE', '1');
DROP TABLE IF EXISTS `ecs_shipping`;
CREATE TABLE `ecs_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_shipping` ( `shipping_id`, `shipping_code`, `shipping_name`, `shipping_desc`, `insure`, `support_cod`, `enabled`, `shipping_print`, `print_bg`, `config_lable`, `print_model`, `shipping_order` ) VALUES  ('30', 'yto', 'Default shipping', '满5件衣服就免费包邮，其他的是15元的快递费', '0', '1', '1', '', '/images/receipt/dly_yto.jpg', 't_shop_province,网店-省份,132,24,279.6,105.7,b_shop_province||,||t_shop_name,网店-名称,268,29,142.95,133.85,b_shop_name||,||t_shop_address,网店-地址,346,40,67.3,199.95,b_shop_address||,||t_shop_city,网店-城市,64,35,223.8,163.95,b_shop_city||,||t_shop_district,网店-区/县,56,35,314.9,164.25,b_shop_district||,||t_pigeon,√-对号,21,21,143.1,263.2,b_pigeon||,||t_customer_name,收件人-姓名,89,25,488.65,121.05,b_customer_name||,||t_customer_tel,收件人-电话,136,21,656,110.6,b_customer_tel||,||t_customer_mobel,收件人-手机,137,21,655.6,132.8,b_customer_mobel||,||t_customer_province,收件人-省份,115,24,480.2,173.5,b_customer_province||,||t_customer_city,收件人-城市,60,27,609.3,172.5,b_customer_city||,||t_customer_district,收件人-区/县,58,28,696.8,173.25,b_customer_district||,||t_customer_post,收件人-邮编,93,21,701.1,240.25,b_customer_post||,||', '2', '0');
DROP TABLE IF EXISTS `ecs_shipping_area`;
CREATE TABLE `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL,
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_shipping_area` ( `shipping_area_id`, `shipping_area_name`, `shipping_id`, `configure` ) VALUES  ('29', 'Default shipping', '30', 'a:6:{i:0;a:2:{s:4:\"name\";s:8:\"item_fee\";s:5:\"value\";s:2:\"15\";}i:1;a:2:{s:4:\"name\";s:8:\"base_fee\";s:5:\"value\";s:1:\"5\";}i:2;a:2:{s:4:\"name\";s:8:\"step_fee\";s:5:\"value\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:10:\"free_money\";s:5:\"value\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:16:\"fee_compute_mode\";s:5:\"value\";s:9:\"by_number\";}i:5;a:2:{s:4:\"name\";s:7:\"pay_fee\";s:5:\"value\";s:0:\"\";}}');
DROP TABLE IF EXISTS `ecs_shop_config`;
CREATE TABLE `ecs_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('1', '0', 'shop_info', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('2', '0', 'basic', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('3', '0', 'display', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('4', '0', 'shopping_flow', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('5', '0', 'smtp', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('6', '0', 'hidden', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('7', '0', 'goods', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('8', '0', 'sms', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('9', '0', 'wap', 'group', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('101', '1', 'shop_name', 'text', '', '', 'Kipanddan', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('102', '1', 'shop_title', 'text', '', '', 'Kipanddan', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('103', '1', 'shop_desc', 'text', '', '', 'Kipanddan', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('104', '1', 'shop_keywords', 'text', '', '', 'Kipanddan', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('105', '1', 'shop_country', 'manual', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('106', '1', 'shop_province', 'manual', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('107', '1', 'shop_city', 'manual', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('108', '1', 'shop_address', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('109', '1', 'qq', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('110', '1', 'ww', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('111', '1', 'skype', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('112', '1', 'ym', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('113', '1', 'msn', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('114', '1', 'service_email', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('115', '1', 'service_phone', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('117', '1', 'close_comment', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('119', '1', 'licensed', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('120', '1', 'user_notice', 'textarea', '', '', '用户中心公告！', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('121', '1', 'shop_notice', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('122', '1', 'shop_reg_closed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('201', '2', 'lang', 'manual', '', '', 'en_us', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('202', '2', 'icp_number', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('204', '2', 'watermark', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('207', '2', 'use_storage', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('209', '2', 'rewrite', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('210', '2', 'integral_name', 'text', '', '', '积分', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('211', '2', 'integral_scale', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('212', '2', 'integral_percent', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('213', '2', 'sn_prefix', 'text', '', '', 'ECS', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('214', '2', 'comment_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('215', '2', 'no_picture', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('218', '2', 'stats_code', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('219', '2', 'cache_time', 'text', '', '', '3600', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('220', '2', 'register_points', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('224', '2', 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('228', '2', 'enable_order_check', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('229', '2', 'default_storage', 'text', '', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('231', '2', 'visit_stats', 'select', 'on,off', '', 'on', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('232', '2', 'send_mail_on', 'select', 'on,off', '', 'off', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('233', '2', 'auto_generate_gallery', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('234', '2', 'retain_original_img', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('235', '2', 'member_email_validate', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('236', '2', 'message_board', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('239', '2', 'certificate_id', 'hidden', '', '', '1692315233', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('240', '2', 'token', 'hidden', '', '', '2b10d17cbfc00b76679faa9d82e0fc752d0046d1963196e22877bba6b689dad0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('241', '2', 'certi', 'hidden', '', '', 'http://service.shopex.cn/openapi/api.php', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('242', '2', 'send_verify_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('243', '2', 'ent_id', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('244', '2', 'ent_ac', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('245', '2', 'ent_sign', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('246', '2', 'ent_email', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('301', '3', 'date_format', 'hidden', '', '', 'Y-m-d', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('303', '3', 'currency_format', 'text', '', '', '$%s AUD', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('304', '3', 'thumb_width', 'text', '', '', '100', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('305', '3', 'thumb_height', 'text', '', '', '100', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('306', '3', 'image_width', 'text', '', '', '240', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('307', '3', 'image_height', 'text', '', '', '400', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('312', '3', 'top_number', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('313', '3', 'history_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('314', '3', 'comments_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('315', '3', 'bought_goods', 'text', '', '', '3', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('316', '3', 'article_number', 'text', '', '', '8', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('317', '3', 'goods_name_length', 'text', '', '', '7', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('319', '3', 'page_size', 'text', '', '', '9', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('322', '3', 'show_order_type', 'select', '0,1,2', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('323', '3', 'attr_related_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('324', '3', 'goods_gallery_number', 'text', '', '', '5', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('325', '3', 'article_title_length', 'text', '', '', '16', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('326', '3', 'name_of_region_1', 'text', '', '', '国家', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('327', '3', 'name_of_region_2', 'text', '', '', '省', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('328', '3', 'name_of_region_3', 'text', '', '', '市', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('329', '3', 'name_of_region_4', 'text', '', '', '区', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('330', '3', 'search_keywords', 'text', '', '', '', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('332', '3', 'related_goods_number', 'text', '', '', '4', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('333', '3', 'help_open', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('334', '3', 'article_page_size', 'text', '', '', '10', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('335', '3', 'page_style', 'select', '0,1', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('336', '3', 'recommend_order', 'select', '0,1', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('337', '3', 'index_ad', 'hidden', '', '', 'sys', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('401', '4', 'can_invoice', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('402', '4', 'use_integral', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('403', '4', 'use_bonus', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('404', '4', 'use_surplus', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('405', '4', 'use_how_oos', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('418', '4', 'invoice_content', 'textarea', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('419', '4', 'anonymous_buy', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '3', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('425', '4', 'send_service_email', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('426', '4', 'show_goods_in_cart', 'select', '1,2,3', '', '3', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('427', '4', 'show_attr_in_cart', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('501', '5', 'smtp_host', 'text', '', '', 'smtp.qq.com', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('502', '5', 'smtp_port', 'text', '', '', '25', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('503', '5', 'smtp_user', 'text', '', '', '511214939@qq.com', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('504', '5', 'smtp_pass', 'password', '', '', 'sss20061108ayc', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('505', '5', 'smtp_mail', 'text', '', '', '511214939@qq.com', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('507', '5', 'mail_service', 'select', '0,1', '', '1', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('508', '5', 'smtp_ssl', 'select', '0,1', '', '0', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('602', '6', 'integrate_config', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('603', '6', 'hash_code', 'hidden', '', '', 'd4dbcf45872e980531e408128238f410', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('604', '6', 'template', 'hidden', '', '', 'default', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('605', '6', 'install_date', 'hidden', '', '', '1384397543', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('606', '6', 'ecs_version', 'hidden', '', '', 'v2.7.3', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('608', '6', 'sms_password', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('610', '6', 'sms_domain', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('611', '6', 'sms_count', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('613', '6', 'sms_balance', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:1;}', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('617', '6', 'captcha', 'hidden', '', '', '12', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('621', '6', 'points_rule', 'hidden', '', '', '', '0');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('622', '6', 'flash_theme', 'hidden', '', '', 'dynfocus', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('623', '6', 'stylename', 'hidden', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('701', '7', 'show_goodssn', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('702', '7', 'show_brand', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('703', '7', 'show_goodsweight', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('705', '7', 'show_addtime', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('801', '8', 'sms_shop_mobile', 'text', '', '', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('802', '8', 'sms_order_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('803', '8', 'sms_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('804', '8', 'sms_order_shipped', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('901', '9', 'wap_config', 'select', '1,0', '', '0', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1');
INSERT INTO `ecs_shop_config` ( `id`, `parent_id`, `code`, `type`, `store_range`, `store_dir`, `value`, `sort_order` ) VALUES  ('903', '2', 'message_check', 'select', '1,0', '', '1', '1');
DROP TABLE IF EXISTS `ecs_snatch_log`;
CREATE TABLE `ecs_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `snatch_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bid_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `snatch_id` (`snatch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_stats`;
CREATE TABLE `ecs_stats` (
  `access_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `visit_times` smallint(5) unsigned NOT NULL DEFAULT '1',
  `browser` varchar(60) NOT NULL DEFAULT '',
  `system` varchar(20) NOT NULL DEFAULT '',
  `language` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(30) NOT NULL DEFAULT '',
  `referer_domain` varchar(100) NOT NULL DEFAULT '',
  `referer_path` varchar(200) NOT NULL DEFAULT '',
  `access_url` varchar(255) NOT NULL DEFAULT '',
  KEY `access_time` (`access_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384368751', '127.0.0.1', '3', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/install/index.php?lang=zh_cn&step=done', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384370846', '127.0.0.1', '4', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/index.php', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384489647', '127.0.0.1', '1', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384664902', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384723696', '127.0.0.1', '1', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384728210', '127.0.0.1', '2', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384739586', '127.0.0.1', '3', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384748771', '127.0.0.1', '4', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384755396', '127.0.0.1', '5', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384759742', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384759799', '127.0.0.1', '6', 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384763198', '127.0.0.1', '1', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384763293', '127.0.0.1', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384802710', '127.0.0.1', '1', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384808916', '127.0.0.1', '2', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/admin/goods.php?act=list', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384849427', '127.0.0.1', '3', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384852008', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384855708', '127.0.0.1', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=3', '/ecshop/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384901698', '127.0.0.1', '1', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384906279', '127.0.0.1', '2', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/', '/ecshop/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384935209', '127.0.0.1', '3', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384979741', '127.0.0.1', '4', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1384986896', '127.0.0.1', '5', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/admin/goods.php?act=list&uselastfilter=1', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385007298', '127.0.0.1', '6', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385015794', '127.0.0.1', '7', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/goods.php?id=41', '/ecshop/gallery.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385072457', '127.0.0.1', '8', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385079841', '127.0.0.1', '9', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=9', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385147459', '127.0.0.1', '1', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385168166', '127.0.0.1', '2', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385176069', '127.0.0.1', '3', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=9', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385181035', '127.0.0.1', '4', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385247663', '127.0.0.1', '5', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385276909', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385352651', '127.0.0.1', '1', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385360022', '127.0.0.1', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385403134', '127.0.0.1', '3', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385411956', '127.0.0.1', '2', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385426058', '127.0.0.1', '3', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=9', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385431665', '127.0.0.1', '1', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385440382', '127.0.0.1', '3', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385443979', '127.0.0.1', '2', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385444553', '127.0.0.1', '4', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385493311', '127.0.0.1', '3', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385663572', '127.0.0.1', '4', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385666772', '127.0.0.1', '5', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/goods.php?id=41', '/ecshop/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1385677858', '127.0.0.1', '6', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386182605', '127.0.0.1', '1', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386182613', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/', '/ecshop/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386182617', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=9', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386182620', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/goods.php?id=40', '/ecshop/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386182621', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=9', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386182737', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/', '/ecshop/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386182760', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=9', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386183771', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/goods.php?id=41', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386183778', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386184886', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/index.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386185029', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386194074', '127.0.0.1', '2', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386194289', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386194324', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386194327', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=profile', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386194329', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=order_list', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386194330', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=address_list', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386194332', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=collection_list', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386194333', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=message_list', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386194335', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=tag_list', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386195778', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386195781', '127.0.0.1', '3', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386199250', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386199278', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386216901', '127.0.0.1', '4', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/index.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386216912', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/', '/ecshop/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386216913', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=9', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386217787', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386217811', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=collection_list', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386217815', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=message_list', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386217818', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=tag_list', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386217847', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/index.php', '/ecshop/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386217848', '127.0.0.1', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=9', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386270008', '127.0.0.1', '1', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386276142', '127.0.0.1', '1', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=9', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386278185', '127.0.0.1', '2', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=9', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386280032', '127.0.0.1', '1', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386281381', '127.0.0.1', '1', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386281430', '127.0.0.1', '1', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386282388', '127.0.0.1', '1', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386282422', '127.0.0.1', '1', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386284641', '127.0.0.1', '2', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386288255', '127.0.0.1', '3', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386290312', '127.0.0.1', '4', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386452469', '127.0.0.1', '5', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386455159', '192.168.1.101', '1', 'Safari 537.36', 'Windows NT', 'en-US,en', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386462035', '127.0.0.1', '6', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386524402', '127.0.0.1', '7', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386530967', '127.0.0.1', '8', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386537745', '127.0.0.1', '9', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/goods.php?id=65', '/ecshop/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386610998', '127.0.0.1', '10', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386617319', '127.0.0.1', '11', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=3', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386619324', '127.0.0.1', '12', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=3', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386636144', '127.0.0.1', '1', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/category.php?id=3&price_min=0&price_max=0&page=2&sort=goods_id&order=DESC', '/ecshop/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386696962', '127.0.0.1', '2', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386704212', '127.0.0.1', '3', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=register', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386709493', '127.0.0.1', '4', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/index.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386713925', '127.0.0.1', '5', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386716042', '127.0.0.1', '6', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386716534', '127.0.0.1', '7', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386716565', '127.0.0.1', '8', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386716988', '127.0.0.1', '9', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386783810', '127.0.0.1', '10', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386788080', '127.0.0.1', '11', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386789813', '127.0.0.1', '12', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386790668', '127.0.0.1', '13', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386797378', '127.0.0.1', '14', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386797610', '127.0.0.1', '15', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386800237', '127.0.0.1', '16', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/goods.php?id=66', '/ecshop/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386803274', '127.0.0.1', '17', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386807678', '127.0.0.1', '18', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386871227', '127.0.0.1', '19', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386875771', '127.0.0.1', '20', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386876006', '127.0.0.1', '21', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386876026', '127.0.0.1', '22', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386882002', '127.0.0.1', '23', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=register', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386888145', '127.0.0.1', '24', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=register', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386889377', '127.0.0.1', '25', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386889476', '127.0.0.1', '26', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386889553', '127.0.0.1', '27', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386890236', '127.0.0.1', '28', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386890260', '127.0.0.1', '29', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386890406', '127.0.0.1', '30', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386890468', '127.0.0.1', '31', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386890664', '127.0.0.1', '32', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386890798', '127.0.0.1', '33', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386890823', '127.0.0.1', '34', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386891991', '127.0.0.1', '35', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386891997', '127.0.0.1', '36', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386892002', '127.0.0.1', '37', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386892007', '127.0.0.1', '38', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386892014', '127.0.0.1', '39', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1386896967', '127.0.0.1', '40', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387130481', '127.0.0.1', '41', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387130532', '127.0.0.1', '42', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387134724', '127.0.0.1', '43', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387134889', '127.0.0.1', '44', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387135469', '127.0.0.1', '45', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387135483', '127.0.0.1', '46', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387135515', '127.0.0.1', '47', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387137909', '127.0.0.1', '48', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387137968', '127.0.0.1', '49', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387138023', '127.0.0.1', '50', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387141624', '127.0.0.1', '51', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387144839', '127.0.0.1', '52', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/index.php', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387144842', '127.0.0.1', '53', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387145050', '127.0.0.1', '54', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387147007', '127.0.0.1', '55', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387152576', '127.0.0.1', '56', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/goods.php?id=66', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387215791', '127.0.0.1', '57', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387219650', '127.0.0.1', '58', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/goods.php?id=66', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387223493', '127.0.0.1', '59', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/goods.php?id=66', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387227983', '127.0.0.1', '60', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/goods.php?id=67', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387231082', '127.0.0.1', '1', 'Internet Explorer 9.0', 'Windows NT', '', 'LAN', '', '', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387231209', '127.0.0.1', '1', 'Internet Explorer 7.0', 'Windows NT', '', 'LAN', '', '', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387233605', '127.0.0.1', '61', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/goods.php?id=67', '/ecshop/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387233947', '127.0.0.1', '1', 'Internet Explorer 6.0', 'Windows NT', '', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387233963', '127.0.0.1', '2', 'Internet Explorer 6.0', 'Windows NT', '', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387233996', '127.0.0.1', '3', 'Internet Explorer 7.0', 'Windows NT', '', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387234024', '127.0.0.1', '4', 'Internet Explorer 8.0', 'Windows NT', '', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387234050', '127.0.0.1', '5', 'Internet Explorer 9.0', 'Windows NT', '', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387234067', '127.0.0.1', '6', 'Internet Explorer 8.0', 'Windows NT', '', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387235163', '127.0.0.1', '62', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387238213', '127.0.0.1', '63', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387240907', '127.0.0.1', '64', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=collection_list', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387240940', '127.0.0.1', '65', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387302436', '127.0.0.1', '66', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387303919', '127.0.0.1', '67', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/ecshop/user.php?act=logout', '/ecshop/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387317147', '127.0.0.1', '68', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/ecshop/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387317225', '127.0.0.1', '69', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/index.php/product?gender_option=men', '/index.php/product');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387327279', '127.0.0.1', '70', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387329357', '127.0.0.1', '2', 'Internet Explorer 7.0', 'Windows NT', '', 'LAN', 'http://mail.qq.com', '/cgi-bin/mail_spam?action=check_link&url=http://127.0.0.1/user.php?act=validate_email%26hash=MzAsNzY4Yw==&mailid=ZC3618-pCnhiqTDsHHAnABSqkioL3c&spam=0', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387388522', '127.0.0.1', '71', 'FireFox 24.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387388862', '127.0.0.1', '1', 'Internet Explorer 7.0', 'Windows NT', '', 'LAN', 'http://mail.qq.com', '/cgi-bin/mail_spam?action=check_link&url=http://127.0.0.1/user.php?act=validate_email%26hash=MzAsNzY4Yw==&mailid=ZC2319-itHt6Ww8_YU3OiR2tuDlL3c&spam=0', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387390623', '127.0.0.1', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387390760', '192.168.1.104', '1', 'Internet Explorer 9.0', 'Windows NT', 'en-AU', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387391252', '127.0.0.1', '2', 'Internet Explorer 7.0', 'Windows NT', '', 'LAN', 'http://127.0.0.1', '/www_viva/product?gender_option=men', '/index.php/cart/header_ajax_num');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387391252', '127.0.0.1', '2', 'Internet Explorer 7.0', 'Windows NT', '', 'LAN', 'http://127.0.0.1', '/www_viva/product?gender_option=men', '/index.php/welcome/change_wallpapter');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387393695', '127.0.0.1', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387401946', '127.0.0.1', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=profile', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387404999', '127.0.0.1', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=profile', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387408227', '127.0.0.1', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/category.php?id=9', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387412692', '127.0.0.1', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/goods.php?id=67', '/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387415134', '127.0.0.1', '4', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/goods.php?id=67', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387477200', '127.0.0.1', '5', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387488530', '127.0.0.1', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/category.php?id=9', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387734276', '127.0.0.1', '7', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387734334', '127.0.0.1', '8', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387736337', '127.0.0.1', '9', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387737551', '127.0.0.1', '10', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387737889', '127.0.0.1', '11', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387746352', '127.0.0.1', '12', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387749508', '127.0.0.1', '13', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387821086', '127.0.0.1', '14', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387823153', '127.0.0.1', '15', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387829070', '127.0.0.1', '16', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/admin/goods.php?act=list', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387841282', '127.0.0.1', '17', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/admin/goods.php?act=list', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387844598', '127.0.0.1', '18', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/category.php?id=3', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387848446', '127.0.0.1', '1', 'Safari 535.11', 'Windows NT', '', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1387994548', '127.0.0.1', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388005847', '127.0.0.1', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/goods.php?id=70', '/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388011668', '127.0.0.1', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388012763', '127.0.0.1', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388079672', '127.0.0.1', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388079859', '127.0.0.1', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388098911', '127.0.0.1', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/', '/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388103118', '127.0.0.1', '4', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388104709', '127.0.0.1', '5', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388104727', '127.0.0.1', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388104846', '127.0.0.1', '7', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388186560', '127.0.0.1', '8', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388190668', '192.168.1.104', '1', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388190678', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/', '/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388190679', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/category.php?id=9', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388190979', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/goods.php?id=69', '/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388191013', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/category.php?id=9', '/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388191015', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/category.php?id=3', '/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388191053', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/category.php?id=3', '/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388191059', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/category.php?id=3', '/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388191084', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4ODIxOTg1OTt9', '/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388191168', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4ODIxOTg4NDt9', '/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388191174', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4ODIxOTk2ODt9', '/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388191174', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4ODIxOTk3NDt9', '/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388191176', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4ODIxOTk3NDt9', '/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388191179', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4ODIxOTk3Njt9', '/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388191207', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/category.php?id=3', '/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388191209', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/category.php?id=3', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388191761', '192.168.1.104', '1', 'Unknow browser', 'Windows 32', '', 'LAN', 'http://192.168.1.102', '/index.php', '/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388192309', '127.0.0.1', '9', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/admin/goods.php?act=list&uselastfilter=1', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388343025', '127.0.0.1', '10', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388352860', '127.0.0.1', '11', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/goods.php?id=69', '/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388362707', '127.0.0.1', '12', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388426320', '127.0.0.1', '13', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388430360', '127.0.0.1', '14', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/goods.php?id=69', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388444957', '127.0.0.1', '15', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=collection_list', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388598427', '127.0.0.1', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388600842', '127.0.0.1', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/goods.php?id=68', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388612422', '127.0.0.1', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/flow.php', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388618208', '127.0.0.1', '4', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388619380', '127.0.0.1', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388622846', '127.0.0.1', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/goods.php?id=69', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388684666', '127.0.0.1', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388691662', '127.0.0.1', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/flow.php', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388696532', '127.0.0.1', '4', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/goods.php?id=67', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388699677', '127.0.0.1', '5', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388703286', '127.0.0.1', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388709326', '127.0.0.1', '7', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388709986', '127.0.0.1', '8', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388710954', '127.0.0.1', '9', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388771279', '127.0.0.1', '10', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388779765', '127.0.0.1', '11', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388787086', '127.0.0.1', '12', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388792004', '127.0.0.1', '13', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388796004', '127.0.0.1', '14', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388799841', '127.0.0.1', '15', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388944277', '127.0.0.1', '16', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388959885', '127.0.0.1', '17', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1388966028', '127.0.0.1', '18', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389031077', '127.0.0.1', '19', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389043211', '127.0.0.1', '20', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389049591', '127.0.0.1', '21', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/flow.php', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389050183', '127.0.0.1', '22', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389051361', '127.0.0.1', '23', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389052660', '127.0.0.1', '24', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389053126', '127.0.0.1', '25', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389056557', '127.0.0.1', '26', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/flow.php?step=login', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389057311', '127.0.0.1', '27', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389059538', '127.0.0.1', '28', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389116909', '127.0.0.1', '29', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389119819', '127.0.0.1', '30', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389120130', '127.0.0.1', '31', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389120149', '127.0.0.1', '32', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389122270', '127.0.0.1', '33', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389126240', '127.0.0.1', '34', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389126633', '127.0.0.1', '35', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389126882', '127.0.0.1', '36', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389129754', '127.0.0.1', '37', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/index.php', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389129933', '127.0.0.1', '38', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389133065', '127.0.0.1', '39', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/flow.php?step=consignee', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389138298', '127.0.0.1', '40', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389138333', '127.0.0.1', '41', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389143374', '127.0.0.1', '42', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389143947', '127.0.0.1', '43', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389203055', '127.0.0.1', '44', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389209268', '127.0.0.1', '45', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/flow.php?step=consignee', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389215546', '127.0.0.1', '46', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/flow.php', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389218123', '127.0.0.1', '47', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/flow.php', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389220668', '127.0.0.1', '48', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389223157', '127.0.0.1', '49', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', '', '', '/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389225242', '127.0.0.1', '50', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'LAN', 'http://127.0.0.1', '/user.php?act=logout', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389226274', '114.246.172.130', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389237200', '219.142.226.68', '16', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389297665', '219.142.226.68', '17', 'Safari 537.31', 'Unknown', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/flow.php?step=consignee&direct_shopping=1', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389369091', '178.249.184.5', '27', 'FireFox 26.0', 'Windows NT', 'en-US,en', '[δ֪IP0801]', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389424297', '219.142.227.148', '18', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502458', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502489', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502494', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502518', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=67', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502523', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502529', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502551', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502562', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502599', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502605', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502615', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502616', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502616', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502617', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502617', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502617', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502618', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502618', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502621', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502621', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502621', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502633', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502655', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502658', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502674', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502677', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502677', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502678', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502679', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502679', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502679', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502679', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502679', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502680', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389502680', '219.142.228.41', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389569050', '219.142.230.194', '19', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389573339', '221.219.147.214', '28', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389583533', '221.219.147.214', '1', 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389583746', '221.219.147.214', '2', 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', '', 'http://kipanddan.com', '/an_website/user.php?act=logout', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389586171', '221.219.230.65', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389588982', '221.219.147.214', '29', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/flow.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389589686', '221.219.147.214', '30', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389589854', '221.219.147.214', '31', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389590450', '180.153.201.79', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389590506', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389593322', '221.219.147.214', '32', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389596358', '221.219.230.65', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://kipanddan.com', '/an_website/', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389596735', '61.148.244.184', '1', 'Safari 534.30', 'Linux', 'en-AU, en-US', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389597008', '221.219.147.214', '33', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389597238', '113.142.9.34', '1', 'Internet Explorer 6.0', 'Windows 2000', 'en-us,en,zh-cn', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389636546', '124.65.167.30', '34', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389636621', '124.65.167.30', '35', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389666432', '123.119.73.13', '1', 'Internet Explorer 7.0', 'Windows NT', '', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389666473', '123.119.73.13', '1', 'Internet Explorer 9.0', 'Windows NT', '', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389666743', '123.119.73.13', '2', 'Internet Explorer 9.0', 'Windows NT', '', '', 'http://kipanddan.com', '/an_website/user.php?act=logout', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389666839', '123.119.73.13', '3', 'Internet Explorer 9.0', 'Windows NT', '', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389666843', '123.119.73.13', '4', 'Internet Explorer 9.0', 'Windows NT', '', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389666847', '123.119.73.13', '5', 'Internet Explorer 9.0', 'Windows NT', '', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389666851', '123.119.73.13', '6', 'Internet Explorer 9.0', 'Windows NT', '', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389666855', '123.119.73.13', '7', 'Internet Explorer 9.0', 'Windows NT', '', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389666859', '123.119.73.13', '8', 'Internet Explorer 9.0', 'Windows NT', '', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389666863', '123.119.73.13', '9', 'Internet Explorer 9.0', 'Windows NT', '', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389666886', '123.119.73.13', '10', 'Internet Explorer 9.0', 'Windows NT', '', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389668121', '123.119.73.13', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672410', '123.119.73.13', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', 'http://kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672509', '123.119.73.13', '1', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672519', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672525', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=3', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672530', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672532', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=3', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672534', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672536', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=11', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672540', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672543', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672545', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=12', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672547', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=12', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672551', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672552', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672554', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4OTcwMTM1MTt9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672559', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=5', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672563', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=7', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672566', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=6', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672569', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=8', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672595', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672599', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/article.php?id=5', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672605', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/article.php?id=4', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672609', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/article.php?id=3', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672614', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/article.php?id=2', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672618', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/article.php?id=1', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672642', '183.60.70.30', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672642', '183.60.70.30', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672643', '112.90.78.25', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672643', '124.160.169.17', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672643', '112.90.11.79', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672724', '123.119.73.13', '1', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672762', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/flow.php?step=consignee', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672767', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/category.php?id=9', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672813', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/goods.php?id=69', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672816', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/category.php?id=3', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672820', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672822', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/category.php?id=11', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672825', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672828', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/category.php?id=12', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672834', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4OTcwMTYyOTt9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672894', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/article.php?id=7', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672902', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=3', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672908', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=68', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672911', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672913', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=11', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672915', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672919', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=12', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672922', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4OTcwMTcxOTt9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672926', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=3', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672928', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672932', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=3', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672934', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672936', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=11', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672942', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389672945', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=3', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673137', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673140', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673144', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=11', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673147', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673151', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=12', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673154', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4OTcwMTk1MTt9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673162', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=4', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673170', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673191', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673194', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=11', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673198', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673204', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=12', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673207', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=4', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673212', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=5', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673214', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=7', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673217', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=6', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673220', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/category.php?id=8', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673314', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673317', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/category.php?id=3', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673324', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/category.php?id=3', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673743', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389673746', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/category.php?id=5', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389674233', '123.119.73.13', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389674450', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389674453', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389674460', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389674535', '123.119.73.13', '1', 'Unknow browser', 'Windows 32', '', '', 'http://www.kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389674542', '123.119.73.13', '2', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389674550', '123.119.73.13', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389677108', '123.119.73.13', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389698691', '219.142.230.194', '36', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389721729', '114.246.168.125', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389723930', '114.246.168.125', '4', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389728523', '219.142.230.194', '20', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389729599', '114.246.168.125', '5', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/goods.php?id=69', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389733615', '114.246.168.125', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/category.php?id=9', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389735327', '114.246.168.125', '7', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=logout', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389739381', '114.246.168.125', '8', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=logout', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389740435', '114.246.168.125', '9', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/flow.php?step=consignee', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389740444', '114.246.168.125', '9', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389740945', '219.142.230.194', '21', 'Safari 537.31', 'Unknown', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/category.php?id=3', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389742581', '114.246.168.125', '1', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389742585', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389742594', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389742599', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389742601', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/article.php?id=5', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389742606', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389742612', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiI0IjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4OTc3MTQwNzt9', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389742644', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'https://dub110.mail.live.com', '/mail/17.1.7227.6000/Compose/RteFrameResources.aspx?ch=4573132873918381086&mkt=en-al', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389742749', '114.246.168.125', '10', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389742769', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'https://dub110.mail.live.com', '/mail/17.1.7227.6000/Compose/RteFrameResources.aspx?ch=4573132873918381086&mkt=en-al', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389744283', '114.246.168.125', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389744408', '114.246.168.125', '11', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389744592', '114.246.168.125', '12', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389744624', '114.246.168.125', '13', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389744628', '114.246.168.125', '14', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389744697', '114.246.168.125', '15', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389744828', '114.246.168.125', '16', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389744934', '114.246.168.125', '17', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389744934', '114.246.168.125', '18', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389744953', '114.246.168.125', '19', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389745116', '114.246.168.125', '20', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389745156', '114.246.168.125', '21', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389745203', '114.246.168.125', '22', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/index.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389746199', '114.246.168.125', '23', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389746599', '114.246.168.125', '24', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389747157', '114.246.168.125', '25', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389748544', '114.246.168.125', '26', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389748607', '114.246.168.125', '27', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389748720', '114.246.168.125', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389750936', '114.246.168.125', '2', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389751029', '114.246.168.125', '1', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389751182', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389751282', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389751323', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=70', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389751382', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=collection_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389751408', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389751426', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389751429', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=collection_list', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389751439', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389751497', '114.246.168.125', '4', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389753443', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=67', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389753444', '114.246.168.125', '3', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=67', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389753510', '114.246.168.125', '2', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389753590', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389753595', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389753603', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389753665', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389753678', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389753733', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389753886', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389753946', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389753997', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389754024', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/category.php?id=9', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389754080', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/goods.php?id=69', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389754084', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389754088', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/category.php?id=9', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389754170', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389754221', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389754289', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389754290', '114.246.168.125', '2', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389754291', '114.246.168.125', '3', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389754384', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389754488', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php?step=consignee', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389754500', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=3', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389754503', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=5', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389761132', '114.246.168.125', '5', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389762871', '114.246.168.125', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389762872', '114.246.168.125', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389762872', '114.246.168.125', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389762872', '114.246.168.125', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389762872', '114.246.168.125', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389762872', '114.246.168.125', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389762873', '114.246.168.125', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389764311', '114.246.168.125', '4', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php?step=consignee', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389764315', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389764319', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389764327', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=8', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389764330', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=6', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389764333', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=5', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389764335', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=4', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389764338', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=12', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389764341', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389764344', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=11', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389765825', '219.142.230.194', '22', 'Safari 537.31', 'Unknown', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=70', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389805036', '124.65.167.30', '37', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389805047', '124.65.167.30', '4', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389805543', '103.31.201.49', '1', 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389806098', '103.31.201.49', '1', 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389806240', '103.31.201.166', '1', 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389806353', '103.31.200.129', '1', 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389806480', '124.65.167.30', '3', 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389807923', '103.31.200.129', '1', 'Unknow browser', 'Unknown', '', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389808234', '114.246.168.125', '28', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389808591', '124.65.167.30', '4', 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', '', 'http://www.kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389808591', '124.65.167.30', '5', 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', '', 'http://www.kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810389', '183.60.35.80', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810389', '113.105.95.122', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810389', '183.60.35.80', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810389', '183.60.62.44', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810389', '14.17.34.189', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810390', '183.60.35.80', '2', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810394', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810396', '119.188.16.39', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'APNIC', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810396', '163.177.69.38', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810396', '14.17.18.152', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810397', '183.60.62.44', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810397', '183.60.70.29', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810401', '14.17.34.189', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389810437', '114.246.168.125', '2', 'Internet Explorer 7.0', 'Windows NT', '', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389811090', '114.246.168.125', '7', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389815205', '114.246.168.125', '1', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389815233', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389815239', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389815244', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389815248', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=5', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389815959', '114.246.168.125', '8', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389821578', '114.246.168.125', '29', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=collection_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389821880', '114.246.168.125', '30', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389821882', '114.246.168.125', '30', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389821882', '114.246.168.125', '31', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389823089', '114.246.168.125', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389823462', '114.246.168.125', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389825730', '114.246.168.125', '2', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389825741', '8.35.201.55', '1', 'Safari 537.36', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389825922', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389825988', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389826003', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389826007', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389826010', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=11', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389826013', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389826080', '114.246.168.125', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389826147', '114.246.168.125', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389828805', '114.246.168.125', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=collection_list', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389829551', '114.246.168.125', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php?step=login', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389831453', '114.246.168.125', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/flow.php?step=checkout', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389832683', '14.17.18.152', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389832683', '180.96.74.39', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389832683', '180.96.74.39', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389832683', '180.96.74.39', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389832684', '115.236.153.102', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389832684', '14.17.29.85', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389832684', '183.60.35.80', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389832685', '163.177.69.38', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389832685', '112.90.78.22', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389832687', '14.17.34.191', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389832688', '115.236.153.102', '2', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389834486', '114.246.168.125', '4', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/flow.php?step=checkout', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389838397', '114.246.168.125', '5', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/flow.php?step=checkout', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389846317', '112.90.11.79', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389846317', '14.17.34.182', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389846317', '14.17.34.185', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389846317', '183.60.62.44', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389846317', '115.236.153.102', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389846317', '183.61.160.211', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389846317', '14.17.29.92', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389846317', '183.60.70.29', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389846317', '14.17.34.182', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389846317', '163.177.69.37', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389846318', '163.177.69.37', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389846318', '14.17.34.182', '2', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389847879', '114.246.168.125', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=order_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389848449', '114.246.168.125', '7', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389848515', '114.246.168.125', '1', 'Internet Explorer 9.0', 'Windows NT', '', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389848674', '114.246.168.125', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389848677', '114.246.168.125', '2', 'Internet Explorer 9.0', 'Windows NT', '', 'IANA', 'http://kipanddan.com', '/an_website/goods.php?id=69', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389848716', '114.246.168.125', '3', 'Internet Explorer 7.0', 'Windows NT', '', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389851215', '114.246.168.125', '1', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389851575', '219.142.230.194', '38', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389851617', '219.142.230.194', '5', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389852086', '114.246.168.125', '3', 'Internet Explorer 9.0', 'Windows NT', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389853039', '114.246.168.125', '8', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/category.php?id=9', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389853041', '114.246.168.125', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389855093', '219.142.230.194', '39', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389855293', '219.142.230.194', '6', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389895359', '114.250.72.170', '9', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389898824', '114.250.72.170', '10', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904418', '14.17.34.191', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904418', '113.105.95.122', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904419', '14.17.34.185', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904419', '14.17.34.190', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904419', '14.17.18.152', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904419', '14.17.18.143', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904419', '14.17.34.190', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904419', '14.17.18.146', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904419', '122.192.32.86', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904419', '122.192.32.86', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904419', '123.129.195.189', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'ɽ', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904419', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904419', '113.105.95.122', '2', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389904424', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389908204', '219.142.230.194', '23', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389908386', '114.250.72.170', '11', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389911749', '8.35.201.55', '12', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', 'http://kipanddan.com', '/an_website/flow.php?step=checkout', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389912330', '114.250.72.170', '13', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389912341', '192.186.163.199', '14', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '[δ֪IP0801]', 'http://kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389912579', '114.250.72.170', '15', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/flow.php?step=checkout', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915504', '114.250.72.170', '1', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915521', '114.250.72.170', '16', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/flow.php', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915581', '114.250.72.170', '1', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915590', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915594', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/article.php?id=5', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915598', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/article.php?id=4', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915602', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/article.php?id=3', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915608', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/article.php?id=1', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915619', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915626', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=3', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915632', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915635', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=11', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915638', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915644', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=12', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915650', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4OTk0NDQ0NDt9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915658', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915663', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915749', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915754', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915758', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915762', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=11', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915765', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915771', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=12', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915775', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4OTk0NDU3MTt9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915780', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=4', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915786', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=5', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915788', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=5', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915791', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=7', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915794', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=6', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915823', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=8', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915829', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=4', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915890', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915943', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915988', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389915990', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916025', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916027', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916039', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php?step=cart', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916042', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php?step=cart', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916278', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916298', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916299', '114.250.72.170', '2', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916310', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916313', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/article.php?id=7', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916323', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916326', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=5', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916330', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=6', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916334', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=8', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916360', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiI0IjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4OTk0NTEzNDt9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916379', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916385', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=collection_list', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916389', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=3', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916401', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=68', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916407', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=collection_list', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916412', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=68', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916450', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916462', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=70', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916863', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916864', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916870', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916878', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916883', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=order_list', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916898', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389916901', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389917075', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389917186', '114.250.72.170', '1', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389917227', '114.250.72.170', '1', 'Internet Explorer 9.0', 'Windows NT', 'en-AU', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389917419', '101.226.33.228', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389917523', '114.250.72.170', '2', 'Internet Explorer 9.0', 'Windows NT', 'en-AU', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389917686', '8.35.201.50', '1', 'Safari 537.36', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389918163', '114.250.72.170', '17', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/flow.php?step=consignee', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389918211', '114.250.72.170', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389919037', '180.153.206.34', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389919048', '180.153.206.24', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389919049', '180.153.201.66', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389919072', '180.153.206.26', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389919077', '180.153.206.23', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389919122', '112.65.193.14', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389919372', '112.64.235.254', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389920272', '101.226.33.220', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389920274', '101.226.33.220', '2', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389922147', '114.250.72.170', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/index.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389924396', '114.250.72.170', '1', 'Internet Explorer 9.0', 'Windows NT', '', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389924456', '114.250.72.170', '1', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389924465', '114.250.72.170', '1', 'Internet Explorer 9.0', 'Windows NT', 'en-AU', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389924870', '114.250.72.170', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=collection_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389925033', '114.250.72.170', '4', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389925139', '114.250.72.170', '5', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/flow.php?step=consignee', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389926265', '112.65.193.14', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389926748', '114.250.72.170', '2', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389926849', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389926862', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389926868', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389927012', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389927032', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389927036', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389927038', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=11', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389927229', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php?step=consignee', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389927340', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389927350', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389927377', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928461', '114.250.72.170', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/flow.php?step=consignee', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928540', '14.17.29.92', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928540', '113.105.95.122', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928540', '123.129.195.189', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'ɽ', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928540', '112.90.78.25', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928540', '14.17.34.191', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928541', '112.90.11.79', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928541', '113.108.70.13', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928541', '113.108.70.13', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928541', '14.17.34.190', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928541', '101.226.89.64', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928541', '101.226.89.61', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928541', '123.129.195.189', '2', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'ɽ', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928544', '122.192.32.86', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389928545', '122.192.32.86', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389929124', '114.250.72.170', '7', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389929421', '114.250.72.170', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389930543', '114.250.72.170', '3', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389930548', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389930568', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=69', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389930571', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=11', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389930582', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389930583', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389930607', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389930618', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389930983', '173.0.81.1', '1', 'Unknow browser', 'Unknown', '', '[δ֪IP0801]', '', '', '/an_website/respond.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389932129', '114.250.72.170', '8', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389932419', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389932420', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389932447', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389932450', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389932451', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389932452', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=11', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389932454', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=11', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389932456', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM4OTk2MTI1Mzt9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389932458', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=7', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389932459', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=7', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389932460', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=7', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389932535', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389945661', '8.35.201.32', '1', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389978191', '219.142.225.169', '24', 'Safari 537.31', 'Unknown', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=70', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389978193', '219.142.225.169', '24', 'Safari 537.31', 'Unknown', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=70', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389990907', '114.250.72.170', '9', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389991057', '61.148.243.191', '40', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389992082', '61.148.243.191', '7', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389992200', '192.186.163.144', '10', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '[δ֪IP0801]', 'http://kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389992319', '192.186.163.144', '11', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '[δ֪IP0801]', 'http://kipanddan.com', '/an_website/goods.php?id=69', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389992782', '114.250.72.170', '1', 'Safari 9537.53', 'Unknown', 'en-us', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389993526', '114.250.72.170', '1', 'Safari 9537.53', 'Unknown', 'en-us', 'IANA', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389993566', '61.148.243.191', '5', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389993757', '192.186.163.144', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '[δ֪IP0801]', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389995138', '114.250.72.170', '12', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/category.php?id=11', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389997587', '114.250.72.170', '13', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/category.php?id=3', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1389999385', '114.250.72.170', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390001321', '114.250.72.170', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=order_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390002648', '61.148.243.191', '8', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390003154', '114.250.72.170', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/index.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390003419', '114.250.72.170', '9', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390003558', '114.250.72.170', '10', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390003866', '114.250.72.170', '4', 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004250', '183.60.35.80', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004250', '183.60.70.30', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004250', '14.17.18.147', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004250', '183.60.35.79', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004250', '113.105.95.122', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004250', '183.60.35.79', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004250', '14.17.18.146', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004251', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004251', '183.60.70.30', '2', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004253', '14.17.18.146', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004254', '122.192.32.86', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004254', '119.188.16.39', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'APNIC', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004254', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390004258', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390005169', '192.186.163.172', '4', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '[δ֪IP0801]', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390005903', '114.250.72.170', '11', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=order_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390006888', '114.250.72.170', '12', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390007412', '114.250.72.170', '5', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/flow.php', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390014404', '114.250.72.170', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390018968', '114.250.72.170', '7', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390019473', '114.250.72.170', '1', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390019488', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390019489', '114.250.72.170', '1', 'Unknow browser', 'Windows 32', '', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390025818', '219.142.225.169', '25', 'Safari 537.31', 'Unknown', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=66', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390026836', '219.142.225.169', '6', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', 'http://kipanddan.com', '/an_website/category.php?id=9', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390061194', '114.250.72.170', '8', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390065748', '114.250.72.170', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390069000', '219.142.225.169', '7', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390071347', '114.250.72.170', '9', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/category.php?id=13', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390073909', '114.250.72.170', '9', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390075841', '219.142.225.169', '26', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390075970', '219.142.225.169', '1', 'Safari 537.73.11', 'Unknown', 'en-us', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390090752', '114.250.72.170', '10', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/flow.php?step=checkout', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390093354', '114.250.72.170', '11', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/goods.php?id=70', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390094393', '61.148.243.150', '8', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390094699', '61.148.243.150', '1', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390096924', '114.250.72.170', '12', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/flow.php?step=checkout', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390097172', '114.250.72.170', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390098065', '219.142.225.169', '27', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390099554', '114.250.72.170', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/flow.php', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390101770', '114.250.72.170', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390104719', '114.250.72.170', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390104966', '114.250.72.170', '3', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390112031', '219.142.225.169', '2', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390112688', '219.142.225.169', '9', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390114077', '219.142.225.169', '1', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390116574', '114.250.72.170', '4', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390117274', '114.250.72.170', '4', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390117434', '221.217.45.239', '1', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118150', '114.250.72.170', '5', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118359', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118431', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM5MDE0NzE1OTt9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118435', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/category.php?id=4', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118488', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiI0IjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM5MDE0NzI4Mjt9', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118493', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiI0IjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM5MDE0NzI4ODt9', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118658', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM5MDE0NzI5Mzt9', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118697', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM5MDE0NzQ1ODt9', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118712', '114.250.72.170', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118816', '114.250.72.170', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=collection_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118823', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM5MDE0NzQ5ODt9', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118827', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiI0IjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM5MDE0NzYyMzt9', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118835', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM5MDE0NzYyNzt9', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118859', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiIzIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM5MDE0NzYyNzt9', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390118900', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390119010', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/article.php?id=1', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390119058', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/article.php?id=3', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390119062', '221.217.45.239', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/article.php?id=4', '/an_website/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390142642', '219.142.225.169', '10', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390142655', '219.142.225.169', '3', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390151386', '219.142.225.169', '4', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390153592', '219.142.225.169', '28', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390162467', '8.35.201.49', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390162490', '114.250.72.170', '7', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://kipanddan.com', '/an_website/', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390162944', '219.142.225.169', '29', 'Safari 537.31', 'Unknown', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390166338', '124.65.167.30', '41', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390166345', '124.65.167.30', '13', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390166887', '124.65.167.30', '14', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/user.php?act=collection_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390167793', '219.142.225.169', '30', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390183955', '61.148.242.47', '2', 'Safari 534.30', 'Linux', 'en-AU, en-US', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390184019', '61.148.242.47', '1', 'Safari 534.30', 'Linux', 'en-AU, en-US', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390193681', '219.142.227.135', '1', 'FireFox 24.0', 'Unknown', 'en-gb,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390194137', '219.142.227.135', '1', 'FireFox 24.0', 'Unknown', 'en-gb,en', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390194410', '219.142.227.135', '42', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390194431', '219.142.227.135', '15', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390194941', '219.142.227.135', '2', 'FireFox 24.0', 'Unknown', 'en-gb,en', '', 'http://www.kipanddan.com', '/an_website/flow.php?step=checkout', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390234728', '61.148.244.50', '11', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390235734', '219.142.227.135', '2', 'FireFox 24.0', 'Unknown', 'en-gb,en', '', 'http://kipanddan.com', '/an_website/goods.php?id=69', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390262173', '219.142.227.135', '31', 'Safari 537.31', 'Unknown', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390290742', '219.142.229.147', '32', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390326092', '219.142.231.10', '3', 'FireFox 24.0', 'Unknown', 'en-gb,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390333354', '121.222.68.125', '1', 'Internet Explorer 10.0', 'Windows NT', 'en-AU', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390333511', '121.222.68.125', '1', 'Safari 9537.53', 'Unknown', 'en-gb', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390355415', '124.65.167.30', '43', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390440394', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390440395', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390440605', '111.199.157.5', '1', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390442403', '222.73.77.55', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390442452', '124.65.167.30', '1', 'Unknow browser', 'Windows NT', 'zh-CN', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390443010', '111.199.157.5', '2', 'Internet Explorer 7.0', 'Windows NT', 'zh-CN', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390443016', '111.199.157.5', '2', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390443043', '101.226.33.202', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390443082', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390443083', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390444831', '112.65.193.13', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390444880', '180.153.161.217', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390444885', '180.153.206.33', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390445443', '180.153.205.254', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390496014', '221.219.148.181', '1', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390498080', '180.153.201.215', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390498083', '101.226.33.203', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390498102', '101.226.66.180', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390498154', '101.226.33.239', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390500406', '221.219.148.181', '2', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390501341', '113.108.70.13', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390506311', '221.219.148.181', '3', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', '', 'http://www.kipanddan.com', '/an_website/', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390516079', '221.219.148.181', '4', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', '', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390517222', '14.17.18.144', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390610614', '121.24.6.125', '2', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390610669', '121.24.6.125', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390610678', '121.24.6.125', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/category.php?id=12', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390610681', '121.24.6.125', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/category.php?id=3', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390610785', '121.24.6.125', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390611038', '121.24.6.125', '1', 'Unknow browser', 'Windows 32', '', '', 'http://kipanddan.com', '/an_website/user.php?act=order_list', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390613661', '121.24.6.125', '3', 'FireFox 25.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390649823', '14.17.18.143', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390649826', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390649826', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1390982063', '101.0.77.236', '2', 'Safari 537.73.11', 'Unknown', 'en-us', 'IANA', 'http://kipanddan.com', '/an_website/category.php?id=4', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1391818981', '124.65.167.30', '2', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1391819063', '124.65.167.30', '3', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1391985978', '124.65.167.30', '4', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1391986711', '124.65.167.30', '2', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1391987618', '124.65.167.30', '3', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/user.php?act=address_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1391987882', '124.65.167.30', '5', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1391988154', '124.65.167.30', '6', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/category.php?id=3', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392011877', '219.142.224.103', '33', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392012396', '219.142.224.103', '34', 'Safari 537.31', 'Unknown', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392012639', '219.142.224.103', '2', 'Safari 7534.48.3', 'Unknown', 'en-us', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392012667', '219.142.224.103', '3', 'Safari 537.73.11', 'Unknown', 'en-us', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392012669', '219.142.224.103', '3', 'Safari 537.73.11', 'Unknown', 'en-us', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392012685', '219.142.224.103', '2', 'Safari 7534.48.3', 'Unknown', 'en-us', '', 'http://kipanddan.com', '/an_website/', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392012737', '219.142.224.103', '2', 'Safari 7534.48.3', 'Unknown', 'en-us', '', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392012747', '219.142.224.103', '2', 'Safari 7534.48.3', 'Unknown', 'en-us', '', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392012775', '219.142.224.103', '2', 'Safari 7534.48.3', 'Unknown', 'en-us', '', 'http://kipanddan.com', '/an_website/user.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392012784', '219.142.224.103', '2', 'Safari 7534.48.3', 'Unknown', 'en-us', '', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392012812', '219.142.224.103', '2', 'Safari 7534.48.3', 'Unknown', 'en-us', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392012857', '219.142.224.103', '2', 'Safari 7534.48.3', 'Unknown', 'en-us', '', 'http://kipanddan.com', '/an_website/category.php?id=4', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392012895', '219.142.224.103', '2', 'Safari 7534.48.3', 'Unknown', 'en-us', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392015206', '101.0.92.89', '1', 'Safari 7534.48.3', 'Unknown', 'en-us', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392016255', '219.142.224.103', '1', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392016275', '219.142.224.103', '1', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', 'http://kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392054032', '221.218.216.86', '5', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392055833', '101.226.66.172', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392057363', '183.60.243.190', '1', 'FireFox 18.0', 'Windows NT', 'en-US,en', '[δ֪IP0801]', '', '', '/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392057365', '183.60.243.190', '1', 'FireFox 18.0', 'Windows NT', 'en-US,en', '[δ֪IP0801]', '', '', '/index.php/i');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392060941', '221.218.216.86', '6', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', '', 'http://www.kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392060967', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392061219', '61.148.244.85', '7', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392061241', '61.148.244.85', '4', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392061572', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392061988', '61.148.244.85', '5', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/flow.php?step=cart', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392062108', '114.242.250.41', '6', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392062206', '114.242.250.41', '7', 'FireFox 26.0', 'Windows NT', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392062763', '101.226.51.226', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392063365', '112.65.193.15', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392063368', '180.153.206.33', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392063667', '61.148.244.144', '8', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392066056', '180.153.206.13', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392066058', '101.226.66.179', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392066106', '101.226.66.175', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392066106', '101.226.66.175', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392066254', '180.153.163.211', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392067080', '124.65.167.30', '8', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392067642', '124.65.167.30', '9', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392068343', '221.218.216.86', '7', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', '', 'http://www.kipanddan.com', '/an_website/category.php?id=10', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392071096', '221.218.216.86', '1', 'Unknow browser', 'Windows NT', 'zh-CN', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392071858', '124.65.167.30', '2', 'Unknow browser', 'Windows NT', 'zh-CN', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392074015', '101.226.66.181', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392075799', '221.218.216.86', '8', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', '', 'http://www.kipanddan.com', '/an_website/goods.php?id=67', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392077353', '124.65.167.30', '9', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/admin/index.php?act=top', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392080366', '180.153.206.32', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392080373', '112.65.193.14', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392082522', '124.65.167.30', '10', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392082563', '124.65.167.30', '10', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392082612', '221.218.216.86', '9', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', '', 'http://www.kipanddan.com', '/an_website/search.php?encode=YTozOntzOjU6ImludHJvIjtzOjM6Im5ldyI7czo4OiJjYXRlZ29yeSI7czoxOiI0IjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTM5MjEwNzU5Njt9', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392136023', '114.250.249.24', '10', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392136993', '114.250.249.24', '11', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392137052', '112.64.235.246', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392137219', '101.226.33.225', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392138221', '124.65.167.30', '11', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392138283', '124.65.167.30', '12', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/user.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392138318', '124.65.167.30', '11', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392138412', '124.65.167.30', '12', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/flow.php?step=done', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392138500', '124.65.167.30', '13', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392138559', '180.153.161.55', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392138561', '180.153.206.23', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392138565', '112.64.235.250', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392138566', '101.226.33.208', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392138567', '101.226.66.191', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/search.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392138591', '180.153.214.190', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392138837', '114.250.249.24', '12', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=collection_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392139052', '112.64.235.250', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392139216', '101.226.89.117', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392139243', '101.226.33.216', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392139340', '114.250.249.24', '13', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392139391', '114.250.249.24', '14', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/user.php?act=collection_list', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392140382', '180.153.201.79', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392140427', '180.153.114.197', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392140635', '112.64.235.252', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392140636', '112.64.235.252', '2', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392142351', '114.250.249.24', '15', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392142449', '14.17.18.143', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392142462', '123.125.34.134', '1', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392143823', '114.250.249.24', '1', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392143867', '114.250.249.24', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392143881', '114.250.249.24', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392144156', '101.226.33.202', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392144169', '180.153.201.216', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392146469', '114.250.249.24', '16', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/category.php?id=3', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392146846', '183.61.160.216', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392146859', '114.250.249.24', '1', 'Internet Explorer 10.0', 'Windows NT', 'zh-CN', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392146867', '114.250.249.24', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392146891', '114.250.249.24', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392147128', '114.250.249.24', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392147144', '114.250.249.24', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=68', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392147457', '114.250.249.24', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392147809', '114.250.249.24', '17', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=68', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392148551', '114.250.249.24', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=68', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392150942', '112.64.235.89', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392150943', '114.250.249.24', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=68', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392150945', '112.64.235.89', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392151458', '114.250.249.24', '3', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=68', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392151701', '180.153.214.200', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392151792', '180.153.206.36', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392152667', '114.242.248.96', '2', 'Safari 537.36', 'Linux', 'en-GB,en-US', 'IANA', 'http://kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392152885', '114.250.249.24', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392154444', '114.250.249.24', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=68', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392235858', '124.65.167.30', '13', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392235860', '124.65.167.30', '14', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392241338', '124.65.167.30', '14', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392241788', '61.148.243.235', '2', 'Safari 537.36', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392250933', '124.65.167.30', '15', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/goods.php?id=74', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392252867', '124.65.167.30', '16', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/admin/goods.php?act=list', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392259925', '219.142.224.35', '35', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392264399', '219.142.224.35', '36', 'Safari 537.31', 'Unknown', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/index.php', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392322896', '124.65.167.30', '17', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392325215', '61.48.154.134', '1', 'Internet Explorer 7.0', 'Windows NT', 'zh-CN', '', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392325219', '180.153.206.17', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392325219', '119.147.146.195', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392325644', '61.48.154.134', '1', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392325717', '61.48.154.134', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392325972', '61.48.154.134', '1', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392327347', '61.48.154.134', '2', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392333277', '61.48.154.134', '2', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', 'http://kipanddan.com', '/an_website/category.php?id=11', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392337227', '124.65.167.30', '18', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392478853', '101.0.77.236', '37', 'Safari 537.31', 'Unknown', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392478944', '101.0.77.236', '38', 'Safari 537.31', 'Unknown', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/flow.php?step=done', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392570167', '221.221.8.194', '3', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392571259', '221.221.8.194', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392571868', '221.221.8.194', '4', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392572047', '221.221.178.250', '3', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392575746', '221.221.178.250', '3', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392576041', '124.65.167.30', '19', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392576842', '113.108.70.13', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392576857', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392579494', '221.221.178.250', '4', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392584991', '221.221.178.250', '5', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392585512', '221.221.178.250', '4', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392589775', '221.221.178.250', '5', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392591313', '221.221.178.250', '6', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392592615', '101.226.33.224', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392592633', '221.221.178.250', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392592903', '221.221.178.250', '3', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', 'http://kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392592960', '221.221.178.250', '6', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392593521', '221.221.178.250', '6', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392594078', '221.221.178.250', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392594536', '221.221.178.250', '5', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392599090', '14.17.18.144', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392603238', '124.65.167.30', '20', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392656157', '221.219.150.120', '6', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392656445', '124.65.167.30', '21', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392657755', '221.219.150.120', '7', 'FireFox 26.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392658358', '221.219.150.120', '7', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392671521', '124.65.167.30', '22', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392671547', '124.65.167.30', '15', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', 'http://kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392684770', '91.236.74.5', '1', 'Opera 9.80', 'Windows NT', '', 'ŷ', 'http://kipanddan.com', '/article.php?id=2', '/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392693941', '114.242.248.128', '2', 'Safari 537.36', 'Linux', 'en-GB,en-US', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392693996', '61.148.242.109', '3', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392696591', '219.142.225.172', '23', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392707612', '219.142.225.172', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392707633', '219.142.225.172', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392707642', '219.142.225.172', '1', 'Safari 537.36', 'Windows NT', 'en-GB,en-US', '', 'http://www.kipanddan.com', '/an_website/category.php?id=9', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392744112', '221.221.172.162', '7', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392767459', '119.147.146.189', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392767461', '14.17.18.146', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392777222', '163.177.69.37', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392815686', '79.133.217.246', '1', 'FireFox 16.0', 'Windows XP', '', 'RIPE', 'http://kipanddan.com', '/article.php?id=2', '/article.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392852808', '112.90.78.25', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392852811', '119.147.146.193', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1392856890', '183.61.160.216', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393115951', '124.168.210.104', '4', 'Safari 537.36', 'Linux', 'en-GB,en-US', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393275760', '124.65.167.30', '24', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393389369', '219.142.228.45', '39', 'Safari 537.31', 'Unknown', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393392463', '219.142.228.45', '40', 'Safari 537.31', 'Unknown', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/admin/goods.php?act=list&uselastfilter=1', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393397091', '219.142.228.45', '41', 'Safari 537.31', 'Unknown', 'en-US,en', '', 'http://www.kipanddan.com', '/an_website/', '/an_website/category.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393449988', '124.65.167.30', '25', 'FireFox 26.0', 'Windows NT', 'en-US,en', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393467763', '123.113.149.20', '18', 'Safari 537.31', 'Windows NT', 'zh-CN,zh', '', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393467837', '123.113.149.20', '2', 'FireFox 27.0', 'Windows NT', 'zh-cn,zh', '', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393467905', '119.147.146.195', '1', 'Internet Explorer 6.0', 'Windows XP', 'zh-CN,zh', 'APNIC', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393469704', '101.226.51.226', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393483608', '111.201.144.19', '1', 'Safari 537.36', 'Unknown', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393483763', '111.201.144.19', '1', 'FireFox 27.0', 'Unknown', 'en-US,en', 'IANA', '', '', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393519534', '111.201.145.0', '2', 'FireFox 27.0', 'Unknown', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=70', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393519645', '111.201.145.0', '2', 'Safari 537.36', 'Unknown', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393520174', '111.201.145.0', '3', 'Safari 537.36', 'Unknown', 'en-US,en', 'IANA', '', '', '/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393529197', '114.248.125.145', '3', 'FireFox 27.0', 'Unknown', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=70', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393529257', '114.248.125.145', '4', 'Safari 537.36', 'Unknown', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/', '/an_website/goods.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393535359', '114.248.125.145', '5', 'Safari 537.36', 'Unknown', 'en-US,en', 'IANA', 'http://www.kipanddan.com', '/an_website/goods.php?id=75', '/an_website/flow.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393545653', '111.195.94.233', '6', 'Safari 537.36', 'Unknown', 'en-US,en', 'IANA', '', '', '/an_website/user.php');
INSERT INTO `ecs_stats` ( `access_time`, `ip_address`, `visit_times`, `browser`, `system`, `language`, `area`, `referer_domain`, `referer_path`, `access_url` ) VALUES  ('1393548995', '111.195.94.233', '7', 'Safari 537.36', 'Unknown', 'en-US,en', 'IANA', '', '', '/an_website/index.php');
DROP TABLE IF EXISTS `ecs_suppliers`;
CREATE TABLE `ecs_suppliers` (
  `suppliers_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `suppliers_name` varchar(255) DEFAULT NULL,
  `suppliers_desc` mediumtext,
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`suppliers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_tag`;
CREATE TABLE `ecs_tag` (
  `tag_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tag_words` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_template`;
CREATE TABLE `ecs_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '左边区域', '/library/vote_list.lbi', '8', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '左边区域', '/library/email_list.lbi', '9', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '左边区域', '/library/order_query.lbi', '6', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '左边区域', '/library/cart.lbi', '0', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '左边区域', '/library/promotion_info.lbi', '3', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '左边区域', '/library/auction.lbi', '4', '0', '3', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '左边区域', '/library/group_buy.lbi', '5', '0', '3', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '右边主区域', '/library/recommend_hot.lbi', '2', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '右边主区域', '/library/recommend_new.lbi', '1', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '右边主区域', '/library/recommend_best.lbi', '0', '0', '10', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '左边区域', '/library/invoice_query.lbi', '7', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '左边区域', '/library/top10.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '左边区域', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('index', '', '/library/brands.lbi', '0', '0', '11', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', '左边区域', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', '右边区域', '/library/recommend_best.lbi', '0', '0', '5', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', '右边区域', '/library/goods_list.lbi', '1', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', '右边区域', '/library/pages.lbi', '2', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', '左边区域', '/library/cart.lbi', '0', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', '左边区域', '/library/price_grade.lbi', '3', '0', '0', '0', 'default', '');
INSERT INTO `ecs_template` ( `filename`, `region`, `library`, `sort_order`, `id`, `number`, `type`, `theme`, `remarks` ) VALUES  ('category', '左边区域', '/library/filter_attr.lbi', '2', '0', '0', '0', 'default', '');
DROP TABLE IF EXISTS `ecs_topic`;
CREATE TABLE `ecs_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '''''',
  `css` text NOT NULL,
  `topic_img` varchar(255) DEFAULT NULL,
  `title_pic` varchar(255) DEFAULT NULL,
  `base_style` char(6) DEFAULT NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_user_account`;
CREATE TABLE `ecs_user_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_user` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `paid_time` int(10) NOT NULL DEFAULT '0',
  `admin_note` varchar(255) NOT NULL,
  `user_note` varchar(255) NOT NULL,
  `process_type` tinyint(1) NOT NULL DEFAULT '0',
  `payment` varchar(90) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_user_address`;
CREATE TABLE `ecs_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `state` varchar(20) NOT NULL DEFAULT '0',
  `city` varchar(20) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(300) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `surname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_user_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('5', '', '32', 'aa', 'shi@qq.com', '3457', '3463', '0', '0', 'aa', '', '1234586', '', '');
INSERT INTO `ecs_user_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('55', '', '30', 'qq', 'q', '3479', 'q', 'q', '0', 'q', 'q', 'q', '', 'q');
INSERT INTO `ecs_user_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('21', '', '39', '11', '1', '3478', '1', '1', '0', '1', '1', '1', '', '1');
INSERT INTO `ecs_user_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('22', '', '39', '3', '3', '3478', '3', '3', '0', '', '3', '3', '', '3');
INSERT INTO `ecs_user_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('79', '', '30', 's', 's', '3478', 's', 's', '0', 's', 's', 's', '', 's');
INSERT INTO `ecs_user_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('81', '', '36', 'test3', 'ff', '3481', 'dd', 'cc', '0', 'bb', 'ee', 'gg', '', 'aa');
INSERT INTO `ecs_user_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('58', '', '45', 'na', 'djfj@12.com', '3480', 'state q', 'city', '0', 'dddd', '10000', '12333', '', 'an');
INSERT INTO `ecs_user_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('82', '', '49', 'd', 'd@d.com', '3481', 'd', 'd', '0', 'd', 'd', 'd', '', 'd');
DROP TABLE IF EXISTS `ecs_user_billing_address`;
CREATE TABLE `ecs_user_billing_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `state` varchar(20) NOT NULL DEFAULT '0',
  `city` varchar(20) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(300) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `surname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_user_billing_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('43', '', '30', 'we', 'we', '3496', 'we', 'we', '0', 'we', 'we', 'we', '', 'we');
INSERT INTO `ecs_user_billing_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('34', '', '0', 'an', '121212', '3479', 'state', 'city', '0', 'address', '10000', '110', '', 'yongchao');
INSERT INTO `ecs_user_billing_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('13', '', '39', '2', '3', '3478', '3', '3', '0', '3', '3', '3', '', '2');
INSERT INTO `ecs_user_billing_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('35', '', '30', 'qq', 'q', '3479', 'q', 'q', '0', 'q', 'q', 'q', '', 'q');
INSERT INTO `ecs_user_billing_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('38', '', '45', 'na', 'djfj@12.com', '3480', 'state q', 'city', '0', 'dddd', '10000', '12333', '', 'an');
INSERT INTO `ecs_user_billing_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('55', '', '36', 'test3', 'ff', '3481', 'dd', 'cc', '0', 'bb', 'ee', 'gg', '', 'aa');
INSERT INTO `ecs_user_billing_address` ( `address_id`, `address_name`, `user_id`, `firstname`, `email`, `country`, `state`, `city`, `district`, `address`, `zipcode`, `tel`, `mobile`, `surname` ) VALUES  ('56', '', '49', 'd', 'd@d.com', '3481', 'd', 'd', '0', 'd', 'd', 'd', '', 'd');
DROP TABLE IF EXISTS `ecs_user_bonus`;
CREATE TABLE `ecs_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('7', '2', '1000051737', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('6', '2', '1000043176', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('3', '1', '1000028113', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('4', '1', '1000039343', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('5', '1', '1000044748', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('8', '2', '1000066177', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('9', '2', '1000071501', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('10', '2', '1000082324', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('11', '2', '1000098491', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('12', '2', '1000104920', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('13', '2', '1000118138', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('14', '2', '1000122120', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('15', '2', '1000135357', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('16', '2', '1000149807', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('17', '2', '1000151625', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('18', '2', '1000167380', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('19', '2', '1000175502', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('20', '2', '1000181709', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('21', '2', '1000195390', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('22', '2', '1000202456', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('23', '2', '1000214439', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('24', '2', '1000227367', '0', '0', '0', '0');
INSERT INTO `ecs_user_bonus` ( `bonus_id`, `bonus_type_id`, `bonus_sn`, `user_id`, `used_time`, `order_id`, `emailed` ) VALUES  ('25', '2', '1000232434', '0', '0', '0', '0');
DROP TABLE IF EXISTS `ecs_user_feed`;
CREATE TABLE `ecs_user_feed` (
  `feed_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `feed_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_feed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_user_rank`;
CREATE TABLE `ecs_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(30) NOT NULL DEFAULT '',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_user_rank` ( `rank_id`, `rank_name`, `min_points`, `max_points`, `discount`, `show_price`, `special_rank` ) VALUES  ('1', '注册用户', '0', '10000', '100', '1', '0');
DROP TABLE IF EXISTS `ecs_users`;
CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `address_billing_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('34', 'sss@qq.com', 'name13887387742302', '25f9e794323b453885f5181f1b624d0b', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1388709974', '1388709974', '0000-00-00 00:00:00', '127.0.0.1', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('35', 'sdsds@qq.com', 'name13887397491437', '25f9e794323b453885f5181f1b624d0b', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1388710949', '1388710949', '0000-00-00 00:00:00', '127.0.0.1', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('30', '511214939@qq.com', 'name13871643102935', '209b10f507cb48f53151b01d6b687bf8', '', '', '0', '1953-01-01', '0.00', '0.00', '0', '0', '79', '35', '1387135510', '1390610770', '0000-00-00 00:00:00', '121.24.6.125', '155', '0', '0', '9516', '0', '0', '0', '', '', '', '', '', '', '1', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('36', 'daniel@tongshang.com', 'name13895313994637', 'c40480424f1e5b3e2b14009b8faddb63', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '81', '55', '1389502599', '1393532511', '0000-00-00 00:00:00', '114.248.125.145', '55', '0', '0', '7908', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('38', 'jameslam@live.com', 'name13897029447337', '333915d6d1452895b894fa81c3ef8a98', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '53', '32', '1389674144', '1390117715', '0000-00-00 00:00:00', '114.250.72.170', '9', '0', '0', '832', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('37', 'djais@qq.com', 'name13896149951178', 'e10adc3949ba59abbe56e057f20f883e', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1389586195', '1389586195', '0000-00-00 00:00:00', '221.219.230.65', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('43', 'a@abc.com', 'name13898545763655', '900150983cd24fb0d6963f7d28e17f72', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1389825776', '1389825776', '0000-00-00 00:00:00', '8.35.201.51', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('39', 'hjju@qq.com', 'name13897682268099', '5fc6c7266584b405d4b7fc14f0799d65', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '22', '13', '1389739426', '1389739426', '0000-00-00 00:00:00', '114.246.168.125', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('40', 'dfd@qq.com', 'name13897772044185', '202cb962ac59075b964b07152d234b70', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1389748404', '1389748404', '0000-00-00 00:00:00', '114.246.168.125', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('41', 'gfr@qq.com', 'name13897773606655', '5eac43aceba42c8757b54003a58277b5', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1389748560', '1389748560', '0000-00-00 00:00:00', '114.246.168.125', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('42', 'dfd1@qq.com', 'name13897774212966', 'e10adc3949ba59abbe56e057f20f883e', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1389748621', '1389748621', '0000-00-00 00:00:00', '114.246.168.125', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('44', '511dfj@qq.com', 'name13898773377325', '202cb962ac59075b964b07152d234b70', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1389848537', '1389848537', '0000-00-00 00:00:00', '114.246.168.125', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('45', 'kdkf@qq.com', 'name13900197891399', '202cb962ac59075b964b07152d234b70', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1389990989', '1389990989', '0000-00-00 00:00:00', '114.250.72.170', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('46', 'grge@qq.com', 'name13901428556051', '81dc9bdb52d04dc20036dbd8313ed055', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1390114055', '1390114055', '0000-00-00 00:00:00', '219.142.225.169', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('47', 't@g.com', 'name13901475879060', '098f6bcd4621d373cade4e832627b4f6', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1390118787', '1390118787', '0000-00-00 00:00:00', '114.250.72.170', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('48', 'daniel@tongshang.con', 'name13920168277996', 'ede730e9b448f1b4aa894be10b35d9f5', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1391988027', '1391988027', '0000-00-00 00:00:00', '124.65.167.30', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('49', 'd@d.com', 'name13920981915371', '27ba16cd3266c22bdbcb3be762fc814e', '', '', '0', '1954-01-01', '0.00', '0.00', '0', '0', '82', '56', '1392069391', '1392250996', '0000-00-00 00:00:00', '124.65.167.30', '6', '0', '0', '8609', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('50', 'zjh7201@163.com', 'name13921659647344', 'b1d8fcdf6d0db7011c71fc30e7aef4a4', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1392137164', '1392137165', '0000-00-00 00:00:00', '114.250.249.24', '1', '0', '0', '', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
INSERT INTO `ecs_users` ( `user_id`, `email`, `user_name`, `password`, `question`, `answer`, `sex`, `birthday`, `user_money`, `frozen_money`, `pay_points`, `rank_points`, `address_id`, `address_billing_id`, `reg_time`, `last_login`, `last_time`, `last_ip`, `visit_count`, `user_rank`, `is_special`, `ec_salt`, `salt`, `parent_id`, `flag`, `alias`, `msn`, `qq`, `office_phone`, `home_phone`, `mobile_phone`, `is_validated`, `credit_line`, `passwd_question`, `passwd_answer` ) VALUES  ('51', 'zhoujh7201@gmail.com', 'name13921680699541', 'b85651b18155dfad2cb16aa4e8787e15', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '0', '1392139269', '1392139362', '0000-00-00 00:00:00', '114.250.249.24', '2', '0', '0', '2964', '0', '0', '0', '', '', '', '', '', '', '0', '0.00', '', '');
DROP TABLE IF EXISTS `ecs_virtual_card`;
CREATE TABLE `ecs_virtual_card` (
  `card_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `card_sn` varchar(60) NOT NULL DEFAULT '',
  `card_password` varchar(60) NOT NULL DEFAULT '',
  `add_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `is_saled` tinyint(1) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `crc32` varchar(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_volume_price`;
CREATE TABLE `ecs_volume_price` (
  `price_type` tinyint(1) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `volume_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `volume_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_type`,`goods_id`,`volume_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_vote`;
CREATE TABLE `ecs_vote` (
  `vote_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_name` varchar(250) NOT NULL DEFAULT '',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `can_multi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_vote_log`;
CREATE TABLE `ecs_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `vote_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_vote_option`;
CREATE TABLE `ecs_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `option_name` varchar(250) NOT NULL DEFAULT '',
  `option_count` int(8) unsigned NOT NULL DEFAULT '0',
  `option_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `ecs_wholesale`;
CREATE TABLE `ecs_wholesale` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `rank_ids` varchar(255) NOT NULL,
  `prices` text NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- END ecshop v2.x SQL Dump Program 