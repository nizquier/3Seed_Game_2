/// @description Insert description here
// You can write your code in this editor

lives -= 1
if(lives < 1)
{
	//game_restart()
	global.game_over = true;
}
else
{
	room_restart()
}
