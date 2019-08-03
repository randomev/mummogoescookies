/// @description Insert description here
// You can write your code in this editor
global.gb_granny_blood_overpressure += 10;

part_particles_create(global.P_System, x, y, global.Particle1, 50);
part_particles_create(global.P_System, x, y, global.Particle2, 80);

instance_destroy();

   