/// @description Cookie is ready
if (cookie_ready_at_oven == false)
{
	cookie_ready_at_oven = true;
	cookie = instance_create_layer(x-4,y-10,"Instances",obj_cookie);
	sprite_index = spr_basic_oven_open;
}