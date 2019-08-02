/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_escape)
{
	game_end();
}

if (global.gb_granny_on_elevator)
{
	global.gb_granny_bloodpressure_movement = +0.1;
}

if global.gb_granny_blood_overpressure > 100
{
	global.gb_granny_blood_overpressure = 100;
	global.gb_granny_bloodpressure_movement = 0;
}

if global.gb_granny_blood_overpressure < 0
{
	global.gb_granny_blood_overpressure = 0;
	global.gb_granny_bloodpressure_movement = 0;
}

if global.gb_grandchild_irritation_level < 0
{
	global.gb_grandchild_irritation_level = 0;
	global.gb_grandchild_irritation_level_movement = 0;
}

if global.gb_grandchild_irritation_level > 100
{
	global.gb_grandchild_irritation_level = 100;
	global.gb_grandchild_irritation_level_movement = 0;
}

// always calculate granny's bloodpressure
global.gb_granny_blood_overpressure +=
global.gb_granny_bloodpressure_movement;

// always calculate grandchild's irritation level
global.gb_grandchild_irritation_level +=
global.gb_grandchild_irritation_level_movement;
