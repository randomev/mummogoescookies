/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_down))
{
	sprite_index = spr_granny_freefall;
	direction = 270;
	speed = 5;
} 
else 
{
	vspeed = 0;
	sprite_index = spr_granny_idle;	
}
