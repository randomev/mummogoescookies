/// @description Insert description here
// You can write your code in this editor
if (sprite_index != spr_grandchild_jumping)
{
	x = other.x;
	y = other.y-8;
	sprite_index = spr_grandchild_jumping;
	other.sprite_index = spr_bed_bounce;
	speed = 0;
	alarm_set(1, room_speed * 2);

}

