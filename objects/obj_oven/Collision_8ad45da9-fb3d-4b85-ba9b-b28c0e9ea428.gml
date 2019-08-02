/// @description Insert description here
// You can write your code in this editor
if (global.gb_grandchild_irritation_level > 20)
{
	if (sprite_index != spr_basic_oven_bust)
		sprite_index = spr_basic_oven_bust;	
	
	global.gb_granny_blood_overpressure += 1;
}

other.x = x + 10;