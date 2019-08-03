/// @description Irritation calculation hapens here
// You can write your code in this editor
global.gb_grandchild_irritation_level += 1;

alarm[0] = room_speed * 1;

if (global.gb_grandchild_irritation_level >= 10 && global.gb_grandchild_irritation_level <= 14 && sprite_index != spr_grandchild_irritaded)
{
	sprite_index = spr_grandchild_irritaded;
	speed = 0;
	audio_play_sound(snd_grandchild2, 2, false);
	audio_pause_sound(snd_house);
	audio_play_sound(snd_house_house, 1, true);
} 
else if (global.gb_grandchild_irritation_level >= 15 && sprite_index != spr_grandchild_jumping)
{
	audio_play_sound(snd_grandchild1, 2, false);
	sprite_index = spr_grandchild_idle_run;
	//direction = 180;
	speed = 0.8;
	image_index = 0
	image_speed = 1;
	
	//path_speed = 0;
	//audio_pause_sound(snd_house);
	//audio_play_sound(snd_house_house, 1, true);
}
else if (global.gb_grandchild_irritation_level > 5 && global.gb_grandchild_irritation_level < 10 && sprite_index != spr_grandchild_bored) 
{
	sprite_index = spr_grandchild_bored;
	speed = 0;
}
