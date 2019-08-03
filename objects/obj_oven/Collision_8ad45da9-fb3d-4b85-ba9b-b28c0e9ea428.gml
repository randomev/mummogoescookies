/// @description Insert description here
// You can write your code in this editor
if (global.gb_grandchild_irritation_level > 20)
{
	if (sprite_index != spr_basic_oven_bust) {
		sprite_index = spr_basic_oven_bust;	
		audio_play_sound(snd_broken_oven, -5, false);
	}
	
	global.gb_granny_blood_overpressure += 1;
	//audio_play_sound(snd_grandchild_kick, 2, false);
}

other.x = x + 10;