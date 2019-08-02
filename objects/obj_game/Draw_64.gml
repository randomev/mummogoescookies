/// @description Insert description here
// You can write your code in this editor
if(room == rm_street)
{
	draw_healthbar(148, 28, 188, 21, health, c_black, c_red, c_lime, 0, true, true)
}

if(room == rm_house)
{
	
	draw_text(10,25,"Grandchild irritation " + string(global.gb_grandchild_irritation_level));
	//draw_healthbar(148, 28, 188, 21, global.gb_grandchild_irritation_level, c_black, c_red, c_lime, 0, true, true)

	draw_text(10,10,"Granny blood pressure" + string(global.gb_granny_blood_overpressure));

	draw_text(10,35,"Cookies " + string(global.gb_granny_cookiecount));
	xstart_cookie = 200;
	xadd_cookie = 10;
	i = 0;
	repeat(global.gb_granny_cookiecount)
	{
		c = instance_create_layer(xstart_cookie + xadd_cookie * i, 55,"Instances",obj_cookie);
		c.image_xscale = 0.5;
		c.image_yscale = 0.5;
		i += 1;
	}
//	draw_healthbar(148, 28, 188, 21, 	global.gb_granny_blood_overpressure, c_black, c_red, c_lime, 0, true, true)

	if (global.tip != "")
	{
		draw_text(10,1,"Tip: " + string(global.tip));
	}
}
