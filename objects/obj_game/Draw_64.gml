/// @description Insert description here
// You can write your code in this editor
if(room == rm_street)
{
	draw_healthbar(148, 28, 188, 21, health, c_black, c_red, c_lime, 0, true, true)
}

if(room == rm_house)
{

	if (global.gb_granny_on_elevator)
	{
		global.gb_granny_bloodpressure_movement = -0.1;
	}

	draw_text(14,20,"Grandchild irritation level " + string(global.gb_grandchild_irritation_level));
	//draw_healthbar(148, 28, 188, 21, global.gb_grandchild_irritation_level, c_black, c_red, c_lime, 0, true, true)

	draw_text(14,10,"Granny blood overpressure " + string(global.gb_granny_blood_overpressure));
//	draw_healthbar(148, 28, 188, 21, 	global.gb_granny_blood_overpressure, c_black, c_red, c_lime, 0, true, true)
}
