/// @description Insert description here
// You can write your code in this editor
randomize();

traveled = 0;
travelspeed = 0;
alarm[0] = room_speed * 1;
alarm[1] = room_speed / 24; // 8 pix wide road
alarm[2] = room_speed * 1;

yr = random_range(0.4 * room_height, 0.6 * room_height)
yk = 1;

intown = false; // false;

townborder = 1200; // DEBUG 600;
market = 3200;

lasthouseposition = 999;
steps = 0;

market_created = false;

