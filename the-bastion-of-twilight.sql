-- The Bastion of Twilight :

DELETE FROM `instance_template` WHERE `map` = 671;
INSERT INTO `instance_template` VALUES
    (671, 0, NULL, NULL, NULL, NULL, 'instance_the_bastion_of_twilight', 0);   
   
-- Sinestra :

DELETE FROM `creature_template` WHERE `entry` = 45213;
INSERT INTO `creature_template` VALUES
    (45213, 0, 0, 0, 0, 0, 34335, 0, 0, 0, 'Sinestra', 'Consort of Deathwing', ''
    , 0, 88, 88, 0, 14, 14, 0, 1, 1.14286, 1, 1, 3000, 4000, 0, 0, 1, 0, 0, 1, 4, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, 2, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, '', 0, 4, 42946000, 211.194, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 'boss_sinestra', 1);

DELETE FROM `creature` WHERE `id` = 45213;
INSERT INTO `creature` VALUES
    (NULL, 45213, 671, 1, 1, 0, 0 , -946.008, -729.376, 437.286, 3.98647 , 300, 0, 0, 42946000, 0, 0, 0, 0, 0, 0);

-- set proper melee range to allow Lady Sintharia to fight people from lava
DELETE FROM `creature_model_info` WHERE `modelid` = 34335;
INSERT INTO `creature_model_info` VALUES
    (34335, 0, 40, 2, 0);

-- speech
DELETE FROM `creature_text` WHERE `entry` = 45213;
INSERT INTO `creature_text`
    (`entry`,`id`,`sound`,`text`)
VALUES
    (45213, 0, 20199 -- aggro
    , 'We were fools to entrust an imbecile like Cho''gall with such a sacred duty. I will deal with you intruders myself!'),
    (45213, 1, 20200 -- death
    , 'Deathwing... I have fallen... the brood... is lost...'),
    (45213, 2, 20201 -- kill-a
    , 'My brood will feed on your bones!'),
    (45213, 3, 20202 -- kill-b
    , 'Powerless...'),
    (45213, 4, 20203 -- losing
    , 'You mistake this for weakness? FOOL!'),
    (45213, 5, 20204 -- phase-a
    , 'I tire of this! Do you see this clutch amidst which you stand? I have nurtured the spark within them, but that lifeforce is, and always will be, MINE! Behold... power beyond your comprehension!'),
    (45213, 6, 20205 -- phase-b
    , 'This will be your tomb as well as theirs!'),
    (45213, 7, 20206 -- phase-c
    , 'Enough! Drawing upon this source will set us back months... you should feel honored to be worthy of this expenditure! NOW DIE!'),
    (45213, 8, 20207 -- spec-a
    , 'Feed, children! Take your fill from their meaty husks!'),
    (45213, 9, 20208 -- spec-b
    , 'The energy infuse within my clutch is mine to reclaim!'),
    (45213, 10, 20209 -- spec-c
    , 'SUFFER!'),
    (45213, 11, 20210 -- spec-d
    , 'FEEL MY HATRED!'),
    (45213, 12, 20211 -- spec-e
    , 'Come forth children of Twilight!'),
    (45213, 13, 20212 -- spec-f
    , 'YOUR MOTHER CALLS!'),
    (45213, 14, 20213 -- winning
    , 'My brood will feast upon your essence!');
    
UPDATE `creature_text` c
  SET `probability` = 0,
      `groupid`     = c.`id`,
      `type`        = 1
WHERE `entry` = 45213;

-- Pulsing Twilight Egg :

DELETE FROM `creature_template` WHERE `entry` = 46842;
INSERT INTO `creature_template` VALUES
    (46842, 0, 0, 0, 0, 0, 35318, 0, 0, 0, 'Pulsing Twilight Egg', '', '', 0, 87, 87, 0, 14, 14, 0, 1, 1.14286
    , 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1250000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'creature_pulsing_twilight_egg', 1);

-- Shadow Orb :

-- shadow pulse
DELETE FROM `creature_template_addon` WHERE `entry` = 40100;
INSERT INTO `creature_template_addon` VALUES
    (40100,0,0,0,1,0,'78650 0'); -- notice, that magic crappy 0 is some undocumented `effect index`
                                 -- or something like that and is no longer needed by few emu's (like `trinity core` for e.g.)
    
-- Calen :

DELETE FROM `creature_template` WHERE `entry` = 46277;
INSERT INTO `creature_template` VALUES
    (46277, 0, 0, 0, 0, 0, 34541, 0, 0, 0, 'Calen', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0
    , 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 'SmartAI', 0, 3, 250, 214.823, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, 0, '', 1);
    
    
    