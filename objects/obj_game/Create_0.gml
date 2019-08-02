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