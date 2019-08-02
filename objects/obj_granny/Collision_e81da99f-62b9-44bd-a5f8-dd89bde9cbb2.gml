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
		global.gb_granny_on_elevator = false;
		y = obj_elevator_upper.y;
		// granny idling => relaxing ...
		global.gb_granny_bloodpressure_movement = global.gb_granny_relaxing_movement;
	}
}
