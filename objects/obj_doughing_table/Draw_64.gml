/// @description Insert description here
// You can write your code in this editor
aa = dough_ready_percentage;
if (aa>0)
{
	var yy = y-sprite_height/2;
	draw_healthbar(x-3,yy,x+3,yy-2,aa,c_green,c_white,c_white,1,1,0);
}