/// @description Insert description here
// You can write your code in this editor
scrollspeed = random_range(2,4);

if (keyboard_check(vk_left)) {
	scrollspeed *= 2;
}

x += scrollspeed;