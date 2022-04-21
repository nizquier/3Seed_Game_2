// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HurtPlayer(thisDirection,thisForce,thisDamage)
{
	if (obj_heroPyro.invulnerable <= 0)
	{
		
		if(global.playerBlocking) global.playerHP = max(0, global.playerHP-(thisDamage/2));
		else global.playerHP = max(0, global.playerHP-thisDamage);
		
		if (global.playerHP > 0)
		{
			with (obj_heroPyro)
			{
				direction = thisDirection-180;
				moveDistanceRemaining = thisForce;
				flash = 0.7;
				invulnerable = 60;
				flashShader = shd_RedFlash;
			}
		}
		else
		{
			global.playerHP = global.playerHPMax
			lives -= 1
			audio_play_sound(snd_lifeLost, 10, false)
		}
	}
}
