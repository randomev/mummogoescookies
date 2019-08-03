/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_down))
{
	sprite_index = spr_granny_chuting;
	direction = 270;
	speed = 2;
	global.gb_granny_on_elevator = true;
	x = obj_elevator_upper.x; // center to tube
} 
else 
{
	if (y <= global.gb_house_second_floor_height_y)
	{
		speed = 0;
		sprite_index = spr_granny_idle;
		if (global.gb_granny_on_elevator)
		{
			audio_play_sound(snd_cookie_throw,1,0);
			sprite_index = spr_granny_freefall;
			path_start(pth_granny_elevator, 0.9, path_action_stop, 1);
		}
		
		global.gb_granny_on_elevator = false;
		// granny idling => relaxing ...
		global.gb_granny_bloodpressure_movement = global.gb_granny_relaxing_movement;
		
		y = global.gb_house_second_floor_height_y; //obj_elevator_upper.y;

	}
}
