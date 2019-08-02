/// @description Insert description here
// You can write your code in this editor
global.gb_grandchild_irritation_level += 1;
alarm[0] = room_speed * 1;

if (global.gb_grandchild_irritation_level >= 10 && sprite_index != spr_grandchild_irritaded)
{
	sprite_index = spr_grandchild_irritaded;
	path_speed = 0;
	audio_pause_sound(snd_house);
	audio_play_sound(snd_house_house, 1, true);
} 
else if (global.gb_grandchild_irritation_level > 5 && global.gb_grandchild_irritation_level < 10 && sprite_index != spr_grandchild_bored) 
{
	sprite_index = spr_grandchild_bored;
	path_speed = 0;
}
else if (audio_is_playing(snd_house_house) && global.gb_grandchild_irritation_level < 5) 
{
	audio_stop_sound(snd_house_house);
	audio_resume_sound(snd_house);
}