/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space))
{
	dough_ready_percentage += 10;
} else 
{
//	global.tip = "Space => prepare dough ...";
}

if (dough_ready_percentage >= 100)
{
	dough_ready = true;
	dough_ready_percentage = 0;
	global.tip = "";
}
