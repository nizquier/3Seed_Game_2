/// @description Insert description here
// You can write your code in this editor

if(other.weakAtk == obj_boomerangAttack)
{
	atkDamage *= obj_heroDendro.atkMult
	HurtEnemy(other,atkDamage/2,id,5)
	
} else HurtEnemy(other,atkDamage,id,5)

if(!audio_is_playing(snd_boomerangImpact)) audio_play_sound(snd_boomerangImpact, 11, false)
