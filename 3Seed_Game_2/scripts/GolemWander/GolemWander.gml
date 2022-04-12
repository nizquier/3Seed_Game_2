// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
if(instance_exists(obj_Golem)) 
{
	sprite_index = sprMove;

	//At destination || given up
	if((x == xTo) && (y == yTo)) || (timePassed > enemyWanderDistance / enemySpeed)
	{
		hsp = 0;
		vsp = 0;
		//End animation
		if(image_speed < 1)
		{
			image_speed = 0.0
			image_index = 0;
		}
	
		//set new target destination
		if(++wait >= waitDuration)
		{
			wait = 0;
			timePassed = 0;
			dir = point_direction(x,y,xstart,ystart) + irandom_range(-45,45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y(enemyWanderDistance, dir);
		}	
	}
	else {
		timePassed++;
		image_speed = 1;
		var distanceToGo = point_distance(x,y,xTo,yTo);
		var speedThisFrame = enemySpeed;
		if(distanceToGo < enemySpeed) speedThisFrame = distanceToGo;
		dir = point_direction(x,y,xTo,yTo);
		hsp = lengthdir_x(speedThisFrame, dir)
		vsp = lengthdir_y(speedThisFrame, dir)
		if(hsp != 0) image_xscale = sign(hsp)
	
		//Collide & move
		var collided = EnemyTileCollision();
	}
}
