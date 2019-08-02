/// @description Insert description here
// You can write your code in this editor

if (room == rm_street)
{
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
	
	s += 1;
	if ((s mod 50) == 0)
	{
		image_angle = image_angle + a;
		a = a * -1;		
	}
	
	if (keyboard_check(vk_left))
	{
		global.gb_granny_blood_overpressure += 0.05;
	}
}