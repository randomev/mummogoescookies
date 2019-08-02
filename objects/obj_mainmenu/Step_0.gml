/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_left))
{
	obj_button_start.image_alpha = 1;
	obj_button_settings.image_alpha = 0.3;
}

if (keyboard_check(vk_right))
{
	obj_button_start.image_alpha = 0.3;
	obj_button_settings.image_alpha = 1;
}

if (keyboard_check(vk_enter))
{
	if (obj_button_start.image_alpha == 0.3)
		room_goto("");
	obj_button_settings.image_alpha = 1;
}
