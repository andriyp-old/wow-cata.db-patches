-- Eversong Woods Warrior Trainers :

-- Delios Silverblade - Sunstrider Isle - http://www.wowhead.com/npc=43010
DELETE FROM `creature_template` WHERE `entry` = 43010;
INSERT INTO `creature_template` VALUES
    (43010, 0, 0, 0, 0, 0, 33190, 0, 0, 0, 'Delios Silverblade', 'Warrior Trainer', '', 0, 5, 5, 0
    , 35, 35, 51, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);
    
DELETE FROM `creature` WHERE `id` = 43010;
INSERT INTO `creature` VALUES
    (NULL, 43010, 530, 1, 1, 0, 0, 10381.4, -6422.88, 38.5315, 2.50212, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);
    
-- Alsudar the Bastion - Silvermoon City - http://www.wowhead.com/npc=43009
DELETE FROM `creature_template` WHERE `entry` = 43009;
INSERT INTO `creature_template` VALUES
    (43009, 0, 0, 0, 0, 0, 33688, 0, 0, 0, 'Alsudar the Bastion', 'Warrior Trainer', '', 0, 60, 60, 0
    , 35, 35, 51, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);

-- Beldis - Silvermoon City - http://www.wowhead.com/npc=44129
DELETE FROM `creature_template` WHERE `entry` = 44129;
INSERT INTO `creature_template` VALUES
    (44129, 0, 0, 0, 0, 0, 33690, 0, 0, 0, 'Beldis', 'Warrior Trainer', '', 0, 40, 40, 0, 35, 35, 51, 1
    , 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1);
    
DELETE FROM `creature` WHERE `id` = 44129;
INSERT INTO `creature` VALUES
    (NULL, 44129, 530, 1, 1, 0, 0, 9844.96, -7382.19, 18.6091, 0.958841, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);