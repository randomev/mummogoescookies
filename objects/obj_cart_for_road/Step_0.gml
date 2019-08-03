/// @description Insert description here
// You can write your code in this editor

if (room == rm_street)
{
	image_index = global.gb_cart_image_index;

	if (keyboard_check(vk_up) || (keyboard_check(vk_down)))
	{
		if (keyboard_check(vk_up))
		{
			y -= 2;
			image_xscale = 1;
		} 
		if (keyboard_check(vk_down))
		{
			y += 2;
			image_xscale = 1;
		}
	}
	
	if (keyboard_check(vk_space) || keyboard_check(vk_left))
	{
		//image_angle = -10;
		instance_create_depth(x,y, 4, obj_driftmark);
		part_particles_create(global.P_System, x, y, global.Particle3, 50);
		global.gb_granny_blood_overpressure += 0.1;
		sprite_index = spr_cart_drifting;
	}
	else
	{
		sprite_index = spr_cart_for_road;
		image_angle = 0;
		s += 1;
		if ((s mod 50) == 0)
		{
			image_angle = image_angle + a;
			a = a * -1;		
		}
	}
	
	if (keyboard_check(vk_left))
	{
		global.gb_granny_blood_overpressure += 0.05;
	}
}