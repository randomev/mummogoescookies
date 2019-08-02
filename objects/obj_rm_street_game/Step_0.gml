/// @description Insert description here
// You can write your code in this editor

travelspeed = 2;

if (keyboard_check(vk_left)) {
	travelspeed *= 2;
}

traveled += travelspeed;

if traveled > townborder
	intown = true;


if traveled = market
	instance_create_depth(0,room_height/2, 1, obj_market)