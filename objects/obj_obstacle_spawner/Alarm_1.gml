/// @description Road generation happens here
// road here
yr = yr + random_range(1, 5) * yk;

for (var i = 0; i < 7; i += 1)
{
	instance_create_layer(yr + i*sprite_height, 0, "Instances", obj_road);
}	

if (yr > room_height * 0.7)
	yk = -1;
