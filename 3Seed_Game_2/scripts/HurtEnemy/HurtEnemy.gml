// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function HurtEnemy(enemy, damage, source, knockback)
{
	var thisDamage = damage * obj_heroPyro.atkMult
	
	/*
	var curObj = object_index
	if(curObj == obj_boomerangAttack || curObj == obj_fireAttack || curObj == obj_iceAttack || curObj == obj_waterAttack)
	{
		//Damage conditions based on the enemy and calling object relation
		if(object_get_name(enemy.object_index) == obj_Golem) thisDamage = thisDamage * 100
		
		//Destroy conditions for the calling object
		if(curObj == obj_boomerangAttack) {}
		else instance_destroy(curObj);
	}*/
	
	with (enemy)
	{
		if (state != ENEMYSTATE.DIE)
		{
			enemyHP -= thisDamage;	
			flash = 1;
			
			//Hurt or dead?
			if (enemyHP <= 0)
			{
				state = ENEMYSTATE.DIE;
			}
			else
			{
				if (state != ENEMYSTATE.HURT) statePrevious = state;
				state = ENEMYSTATE.HURT;
			}
			
			image_index = 0;
			if (knockback != 0)
			{
				var knockDirection = point_direction(x,y,(source).x,(source).y);
				xTo = x - lengthdir_x(knockback, knockDirection);
				yTo = y - lengthdir_y(knockback, knockDirection);
			}
			
		}
	}
}
