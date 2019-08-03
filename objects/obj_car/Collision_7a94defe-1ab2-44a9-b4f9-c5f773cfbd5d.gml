/// @description Insert description here
// You can write your code in this editor

part_particles_create(global.P_System, x, y, global.Particle1, 50);
part_particles_create(global.P_System, x, y, global.Particle2, 80);

sprite_index = spr_car_crash;
if (!audio_is_playing(snd_metal_impact)) 
{
audio_play_sound(snd_metal_impact, 2, false);
audio_play_sound(snd_grandchild_kick, 2, false);
}