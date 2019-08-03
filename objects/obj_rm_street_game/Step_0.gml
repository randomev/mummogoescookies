/// @description Insert description here
// You can write your code in this editor

travelspeed = 2;

if (keyboard_check(vk_left)) {
	travelspeed *= 2;
}

steps += 1;

traveled += travelspeed;

if traveled >= market
{
	instance_create_depth(0, yr + 32, 1, obj_market);
	
}
