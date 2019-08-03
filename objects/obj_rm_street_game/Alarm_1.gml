/// @description Road generation happens here
// road here


if (intown == false)
{
		yr = yr + random_range(-1, 4) * yk;
} 
else 
{
	if (yr < room_height/2)
	{ 
		yr += 1;
	} 
	else
	{
		yr -= 1;
	}
}

// 8 blocks of road in countryside and full block of bricks in town
if (intown)
{
	for (var yt = 4; yt < yr; yt += 8)
	{
		// upper block
		instance_create_depth(0, yt, 4, obj_tinytile);
		// lower block
		//instance_create_depth(0, room_height - yt, 4, obj_tinytile);
	}

	for (var yt = yr + 64; yt < room_height-4; yt += 8)
	{
		// upper block
		instance_create_depth(0, yt, 4, obj_tinytile);
		
		// lower block
		//instance_create_depth(0, room_height - yt, 4, obj_tinytile);
	}

}
else
{
	for (var i = 0; i < 7; i += 1)
	{
			instance_create_depth(0, yr + i*8, 4, obj_road);
	}
}

// then above and below road some things
//for (var i = 0; i < yr - 8; i += 8)
//{
//	instance_create_depth(0, yr + i*8, 5, obj_grass);
//}

// then above and below road walls
if (intown)
{
	//instance_create_depth(0, yr, 5, obj_tinytile_top);
	//instance_create_depth(0, yr + 7 * 7, 5, obj_tinytile_bottom);
} 
else 
{
	instance_create_depth(0, yr, 5, obj_road_edge_top);
	instance_create_depth(0, yr + 7 * 7, 5, obj_road_edge_btm);
}

if (yr > room_height * 0.7)
	yk = -1;

if (yr < room_height * 0.3)
	yk = 1;

if (travelspeed == 2)
{
	alarm[1] = room_speed / 14; // 8 pix wide road
}
else
{
	alarm[1] = room_speed / 26; // 8 pix wide road
}
