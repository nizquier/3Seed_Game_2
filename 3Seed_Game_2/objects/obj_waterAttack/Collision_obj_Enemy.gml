/// @description Insert description here
// You can write your code in this editor
/*
if(other == obj_fireEnemy)
{
	with(other)
	{
		HurtEnemy(obj_fireEnemy, 5 + weaknessAtkBonusDmg, weaknessAtk, 3)
	}
	
} else */

if(other.weakAtk == obj_waterAttack)
{
	atkDamage *= obj_heroHydro.atkMult
	HurtEnemy(other,atkDamage/2,id,2)
	
} else HurtEnemy(other,atkDamage,id,2)

instance_destroy();
