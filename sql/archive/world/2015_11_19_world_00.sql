DELETE FROM `creature` WHERE `id`=2077;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(15462647, 2077, 1, 141, 188, 1, 1, 0, 1, 10329.7, 825.267, 1326.38, 2.40864, 300, 0, 0, 102, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=3597;
INSERT INTO `creature` (`guid`,`id`,`map`,`zone`,`area`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(15462648, 3597, 1, 141, 256, 1, 1, 0, 1, 10485.6, 818.876, 1322.74, 3.55846, 300, 0, 0, 222, 0, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE (`entry`=2150);