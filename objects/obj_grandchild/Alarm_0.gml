/// @description Insert description here
// You can write your code in this editor
global.gb_grandchild_irritation_level += 1;
alarm[0] = room_speed * 5;

if (global.gb_grandchild_irritation_level > 10)
{
	sprite_index = spr_grandchild_bored;
} 
else if (global.gb_grandchild_irritation_level > 40)
{
	sprite_index = spr_grandchild_irritaded;
}
