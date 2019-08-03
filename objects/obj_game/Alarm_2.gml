/// @description 1 per sec for shop timer
// You can write your code in this editor
global.gb_shop_closes_in_seconds -= 1;
alarm_set(2, room_speed * 1);