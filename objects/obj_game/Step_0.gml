/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_escape)
{
	game_end();
}

// always calculate granny's bloodpressure
global.gb_granny_blood_overpressure +=
global.gb_granny_bloodpressure_movement;
