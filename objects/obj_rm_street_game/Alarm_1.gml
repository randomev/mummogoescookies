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

// 8 blocks of road
for (var i = 0; i < 7; i += 1)
{
	if (intown)
	{
		instance_create_depth(0, yr + i*8, 4, obj_tinytile);
	} 
	else
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
	instance_create_depth(0, yr, 5, obj_tinytile_top);
	instance_create_depth(0, yr + 7 * 7, 5, obj_tinytile_bottom);
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

alarm[1] = room_speed / 24; // 8 pix wide road
