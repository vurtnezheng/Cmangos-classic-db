-- Source: http://www.wowhead.com/npc=10916/winterfall-runner#comments
-- Source: http://www.wow-pro.com/guidepics/wtfrunnersroute.jpg

-- Link 3 Winterfall Runners together in Winterspring
-- Note: 1 other unlinked Winterfall Runner spawns in Felwood
DELETE FROM creature_linking WHERE guid IN (42250, 42251, 42252);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(42251, 42250, 1+2+128+512+1024+8192), -- FLAG_AGGRO_ON_AGGRO, FLAG_TO_AGGRO_ON_AGGRO, FLAG_RESPAWN_ON_RESPAWN, FLAG_CANT_SPAWN_IF_BOSS_DEAD, FLAG_DESPAWN_ON_DESPAWN
(42252, 42250, 1+2+128+512+1024+8192);

-- Should respawn at the entrance to Timbermaw Hold within 90 seconds from all three getting killed (see source)
UPDATE creature SET spawntimesecsmin=90, spawntimesecsmax=90, spawndist=0 WHERE guid IN (42250, 42251, 42252 ); -- was 3330
UPDATE creature SET position_x=6899.61, position_y=-2301.52, position_z=587.805, orientation=3.810343, MovementType=2 WHERE guid=42250;
UPDATE creature SET position_x=6904.28, position_y=-2301.94, position_z=588.819, orientation=3.810343, MovementType=0 WHERE guid=42251;
UPDATE creature SET position_x=6901.18, position_y=-2297.51, position_z=588.744, orientation=3.810343, MovementType=0 WHERE guid=42252;

-- 301 6903 -2297 589
-- select * from creature_movement where id=42251
-- select * from creature_movement where id=42252
-- Move waypoints around to allow movement to start from Timbermaw Hold
DELETE FROM creature_movement WHERE id IN (42250, 42251, 42252);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z) VALUES
(42250, 1, 6887.01, -2307.56, 583.152),
(42250, 2, 6869.31, -2310.07, 580.117),
(42250, 3, 6848.82, -2309.44, 580.22),
(42250, 4, 6822.16, -2306.08, 581.199),
(42250, 5, 6807.94, -2305.89, 580.502),
(42250, 6, 6794.28, -2314.94, 578.249),
(42250, 7, 6776.08, -2327.86, 575.559),
(42250, 8, 6755.06, -2335.59, 572.043),
(42250, 9, 6732.13, -2338.43, 569.884),
(42250, 10, 6703.96, -2341.79, 570.318),
(42250, 11, 6675.75, -2344.73, 570.39),
(42250, 12, 6653.5, -2358.42, 569.914),
(42250, 13, 6637.84, -2371.08, 570.363),
(42250, 14, 6617.51, -2386.29, 571.038),
(42250, 15, 6576.21, -2412.44, 574.618),
(42250, 16, 6547.19, -2432, 574.936),
(42250, 17, 6532.59, -2443.65, 574.359),
(42250, 18, 6517.82, -2459.41, 571.393),
(42250, 19, 6514.78, -2477.41, 568.863),
(42250, 20, 6517.95, -2496.19, 568.611),
(42250, 21, 6522.04, -2515.56, 567.873),
(42250, 22, 6524.62, -2540.78, 568.066),
(42250, 23, 6526, -2568.72, 568.169),
(42250, 24, 6533.37, -2613.6, 564.33),
(42250, 25, 6539.75, -2655.11, 565.04),
(42250, 26, 6541.86, -2668.95, 565.755),
(42250, 27, 6547.65, -2708.45, 569.986),
(42250, 28, 6549.68, -2722.3, 570.256),
(42250, 29, 6551.8, -2750.12, 569.532),
(42250, 30, 6549.79, -2778.02, 570.305),
(42250, 31, 6548.4, -2791.95, 572.898),
(42250, 32, 6544.43, -2826.08, 580.989),
(42250, 33, 6541.65, -2853.94, 586.18),
(42250, 34, 6541.03, -2860.77, 586.441),
(42250, 35, 6539.43, -2902.73, 589.079),
(42250, 36, 6539.02, -2930.72, 589.941),
(42250, 37, 6539.98, -2958.71, 591.626),
(42250, 38, 6541.84, -3000.66, 594.086),
(42250, 39, 6545.33, -3027.43, 595.851),
(42250, 40, 6551.87, -3044.26, 597.037),
(42250, 41, 6568.57, -3082.8, 599.444),
(42250, 42, 6579.14, -3108.73, 601.129),
(42250, 43, 6595.06, -3147.59, 602.817),
(42250, 44, 6600.48, -3160.5, 603.351),
(42250, 45, 6607.52, -3186.04, 605.96),
(42250, 46, 6616.53, -3219.57, 611.315),
(42250, 47, 6624.45, -3250.69, 616.826),
(42250, 48, 6629.86, -3273.95, 621.394),
(42250, 49, 6633.75, -3292.99, 624.033),
(42250, 50, 6637.41, -3309.01, 627.751),
(42250, 51, 6641.34, -3337.86, 632.942),
(42250, 52, 6643.54, -3366.89, 639.126),
(42250, 53, 6644.63, -3396.39, 647.145),
(42250, 54, 6645.27, -3415.81, 653.1),
(42250, 55, 6645.82, -3435.93, 658.917),
(42250, 56, 6645.65, -3465.05, 665.793),
(42250, 57, 6645.58, -3497.5, 671.939),
(42250, 58, 6646.14, -3522.86, 675.911),
(42250, 59, 6646.31, -3544.92, 680.093),
(42250, 60, 6649.66, -3568.2, 683.98),
(42250, 61, 6652.5, -3593.04, 689.431),
(42250, 62, 6658.5, -3621.53, 693.611),
(42250, 63, 6662.44, -3642.44, 695.878),
(42250, 64, 6664.33, -3658.4, 695.533),
(42250, 65, 6675.94, -3696.96, 694.032),
(42250, 66, 6690.37, -3738.17, 690.435),
(42250, 67, 6705.09, -3770.39, 687.521),
(42250, 68, 6720.01, -3801.31, 685.55),
(42250, 69, 6738.84, -3816.5, 684.199),
(42250, 70, 6756.96, -3841.92, 682.307),
(42250, 71, 6773.09, -3867.07, 681.542),
(42250, 72, 6785.53, -3886.55, 681.514),
(42250, 73, 6798.67, -3904.64, 681.686),
(42250, 74, 6809.44, -3951.38, 683.986),
(42250, 75, 6812.52, -3965.04, 684.814),
(42250, 76, 6821.01, -3988.92, 687.668),
(42250, 77, 6835.43, -4010.18, 688.376),
(42250, 78, 6844.41, -4038.19, 688.667),
(42250, 79, 6849.33, -4053.88, 688.906),
(42250, 80, 6861.58, -4059.67, 689.308),
(42250, 81, 6879.18, -4078.48, 690.378),
(42250, 82, 6897.83, -4098.87, 691.484),
(42250, 83, 6913.47, -4113.29, 691.876),
(42250, 84, 6932.94, -4123.57, 692.612),
(42250, 85, 6957.36, -4132.81, 694.535),
(42250, 86, 6998.16, -4142.62, 696.375),
(42250, 87, 7025.77, -4147.24, 698.293),
(42250, 88, 7039.5, -4150.01, 699.996),
(42250, 89, 7052.4, -4154.91, 700.788),
(42250, 90, 7057.81, -4169.19, 703.076),
(42250, 91, 7062.72, -4183.71, 703.345),
(42250, 92, 7071.15, -4201.61, 702.558),
(42250, 93, 7076.98, -4212.01, 699.772),
(42250, 94, 7088.86, -4225.46, 694.45),
(42250, 95, 7104.01, -4238.21, 689.3),
(42250, 96, 7115.84, -4247.3, 684.859),
(42250, 97, 7135.21, -4262.54, 679.104),
(42250, 98, 7144.35, -4278.3, 675.12),
(42250, 99, 7148.07, -4296.17, 668.592),
(42250, 100, 7157.92, -4312.46, 663.742),
(42250, 101, 7169.39, -4330.82, 659.997),
(42250, 102, 7178.88, -4345.99, 654.813),
(42250, 103, 7191.65, -4361.07, 649.89),
(42250, 104, 7202.57, -4379.3, 647.089),
(42250, 105, 7209.42, -4392.13, 643.558),
(42250, 106, 7219.1, -4411.88, 638.947),
(42250, 107, 7223, -4426.94, 637.278),
(42250, 108, 7226.88, -4450.12, 631.127),
(42250, 109, 7229.46, -4465.55, 624.255),
(42250, 110, 7235.21, -4483.7, 617.597),
(42250, 111, 7243.24, -4498.87, 609.072),
(42250, 112, 7250.58, -4512.64, 599.817),
(42250, 113, 7261.49, -4519.05, 593.699),
(42250, 114, 7279.84, -4524.02, 590.292),
(42250, 115, 7296.56, -4533.14, 587.531),
(42250, 116, 7317.73, -4550.89, 590.002),
(42250, 117, 7331.74, -4565.43, 590.31),
(42250, 118, 7348.75, -4582.21, 591.115),
(42250, 119, 7364.26, -4597.29, 596.355),
(42250, 120, 7367.01, -4623.3, 602.375),
(42250, 121, 7371.96, -4641.65, 609.9),
(42250, 122, 7385.03, -4661.64, 620.419),
(42250, 123, 7395.71, -4674.6, 625.546),
(42250, 124, 7408.39, -4688.28, 628.817),
(42250, 125, 7428.93, -4695.1, 632.535),
(42250, 126, 7438.78, -4709.16, 639.606),
(42250, 127, 7436.96, -4724.36, 643.74),
(42250, 128, 7427.31, -4737.66, 648.217),
(42250, 129, 7416.43, -4748.44, 652.584),
(42250, 130, 7398.14, -4744.82, 655.332),
(42250, 131, 7378.78, -4740.88, 655.884),
(42250, 132, 7354.77, -4725.78, 656.466),
(42250, 133, 7335.77, -4713.9, 659.11),
(42250, 134, 7326.62, -4726.63, 666.862),
(42250, 135, 7320.43, -4735.11, 668.812),
(42250, 136, 7308.68, -4750.06, 672.541),
(42250, 137, 7296.28, -4765.49, 675.577),
(42250, 138, 7284.28, -4779.76, 680.544),
(42250, 139, 7272.81, -4795.86, 681.846),
(42250, 140, 7254.1, -4808.18, 685.676),
(42250, 141, 7229.68, -4824.04, 689.469),
(42250, 142, 7216.83, -4832.38, 693.056),
(42250, 143, 7205.11, -4844.95, 694.376),
(42250, 144, 7192.1, -4860.82, 699.855),
(42250, 145, 7178.69, -4867.38, 699.129),
(42250, 146, 7155.89, -4870.98, 699.569),
(42250, 147, 7135.8, -4869.27, 697.529),
(42250, 148, 7110.95, -4864.05, 696.678),
(42250, 149, 7091.25, -4859.83, 695.377),
(42250, 150, 7065.84, -4865.94, 696.962),
(42250, 151, 7051.69, -4871.71, 695.975),
(42250, 152, 7026.59, -4889.84, 696.135),
(42250, 153, 7002.07, -4907.54, 695.536),
(42250, 154, 6986.32, -4918.92, 694.097),
(42250, 155, 6964.73, -4933.92, 691.963),
(42250, 156, 6952.73, -4954.51, 691.185),
(42250, 157, 6944.92, -4982.16, 690.636),
(42250, 158, 6942.98, -5007.09, 692.106),
(42250, 159, 6940.27, -5025.91, 692.572),
(42250, 160, 6926.31, -5046.98, 691.283),
(42250, 161, 6905.96, -5054.36, 689.118),
(42250, 162, 6886.07, -5059.42, 688.695),
(42250, 163, 6869, -5070.03, 689.59),
(42250, 164, 6839.34, -5075.85, 690.284),
(42250, 165, 6826.71, -5089.1, 692.49),
(42250, 166, 6817.27, -5093.65, 694.184),
(42250, 167, 6804.59, -5098.17, 697.179),
(42250, 168, 6791.22, -5102.88, 700.948),
(42250, 169, 6783.28, -5107.76, 705.165),
(42250, 170, 6777.54, -5115.6, 711.916),
(42250, 171, 6771.09, -5124.72, 720.21),
(42250, 172, 6767.1, -5131.01, 724.102),
(42250, 173, 6754.9, -5143.08, 727.975),
(42250, 174, 6743.07, -5155.52, 732.837),
(42250, 175, 6735.47, -5165.2, 737.623),
(42250, 176, 6729, -5178.23, 744.483),
(42250, 177, 6724.82, -5189.44, 751.276),
(42250, 178, 6727.22, -5199.57, 756.449),
(42250, 179, 6736.31, -5207.3, 760.679),
(42250, 180, 6737.33, -5213.17, 764.213),
(42250, 181, 6729.46, -5221.67, 770.659),
(42250, 182, 6721.69, -5228.06, 775.741),
(42250, 183, 6719.02, -5234.21, 777.679);

-- Should despawn when reaching their destination: Winterfall Village
UPDATE creature_movement SET script_id=1 WHERE id=42250 AND point=183;