DROP TABLE IF EXISTS `active_buff_list`;
CREATE TABLE `active_buff_list` (
  `player_guid` int(10) DEFAULT NULL,
  `spell_0` int(10) DEFAULT NULL,
  `spell_1` int(10) DEFAULT NULL,
  `spell_2` int(10) DEFAULT NULL,
  `spell_3` int(10) DEFAULT NULL,
  `spell_4` int(10) DEFAULT NULL,
  `spell_5` int(10) DEFAULT NULL,
  `spell_6` int(10) DEFAULT NULL,
  `spell_7` int(10) DEFAULT NULL,
  `spell_8` int(10) DEFAULT NULL,
  `spell_9` int(10) DEFAULT NULL,
  `spell_10` int(10) DEFAULT NULL,
  `spell_11` int(10) DEFAULT NULL,
  `spell_12` int(10) DEFAULT NULL,
  `spell_13` int(10) DEFAULT NULL,
  `spell_14` int(10) DEFAULT NULL,
  `spell_15` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `played_loged`;
CREATE TABLE `played_loged` (
  `event_id` int(100) DEFAULT NULL,
  `time_event` varchar(500) DEFAULT NULL,
  `player_name` varchar(1000) DEFAULT NULL,
  `event_addtional` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
