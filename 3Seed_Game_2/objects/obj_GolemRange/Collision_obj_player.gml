/// @description Insert description here
// You can write your code in this editor

HurtPlayer(point_direction(x,y,obj_player.x,obj_player.y), 32, 0.5);
instance_destroy();

if(!audio_is_playing(snd_metalHit)) audio_play_sound(snd_metalHit, 10, false)
