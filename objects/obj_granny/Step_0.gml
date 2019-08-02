/// @description Insert description here
// You can write your code in this editor

// keyboard handling for basic movement

// if in elevator, then do not process anything
if (global.gb_granny_on_elevator)
	return;

if (room == rm_house || room == rm_street)
{
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
}

if (room == rm_street)
{
	if (keyboard_check(vk_up) || (keyboard_check(vk_down)))
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
	
}

// not yet working at all...

//if (place_free(x,y+1))
//{
//	gravity=0.2
//}
//else
//{
//	gravity=0;
//	if (keyboard_check(vk_space))
//	{
//		//vspeed = -3;
//		gravity=0.2
//	}
//}
//if (not place_free(x,y+1) && keyboard_check(vk_space))
//{
//	vspeed=-8
//}