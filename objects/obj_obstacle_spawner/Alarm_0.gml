/// @description Insert description here
// You can write your code in this editor

		
rndx = random_range(-55, -10); //x-91
rndy = random_range(6, 221);
if place_free(rndx, rndy)
{
	// create only bush if is empty
	instance_create_depth(rndx, rndy, 1, obj_bush);
}
alarm[0] = room_speed * 0.5;