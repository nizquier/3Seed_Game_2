/// @description Insert description here
// You can write your code in this editor
/*
if(!global.debuggingHero)
{
	lives -= 1;
	audio_play_sound(snd_lifeLost, 10, false)
}*/

if(lives < 1)
{
	//game_restart()
	global.game_over = true;
}
else
{
	//room_restart()
}
