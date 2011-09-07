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
DELETE FROM `script_texts` WHERE `npc_entry` = 45213;
INSERT INTO `script_texts`
    (`npc_entry`,`entry`,`sound`,`content_default`,`content_loc8`) 
VALUES
    (45213, -452130, 20199 -- aggro
    , 'We were fools to entrust an imbecile like Cho''gall with such a sacred duty. I will deal with you intruders myself!'
    , 'Нельзя было доверять этому идиоту Чо''галлу такое важное поручение. Я сама с вами разберусь!'),
    (45213, -452131, 20200 -- death
    , 'Deathwing... I have fallen... the brood... is lost...'
    , 'Смертокрыл... я подвела тебя... наш род... обречён...'),
    (45213, -452132, 20201 -- kill-a
    , 'My brood will feed on your bones!'
    , 'Мои дети обглодают твои кости!'),
    (45213, -452133, 20202 -- kill-b
    , 'Powerless...'
    , 'Слабое существо'),
    (45213, -452134, 20203 -- losing
    , 'You mistake this for weakness? FOOL!'
    , 'Ты так в этом уверен? Глупец!'),
    (45213, -452135, 20204 -- phase-a
    , 'I tire of this! Do you see this clutch amidst which you stand? I have nurtured the spark within them, but that lifeforce is, and always will be, MINE! Behold... power beyond your comprehension!'
    , 'Вы меня утомляете! Искры силы, вложенные в каждого из моих детей, принадлежат мне. Узрите же мощь, которую вы и представить себе не могли!'),
    (45213, -452136, 20205 -- phase-b
    , 'This will be your tomb as well as theirs!'
    , 'Вы умрёте так же, как они!'),
    (45213, -452137, 20206 -- phase-c
    , 'Enough! Drawing upon this source will set us back months... you should feel honored to be worthy of this expenditure! NOW DIE!'
    , 'Довольно! Это может затянуться на месяцы... я окажу тебе честь и потрачу на тебя весь запас энергии! ПОРА УМЕРЕТЬ!'),
    (45213, -452138, 20207 -- spec-a
    , 'Feed, children! Take your fill from their meaty husks!'
    , 'Ешьте, дети мои! Пусть их мясо насытит вас!'),
    (45213, -452139, 20208 -- spec-b
    , 'The energy infuse within my clutch is mine to reclaim!'
    , 'Я наделила своих детей силой и я же заберу её обратно!'),
    (45213, -4521310, 20209 -- spec-c
    , 'SUFFER!'
    , 'СТРАДАНИЯ!'),
    (45213, -4521311, 20210 -- spec-d
    , 'FEEL MY HATRED!'
    , 'ИСПЕПЕЛЯЮЩАЯ НЕНАВИСТЬ!'),
    (45213, -4521312, 20211 -- spec-e
    , 'Come forth children of Twilight!'
    , 'Придите, исчадия сумрака!'),
    (45213, -4521313, 20212 -- spec-f
    , 'YOUR MOTHER CALLS!'
    , 'ВАША МАТЬ ЗОВЁТ!'),
    (45213, -4521314, 20213 -- winning
    , 'My brood will feast upon your essence!'
    , 'Мои дети полакомятся твоей плотью!');

-- Pulsing Twilight Egg :
DELETE FROM `creature_template` WHERE `entry` = 46842;
INSERT INTO `creature_template` VALUES
    (46842, 0, 0, 0, 0, 0, 35318, 0, 0, 0, 'Pulsing Twilight Egg', '', '', 0, 87, 87, 0, 14, 14, 0, 1, 1.14286
    , 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1250000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 'creature_pulsing_twilight_egg', 1);

-- Calen :
DELETE FROM `creature_template` WHERE `entry` = 46277;
INSERT INTO `creature_template` VALUES
    (46277, 0, 0, 0, 0, 0, 34541, 0, 0, 0, 'Calen', '', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0
    , 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    , 0, 0, 'SmartAI', 0, 3, 250, 214.823, 1, 0, 0, 0, 0, 0, 0, 0, 171, 1, 0, 0, 0, '', 1);
    
    
    