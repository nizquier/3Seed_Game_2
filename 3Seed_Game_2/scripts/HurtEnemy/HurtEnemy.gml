// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function HurtEnemy(enemy, damage, source, knockback)
{
	with (enemy)
	{
		if (state != ENEMYSTATE.DIE)
		{
			enemyHP -= damage;	
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
