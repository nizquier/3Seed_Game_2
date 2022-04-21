/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_player) <= 20)
{	
	if(!audio_is_playing(snd_lava)) audio_play_sound(snd_lava, 11, false)
}
