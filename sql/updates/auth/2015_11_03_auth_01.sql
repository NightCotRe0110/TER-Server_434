DELETE FROM `rbac_group_roles` WHERE `groupId` = 1 AND `roleId` IN (19, 28, 30);
DELETE FROM `rbac_group_roles` WHERE `roleId` = 31;
DELETE FROM `rbac_group_roles` WHERE `roleId` = 34;
INSERT INTO `rbac_group_roles` (`groupId`, `roleId`) VALUES (1, 34);