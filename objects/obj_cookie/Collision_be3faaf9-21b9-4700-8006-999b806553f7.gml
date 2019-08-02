/// @description Insert description here
// You can write your code in this editor

// cookie ready, take it with granny ...	
global.gb_granny_cookiecount += 1;
obj_oven.cookie_ready_at_oven = false;
instance_destroy(obj_cookie);

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
