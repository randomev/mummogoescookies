/// @description Game over after while ...
// You can write your code in this editor

//alarm_set(2, -1);

alarm_set(0, room_speed);
if (global.gameover == true)
{
	room_goto(rm_gameover);
}