/// @description Insert description here
// You can write your code in this editor

if(instance_number(obj_GolemRange) > instance_number(obj_Golem)) instance_destroy();

draw_self();

frameSPD = game_get_speed(gamespeed_fps)
alarm[0] = frameSPD * atkDistanceTime;
atkSpeed *= obj_heroPyro.atkSpdMultiplier
