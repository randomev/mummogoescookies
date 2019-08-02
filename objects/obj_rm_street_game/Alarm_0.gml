/// @description Bush generation happens here
		
rndx = 1; //random_range(2, 50); //x-91
rndy = random_range(6, 221);
if place_free(rndx, rndy)
{
	// create only bush if is empty
	instance_create_depth(rndx, rndy, 2, obj_bush);
}
alarm[0] = room_speed / 2;