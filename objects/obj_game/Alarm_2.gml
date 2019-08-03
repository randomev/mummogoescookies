/// @description 1 per sec for shop timer
// You can write your code in this editor
global.gb_shop_closes_in_seconds -= 1;
alarm_set(2, room_speed * 1);

// if time is up, then end
if (global.gb_shop_closes_in_seconds <= 0)
{
	global.gb_shop_closes_in_seconds = 0;
	alarm_set(2, -1);
	alarm_set(0, room_speed * 1);
}
	
