/// @description Insert description here
// You can write your code in this editor
if(other.weakAtk == obj_iceAttack)
{
	atkDamage *= obj_heroCryo.atkMult
	HurtEnemy(other,atkDamage/2,id,7)
	
} else HurtEnemy(other,atkDamage,id,7)

instance_destroy();
