/// @description Insert description here
// You can write your code in this editor
global.gb_grandchild_irritation_level += 5;
alarm[0] = room_speed * 5;

if (global.gb_grandchild_irritation_level > 10 && sprite_index != spr_grandchild_irritaded)
{
	sprite_index = spr_grandchild_irritaded;
	path_speed = 0;
} 
else if (global.gb_grandchild_irritation_level > 5 && sprite_index != spr_grandchild_bored) 
{
	sprite_index = spr_grandchild_bored;
	path_speed = 0;
}
