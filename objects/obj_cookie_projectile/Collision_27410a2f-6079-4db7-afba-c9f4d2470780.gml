/// @description Insert description here
// You can write your code in this editor
instance_destroy();
global.gb_grandchild_irritation_level -= 10;
other.sprite_index = spr_grandchild_munching;
other.path_speed = 0;
other.alarm[0] = room_speed * 10;
instance_destroy(obj_cookie);
