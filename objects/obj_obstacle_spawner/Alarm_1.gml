/// @description Road generation happens here
// road here
yr = yr + random_range(1, 3) * yk;

for (var i = 0; i < 7; i += 1)
{
	instance_create_depth(0, yr + i*8, 0, obj_road);
}

if (yr > room_height * 0.7)
	yk = -1;

if (yr < room_height * 0.3)
	yk = 1;

alarm[1] = room_speed / 16; // 8 pix wide road
