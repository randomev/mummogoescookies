/// @description Insert description here
// You can write your code in this editor
randomize();
rndx = random_range(-55, -10); //x-91
rndy = random_range(6, 221);
instance_create_depth(rndx, rndy, 1, obj_rock);
alarm[0] = room_speed * 0.5;