/// @description Insert description here
// You can write your code in this editor
if (global.gameover == true)
{
	gameovercount += 1;
	if(gameovercount > 20) 
	{
		room_goto(rm_gameover);
	}
}