/// @description Insert description here
// You can write your code in this editor

if(room == rm_house || room == rm_street)
{
	// draw_set_font(fnt_font0);	
	
	//draw_text(10,25,"Grandchild irritation: " + string(global.gb_grandchild_irritation_level));
	////draw_healthbar(148, 28, 188, 21, global.gb_granny_blood_overpressure, c_black, c_red, c_lime, 0, true, true)

	//draw_text(10,10,"Granny blood (over)pressure: " + string(global.gb_granny_blood_overpressure));
	//draw_text(10,35,"Shop closes in " + string(global.gb_shop_closes_in_seconds) + " ...");

	//draw_text(10,35,"Cookies: " + string(global.gb_granny_cookiecount));

	obj_border_clock.image_index = 12 - global.gb_shop_closes_in_seconds / 10 + 1;	
	obj_border_bloodpressure.image_speed = global.gb_granny_blood_overpressure / 10;

	draw_healthbar(100,20, 199, 26, global.gb_granny_blood_overpressure, c_black, c_green, c_red, 0, false, false)
	//draw_healthbar(100,25, 199, 26, global.gb_granny_blood_overpressure, c_black, c_green, c_red, 0, false, false)

}

if (room == rm_house)
{
	var irlevel = global.gb_grandchild_irritation_level * 3.3;
	draw_healthbar(100,20+16, 199, 26+16, irlevel, c_black, c_green, c_red, 0, false, false)
	//draw_healthbar(100,25+16, 199, 26+16, irlevel, c_black, c_green, c_red, 0, false, false)

	if (global.gb_grandchild_irritation_level < 5)
	{
		obj_border_irritation.image_speed = 0;
	}
	else
	{
		obj_border_irritation.image_speed = global.gb_grandchild_irritation_level / 10;
	}

}

/*
{
	draw_set_font(fnt_font0);	
	
	draw_text(10,35,"Shop closes in " + string(global.gb_shop_closes_in_seconds) + " ...");
	//draw_healthbar(148, 28, 188, 21, global.gb_grandchild_irritation_level, c_black, c_red, c_lime, 0, true, true)

	draw_text(10,10,"Granny blood (over)pressure: " + string(global.gb_granny_blood_overpressure));

//	draw_healthbar(148, 28, 188, 21, 	global.gb_granny_blood_overpressure, c_black, c_red, c_lime, 0, true, true)


}
*/
