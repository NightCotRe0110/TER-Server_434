/*
Navicat MySQL Data Transfer

Source Server         : TER-Server
Source Server Version : 50623
Source Host           : 127.0.0.1:3306
Source Database       : 434_world

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2015-11-01 20:27:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `player_factionchange_quests`
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_quests`;
CREATE TABLE `player_factionchange_quests` (
  `alliance_id` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`),
  UNIQUE KEY `alliance_uniq` (`alliance_id`),
  UNIQUE KEY `horde_uniq` (`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player_factionchange_quests
-- ----------------------------
INSERT INTO `player_factionchange_quests` VALUES ('7168', '7163');
INSERT INTO `player_factionchange_quests` VALUES ('7169', '7164');
INSERT INTO `player_factionchange_quests` VALUES ('7170', '7165');
INSERT INTO `player_factionchange_quests` VALUES ('7171', '7166');
INSERT INTO `player_factionchange_quests` VALUES ('7172', '7167');
INSERT INTO `player_factionchange_quests` VALUES ('8114', '8121');
INSERT INTO `player_factionchange_quests` VALUES ('8115', '8122');
INSERT INTO `player_factionchange_quests` VALUES ('8311', '8312');
INSERT INTO `player_factionchange_quests` VALUES ('8860', '8861');
INSERT INTO `player_factionchange_quests` VALUES ('8960', '9032');
INSERT INTO `player_factionchange_quests` VALUES ('8997', '8998');
INSERT INTO `player_factionchange_quests` VALUES ('9520', '9535');
INSERT INTO `player_factionchange_quests` VALUES ('9522', '9536');
INSERT INTO `player_factionchange_quests` VALUES ('9524', '9525');
INSERT INTO `player_factionchange_quests` VALUES ('9587', '9588');
INSERT INTO `player_factionchange_quests` VALUES ('9869', '9870');
INSERT INTO `player_factionchange_quests` VALUES ('9933', '9934');
INSERT INTO `player_factionchange_quests` VALUES ('9938', '9937');
INSERT INTO `player_factionchange_quests` VALUES ('9940', '9939');
INSERT INTO `player_factionchange_quests` VALUES ('9982', '9983');
INSERT INTO `player_factionchange_quests` VALUES ('9994', '9995');
INSERT INTO `player_factionchange_quests` VALUES ('9996', '9997');
INSERT INTO `player_factionchange_quests` VALUES ('10005', '10006');
INSERT INTO `player_factionchange_quests` VALUES ('10014', '10015');
INSERT INTO `player_factionchange_quests` VALUES ('10033', '10034');
INSERT INTO `player_factionchange_quests` VALUES ('10035', '10036');
INSERT INTO `player_factionchange_quests` VALUES ('10038', '10039');
INSERT INTO `player_factionchange_quests` VALUES ('10040', '10041');
INSERT INTO `player_factionchange_quests` VALUES ('10042', '10043');
INSERT INTO `player_factionchange_quests` VALUES ('10048', '10049');
INSERT INTO `player_factionchange_quests` VALUES ('10051', '10052');
INSERT INTO `player_factionchange_quests` VALUES ('10053', '10059');
INSERT INTO `player_factionchange_quests` VALUES ('10054', '10060');
INSERT INTO `player_factionchange_quests` VALUES ('10055', '10086');
INSERT INTO `player_factionchange_quests` VALUES ('10056', '10158');
INSERT INTO `player_factionchange_quests` VALUES ('10057', '10062');
INSERT INTO `player_factionchange_quests` VALUES ('10076', '10074');
INSERT INTO `player_factionchange_quests` VALUES ('10078', '10087');
INSERT INTO `player_factionchange_quests` VALUES ('10080', '10089');
INSERT INTO `player_factionchange_quests` VALUES ('10083', '10090');
INSERT INTO `player_factionchange_quests` VALUES ('10084', '10092');
INSERT INTO `player_factionchange_quests` VALUES ('10115', '10118');
INSERT INTO `player_factionchange_quests` VALUES ('10116', '10117');
INSERT INTO `player_factionchange_quests` VALUES ('10122', '10150');
INSERT INTO `player_factionchange_quests` VALUES ('10126', '10151');
INSERT INTO `player_factionchange_quests` VALUES ('10128', '10153');
INSERT INTO `player_factionchange_quests` VALUES ('10130', '10152');
INSERT INTO `player_factionchange_quests` VALUES ('10131', '10154');
INSERT INTO `player_factionchange_quests` VALUES ('10137', '10155');
INSERT INTO `player_factionchange_quests` VALUES ('10138', '10156');
INSERT INTO `player_factionchange_quests` VALUES ('10139', '10157');
INSERT INTO `player_factionchange_quests` VALUES ('10140', '10120');
INSERT INTO `player_factionchange_quests` VALUES ('10141', '10121');
INSERT INTO `player_factionchange_quests` VALUES ('10142', '10123');
INSERT INTO `player_factionchange_quests` VALUES ('10145', '10127');
INSERT INTO `player_factionchange_quests` VALUES ('10146', '10129');
INSERT INTO `player_factionchange_quests` VALUES ('10147', '10133');
INSERT INTO `player_factionchange_quests` VALUES ('10148', '10135');
INSERT INTO `player_factionchange_quests` VALUES ('10163', '10162');
INSERT INTO `player_factionchange_quests` VALUES ('10394', '10390');
INSERT INTO `player_factionchange_quests` VALUES ('10395', '10393');
INSERT INTO `player_factionchange_quests` VALUES ('10397', '10392');
INSERT INTO `player_factionchange_quests` VALUES ('10443', '10442');
INSERT INTO `player_factionchange_quests` VALUES ('10444', '10448');
INSERT INTO `player_factionchange_quests` VALUES ('10476', '10479');
INSERT INTO `player_factionchange_quests` VALUES ('10562', '10595');
INSERT INTO `player_factionchange_quests` VALUES ('10563', '10596');
INSERT INTO `player_factionchange_quests` VALUES ('10564', '10598');
INSERT INTO `player_factionchange_quests` VALUES ('10572', '10597');
INSERT INTO `player_factionchange_quests` VALUES ('10582', '10600');
INSERT INTO `player_factionchange_quests` VALUES ('10583', '10601');
INSERT INTO `player_factionchange_quests` VALUES ('10585', '10602');
INSERT INTO `player_factionchange_quests` VALUES ('10586', '10603');
INSERT INTO `player_factionchange_quests` VALUES ('10589', '10604');
INSERT INTO `player_factionchange_quests` VALUES ('10606', '10611');
INSERT INTO `player_factionchange_quests` VALUES ('10612', '10613');
INSERT INTO `player_factionchange_quests` VALUES ('10621', '10623');
INSERT INTO `player_factionchange_quests` VALUES ('10626', '10627');
INSERT INTO `player_factionchange_quests` VALUES ('10662', '10663');
INSERT INTO `player_factionchange_quests` VALUES ('10680', '10681');
INSERT INTO `player_factionchange_quests` VALUES ('10744', '10745');
INSERT INTO `player_factionchange_quests` VALUES ('10754', '10755');
INSERT INTO `player_factionchange_quests` VALUES ('10759', '10761');
INSERT INTO `player_factionchange_quests` VALUES ('10762', '10756');
INSERT INTO `player_factionchange_quests` VALUES ('10763', '10757');
INSERT INTO `player_factionchange_quests` VALUES ('10764', '10758');
INSERT INTO `player_factionchange_quests` VALUES ('10766', '10767');
INSERT INTO `player_factionchange_quests` VALUES ('10772', '10750');
INSERT INTO `player_factionchange_quests` VALUES ('10773', '10751');
INSERT INTO `player_factionchange_quests` VALUES ('10774', '10765');
INSERT INTO `player_factionchange_quests` VALUES ('10775', '10768');
INSERT INTO `player_factionchange_quests` VALUES ('10776', '10769');
INSERT INTO `player_factionchange_quests` VALUES ('10863', '10862');
INSERT INTO `player_factionchange_quests` VALUES ('10869', '10868');
INSERT INTO `player_factionchange_quests` VALUES ('10962', '10963');
INSERT INTO `player_factionchange_quests` VALUES ('11002', '11003');
INSERT INTO `player_factionchange_quests` VALUES ('11117', '11431');
INSERT INTO `player_factionchange_quests` VALUES ('11122', '11412');
INSERT INTO `player_factionchange_quests` VALUES ('11123', '11124');
INSERT INTO `player_factionchange_quests` VALUES ('11131', '11219');
INSERT INTO `player_factionchange_quests` VALUES ('11150', '11205');
INSERT INTO `player_factionchange_quests` VALUES ('11185', '11186');
INSERT INTO `player_factionchange_quests` VALUES ('11242', '11403');
INSERT INTO `player_factionchange_quests` VALUES ('11302', '11312');
INSERT INTO `player_factionchange_quests` VALUES ('11321', '11413');
INSERT INTO `player_factionchange_quests` VALUES ('11346', '11350');
INSERT INTO `player_factionchange_quests` VALUES ('11348', '11352');
INSERT INTO `player_factionchange_quests` VALUES ('11349', '11351');
INSERT INTO `player_factionchange_quests` VALUES ('11355', '11365');
INSERT INTO `player_factionchange_quests` VALUES ('11358', '11366');
INSERT INTO `player_factionchange_quests` VALUES ('11359', '11367');
INSERT INTO `player_factionchange_quests` VALUES ('11400', '11419');
INSERT INTO `player_factionchange_quests` VALUES ('11486', '11487');
INSERT INTO `player_factionchange_quests` VALUES ('11502', '11503');
INSERT INTO `player_factionchange_quests` VALUES ('11657', '11923');
INSERT INTO `player_factionchange_quests` VALUES ('11704', '11702');
INSERT INTO `player_factionchange_quests` VALUES ('11713', '11684');
INSERT INTO `player_factionchange_quests` VALUES ('11731', '11922');
INSERT INTO `player_factionchange_quests` VALUES ('11882', '11915');
INSERT INTO `player_factionchange_quests` VALUES ('11921', '11926');
INSERT INTO `player_factionchange_quests` VALUES ('11924', '11925');
INSERT INTO `player_factionchange_quests` VALUES ('11986', '12026');
INSERT INTO `player_factionchange_quests` VALUES ('11993', '12058');
INSERT INTO `player_factionchange_quests` VALUES ('12022', '12191');
INSERT INTO `player_factionchange_quests` VALUES ('12105', '12423');
INSERT INTO `player_factionchange_quests` VALUES ('12129', '12165');
INSERT INTO `player_factionchange_quests` VALUES ('12130', '12196');
INSERT INTO `player_factionchange_quests` VALUES ('12131', '12197');
INSERT INTO `player_factionchange_quests` VALUES ('12133', '12155');
INSERT INTO `player_factionchange_quests` VALUES ('12135', '12139');
INSERT INTO `player_factionchange_quests` VALUES ('12138', '12198');
INSERT INTO `player_factionchange_quests` VALUES ('12142', '12144');
INSERT INTO `player_factionchange_quests` VALUES ('12143', '12145');
INSERT INTO `player_factionchange_quests` VALUES ('12146', '12147');
INSERT INTO `player_factionchange_quests` VALUES ('12153', '12199');
INSERT INTO `player_factionchange_quests` VALUES ('12161', '12425');
INSERT INTO `player_factionchange_quests` VALUES ('12183', '12201');
INSERT INTO `player_factionchange_quests` VALUES ('12184', '12202');
INSERT INTO `player_factionchange_quests` VALUES ('12185', '12203');
INSERT INTO `player_factionchange_quests` VALUES ('12219', '12207');
INSERT INTO `player_factionchange_quests` VALUES ('12220', '12213');
INSERT INTO `player_factionchange_quests` VALUES ('12222', '12256');
INSERT INTO `player_factionchange_quests` VALUES ('12223', '12257');
INSERT INTO `player_factionchange_quests` VALUES ('12246', '12229');
INSERT INTO `player_factionchange_quests` VALUES ('12247', '12231');
INSERT INTO `player_factionchange_quests` VALUES ('12248', '12241');
INSERT INTO `player_factionchange_quests` VALUES ('12249', '12236');
INSERT INTO `player_factionchange_quests` VALUES ('12250', '12242');
INSERT INTO `player_factionchange_quests` VALUES ('12255', '12259');
INSERT INTO `player_factionchange_quests` VALUES ('12278', '12306');
INSERT INTO `player_factionchange_quests` VALUES ('12323', '12324');
INSERT INTO `player_factionchange_quests` VALUES ('12416', '12448');
INSERT INTO `player_factionchange_quests` VALUES ('12417', '12449');
INSERT INTO `player_factionchange_quests` VALUES ('12418', '12450');
INSERT INTO `player_factionchange_quests` VALUES ('12460', '12461');
INSERT INTO `player_factionchange_quests` VALUES ('12464', '12285');
INSERT INTO `player_factionchange_quests` VALUES ('12479', '12480');
INSERT INTO `player_factionchange_quests` VALUES ('12491', '12492');
INSERT INTO `player_factionchange_quests` VALUES ('12854', '12895');
INSERT INTO `player_factionchange_quests` VALUES ('12858', '12926');
INSERT INTO `player_factionchange_quests` VALUES ('12860', '12927');
INSERT INTO `player_factionchange_quests` VALUES ('12862', '13060');
INSERT INTO `player_factionchange_quests` VALUES ('12870', '12882');
INSERT INTO `player_factionchange_quests` VALUES ('12872', '12928');
INSERT INTO `player_factionchange_quests` VALUES ('12885', '12929');
INSERT INTO `player_factionchange_quests` VALUES ('13186', '13185');
INSERT INTO `player_factionchange_quests` VALUES ('13188', '13189');
INSERT INTO `player_factionchange_quests` VALUES ('13222', '13223');
INSERT INTO `player_factionchange_quests` VALUES ('13226', '13227');
INSERT INTO `player_factionchange_quests` VALUES ('13284', '13301');
INSERT INTO `player_factionchange_quests` VALUES ('13309', '13310');
INSERT INTO `player_factionchange_quests` VALUES ('13332', '13306');
INSERT INTO `player_factionchange_quests` VALUES ('13334', '13307');
INSERT INTO `player_factionchange_quests` VALUES ('13335', '13329');
INSERT INTO `player_factionchange_quests` VALUES ('13336', '13330');
INSERT INTO `player_factionchange_quests` VALUES ('13337', '13312');
INSERT INTO `player_factionchange_quests` VALUES ('13338', '13316');
INSERT INTO `player_factionchange_quests` VALUES ('13339', '13328');
INSERT INTO `player_factionchange_quests` VALUES ('13341', '13340');
INSERT INTO `player_factionchange_quests` VALUES ('13380', '13373');
INSERT INTO `player_factionchange_quests` VALUES ('13381', '13374');
INSERT INTO `player_factionchange_quests` VALUES ('13382', '13376');
INSERT INTO `player_factionchange_quests` VALUES ('13383', '13379');
INSERT INTO `player_factionchange_quests` VALUES ('13387', '13259');
INSERT INTO `player_factionchange_quests` VALUES ('13388', '13262');
INSERT INTO `player_factionchange_quests` VALUES ('13389', '13263');
INSERT INTO `player_factionchange_quests` VALUES ('13390', '13271');
INSERT INTO `player_factionchange_quests` VALUES ('13391', '13275');
INSERT INTO `player_factionchange_quests` VALUES ('13392', '13282');
INSERT INTO `player_factionchange_quests` VALUES ('13393', '13304');
INSERT INTO `player_factionchange_quests` VALUES ('13394', '13305');
INSERT INTO `player_factionchange_quests` VALUES ('13395', '13236');
INSERT INTO `player_factionchange_quests` VALUES ('13396', '13348');
INSERT INTO `player_factionchange_quests` VALUES ('13397', '13349');
INSERT INTO `player_factionchange_quests` VALUES ('13398', '13359');
INSERT INTO `player_factionchange_quests` VALUES ('13399', '13360');
INSERT INTO `player_factionchange_quests` VALUES ('13400', '13361');
INSERT INTO `player_factionchange_quests` VALUES ('13401', '13362');
INSERT INTO `player_factionchange_quests` VALUES ('13402', '13363');
INSERT INTO `player_factionchange_quests` VALUES ('13403', '13364');
INSERT INTO `player_factionchange_quests` VALUES ('13408', '13409');
INSERT INTO `player_factionchange_quests` VALUES ('13410', '13411');
INSERT INTO `player_factionchange_quests` VALUES ('13415', '13416');
INSERT INTO `player_factionchange_quests` VALUES ('13418', '13419');
INSERT INTO `player_factionchange_quests` VALUES ('13480', '13479');
INSERT INTO `player_factionchange_quests` VALUES ('13484', '13483');
INSERT INTO `player_factionchange_quests` VALUES ('13625', '13677');
INSERT INTO `player_factionchange_quests` VALUES ('13633', '13634');
INSERT INTO `player_factionchange_quests` VALUES ('13671', '13676');
INSERT INTO `player_factionchange_quests` VALUES ('13672', '13678');
INSERT INTO `player_factionchange_quests` VALUES ('13679', '13680');
INSERT INTO `player_factionchange_quests` VALUES ('13686', '13687');
INSERT INTO `player_factionchange_quests` VALUES ('13828', '13829');
INSERT INTO `player_factionchange_quests` VALUES ('13835', '13838');
INSERT INTO `player_factionchange_quests` VALUES ('13837', '13839');
INSERT INTO `player_factionchange_quests` VALUES ('14022', '14036');
INSERT INTO `player_factionchange_quests` VALUES ('14023', '14037');
INSERT INTO `player_factionchange_quests` VALUES ('14024', '14040');
INSERT INTO `player_factionchange_quests` VALUES ('14028', '14041');
INSERT INTO `player_factionchange_quests` VALUES ('14030', '14044');
INSERT INTO `player_factionchange_quests` VALUES ('14033', '14043');
INSERT INTO `player_factionchange_quests` VALUES ('14035', '14047');
INSERT INTO `player_factionchange_quests` VALUES ('14048', '14061');
INSERT INTO `player_factionchange_quests` VALUES ('14051', '14062');
INSERT INTO `player_factionchange_quests` VALUES ('14053', '14059');
INSERT INTO `player_factionchange_quests` VALUES ('14054', '14060');
INSERT INTO `player_factionchange_quests` VALUES ('14055', '14058');
INSERT INTO `player_factionchange_quests` VALUES ('14096', '14142');
INSERT INTO `player_factionchange_quests` VALUES ('14111', '14100');
INSERT INTO `player_factionchange_quests` VALUES ('20438', '24556');
INSERT INTO `player_factionchange_quests` VALUES ('20439', '24451');
INSERT INTO `player_factionchange_quests` VALUES ('24498', '24507');
INSERT INTO `player_factionchange_quests` VALUES ('24499', '24511');
INSERT INTO `player_factionchange_quests` VALUES ('24500', '24802');
INSERT INTO `player_factionchange_quests` VALUES ('24510', '24506');
INSERT INTO `player_factionchange_quests` VALUES ('24535', '24563');
INSERT INTO `player_factionchange_quests` VALUES ('24655', '24536');
INSERT INTO `player_factionchange_quests` VALUES ('24656', '24541');
INSERT INTO `player_factionchange_quests` VALUES ('24657', '24576');
INSERT INTO `player_factionchange_quests` VALUES ('24683', '24682');
INSERT INTO `player_factionchange_quests` VALUES ('24710', '24712');
INSERT INTO `player_factionchange_quests` VALUES ('24711', '24713');
INSERT INTO `player_factionchange_quests` VALUES ('24804', '24805');
INSERT INTO `player_factionchange_quests` VALUES ('24848', '24850');
INSERT INTO `player_factionchange_quests` VALUES ('25055', '25092');
INSERT INTO `player_factionchange_quests` VALUES ('25180', '25181');
INSERT INTO `player_factionchange_quests` VALUES ('25253', '25228');
INSERT INTO `player_factionchange_quests` VALUES ('25282', '25254');
INSERT INTO `player_factionchange_quests` VALUES ('25290', '25288');
INSERT INTO `player_factionchange_quests` VALUES ('25414', '25293');
