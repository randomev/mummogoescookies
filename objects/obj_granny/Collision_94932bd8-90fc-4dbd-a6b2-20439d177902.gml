/// @description Insert description here
if (keyboard_check(vk_up))
{
	sprite_index = spr_granny_sickairtime;
	direction = 90;
	speed = 2;
	global.gb_granny_on_elevator = true;
	audio_play_sound(snd_elevator,1,false);
}

