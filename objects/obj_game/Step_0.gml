/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_escape))
{
	game_end();
}

if (global.gb_shop_closes_in_seconds <= 0)
{
		/*obj_granny.sprite_index = spr_granny_ded;
		alarm_set(0, room_speed * 2);
		*/
		global.gameover = true;
}   
if (global.gb_granny_on_elevator)
{
	global.gb_granny_bloodpressure_movement = +0.1;
}

if (global.gb_granny_blood_overpressure > 3)
{
	global.gb_granny_blood_overpressure = 100;
	global.gb_granny_bloodpressure_movement = 0;
	//obj_granny.sprite_index = spr_granny_ded;
	//alarm_set(0, room_speed  * 1);
	
}

if (global.gb_granny_blood_overpressure < 0)
{
	global.gb_granny_blood_overpressure = 0;
	global.gb_granny_bloodpressure_movement = 0;
}

if (global.gb_grandchild_irritation_level < 0)
{
	global.gb_grandchild_irritation_level = 0;
	global.gb_grandchild_irritation_level_movement = 0;
}

if (global.gb_grandchild_irritation_level > 30)
{
	
	obj_granny.sprite_index = spr_granny_ded;
	alarm_set(0, room_speed * 1);

	global.gb_grandchild_irritation_level = 30;
	global.gb_grandchild_irritation_level_movement = 0;
}

// always calculate granny's bloodpressure
global.gb_granny_blood_overpressure +=
global.gb_granny_bloodpressure_movement;

// always calculate grandchild's irritation level
global.gb_grandchild_irritation_level +=
global.gb_grandchild_irritation_level_movement;

if (audio_is_playing(snd_house_house) && global.gb_grandchild_irritation_level < 5) 
{
	audio_stop_sound(snd_house_house);
	audio_resume_sound(snd_house);
}
