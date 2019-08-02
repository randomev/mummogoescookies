/// @description Insert description here
// You can write your code in this editor

travelspeed = 2;

if (keyboard_check(vk_left)) {
	travelspeed *= 2;
}

traveled += travelspeed;

if traveled > townborder
	intown = true;