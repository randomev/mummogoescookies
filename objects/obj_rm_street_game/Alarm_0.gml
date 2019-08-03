/// @description Bush generation happens here
	
if (intown)
	return;

repeat(2)
{
	rndx = 1; //random_range(2, 50); //x-91
	rndy = random_range(0, yr-32);
	// upper part
	if place_free(rndx, rndy)
	{
		// create only bush if is empty
		instance_create_depth(rndx, rndy, 2, obj_bush);
	}

	// lower part
	rndy = random_range(yr+32, room_height);
	if place_free(rndx, rndy)
	{
		// create only bush if is empty
		instance_create_depth(rndx, rndy, 2, obj_bush);
	}
}

alarm[0] = room_speed / 2;