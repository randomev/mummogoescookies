/// @description Insert description here
// You can write your code in this editor
window_set_fullscreen(true);

// if granny is currently in elevator
global.gb_granny_on_elevator = false;

// first floor y
global.gb_house_first_floor_height_y = 184;

// second floor y
global.gb_house_second_floor_height_y = 119;

// 0 = not irritated at all
// 100 = very angry - "game over level"
global.gb_grandchild_irritation_level = 0;

// which direction irritation is moving
global.gb_grandchild_irritation_level_movement = 0;

// 0 = ok
// 100 = granny's heart almost explodes - 'game over level'
global.gb_granny_blood_overpressure = 0;

// current movement of granny's blood pressure
// negative = bad
// positive = good
global.gb_granny_bloodpressure_movement = 0;

// when granny is relaxing, this amount
// is distracted from blood pressure per step
 global.gb_granny_relaxing_movement = -0.01;
 
 
// how many cookies granny has
global.gb_granny_cookiecount = 0;

global.tip = "";

global.gb_shop_closes_in_seconds = 120;

alarm_set(0, room_speed);
alarm_set(2, room_speed);

global.gb_cart_image_index = 0;

//global.gb_sold_cookies = ini_read_real("saveData", "sold cookies", 1);

global.gameover = false;

global.P_System = part_system_create();

global.Particle1 = part_type_create();

part_type_shape(global.Particle1,pt_shape_pixel);            //This defines the particles shape
part_type_size(global.Particle1,1,1,0,2);                    //This is for the size
part_type_scale(global.Particle1,1,1);                       //This is for scaling
part_type_color1(global.Particle1,c_white);                  //This sets its colour. There are three different codes for this
part_type_alpha1(global.Particle1,1);                        //This is its alpha. There are three different codes for this
part_type_speed(global.Particle1,0.50,2,-0.10,0);            //The particles speed
part_type_direction(global.Particle1,0,359,0,20);            //The direction
part_type_orientation(global.Particle1,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.Particle1,1);                         //This is the blend mode, either additive or normal
part_type_life(global.Particle1,1,20);                       //this is its lifespan in steps


global.Particle2 = part_type_create();

part_type_shape(global.Particle2,pt_shape_pixel);            //This defines the particles shape
part_type_size(global.Particle2,1,1,0,2);                    //This is for the size
part_type_scale(global.Particle2,1,1);                       //This is for scaling
part_type_color1(global.Particle2,c_red);                  //This sets its colour. There are three different codes for this
part_type_alpha1(global.Particle2,1);                        //This is its alpha. There are three different codes for this
part_type_speed(global.Particle2,0.70,2,-0.10,0);            //The particles speed
part_type_direction(global.Particle2,0,359,0,20);            //The direction
part_type_orientation(global.Particle2,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.Particle2,1);                         //This is the blend mode, either additive or normal
part_type_life(global.Particle2,1,15);


global.Particle3 = part_type_create();

part_type_shape(global.Particle3,pt_shape_pixel);            //This defines the particles shape
part_type_size(global.Particle3,1,1,0,2);                    //This is for the size
part_type_scale(global.Particle3,1,1);                       //This is for scaling
part_type_color1(global.Particle3,c_gray);                  //This sets its colour. There are three different codes for this
part_type_alpha1(global.Particle3,1);                        //This is its alpha. There are three different codes for this
part_type_speed(global.Particle3,0.70,2,-0.10,0);            //The particles speed
part_type_direction(global.Particle3,0,359,0,20);            //The direction
part_type_orientation(global.Particle3,0,0,0,0,1);           //This changes the rotation of the particle
part_type_blend(global.Particle3,1);                         //This is the blend mode, either additive or normal
part_type_life(global.Particle3,1,15);
