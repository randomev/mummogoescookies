/// @description House generation happens here

//if (travelspeed == 2)
//{
//	alarm_set(2, room_speed*2);
//} 
//else 
//{
	alarm_set(2, room_speed*0.5);	
//}

if (intown == false)
{
	return;
}

if (lasthouseposition < steps - 50)
	return;
	
if (traveled > market - 200)
{	
	// don't put any more, we are closing market
	alarm_set(2, -1);
}

var side = choose(1,0);

//if (side == 1)
//{
	instance_create_depth(0, yr, 3, obj_house);
//} 
//else 
//{
	a = instance_create_depth(0, yr+64, 3, obj_house);	
	a.y = a.y + a.sprite_height;
	//a.image_yscale = -1;
//}

lasthouseposition = steps;
