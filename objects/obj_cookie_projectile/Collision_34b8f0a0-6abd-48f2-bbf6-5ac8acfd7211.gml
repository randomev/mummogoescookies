/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_cookie_hits_cart, 1, false);
instance_destroy();
global.gb_grandchild_irritation_level -= 1;

if (other.image_index < 6)
	other.image_index += 1;

instance_destroy(obj_cookie);

// so that we have same amount of cookies in next level
global.gb_cart_image_index = other.image_index;