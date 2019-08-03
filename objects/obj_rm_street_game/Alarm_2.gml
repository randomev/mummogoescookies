/// @description House generation happens here

//if (travelspeed == 2)
//{
//	alarm_set(2, room_speed*2);
//} 
//else 
//{
	alarm_set(2, room_speed*1);	
//}

if (intown == false)
{
	return;
}

if (lasthouseposition < steps - 60)
	return;
	
if (traveled > market - 200)
{	
	// don't put any more, we are closing market
	alarm_set(2, -1);
}

var side = choose(1,0);

if (side == 0)
{
	instance_create_depth(0, yr-16, 3, obj_house);
} 
else 
{
	instance_create_depth(0, yr+64+16, 3, obj_house);	
}

lasthouseposition = steps;
