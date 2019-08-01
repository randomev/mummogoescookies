/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_left) || (keyboard_check(vk_right)))
{
	if (keyboard_check(vk_left))
	{
		x -= 2;
		image_xscale = 1;
		sprite_index = spr_granny_speed;
	} 
	if (keyboard_check(vk_right))
	{
		x += 2;	
		image_xscale = -1;
		sprite_index = spr_granny_speed;
	}
} 
else 
{
	sprite_index = spr_granny_idle;
}

if (keyboard_check_pressed(vk_space))
{
	//physics_apply_impulse(x,y,x,y+10);
}