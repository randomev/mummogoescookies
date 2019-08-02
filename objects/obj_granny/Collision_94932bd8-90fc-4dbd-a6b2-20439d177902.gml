/// @description Insert description here
if (keyboard_check(vk_up))
{
	sprite_index = spr_granny_sickairtime;
	direction = 90;
	speed = 2;
	global.gb_granny_on_elevator = true;
	x = obj_elevator_lower.x;
	audio_play_sound(snd_elevator,1,false);
} 
else 
{
	// coming down from second floor
	if (y > global.gb_house_first_floor_height_y)
	{
		speed = 0;
		sprite_index = spr_granny_idle;
		global.gb_granny_on_elevator = false;
		y = obj_elevator_lower.y;
	}
}