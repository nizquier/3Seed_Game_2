/// @description Insert description here

if(!global.pause)
{
	if(enemyScript[state] != -1) script_execute(enemyScript[state]);
	depth = -bbox_bottom
}

sprite_collision_mask(sprMove, true, 1, 0, 0, 0, 0, 0, 0);

if(weaknessAtk != -1 && weaknessAtkBonusDmg != -1)
{
	if(place_meeting(x, y, weaknessAtk)) 
	{
		HurtEnemy(id, weaknessAtkBonusDmg, weaknessAtk, 3)
	}
}

if(weakAtk != -1)
{
	if(place_meeting(x, y, weakAtk))
	{
		enemyHP += weakAtk.atkDamage;
	}
}
