/// @description Insert description here
if (keyboard_check(vk_up))
{
	sprite_index = spr_granny_sickairtime;
	direction = 90;
	speed = 2;
	audio_play_sound(snd_elevator, 2, false)
}

