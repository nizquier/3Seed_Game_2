/// @description Insert description here
// You can write your code in this editor

if(weaknessAtk != -1 && weaknessAtkBonusDmg != -1)
{
	HurtPlayer(point_direction(x,y,obj_player.x,obj_player.y), enemyForceTouch, enemyDamageTouch);
}
else
{
	HurtPlayer(point_direction(x,y,obj_player.x,obj_player.y), enemyForceTouch, enemyDamageTouch);
}

if(!audio_is_playing(atkSound)) audio_play_sound(atkSound, 10, false)
