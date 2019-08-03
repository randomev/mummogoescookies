/// @description Cookie is ready
if (cookie_ready_at_oven == false)
{
	cookie_ready_at_oven = true;
	cookie = instance_create_layer(x-19,y-10,"Instances",obj_cookie);
	sprite_index = spr_basic_oven_open;
	audio_stop_sound(snd_cooking);
}