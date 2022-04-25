/// @description Insert description here
// You can write your code in this editor

score += scoreWorth

audio_play_sound(destroySound, 11, false)

randomize();
var rand = random(1)
if(rand <= 0.50)
{
	var drop = choose(obj_spdPower, obj_speed, obj_coins, obj_atkPower)
	instance_create_layer(x+10,y, "Instances", drop)
}
