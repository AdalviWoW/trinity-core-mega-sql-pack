REPLACE INTO `creature_template` (entry,modelid1,name,subname,minlevel,maxlevel,faction,scale, mindmg, maxdmg, BaseAttackTime,RangeAttackTime,mingold,maxgold,AIName,InhabitType,HoverHeight,Health_Mod,Mana_Mod,Armor_Mod) VALUES
 (400400,24942,"Consur","Lord of the Shadow",83,83,14,2,4000,8000,2000,2200,10000000,10000000,"SmartAI",3,1,15000,15000,15000);

REPLACE INTO `creature_text`  (entry,groupid,id,text,type,language,probability,emote,duration,sound,comment) VALUES 
(400400,1,0,'Interlopers! You mortals who dare to interfere with my sport will pay... Wait--you... I remember you...',14,0,100,1,0,17457,'Comment'),
(400400,2,0,'You mortals......you cant...........KILL ME!!',14,0,100,1,0,17458,'Comment'),
(400400,3,0,'You are not prepared!',14,0,100,1,0,17459,'Comment'),
(400400,4,0,'NO! NO! NO! NO! NO!......Impossible!!',14,0,100,1,0,17460,'Comment'),
(400400,5,0,'Phase 1',41,0,100,1,0,0,'Comment'),
(400400,6,0,'Phase 2',41,0,100,1,0,0,'Comment');

-- For Ac-web
SET @ENTRY := 400400;
SET @SOURCETYPE := 0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,@SOURCETYPE,0,0,2,0,100,0,90,100,12000,13000,11,46589,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"SHADOW_SPIKE"),
(@ENTRY,@SOURCETYPE,2,0,2,0,100,0,75,80,10000,13000,11,68950,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"FEAR"),
(@ENTRY,@SOURCETYPE,3,0,2,0,100,1,60,70,0,0,11,8269,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"FRENZY"),
(@ENTRY,@SOURCETYPE,4,0,2,0,100,0,50,60,7000,8000,11,33665,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"CHAIN_LIGHTNING"),
(@ENTRY,@SOURCETYPE,5,0,2,0,100,1,40,50,0,0,11,71049,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"BLISTERING_COLD"),
(@ENTRY,@SOURCETYPE,8,0,2,0,100,0,10,20,6000,7000,11,40827,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"SINBEAM"),
(@ENTRY,@SOURCETYPE,10,0,2,0,100,1,1,10,0,0,11,68335,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Enrage at 10%"),
(@ENTRY,@SOURCETYPE,11,0,2,0,100,0,80,90,10000,13000,11,5649,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Stunning Blast "),
(@ENTRY,@SOURCETYPE,12,0,2,0,100,1,30,40,0,0,11,2565,2,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Shield Block"),
(@ENTRY,@SOURCETYPE,13,0,2,0,100,0,1,10,9000,10000,11,26607,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"BLIZZARD"),
(@ENTRY,@SOURCETYPE,14,0,2,0,100,1,60,95,0,0,1,1,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 1"),
(@ENTRY,@SOURCETYPE,15,0,2,0,100,1,40,55,0,0,1,2,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 2"),
(@ENTRY,@SOURCETYPE,16,0,2,0,100,1,20,30,0,0,1,3,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 3"),
(@ENTRY,@SOURCETYPE,17,0,2,0,100,1,1,5,0,0,1,4,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Yell 4"),
(@ENTRY,@SOURCETYPE,18,0,2,0,100,1,90,100,0,0,11,40585,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Dark Barrage"),
(@ENTRY,@SOURCETYPE,19,0,2,0,100,0,80,87,12000,13000,11,21066,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Void Bolt"),
(@ENTRY,@SOURCETYPE,20,0,2,0,100,1,70,80,0,0,11,59971,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Rain of Fire"),
(@ENTRY,@SOURCETYPE,21,0,2,0,100,1,60,70,15000,18000,11,40904,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Draw Soul"),
(@ENTRY,@SOURCETYPE,22,0,2,0,100,0,50,60,8000,9000,11,41131,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Flame Burst"),
(@ENTRY,@SOURCETYPE,23,0,2,0,100,0,40,50,13000,15000,11,41545,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Soul Scream"),
(@ENTRY,@SOURCETYPE,24,0,2,0,100,1,55,100,0,0,1,5,1,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Emote 5"),
(@ENTRY,@SOURCETYPE,25,0,2,0,100,1,1,50,0,0,1,6,1,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Emote 6"),
(@ENTRY,@SOURCETYPE,27,0,2,0,100,0,25,35,8000,9000,11,42052,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Volcanic Geyser"),
(@ENTRY,@SOURCETYPE,28,0,2,0,100,0,20,30,8000,9000,11,56431,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Arcane Bomb");

REPLACE INTO `creature`  (guid, id, zoneid, areaid, map, position_x, position_y, position_z, orientation) VALUES
 (600000, 400400, 1, 1, 1, -10382.5, 1062.51, 11.8543, 1.57153);

REPLACE INTO `gameobject` (guid,id,map,spawnmask,phasemask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,state,verifiedbuild) VALUES 
 ('500001', '181199', '1', '1', '1', '-10394.8', '1162.9', '10.3962', '2.05453', '0', '0', '0.855888', '0.517161', '300', '0', '1'),
 ('500002', '181199', '1', '1', '1', '-10371.1', '1162.45', '11.8124', '0.947121', '0', '0', '0.456058', '0.88995', '300', '0', '1'),
 ('500003', '181199', '1', '1', '1', '-10382', '1165.32', '11.6261', '1.58722', '0', '0', '0.71289', '0.701276', '300', '0', '1'),
 ('500004', '181782', '1', '1', '1', '-10382.5', '1062.51', '11.8543', '1.57153', '0', '0', '0.707366', '0.706847', '300', '0', '1'),
 ('500005', '181199', '1', '1', '1', '-10383.6', '1041.19', '12.4789', '4.70524', '0', '0', '0.709629', '-0.704575', '300', '0', '1'),
 ('500006', '181199', '1', '1', '1', '-10371.1', '1040.71', '12.1943', '4.87016', '0', '0', '0.649185', '-0.76063', '300', '0', '1'),
 ('500007', '181199', '1', '1', '1', '-10396', '1042.43', '11.4025', '4.1476', '0', '0', '0.876138', '-0.482061', '300', '0', '1'),
 ('500008', '181199', '1', '1', '1', '-10381.9', '1035.53', '12.8224', '1.57066', '0', '0', '0.707059', '0.707155', '300', '0', '1'),
 ('500009', '181199', '1', '1', '1', '-10383.5', '1038.6', '12.5043', '1.55103', '0', '0', '0.700082', '0.714062', '300', '0', '1');

REPLACE INTO `game_tele` VALUES
 ('500013', '-10382.5', '1152.12', '10.6764', '4.68951', '1', 'consur');
