DELETE FROM `gameobject_template` WHERE `entry`=180055;
INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`IconName`,`castBarCaption`,`unk1`,`faction`,`flags`,`size`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`data24`,`data25`,`data26`,`data27`,`data28`,`data29`,`data30`,`data31`,`unkInt32`,`AIName`,`ScriptName`,`WDBVerified`) values (180055,2,318,'Mysterious Wailing Caverns Chest','','','',0,0,1,0,0,0,0,0,0,223,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','',1);

DELETE FROM `gameobject` WHERE `id`=180055;
DELETE FROM `gameobject` WHERE `guid`=4598;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) values (4598,180055,43,1,1,-97.6,173.8,-79,2.08,0,0,0,0,43200,100,1);

UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `Id`=8345;
UPDATE `quest_template` SET `NextQuestId`=0 WHERE `Id`=8330;