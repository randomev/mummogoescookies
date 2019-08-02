/// @description Insert description here
// You can write your code in this editor
if (cookie_ready_at_oven == false && obj_doughing_table.dough_ready == true)
{
	alarm[0] = 100;
	obj_doughing_table.dough_ready = false;
	sprite_index = spr_basic_oven_heating;
} 

